#Ubuntu image
FROM ubuntu

# Install Nginx
RUN apt-get install nginx  -y
RUN apt-get install vim  -y

# Copy the Nginx config
COPY default /etc/nginx/sites-available/default

COPY index.html /usr/share/nginx/html
COPY style.css /usr/share/nginx/html

# Expose the port for access
EXPOSE 80/tcp

# Run the Nginx server
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
