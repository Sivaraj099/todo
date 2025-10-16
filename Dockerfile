# ❌ Deliberately old base image to trigger HIGH/CRITICAL CVEs
FROM nginx:1.19.0-alpine

# Copy static site
COPY index.html /usr/share/nginx/html/
COPY style.css  /usr/share/nginx/html/

# Healthcheck on port 80 (default nginx)
HEALTHCHECK --interval=30s --timeout=3s --start-period=15s \
  CMD wget -qO- http://127.0.0.1:80/ || exit 1
