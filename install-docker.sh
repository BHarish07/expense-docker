#Installation of docker for RHEL9
#we can run this in the instance by following cmd
#curl https://raw.githubusercontent.com/BHarish07/expense-docker/main/install-docker.sh | sudo bash
#the above commnd will directly run as root user
yum install -y yum-utils
yum-config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo
yum install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin 
systemctl start docker
systemctl enable docker
usermod -aG docker ec2-user
newgrp docker

#For ubuntu

# #!/bin/bash
# apt-get  update -y
# apt-get install -y docker.io
# systemctl enable docker 
# systemctl start docker
# usermod -aG docker ubuntu
# newgrp docker

