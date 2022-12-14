FROM alpine:latest

RUN apk add --no-cache python3 \
    && apk add --no-cache py3-pip \
    && pip3 --no-cache-dir install --upgrade pip

WORKDIR /app
COPY . /app

RUN pip3 --no-cache-dir install -r requirements.txt

EXPOSE 5013

ENTRYPOINT [ "python3" ]
CMD [ "app.py" ]