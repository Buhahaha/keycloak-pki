FROM registry.access.redhat.com/ubi9/nginx-122

# Copy custom config and certs
COPY default.conf /etc/nginx/conf.d/default.conf
COPY certs/ /etc/nginx/certs/

# Set entrypoint to run nginx
CMD ["nginx", "-g", "daemon off;"]
