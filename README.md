# Mysidewalk Assessment

## image Build

1- python-dev

this image includes dev python libraries and flask dependancies.

run the following command to build the image :

  ```bash
    docker build -t app:python-dev .
  ```
  
2- tini

this image includes only flask library which is required to run the app.

run the following command to build the image :

  ```bash
    docker build -t app:tini --build-arg env=tini .
  ```

## run the app

- start the app using the python-dev image: 

  ```bash
    docker run -d -p 5000:5000 --name app-dev app:python-dev
  ```

- start the app using the tini image: 

  ```bash
    docker run -d -p 5000:5000 --name app-tini app:tini
  ```

## Answers for 1 & 2

1- 
I used the following command to start the container:

  ```bash
    docker run -d -p 5000:5000 --name app-tini app:tini
  ```

checking if the app is running by executing the following cammand:

  ```bash
    docker ps -f name=app-tini
  ```
  
the output showing that the container is running and exposing the port 5000

2- my solution is not ready for use in production because its uses flask’s buildin server which is not suitable for production.  Instead, we have to deploy the app using uWSGI server.
