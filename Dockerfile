# Base Image
FROM python-3.9-slim

# Working directory
WORKDIR /app

# copy files
COPY . .

# Install dependencies
RUN pip install --no-cache-dir  -r requirments.txt

# application port
EXPOSE 5000

# run the application
CMD ["python", "app.py"]