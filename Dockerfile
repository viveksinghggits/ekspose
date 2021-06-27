FROM alpine

COPY ./ekspose /usr/loca/bin/ekspose

ENTRYPOINT [ "/usr/loca/bin/ekspose" ]
