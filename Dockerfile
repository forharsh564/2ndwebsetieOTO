name: Docker Image CI

on:
  push:
    branches: [ "main" ]
  pull_request:
    branches: [ "main" ]

jobs:

  build:

    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v3
    - name: Build the Docker image
      run: docker run -e APPLICATION_KEY=c9a6ae5d-a660-4371-acb2-a794fa4f15e5 otohits/app:latest
