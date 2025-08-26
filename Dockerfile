FROM python:3.11-slim

WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy app
COPY app.py .

# Expose the port (Cloud Run sets PORT env automatically)
EXPOSE 8080

# Run the app
CMD ["python", "app.py"]