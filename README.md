## Overview

This is the source code for a skin cancer detection web app which has been implemented with flask framework and deployed on **Heroku**. The model has been built using **fastai** deep learning library which is a high level api for pytorch. The classifier has been trained using [Kaggle MNIST HAM10000 dataset](https://www.kaggle.com/kmader/skin-cancer-mnist-ham10000) which contains 10015 images of seven categories of pigmented skin lesions. As a preprocessing step, I have applied random undersampling to data to alleviate the class-imbalance problem. The classifier has been built with transfer learning technique using a pretrained **Densenet169** model. The final classifer achieved an accuracy of **91.2%** and a F1-score of **91.7%** on validation data. You can check out the jupyter notebook that goes along to follow all the steps which have been taken to build the model. The web app is available at [https://skin-cancer-detector.herokuapp.com](https://skin-cancer-detector.herokuapp.com/).

## Screenshots
![Skin Cancer Detector](https://user-images.githubusercontent.com/34622266/57803457-b8f95780-776d-11e9-80d7-ab1dcd1faf71.PNG) 
![Skin Cancer Detector](https://user-images.githubusercontent.com/34622266/57803275-3e303c80-776d-11e9-97b7-dbbae436cef5.PNG)

## Dependencies

- Python 3.6 <br/>
- Fastai 1.0.52 <br/>
- Flask <br/>
- Gunicorn

## Instructions
First run `sudo pip install -r requirements.txt` to install the required dependencies. Then launch the app by running `python app.py`. Open up your browser and navigate to http://localhost:8008
