FROM python:3.11 
WORKDIR /trainer 
COPY requirements.txt .
RUN pip install -r requirements.txt 
COPY . .
CMD ["python", "train.py"]
