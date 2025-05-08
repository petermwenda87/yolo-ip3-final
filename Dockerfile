FROM ubuntu:20.04

# Disable prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install SSH and required packages
RUN apt-get update && \
    apt-get install -y openssh-server sudo curl && \
    mkdir /var/run/sshd && \
    echo 'root:vagrant' | chpasswd && \
    sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config && \
    sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config && \
    echo "UseDNS no" >> /etc/ssh/sshd_config && \
    mkdir -p /root/.ssh

# SSH daemon must run in foreground
CMD ["/usr/sbin/sshd", "-D"]

