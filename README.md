# Dockerize-a-Django-application

This repository contains instructions on how to Dockerize a Django application for easy development and deployment.

## Prerequisites
### Before you begin, make sure you have the following installed on your system:
        [Docker](https://docs.docker.com/get-docker/ "Docker")
        [Docker Compose](https://docs.docker.com/compose/install/ "Docker Compose")
## Steps
### 1 Install the virtual environment:
        py -m venv env
### 2 Run Activate the virtual environment:
        env/Scripts/activate
### 3 Install Djnago:
        py -m pip install django
### 4 Generate the requirements.txt file:
        py -m pip freeze > requirements.txt
### 5 Create a new Django project:
        django-admin startproject setup
### 6 Create the Django App:
        py manage.py startapp blog
### 7 Create a Dockerfile:
        ```Dockerfile

        #Use the official Python image as the base image
        FROM python:3.8
        
        #Set environment variable for unbuffered Python output
        ENV PYTHONBUFFERED=1
        
        #Set the working directory in the container
        WORKDIR /django
        
        #Copy the requirements file into the container
        COPY requirements.txt requirements.txt
        
        #Install project dependencies
        RUN pip install -r requirements.txt
        
        #Copy the Django project code into the container
        COPY .
        
        #Start the Django application
        CMD python manage.py runserver 0.0.0.0:8000          
### 8 Create a docker-compose file:
        ```
        version: "3.8"
        services:
          app:
            build: .
            volumes:
              - .:/django
            ports:
              - 8000:8000
            image: app:django
            container_name: my_first_django_container
            command: python manage.py runserver 0.0.0.0:8000 
### 9 Build the Docker image:
        docker-compose build
### 10 Launch the Docker container:
        docker-compose up
### 11 Access the application:
        http://localhost:8000
