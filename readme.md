## Django web app

This is a simple django app that serves a static template at the root.

## Running the web app

- Requires  docker

1. Build image from Dockerfile

```
sudo docker build -t django-app .
```

2. Run container from image

```
sudo docker run -d -p 127.0.0.1:8000:8000 django-app
```
