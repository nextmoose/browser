FROM fedora:27
RUN \
    dnf update --assumeyes && \
        dnf install --assumeyes gnupg gnupg pass findutils && \
        adduser user
USER user
COPY init.user.sh post.user.sh /opt/browser/
ENTRYPOINT ["chromium-browser"]
CMD []