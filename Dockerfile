FROM python:3.10-slim
WORKDIR /app
COPY . /app
RUN pip istall 
CMD ["python", "app.py"]
