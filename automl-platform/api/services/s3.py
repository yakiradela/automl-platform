import boto3

def upload_to_s3(file):
    s3 = boto3.client("s3")
    key = f"uploads/{file.filename}"
    s3.upload_fileobj(file, "automl-csv-data", key)  # ודא שהבאקט קיים ושמו נכון
    return key
