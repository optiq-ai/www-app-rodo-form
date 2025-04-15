FROM nginx:alpine

# Create directory structure
RUN mkdir -p /usr/share/nginx/html/components/css /usr/share/nginx/html/components/html

# Copy the HTML files
COPY index.html /usr/share/nginx/html/
COPY warunki-korzystania.html /usr/share/nginx/html/

# Copy component directories
COPY components/ /usr/share/nginx/html/components/

# Copy images and other assets
COPY images/ /usr/share/nginx/html/images/
COPY img/ /usr/share/nginx/html/img/
COPY css/ /usr/share/nginx/html/css/

# Set proper permissions
RUN chmod -R 755 /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
