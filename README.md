# docker-staticweb

Deliciously lean utility for testing Javascript / Single-Page Applications.

A super-lightweight (5.6**MB**!) Docker container to expose a local folder as a website over HTTP. 

## Usage

```console
docker run -ti -d -v /path/to/local/folder:/www irakli/staticwebsite -p 8000 --name demo_www
```

You can replace:

1. /path/to/local/folder - with whatever folder you want to publish over HTTP, on the host
2. 8000 - with whatever port you want to serve the website on (it has to be higher than 1000 due to Unix permissions however)
3. demo_www - with whatever you would like the container name to be
