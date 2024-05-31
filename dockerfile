# Use a base image with a web server (e.g., nginx, Apache HTTP Server)
FROM nginx:latest

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy the contents of your website directory into the container
COPY . .

# Expose port 80 to allow external access to the web server
EXPOSE 80

# Command to start the web server when the container starts
CMD ["nginx", "-g", "daemon off;"]
