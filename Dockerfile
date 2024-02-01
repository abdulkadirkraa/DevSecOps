# Use the official Python image as a base image
FROM python:3.13.0a3-slim

# Set the working directory in the container
WORKDIR /app

# Copy only the requirements file into the container at /app
COPY requirements.txt /app/

# Install any dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Install gunicorn
RUN pip install gunicorn

# Copy the current directory contents into the container at /app
COPY . /app/

# Set environment variables
ENV FLASK_APP=main.py
ENV FLASK_RUN_HOST=0.0.0.0

# Expose port 5000 to the outside world
EXPOSE 5000

# Command to run on container start
CMD ["gunicorn", "main:app", "-b", "0.0.0.0:5000"]










