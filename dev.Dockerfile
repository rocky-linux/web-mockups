FROM centos:8

RUN dnf install -y make librsvg2 epel-release && dnf install -y ImageMagick

CMD [ "bash" ]
