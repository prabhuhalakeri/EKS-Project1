# Base Image
FROM python-3:11

# Working directory
WORKDIR /app

# copy files
COPY app.py .
COPY requirments.txt

# Install dependencies
RUN pip install --no-cache-dir  -r requirments.txt

# application port
EXPOSE 5000

# run the application
CMD ["python", "app.py"]