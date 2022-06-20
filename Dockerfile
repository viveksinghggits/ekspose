FROM alpine

COPY ./ekspose /usr/local/bin/ekspose

ENTRYPOINT [ "/usr/local/bin/ekspose" ]
