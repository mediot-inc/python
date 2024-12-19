FROM --platform=linux/amd64 cimg/python:3.10.15

RUN curl -sSL https://install.python-poetry.org | python3 - --version 1.8.5

