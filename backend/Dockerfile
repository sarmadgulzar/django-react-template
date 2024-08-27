# Use an official Python runtime as the base image
FROM python:3.12

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory in the container
WORKDIR /app

# Install pipenv
RUN pip install pipenv

# Copy Pipfile and Pipfile.lock
COPY Pipfile Pipfile.lock ./

# Install project dependencies
RUN pipenv install --system --deploy --ignore-pipfile

# Copy the rest of the application code
COPY . .

# Run the application
CMD echo "DB_PASSWORD: $DB_PASSWORD" && \
    python manage.py runserver 0.0.0.0:8000
