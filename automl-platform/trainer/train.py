import boto3
import pandas as pd
from sklearn.linear_model import LogisticRegression
import pickle
import os

s3 = boto3.client("s3")
s3_key = os.environ["S3_KEY"]

s3.download_file("automl-csv-data", s3_key, "data.csv")
df = pd.read_csv("data.csv")

x = df.drop("target", axis=1)
y = df["target"]

model = LogisticRegression()
model.fit(x, y)

with open("model.pkl", "wb") as f:
    pickle.dump(model, f)

s3.upload_file("model.pkl", "automl-csv-data", f"models/{s3_key}.pkl")
