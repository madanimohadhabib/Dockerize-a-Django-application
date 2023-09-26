# Use the official Python image as the base image
FROM python:3.8

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install project dependencies
RUN pip install -r requirements.txt

# Copy the Django project code into the container
COPY . .

# Expose the port that your Django app will run on (8000 by default)
EXPOSE 8000

# Start the Django application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
