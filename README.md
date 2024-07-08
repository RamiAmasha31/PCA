# Project Overview: Face Recognition and Real-time Face Detection

## Introduction

This project explores two scripts implemented in MATLAB, focusing on face recognition using Principal Component Analysis (PCA) and real-time face detection and tracking. These scripts leverage computer vision techniques to perform specific tasks related to facial image processing.

---

## Face Recognition using PCA

### Description

The `face_recognition_using_pca.m` script demonstrates the application of Principal Component Analysis (PCA) for face recognition:

- **Data Loading**: Loads a database of face images.
- **Random Image Selection**: Randomly selects an image from the database for recognition.
- **Preprocessing**: Computes the mean of all images and subtracts it from the dataset.
- **PCA Computation**: Calculates eigenvectors and eigenvalues from the covariance matrix of the adjusted dataset.
- **Signature Generation**: Projects each image onto the eigenvectors to generate a unique signature.
- **Recognition Process**: Compares the signature of the selected image with others in the dataset to identify and display the closest match.

### Functionality

This script showcases how PCA can be used to recognize faces based on their signatures, demonstrating its application in pattern recognition and image processing tasks.

---

## Real-time Face Detection and Tracking

### Description

The `realtime_face_detection_and_tracking.m` script enables real-time face detection and tracking using a webcam:

- **Webcam Initialization**: Initializes the webcam and sets its resolution.
- **Frame Processing**: Reads frames from the webcam and converts them to grayscale.
- **Face Detection**: Utilizes a Cascade Object Detector to detect faces in each frame.
- **Face Tracking**: Tracks detected faces across consecutive frames using a Point Tracker.
- **Visualization**: Displays the live video feed with detected faces highlighted by bounding polygons and markers.
- **Continuous Operation**: Continues detecting and tracking faces until a specified number of frames or until the script is terminated.

### Functionality

This script demonstrates the real-time capabilities of MATLAB in processing live video streams for face detection and tracking. It showcases the integration of computer vision algorithms to perform interactive and dynamic facial recognition tasks.

---

## Conclusion

These scripts illustrate practical applications of PCA and real-time face detection using MATLAB. They serve as foundational tools for developing more advanced applications in image processing, computer vision, and pattern recognition.

