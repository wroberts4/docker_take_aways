# syntax = docker/dockerfile:1.3
FROM python:3.9-slim-bullseye
RUN --mount=type=secret,id=aws,target=/root/.aws/credentials echo "Secret is" && cat /root/.aws/credentials
