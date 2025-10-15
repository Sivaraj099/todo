# Use a small web server image
FROM nginx:alpine

# Copy your app files into the nginx web folder
COPY . /usr/share/nginx/html
