FROM --platform=linux/amd64 cimg/python:3.13.1

RUN curl -sSL https://install.python-poetry.org | python3 - --version 1.8.5

