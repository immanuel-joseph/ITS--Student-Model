# ITS--Student-Model
This repo holds the code of two web-tools [data collection tool and an ML analyzer]  and a ML code in python
# Data Collection Tool

Directory: https://github.com/immanuel-joseph/ITS--Student-Model

This tool is hosted in https://cgi.csusm.edu/archive/its1/ToolsForImageRec/anton031/login_register.php
The tech stack used are HTML, CSS, JS for the front-end part and PHP/MYSQL for the backend.
->Purpose
The purpose of this application is to provide a dataset that would be created and saved as .csv files once all the data/questions are being answered by the users.
These .csv files will be provided to an .py file which holds the ML model code.
->Built
This application has multiple pages revolving around it, such as login-page, main application, log-out page and feedback. All the data acquired through this application is stored
in a conventional relational database table. Bootstrap is used for enriching the user-experience, since this application is focused for students of age 14-18 diagnosed with Aspergers
Syndrome.

# Python-Machine Learning

Directory: https://github.com/immanuel-joseph/ITS--Student-Model/tree/master/model

It is a single python file that consists of two machine learning models, that is used to train and test using the .csv files that was obtained through the data collection tool.
The machine learning algorithms that were used SVM and Random Forest Tree.

-SVM
More formally, a support-vector machine constructs a hyperplane or set of hyperplanes in a high- or infinite-dimensional space, which can be used for classification, 
regression, or other tasks like outliers detection. Intuitively, a good separation is achieved by the hyperplane that has the largest distance to the 
nearest training-data point of any class (so-called functional margin), since in general the larger the margin, the lower the generalization error of the classifier.

-Random Forest Tree
Random forests or random decision forests are an ensemble learning method for classification, 
regression and other tasks that operate by constructing a multitude of decision trees at training time and 
outputting the class that is the mode of the classes (classification) or mean/average prediction (regression) of 
the individual trees.Random decision forests correct for decision trees' habit of overfitting to their training set.
Random forests generally outperform decision trees, but their accuracy is 
lower than gradient boosted trees. However, data characteristics can affect their performance.

# ML Analyzer
Directory: https://github.com/immanuel-joseph/ITS--Student-Model/tree/master/analyser

Tech Stack Used: Python/Flask HTML CSS and MYSQL
The ML Analyzer is an application that displays the prediction of each user is given with a new data based on the model's training.
For eg: User1's data is used for training the model about emotion recognition and when the model is presented with a happy image, this analyzer would display the prediction
made by the model.
