Jekyll Server
=============

Docker Container running a Jekyll server. It watches the content of a directory and if it changes it rebuilds the site.

## Usage

```
$ docker run -v <site-source>:/data -p <port>:4000 praqma/jekyll-server

```

The \<site-source> is the directory on the Docker host with the source for the site. The site can be view as html on http://\<host-ip>:\<port>

