# Abuild

[![](https://badge.imagelayers.io/webhippie/abuild:latest.svg)](https://imagelayers.io/?images=webhippie/abuild:latest 'Get your own badge on imagelayers.io')

These are docker images for [Abuild](http://wiki.alpinelinux.org/wiki/Include:Abuild) running on an
[Alpine Linux container](https://registry.hub.docker.com/u/webhippie/alpine/).


## Usage

```bash
docker run -ti \
  --name abuild \
  --volume $(pwd)/package:/package \
  --volume $(pwd):/build \
  webhippie/abuild:latest
```


## Versions

* [latest](https://github.com/dockhippie/abuild/tree/master)
  available as ```webhippie/abuild:latest``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/abuild/)


## Available environment variables

```bash
ENV PACKAGER Thomas Boerger <thomas@webhippie.de>
ENV PACKAGER_PRIVKEY /etc/apk/keys/abuild.rsa
```


## Inherited environment variables

```bash
ENV LOGSTASH_ENABLED false
ENV LOGSTASH_HOST logstash
ENV LOGSTASH_PORT 5043
ENV LOGSTASH_CA /etc/ssl/logstash/certs/ca.pem # As string or filename
ENV LOGSTASH_CERT /etc/ssl/logstash/certs/cert.pem # As string or filename
ENV LOGSTASH_KEY /etc/ssl/logstash/private/cert.pem # As string or filename
ENV LOGSTASH_TIMEOUT 15
ENV LOGSTASH_OPTS
```


## Contributing

Fork -> Patch -> Push -> Pull Request


## Authors

* [Thomas Boerger](https://github.com/tboerger)


## License

MIT


## Copyright

```
Copyright (c) 2015 Thomas Boerger <http://www.webhippie.de>
```
