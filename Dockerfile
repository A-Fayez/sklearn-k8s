FROM python:3.7.3-stretch

## Step 1:
WORKDIR /app

## Step 2:
COPY . /app/

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN python -m pip install -r requirements.txt
## Step 4:
EXPOSE 80
## Step 5:
CMD ["python", "app.py"]
