FROM nginx:alpine

# Install bash
RUN apk add --no-cache bash

# Copy website files
COPY . /usr/share/nginx/html/

# Copy nginx configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Set bash as default shell
SHELL ["/bin/bash", "-c"]

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
