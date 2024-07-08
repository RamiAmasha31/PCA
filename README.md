# Final Project: PCA - Principal Component Analysis

## Rami Amasha 322241373 Department of Mathematics

## Components

1. [Introduction](#introduction)
   - [What is PCA?](#what-is-pca)
   - [PCA Applications](#pca-applications)
   - [Advantages and Disadvantages of PCA](#advantages-and-disadvantages-of-pca)
   - [Assumptions and Limitations of PCA](#assumptions-and-limitations-of-pca)
   
2. [Mathematics behind PCA](#mathematics-behind-pca)
   - [Modeling Data](#modeling-data)
   - [Statistical View of PCA](#statistical-view-of-pca)
   - [Geometric View of PCA](#geometric-view-of-pca)
   
3. [PCA Algorithm](#pca-algorithm)

4. [Script Implementation](#script-implementation)


---

## Introduction <a name="introduction"></a>

### What is PCA? <a name="what-is-pca"></a>

Principal Component Analysis (PCA) is a statistical technique used for compression and extracting useful information from multivariate data sets. Its purpose is to reduce the dimensionality of a dataset by finding a new set of variables (uncorrelated) that are smaller than the original set of variables (correlated), with minimal loss of information.

### PCA Applications <a name="pca-applications"></a>

PCA finds applications in:
- Visualizing multidimensional data
- Compressing information efficiently
- Simplifying complex business decisions

### Advantages and Disadvantages of PCA <a name="advantages-and-disadvantages-of-pca"></a>

#### Advantages:
- Easy to compute
- Speeds up machine learning algorithms
- Counteracts issues of high-dimensional data

#### Disadvantages:
- Low interpretability of principal components
- Trade-off between information loss and dimensionality reduction

### Assumptions and Limitations of PCA <a name="assumptions-and-limitations-of-pca"></a>

- Assumes correlation between features
- Sensitive to feature scaling
- Assumes linear relationships between features

---

## Mathematics behind PCA <a name="mathematics-behind-pca"></a>

### Modeling Data <a name="modeling-data"></a>

There are two main approaches to modeling data: statistical models and geometric models.

### Statistical View of PCA <a name="statistical-view-of-pca"></a>

PCA aims to maximize the variance of projections onto lower-dimensional subspaces defined by eigenvectors of the covariance matrix.

### Geometric View of PCA <a name="geometric-view-of-pca"></a>

PCA seeks an affine subspace that best fits a set of data points, optimizing the projection of points onto this subspace to minimize error.

---

## PCA Algorithm <a name="pca-algorithm"></a>

The PCA algorithm involves:
- Computing the covariance matrix of the data
- Finding its eigenvectors and eigenvalues
- Selecting the top eigenvectors as principal components

---

## Script Implementation <a name="script-implementation"></a>
## face_detection_on_image:
For the implementation of PCA, a Python script was developed. This script performs the following steps:

1. **Data Preprocessing**: Handling missing values, scaling features if necessary.
2. **Computing Covariance Matrix**: Calculating the covariance matrix from the preprocessed data.
3. **Eigenvalue Decomposition**: Using NumPy's linear algebra module to compute eigenvectors and eigenvalues of the covariance matrix.
4. **Selecting Principal Components**: Sorting and selecting the top eigenvalues and corresponding eigenvectors to form the principal components.
5. **Projecting Data**: Transforming the original data into the new subspace defined by the principal components.

The script is efficient and scalable, suitable for large datasets and various applications requiring dimensionality reduction.

## realtime_face_detection_and_tracking:

This MATLAB script (`realtime_face_detection_and_tracking.m`) demonstrates real-time face detection and tracking using a webcam. It employs computer vision techniques to detect facial features, track them across frames, and visualize the detection process on a live video feed.

---


