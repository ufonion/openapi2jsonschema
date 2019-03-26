FROM python:2-alpine
MAINTAINER Ma Yongcong "mayongcong@gmail.com"

COPY . /src
RUN cd src && pip install -e .

WORKDIR /out

ENTRYPOINT ["/usr/local/bin/openapi2jsonschema"]
CMD ["--help"]
