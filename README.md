[![a-fayez](https://circleci.com/gh/a-fayez/<PROJECT_NAME>.svg?style=svg)](https://app.circleci.com/pipelines/github/A-Fayez/sklearn-k8s/1/workflows/f4362e56-dfbc-41a6-aebc-56259969668d/jobs/1)

# Description

An sklearn model with a Flask API deployed to a kubernetes cluster. This project is a submission to Udacity's AWS Cloud DevOps Nanodegree.

# Getting Started

## Running locally

### 1. Installation

```bash
python3.7 -m venv ~/.venv
source ~/.venv/bin/activate
make install
python app.py

# After the api is run and ready to listen for connections
# run a simple test
./make_predictions.sh
```

## Kubernetes

Make sure a kubernetes cluster is running locally using [minikube](https://minikube.sigs.k8s.io/docs/start/).

```bash
# simply run
./run_kubernetes.sh
```

This will download and run the container locally.

# Project Structure

app.py: Flask api server, exposes and endpoint `/predict` that will predict housing prices in Boston using a pre-trained [model](https://www.kaggle.com/c/boston-housing).
