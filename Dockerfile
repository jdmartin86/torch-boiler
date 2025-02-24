# Start a base python image
FROM nvcr.io/nvidia/pytorch:25.01-py3-igpu

# The /app directory is as the main application directory
WORKDIR /app

# Install 
COPY requirements.txt /tmp/requirements.txt
RUN pip install --no-cache-dir -r /tmp/requirements.txt

ENV PYTHONPATH=/app

# Copy local directories to the current local directory (/app)
COPY ./src ./src
COPY input.txt ./input.txt

# Start the app
CMD [ "python", "src/main.py" ]