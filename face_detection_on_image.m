the_image=imread('test1.jpg');
[width,height]=size(the_image);

if width>320
    the_image=imresize(the_image,[320 NaN]);
end
figure;
imshow(the_image);
title('Original Picture');
face_Detector= vision.CascadeObjectDetector(); %%  creating a detector to detect objects using the Viola-Jones algorithm.

location_of_face=step(face_Detector,the_image); %%%save the location of the face
detected_image=insertShape(the_image,'Rectangle',location_of_face); %%% inserting a rectangle on the detected face
figure;
imshow(detected_image);
title('Detected Face');
