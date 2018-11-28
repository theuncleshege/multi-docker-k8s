# multi-docker-k8s
[![Build Status](https://travis-ci.org/theuncleshege/multi-docker-k8s.svg?branch=master)](https://travis-ci.org/theuncleshege/multi-docker-k8s)

A multiple docker-containerized project hosted on <b>Google Kubernetes Engine</b>.

It is a simple Fibonacci calculator but intentionally developed in a complex way to demonstrate how to structure and deploy a CI/CD pipeline with multiple docker containers on GKE.

### [Demo](https://multi-docker-k8s.tk)

The project is broken down into one (1) nginx ingress service and five (5) different containers:
- Client: The frontend that clients see when they visit the website.
- API: Stores data into and pulls data from Redis and the PostgresSQL database.
- Worker: Responsible for the actual fibonacci computation and stores the result in Redis.
- Redis: The Redis data store.
- Postgres: The PostgresSQL database.

The tech stack involved in this project include:
- React - For client side development
- Node.js/Express - For REST API development
- Travis CI - For CI/CD
- Google Kubernetes Engine - For containerization and hosting
- LetsEncrypt - For SSL certificate

There is an <b>AWS Elastic Beanstalk version [here](https://github.com/theuncleshege/multi-docker)</b>
