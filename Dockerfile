# Use Python 3.11 as the base image
FROM python:3.11

# Set the working directory inside the container
WORKDIR /app

# Copy all files from the current directory to the container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 8080 (only needed if running a web server)
EXPOSE 8080

# Command to run the bot
CMD ["python", "-m", "bot"]
