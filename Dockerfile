FROM nginx:alpine

# Install bash
RUN apk add --no-cache bash

# Create directory structure explicitly
RUN mkdir -p /usr/share/nginx/html

# Copy only the essential files
COPY index.html /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Set proper permissions
RUN chmod -R 755 /usr/share/nginx/html

# Set bash as default shell
SHELL ["/bin/bash", "-c"]

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
