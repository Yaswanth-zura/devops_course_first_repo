# Use official Nginx image
FROM nginx:latest

# Remove default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your web app files to nginx directory
COPY . /usr/share/nginx/html

# Expose port 80
#EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]

