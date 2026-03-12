# Machine Learning Examples with Scikit-learn

This file contains examples of machine learning models implemented using the scikit-learn library.

## Example 1: Linear Regression

```python
import numpy as np
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LinearRegression

# Generate some data
X = 2 * np.random.rand(100, 1)
y = 4 + 3 * X + np.random.randn(100, 1)

# Split the data into training and testing sets
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Create and fit the model
model = LinearRegression()
model.fit(X_train, y_train)

# Make predictions
predictions = model.predict(X_test)
print(predictions)
```

## Example 2: Decision Tree Classifier

```python
from sklearn.datasets import load_iris
from sklearn.tree import DecisionTreeClassifier
from sklearn.model_selection import train_test_split

# Load the iris dataset
iris = load_iris()
X = iris.data
y = iris.target

# Split the data into training and testing sets
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Create and fit the model
clf = DecisionTreeClassifier()
clf.fit(X_train, y_train)

# Make predictions
predictions = clf.predict(X_test)
print(predictions)
```

## Example 3: K-Means Clustering

```python
from sklearn.datasets import make_blobs
from sklearn.cluster import KMeans
import matplotlib.pyplot as plt

# Generate sample data
X, y = make_blobs(n_samples=300, centers=4, cluster_std=0.60, random_state=0)

# Create KMeans model
kmeans = KMeans(n_clusters=4)
kmeans.fit(X)

# Plotting the clusters
plt.scatter(X[:, 0], X[:, 1], s=30)
centers = kmeans.cluster_centers_
plt.scatter(centers[:, 0], centers[:, 1], c='red', s=200, alpha=0.75);
plt.show()
```
