# Download the latest iventoy version
FROM alpine
ARG IVENTOY
WORKDIR /
ADD https://github.com/ventoy/PXE/releases/download/v${IVENTOY}/iventoy-${IVENTOY}-linux-free.tar.gz
RUN tar -xvf *.tar.gz && \
    rm -rf iventoy-${IVENTOY}-linux.tar.gz && \
    mv iventoy-${IVENTOY}/* /
RUN chmod +x /iventoy.sh

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Webui
EXPOSE 26000/tcp
# HTTP server
EXPOSE 16000/tcp
CMD /entrypoint.sh