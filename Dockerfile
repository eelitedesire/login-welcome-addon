ARG BUILD_FROM
FROM $BUILD_FROM

# Copy root filesystem
COPY rootfs /

# Setup base
RUN apk add --no-cache \
        nginx

# Copy data
COPY run.sh /
COPY www /www

# Expose ports
EXPOSE 8080

# Start services
CMD [ "/run.sh" ]
