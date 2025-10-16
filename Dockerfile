# Runs as non-root out of the box
FROM nginxinc/nginx-unprivileged:stable-alpine

# Copy only the public site assets
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/

# Optional healthcheck
HEALTHCHECK --interval=30s --timeout=3s --start-period=15s \
  CMD wget -qO- http://127.0.0.1:8080/ || exit 1

