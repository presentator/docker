FROM alpine:latest

ARG PR_VERSION=3.4.12

RUN apk add --no-cache \
    unzip \
    ca-certificates

# download and unzip Presentator
ADD https://github.com/presentator/presentator/releases/download/v${PR_VERSION}/presentator_${PR_VERSION}_linux_amd64.zip /tmp/pr.zip
RUN unzip /tmp/pr.zip -d /pr/

EXPOSE 8080

# start Presentator
CMD ["/pr/presentator", "serve", "--http=0.0.0.0:8080"]
