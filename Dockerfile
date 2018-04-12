FROM fedora:27
RUN \
    dnf update --assumeyes && \
        dnf install --assumeyes gnupg gnupg pass findutils curl unzip && \
        cd /usr/local/bin && \
        curl --output browserpass-linux64.zip https://github.com/dannyvankooten/browserpass/releases/download/2.0.19/browserpass-linux64.zip && \
        unzip browserpass-linux64.zip && \
        bash install.sh && \
        adduser user
USER user
COPY init.user.sh post.user.sh /opt/browser/
ENTRYPOINT ["chromium-browser"]
CMD []