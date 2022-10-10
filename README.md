# Test Flask App Deployment
'Hello World!' example of flask app deployment using docker.


## Create virtual environment
```
python -m venv .venv
```

## Activate virtual enviroment
```
source .venv/bin/activate
```

## Export python dependencies to a file
```
pip3 freeze > requirements.txt
```

## Build docker image
```
docker build -t <image-name>:latest .
```

## Run image in daemon mode
```
docker run -it -d -p 5013:5013 <image-name>
```
