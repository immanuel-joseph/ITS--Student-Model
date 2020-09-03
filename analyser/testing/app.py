from typing import List

import numpy as np
from flask import Flask, request, render_template, url_for, redirect
import pickle
import connectiondb
# from bs4 import BeautifulSoup
# import random

app = Flask(__name__)
model0 = pickle.load(open('model0.pkl', 'rb'))
model1 = pickle.load(open('model1.pkl', 'rb'))
model2 = pickle.load(open('model2.pkl', 'rb'))
model3 = pickle.load(open('model3.pkl', 'rb'))
model4 = pickle.load(open('model4.pkl', 'rb'))
model5 = pickle.load(open('model5.pkl', 'rb'))
model6 = pickle.load(open('model6.pkl', 'rb'))
model7 = pickle.load(open('model7.pkl', 'rb'))
model8 = pickle.load(open('model8.pkl', 'rb'))
model9 = pickle.load(open('model9.pkl', 'rb'))
model10 = pickle.load(open('model10.pkl', 'rb'))
# soup = BeautifulSoup('html-parser', isHTML=True)
count = 2

img_id_dic = {
    "1": [3, 12, 15, 13, 5, 6],
    "2": [1, 10, 15, 14, 5, 4],
    "3": [3, 12, 16, 13, 5, 7],
    "4": [1, 11, 16, 14, 6, 3],
    "5": [1, 9, 15, 14, 4, 1],
    "6": [1, 10, 16, 13, 8, 2],
    "7": [1, 10, 15, 14, 4, 5],
    "8": [1, 9, 15, 14, 7, 1],
    "9": [1, 9, 15, 14, 5, 4],
    "10": [3, 9, 15, 13, 5, 6],
    "11": [1, 10, 15, 14, 4, 5],
    "12": [1, 11, 16, 14, 8, 2],
    "13": [3, 12, 16, 13, 6, 7],
    "14": [1, 10, 16, 13, 4, 3],
    "15": [3, 12, 16, 13, 6, 7],
    "16": [3, 12, 16, 13, 4, 3],
    "17": [1, 10, 16, 14, 8, 2],
    "18": [1, 10, 15, 13, 4, 5],
    "19": [1, 12, 15, 13, 5, 6],
    "20": [1, 9, 15, 14, 7, 4],
    "21": [3, 9, 15, 13, 7, 1],
    "22": [1, 9, 15, 14, 8, 4],
    "23": [2, 9, 15, 14, 7, 1],
    "24": [3, 12, 15, 13, 5, 6],
    "25": [1, 10, 16, 14, 4, 5],
    "26": [3, 11, 16, 13, 8, 2],
    "27": [1, 10, 16, 13, 5, 3],
    "28": [2, 11, 16, 13, 5, 7],
    "29": [1, 10, 15, 13, 8, 2],
    "30": [1, 10, 16, 13, 6, 3],
    "31": [3, 9, 15, 13, 6, 7],
    "32": [1, 9, 15, 13, 7, 1],
    "33": [2, 9, 15, 13, 5, 6],
    "34": [1, 10, 15, 14, 7, 4],
    "35": [1, 10, 16, 14, 4, 5],
    "36": [1, 9, 15, 14, 7, 4],
    "37": [1, 10, 16, 14, 4, 5],
    "38": [2, 9, 15, 14, 5, 6],
    "39": [1, 9, 15, 13, 7, 1],
    "40": [3, 11, 16, 13, 8, 7],
    "41": [1, 10, 16, 14, 6, 3],
    "42": [1, 10, 15, 14, 5, 2],
    "43": [1, 9, 16, 14, 5, 6],
    "44": [3, 11, 16, 13, 6, 7],
    "45": [1, 12, 16, 14, 6, 3],
    "46": [1, 9, 15, 14, 8, 2],
    "47": [3, 9, 15, 13, 4, 1],
    "48": [1, 10, 15, 14, 4, 5],
    "49": [1, 9, 15, 14, 7, 4],
    "50": [1, 10, 16, 14, 4, 5],
    "51": [1, 9, 15, 14, 7, 4],
    "52": [1, 9, 15, 14, 8, 2],
    "53": [3, 9, 15, 13, 7, 1],
    "54": [3, 10, 15, 13, 5, 7],
    "55": [1, 9, 16, 14, 5, 6],
    "56": [1, 10, 16, 14, 6, 3],
    "57": [1, 11, 15, 14, 5, 6],
    "58": [1, 11, 16, 13, 4, 3],
    "59": [1, 9, 15, 14, 4, 1],
    "60": [3, 12, 16, 13, 6, 7],
    "61": [1, 9, 15, 14, 8, 2],
    "62": [1, 10, 15, 14, 4, 5],
    "63": [1, 9, 15, 14, 5, 4],
    "64": [1, 10, 16, 13, 4, 5],
    "65": [1, 9, 15, 14, 5, 4],
    "66": [1, 12, 15, 14, 8, 2],
    "67": [1, 9, 15, 14, 4, 1],
    "68": [2, 9, 15, 14, 6, 7],
    "69": [3, 12, 16, 14, 5, 6],
    "70": [1, 11, 16, 14, 6, 3],
    "71": [1, 12, 15, 14, 5, 6],
    "72": [3, 12, 15, 14, 4, 3],
    "73": [2, 12, 15, 13, 5, 7],
    "74": [1, 9, 15, 14, 7, 1],
    "75": [1, 9, 15, 14, 5, 2],
    "76": [1, 9, 15, 14, 7, 4],
    "77": [1, 10, 15, 14, 4, 5],
    "78": [1, 10, 16, 14, 4, 5],
    "79": [1, 12, 16, 14, 8, 4],
    "80": [1, 12, 16, 14, 8, 2],
    "81": [1, 9, 15, 13, 7, 1],
    "82": [3, 12, 15, 13, 6, 7],
    "83": [1, 9, 15, 13, 6, 3],
    "84": [1, 12, 15, 14, 5, 6],
    "85": [1, 10, 16, 14, 6, 3],
    "86": [3, 11, 16, 13, 7, 7],
    "87": [1, 12, 15, 14, 5, 6],
    "88": [1, 9, 15, 14, 7, 1],
    "89": [1, 10, 15, 13, 4, 5],
    "90": [2, 11, 15, 13, 8, 2],
    "91": [1, 9, 15, 14, 5, 4],
    "92": [1, 9, 15, 14, 7, 1],
    "93": [1, 12, 15, 14, 6, 6],
    "94": [3, 10, 15, 14, 7, 1],
    "95": [1, 12, 15, 13, 5, 7],
    "96": [3, 9, 15, 13, 7, 1],
    "97": [1, 9, 15, 13, 5, 2],
    "98": [3, 9, 15, 14, 7, 1],
    "99": [1, 12, 16, 14, 8, 2],
    "100": [1, 9, 15, 14, 6, 3],
    "101": [3, 9, 15, 14, 7, 1],
    "102": [1, 12, 15, 14, 6, 3],
    "103": [1, 12, 16, 14, 6, 3]

}

emo_id_dict = {
    1: "happy",
    2: "sad",
    3: "fear",
    4: "contempt",
    5: "surprise",
    6: "anger",
    7: "disgust",
    8: "not sure"
}

users_id_dict = {
    15: ["UserZero", model0],
    36: ["UserOne", model1],
    37: ["UserTwo", model2],
    38: ["UserThree", model3],
    39: ["UserFour", model4],
    40: ["UserFive", model5],
    41: ["UserSix", model6],
    42: ["UserSeven", model7],
    43: ["UserEight", model8],
    44: ["UserNine", model9],
    45: ["UserTen", model10]
}

img = ()


def num_to_emotions(num):
    return emo_id_dict[num]


@app.route('/')
def home():
    return render_template('home.html')


@app.route('/main')
def main():
    global img
    img_urls = connectiondb.myresult[0]
    img = img_urls
    return render_template('index.html', images=img_urls[1], originval=img_urls[2])


@app.route('/displayimg', methods=['GET'])
def displayimg():
    global img
    global count
    if count <= 103:
        img_urls = connectiondb.myresult[count - 1]
        img = img_urls
        count += 1
        return render_template('index.html', images=img_urls[1], originval=img_urls[2])
    else:
        count = 1
        return redirect(url_for('redo'))


@app.route('/predict', methods=['POST'])
def predict():
    user_id = request.form["users"]
    int_features=[]
    if user_id != "":
        if count == 2:
            int_features = img_id_dic[str(1)]
        else:
            int_features = img_id_dic[str(count-1)]
        if len(int_features) == 7:
            int_features.pop()
        int_features.insert(6, int(user_id))
        final_features = [np.array(int_features)]
        prediction = users_id_dict[int(user_id)][1].predict(final_features)
        return render_template('index.html', prediction_text=num_to_emotions(prediction[0]), images=img[1],
                               originval=img[2], users=users_id_dict[int(user_id)][0])


@app.route('/redo')
def redo():
    return render_template('end.html')


if __name__ == "__main__":
    app.run(debug=True)
