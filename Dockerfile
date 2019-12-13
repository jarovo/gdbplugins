ARG  IMAGE=fedora:latest
FROM ${IMAGE}
MAINTAINER jaroslav.henner@gmail.com

COPY . /src
RUN /src/tests/simple-install.sh
RUN /src/tests/run-pry.sh
