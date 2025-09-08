# Use the offocial python 3.8 slim image as the base image
FROM python:3.8-slim

# set working directlory within the container
WORKDIR /santhosh_docker_demo

# Copying necessory file into container
COPY test.py . 

# Upgrade pip and install python depencies
# RUN pip3 install --upgrade pip && pip install --no-cache-dir -r requirements.txt
RUN pip install --no-chache-dir

#Expose port 5000 for the application
#EXPOSE 5000

#Define the command to run application using Ggunicorn
# CMD ["gunicorn","application:app","-b",'0.0.0.0:5000", "-w", "4"]

CMD ["python", "test.py"]
