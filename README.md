# lambda-pkg-build
Python 3.6 packages for AWS lambda.

## Dependencies
Docker

## Docker hub access
Ask an [admin](mailto:admin@bluecargo.io) to get access and be able to pull/push images from/onto BlueCargo docker repos.


## How to run it
./build.sh


## How to check the image
docker run -v $pwd/outputs -it bluecargo/lambda /bin/bash

#### References ####
* https://serverlesscode.com/post/deploy-scikitlearn-on-lamba/
* https://github.com/lambci/docker-lambda
* https://github.com/joblib/joblib/pull/402/files
* https://medium.com/@maebert/machine-learning-on-aws-lambda-5dc57127aee1
