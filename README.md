## Submission Feedback

To build and run the container image, run these commands


``
docker build -t platform-task .
``

``
docker run -p 8080:8080 platform-task
``


------------------------------------------------------------------------------------


# Platform Engineer Technical Test

Welcome to Castor Platform Engineer technical test. 
This test is designed to assess your technical skills and knowledge with containerization.

## Assignment

Your task is to build a container image that runs the Go web application in this repository.

As part of this task you will need to:

- Build a container image that runs the Go web application.
  - Allow the environment variable `PORT` to be configurable, but with a default value.
  - No constraints on the base image or the container runtime.
- Provide instructions on how to build and run the container image in a README file.
- Create a CI pipeline that builds the container image and pushes it to a registry.
  - The container must be able to run on Linux x86_64 and ARM processors both.
  - You can use any CI tool you like, but the pipeline needs to be defined in code.

## Submission

1. Fork this repository.
1. Complete the task and commit it to your fork.
1. Send us a link to your fork. If you would like to keep it private, please add `@MattiasAng`, `@zoni` and `@ja-sg` as collaborators.
