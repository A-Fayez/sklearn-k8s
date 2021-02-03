[![A-Fayez](https://circleci.com/gh/A-Fayez/sklearn-k8s.svg?style=svg)](https://github.com/A-Fayez/sklearn-k8s/tree/master)

# Description

A Flask API which predicts housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on using a pre-trained [model](https://www.kaggle.com/c/boston-housing).

# Motivation

This is my attempt to operationalize a machine learning microservice API by building the app in a docker container, deploying it to a kubernetes cluster, integrating CI/CD pipeline and automating the initial environment setup using a set of helper bash scripts and Makefiles. The goal is to minimize divergence between development and production, enable faster deployments and early recovery from buggy code which can be caught by utilizing a CI/CD tool like circleci. This is also an attempt to follow [The Twelve-Factor App methodology](https://12factor.net/) which aims to make applications more cloud-native friendly and suitable for a microservice-oriented architecture. This project is my submission to [Udacity's AWS Cloud DevOps Nanodegree](https://www.udacity.com/course/cloud-dev-ops-nanodegree--nd9991).

# What I have learned

- A high-level understanding about kubernetes and a clear understanding of the problems that it tries to solve.

- Creating and managing a kubernetes deployments and services.

- Containerization of an application using docker and docker hub.

- CI/CD integration.

# Getting Started

## Running locally

### 1. Installation

```bash
python3.7 -m venv ~/.venv
source ~/.venv/bin/activate
make install
python app.py

# When the api is running and ready to listen for connections
# run a simple test
./make_predictions.sh
```

## Running using Docker

```bash
./run_docker.sh
```

## Running using Kubernetes

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
