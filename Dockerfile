FROM fedora:27
RUN \
    dnf update --assumeyes && \
        dnf install --assumeyes chromium && \
        mkdir /etc/opt/chrome && \
        mkdir /etc/opt/chrome/policies && \
        mkdir /etc/opt/chrome/policies/managed && \
        mkdir /etc/opt/chrome/policies/recommended && \
        chmod -w /etc/opt/chrome/policies/managed && \
        adduser user && \
        dnf clean all
COPY test_policy.json /etc/opt/chrome/policies/managed/test_policy.json
USER user
WORKDIR /home/user
ENTRYPOINT ["chromium"]
CMD []