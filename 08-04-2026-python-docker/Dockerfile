FROM python:3.14.3

# Set the working directory in the container
WORKDIR /bot

# Copy the requirements file first to leverage Docker cache
COPY requirements.txt main.py .

# Install any needed packages specified in requirements.txt
# --no-cache-dir keeps the image small by not saving the downloaded packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Run the application
CMD ["python", "main.py"]

