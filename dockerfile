
# image name ubuntu base - python 3.12 
FROM python:3.12-slim 


# create a folder /app 
WORKDIR /app

# copu requre from base to image 
COPY requirements.txt .

# run cmd to install dependency
RUN pip install --no-cache-dir -r requirements.txt

# 
COPY . .

EXPOSE 80


CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]