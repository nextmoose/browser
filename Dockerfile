FROM fedora:27
RUN \
    dnf update --assumeyes && \
        adduser user
USER user
WORKDIR /home/user
VOLUME /home
ENTRYPOINT ["chromium-browser"]
CMD []