# Download the latest iventoy version
FROM alpine
ARG VERSION
WORKDIR /
ADD https://github.com/ventoy/PXE/releases/download/v${VERSION}/iventoy-${VERSION}-linux-free.tar.gz
RUN tar -xvf *.tar.gz && \
    rm -rf iventoy-${VERSION}-linux.tar.gz && \
    mv iventoy-${VERSION}/* /
RUN chmod +x /iventoy.sh

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Webui
EXPOSE 26000/tcp
# HTTP server
EXPOSE 16000/tcp
CMD /entrypoint.sh