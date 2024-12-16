FROM google/cloud-sdk:alpine:502.0.0-alpine
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
