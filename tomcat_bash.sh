yum install docker -y
service docker start
useradd dockeradmin
passwd dockeradmin
usermod -aG docker dockeradmin
sed -i 's/^PasswordAuthentication no$/PasswordAuthentication yes/' /etc/ssh/sshd_config
service sshd reload
