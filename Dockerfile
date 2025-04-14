FROM nginx:alpine

# Install bash
RUN apk add --no-cache bash

# Create directory structure explicitly
RUN mkdir -p /usr/share/nginx/html/css
RUN mkdir -p /usr/share/nginx/html/js
RUN mkdir -p /usr/share/nginx/html/img

# Copy website files with explicit permissions
COPY index.html /usr/share/nginx/html/
COPY css/styles.css /usr/share/nginx/html/css/
COPY img/placeholder.svg /usr/share/nginx/html/img/

# Use shell commands to handle empty directories
RUN if [ -d "js" ] && [ "$(ls -A js 2>/dev/null)" ]; then \
    cp -r js/* /usr/share/nginx/html/js/ 2>/dev/null || true; \
    fi

# Set proper permissions
RUN chmod -R 755 /usr/share/nginx/html

# Copy nginx configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Set bash as default shell
SHELL ["/bin/bash", "-c"]

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
