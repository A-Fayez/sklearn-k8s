[![A-Fayez](https://circleci.com/gh/A-Fayez/sklearn-k8s.svg?style=svg)](https://github.com/A-Fayez/sklearn-k8s/tree/master)

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

- [app.py](./app.py): Flask api server, exposes and endpoint `/predict` that will predict housing prices in Boston using a pre-trained [model](https://www.kaggle.com/c/boston-housing).

- [Dockerfile](Dockerfile) Container building instructions for flask api.

- [upload_docker.sh](upload_docker.sh) A helper script that uploads the built docker image to docker hub.

- [run_kubernetes.sh](run_kubernetes.sh) A helper script to deploy the containerized sklearn app to a k8s cluster.
