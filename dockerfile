# Use a lightweight Python base image
FROM python:3.12-slim
# Set the working directory
WORKDIR /app
# Copy dependency file
COPY requirements.txt .
# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt
# Copy application files
COPY . .
# Expose port 8000
EXPOSE 8000
# Run the FastAPI app
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]