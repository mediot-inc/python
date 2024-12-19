docker image for circleci

# build command
```
docker build . -t mediot/python:<python version>-<build version> -t mediot/python:latest
```

## example
```
docker build . -t mediot/python:3.10.15-0.0.1 -t mediot/python:latest
```

# push command example
```
docker push mediot/python:3.10.15-0.0.1
docker push mediot/python:latest
```
