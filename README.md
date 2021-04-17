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

