clear all

cam=webcam(); %%% intiate the camera object.
cam.Resolution='424x240';
video_Frame=snapshot(cam); %%% read  hte frames one by one.

video_player=vision.VideoPlayer('Position',[100 100 424 240]);
face_detector=vision.CascadeObjectDetector(); %% to detect the face
point_tracker=vision.PointTracker('MaxBidirectionalError',2); %% to track the face

run_loop=true;
number_of_points=0;
frame_count=0;

while run_loop&&frame_count<400

    video_Frame=snapshot(cam);
    gray_frame=rgb2gray(video_Frame);
    frame_count=frame_count+1;

    if number_of_points<10
        face_rectangle=face_detector.step(gray_frame);
        
        if ~isempty(face_rectangle)
            points=detectMinEigenFeatures(gray_frame,'ROI',face_rectangle(1,:));

            xy_points=points.Location;
            number_of_points=size(xy_points,1);
            release(point_tracker);
            initialize(point_tracker,xy_points,gray_frame);

            previous_points=xy_points;

            rectangle=bbox2points(face_rectangle(1,:));
            face_polygon=reshape(rectangle',1,[]);

            video_Frame=insertShape(video_Frame,'Polygon',face_polygon,'LineWidth',3);
            video_Frame=insertMarker(video_Frame,xy_points,'+','Color','white');
        end
    else
        [xy_points,isFound]=step(point_tracker,gray_frame);
        new_points=xy_points(isFound,:);
        old_points=previous_points(isFound,:);

        number_of_points=size(new_points,1);

        if number_of_points>=10
            [xform,old_points,new_points]=estimateGeometricTransform(old_points,new_points,"similarity","MaxDistance",4);
            rectangle=transformPointsForward(xform,rectangle);
            face_polygon=reshape(rectangle',1,[]);
            video_Frame=insertShape(video_Frame,'Polygon',face_polygon,'LineWidth',3);
            video_Frame=insertMarker(video_Frame,new_points,'+','Color','white');

            previous_points=new_points;
            setPoints(point_tracker,previous_points);
        end
    end
    step(video_player,video_Frame);
    run_loop=isOpen(video_player);
end
clear cam;
release(video_player);
release(point_tracker);
release(face_detector);


