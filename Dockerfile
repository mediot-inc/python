FROM --platform=linux/amd64 ghcr.io/astral-sh/uv:0.6.0 AS uv_builder
FROM --platform=linux/amd64 cimg/python:3.13.1

COPY --from=uv_builder /uv /uvx /bin/
ADD --chmod=755 https://downloads.snyk.io/cli/stable/snyk-linux?_gl=1*5o7qwv*_gcl_au*MjA1Nzg4NDgzNC4xNzQwNTUzMDYx*_ga*MTAyNzcxNTMyMi4xNzQwMTMyMDg4*_ga_X9SH3KP7B4*MTc0MDU2NTU5Ni42LjEuMTc0MDU2NTY3My41OC4wLjA. /usr/local/bin/snyk
RUN sudo apt-get update && sudo apt-get install -y --no-install-recommends \
    graphviz \
	graphviz-dev \
    && sudo rm -rf /var/lib/apt/lists/*
