FROM nginx:alpine

# Create directory structure
RUN mkdir -p /usr/share/nginx/html

# Copy the HTML file and images directory
COPY index.html /usr/share/nginx/html/
COPY images/ /usr/share/nginx/html/images/

# Set proper permissions
RUN chmod -R 755 /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
