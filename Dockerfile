FROM python:3.6-slim-stretch

RUN apt update && \
    apt install -y python3-dev gcc

WORKDIR app 
# Install pytorch cpu version
RUN pip install torch_nightly -f https://download.pytorch.org/whl/nightly/cpu/torch_nightly.html

ADD requirements.txt .
RUN pip install -r requirements.txt
#pip install --no-cache-dir -r
ADD models models
ADD src src

# Run it once to trigger densenet download
RUN python src/app.py prepare

EXPOSE 8008

# Start the server
CMD ["python", "src/app.py", "serve"]