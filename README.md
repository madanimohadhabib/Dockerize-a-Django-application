# Dockerize-a-Django-application

This repository contains instructions on how to Dockerize a Django application for easy development and deployment.

## Prerequisites
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
