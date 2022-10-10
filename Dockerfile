FROM alpine:latest

RUN apk add --no-cache python3 \
    && apk add py3-pip \
    && pip3 install --upgrade pip

WORKDIR /app
COPY . /app

RUN pip3 install --no-cache-dir -r requirements.txt

EXPOSE 5000

ENTRYPOINT [ "python3" ]
CMD [ "app.py" ]