# Use a base image with Apache HTTP Server installed
FROM httpd:2.4

# Set the working directory
WORKDIR /usr/local/apache2/htdocs

# Copy the HTML file to the working directory
COPY . .

# Expose port 80
EXPOSE 80
