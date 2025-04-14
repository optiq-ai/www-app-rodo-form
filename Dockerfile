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

# Copy js directory if it exists and is not empty
COPY js/* /usr/share/nginx/html/js/ 2>/dev/null || :

# Copy img directory if it exists and is not empty
COPY img/.gitkeep /usr/share/nginx/html/img/ 2>/dev/null || :

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
