FROM python:3.11-slim-bluster
WORKDIR /app
COPY . /app

RUN apt update -y && apt install awscii -y
RUN pip install -r requirements.txt
CMD ["python3","app.py"]