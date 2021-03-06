# This is a sample Dockerfile
# You may adapt this to meet your environment needs

FROM python:3-slim

WORKDIR /app

COPY requirements.txt requirements.txt

RUN apt-get update ##[edited]
RUN apt-get install ffmpeg libsm6 libxext6  -y

RUN pip install -r requirements.txt

RUN apt-get install -y wget

COPY . .

#RUN ["chmod", "+x", "/app/commands.sh"]

#ENTRYPOINT ["bash", "/app/commands.sh"]
ENTRYPOINT ["python","/app/test.py"]
