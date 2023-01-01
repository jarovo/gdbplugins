ARG  IMAGE=fedora:latest
FROM ${IMAGE}
MAINTAINER jaroslav.henner@gmail.com

COPY tests/simple-install.sh /src/tests/simple-install.sh

RUN /src/tests/simple-install.sh

COPY . /src/
RUN pip3 install --prefix / /src
RUN printf "y\ny\n" | deploy_gdbplugins_loader
RUN /src/tests/run-pry.sh
