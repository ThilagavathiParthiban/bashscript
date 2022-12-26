#Ubuntu image
FROM ubuntu

# Install Nginx
RUN apt-get -y update && apt-get install nginx  -y
RUN apt-get install vim  -y
RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add -
RUN apt-add-repository "deb [arch=$(dpkg --print-architecture)] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
RUN apt update && apt install terraform -y
RUN export AWS_ACCESS_KEY_ID=AKIA5DHTYCMBDIYTGO6R
RUN export AWS_SECRET_ACCESS_KEY=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
COPY *.tf /
RUN terraform init

# Copy the Nginx config
COPY default /etc/nginx/sites-available/default

COPY index.html /usr/share/nginx/html
COPY style.css /usr/share/nginx/html

# Expose the port for access
EXPOSE 80/tcp

# Run the Nginx server
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
