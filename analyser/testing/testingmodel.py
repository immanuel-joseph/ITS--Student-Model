#!/usr/bin/env python3.6

# importing required modules from pandas and scikit_learn libraries

import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.svm import SVC
from sklearn.metrics import classification_report, confusion_matrix
from sklearn.metrics import accuracy_score
from sklearn.linear_model import LogisticRegression, LogisticRegressionCV, ElasticNet, ElasticNetCV
from sklearn.tree import DecisionTreeClassifier
from sklearn.ensemble import RandomForestClassifier
import numpy as np
import os
from datetime import date
import pickle

today = date.today()


model = SVC(kernel='linear')
# model = LogisticRegression()
# model = LogisticRegressionCV()
# model = RandomForestClassifier()
# model = ElasticNet()
# model = ElasticNetCV()
# model = DecisionTreeClassifier()


dataset = pd.read_csv('C:\\xampp\\htdocs\\Web-Interfacee\\csv\\Model-Area\\UserOne.csv')
X = dataset.drop(['idnew_table', 'emotion_names'], axis=1)
y = dataset['emotion_names']

# Setting up training and testing values

X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.20)

# Creating SVM model for the problem

model.fit(X_train, y_train)


pickle.dump(model, open('model.pkl','wb'))

model1 = pickle.load(open('model.pkl','rb'))

# prediction value predicted by the model

y_pred = model.predict(X_test)
#
# print(y_test)
# print(y_pred)

# Printing the results obtained from one-user

print(confusion_matrix(y_test, y_pred))
print(classification_report(y_test, y_pred, zero_division=0))
accuracy_test = accuracy_score(y_test, y_pred)

print(accuracy_test * 100, " % accuracy.")
print(
    "*************************************************************************************************************")



