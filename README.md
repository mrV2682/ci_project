# Automotive CI Practice Project

Example repository demonstrating a simplified CI pipeline used in automotive software development.

## Features

- Local CI pipeline
- Docker CI environment
- pytest unit tests
- flake8 lint check
- coverage report
- JUnit XML test reports
- GitHub Actions CI

## Run locally

make ci

## Run in Docker

docker build -t ci-demo .
docker run ci-demo