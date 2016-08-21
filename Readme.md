# Requirement
- Docker

# Setup
- Generate a private key(my.domain.key) and a self-signed certificate(my.domain.crt).
- Place my.domain.crt and my.domain.key at repository root directory.
- Add below rules in /etc/hosts

```
example.com YOUR_DOCKER_CONTAINER_IP
ssl.example.com YOUR_DOCKER_CONTAINER_IP
other.example.com YOUR_DOCKER_CONTAINER_IP
```

# How to start
```
docker build -t post-message-sample .
docker run --name post-message-sample --rm -p 80:80 -p 443:443 post-message-sample
```

You need to open https://ssl.example.com/ in a browser and accept self-signed certificate in advance.

After accepting self-signed certificate, open http://example.com/.


