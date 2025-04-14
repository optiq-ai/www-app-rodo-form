FROM nginx:alpine

# Create directory structure
RUN mkdir -p /usr/share/nginx/html

# Copy the HTML file
COPY index.html /usr/share/nginx/html/

# Set proper permissions
RUN chmod -R 755 /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
