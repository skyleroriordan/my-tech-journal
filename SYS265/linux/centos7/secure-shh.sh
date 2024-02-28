#secure-ssh.sh
#author skyleroriordan
#creates a new ssh user using $1 parameter
#adds a public key from the local repo or cureld from the remote repo
#removes roots ability to shh in
echo "ALL YOUR CODE GOES HERE"
sudo useradd -m -d /home/testuser12 -s /bin/bash testuser12
sudo mkdir /home/testuser12/.ssh
sudo cp SYS265/linux/public-keys/id_rsa.pub /home/testuser12.ssh/authorized_keys
sudo chmod 700 /home/testuser12/.ssh
sudo chmod 600 /home/testuser12/.ssh/authorized_keys
sudo chown -R testuser12:testuser12 /home/testuser12/.ssh
