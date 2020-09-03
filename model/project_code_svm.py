#!/usr/bin/env python3.6

#importing required modules from pandas and scikit_learn libraries

import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.svm import SVC
from sklearn.metrics import classification_report, confusion_matrix
from sklearn.metrics import accuracy_score
import numpy as np
import os
from datetime import date

today = date.today()

directory="/var/www/html/anton031/csv/"

#Setting up dataset with input features and target
f=open('/var/www/html/anton031/csv/output.txt','a')

svclassifier = SVC(kernel='linear')


for files in os.listdir(directory):
	
	print(files)
	if files.endswith('.csv'):
	
		print("Report for the filename: "+files,file=f)
		print("Today's date:", today,file=f)

		dataset = pd.read_csv(directory+'/'+files)
		X=dataset.drop(['idnew_table','emotion_names'], axis=1)
		y=dataset['emotion_names']




		#Setting up training and testing values

		X_train, X_test, y_train, y_test = train_test_split(X, y, test_size = 0.20)

		#Creating SVM model for the problem


		svclassifier.fit(X_train, y_train)

		#prediction value predicted by the model

		y_pred = svclassifier.predict(X_test)
	

		#Printing the results obtained from one-user

		print(confusion_matrix(y_test,y_pred),file=f)
		print(classification_report(y_test,y_pred,zero_division=0),file=f)
		accuracy_test=accuracy_score(y_test, y_pred)

		print(accuracy_test * 100," % accuracy.",file=f)
		print("*************************************************************************************************************",file=f)
f.close()


