# docker-staticweb

Tiny utility for testing Javascript / Single-Page Applications.

A super-lightweight (1.1**MB**!) Docker container exposes local folder as a website over HTTP. 

## Usage

Put following line in your startup file (.profile or .bashrc or .bash_profile):

```console
alias servehttp='docker run -d -v `pwd`:/www -p 8000 irakli/staticwebsite'
```

Restart terminal and anytime you need to serve the current folder run `servehttp` in the root of your HTML files. Docker will assign a random port number to the web-server that you will need to find by running `docker ps` and identifying proper container.


If you want the port number to always be some predefined one (e.g. 7878) your alias should look like:

```
alias servehttp="docker run -d -v `pwd`:/www -p 7878:8000 irakli/staticwebsite"
```

However, in this case you will only be able to serve one folder at a time, since you cannot bind two servers on the same port.


## Advanced Usage

```console
docker run -d -v /path/to/local/folder:/www -p 3333:8000 --name demo_www irakli/staticwebsite
```

You can see your webapp/website being served at: http://<docker-ip>:3333/
If you are using Docker on Linux or are using Docker for Mac or Docker for Windows the 
<docker-ip> is 0.0.0.0, otherwise you can find it using `docker-machine ls`

You can replace:

1. /path/to/local/folder - with whatever folder you want to publish over HTTP, on the host
2. 3333 - with whatever port you want to serve the website on (it has to be higher than 1000 due to Unix permissions however)
3. demo_www - with whatever you would like the container name to be.
