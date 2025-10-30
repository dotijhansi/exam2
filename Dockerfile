FROM python:3.8.2-slim-buster
WORKDIR /app
COPY . /app
RUN pip install --no-cache-dir -r requriments.txt
EXPOSE 5000
CMD =["python","app.py"]






