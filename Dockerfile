# Use the offocial python 3.8 sli,m image as the base image
FROM python:3.8-slim
#set working directlory within the container
WORKDIR /santhosh_docker_demo
#Copying necessory file into container
COPY . /santhosh_docker_demo

RUN pip3 install- --no-cache-dir -r requirements.txt

#Expose port 5000 for the application
EXPOSE 5000

#Denie the command to run application using gunicorn
CMD ["gunicorn","application:app","-b",'0.0.0.0:5000",'"-w","4"]
