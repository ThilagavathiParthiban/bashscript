#Ubuntu image
FROM ubuntu

# Install Nginx
RUN apt-get -y update && apt-get install nginx  -y && apt-get install software-properties-common -y
RUN apt-get install vim  -y && apt-get install curl -y && apt-get install gnupg  -y  && apt-get install lsb-release -y 
RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add -
RUN apt-add-repository "deb [arch=$(dpkg --print-architecture)] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
RUN apt update && apt install terraform -y
RUN export AWS_ACCESS_KEY_ID=AKIA5DHTYCMBDIYTGO6R
RUN export AWS_SECRET_ACCESS_KEY=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
COPY ../terraform/ec2instance.tf /terraform/ec2instance.tf
RUN terraform init -chdir=/terraform

# Copy the Nginx config
COPY default /etc/nginx/sites-available/default

COPY index.html /usr/share/nginx/html
COPY style.css /usr/share/nginx/html

# Expose the port for access
EXPOSE 80/tcp

# Run the Nginx server
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
