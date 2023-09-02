# iVentoy

A docker image running [iVentoy](https://www.iventoy.com/en/index.html).

## Docker Compose
````
---
version: '3.9'
services:
  iventoy:
    build:
      context: .
      args:
        VERSION: version
    container_name: iventoy
    restart: unless-stopped
    privileged: true #must be true
    ports:
      - 67:67
      - 68:68
      - 69:69
      - 16000:16000
      - 26000:26000
    volumes:
      - /path/to/isos:/iventoy/iso
      - ./data:/iventoy/data
````
It is not necessary to expose all the listed ports depending on use-case
https://www.iventoy.com/en/doc_portnum.html