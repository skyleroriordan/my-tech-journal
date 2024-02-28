#secure-ssh.sh
#author skyleroriordan
#creates a new ssh user using $1 parameter
#adds a public key from the local repo or cureld from the remote repo
#removes roots ability to shh in
echo "ALL YOUR CODE GOES HERE"
sudo useradd -m -d /home/"$1" -s /bin/bash "$1"
sudo mkdir /home/"$1"/.ssh
sudo cp /home/skyler/my-tech-journal/SYS265/linux/public-keys/id_rsa.pub /home/"$1"/.ssh/authorized_keys
sudo chmod 700 /home/"$1"/.ssh
sudo chmod 600 /home/"$1"/.ssh/authorized_keys
sudo chown -R "$1":"$1" /home/"$1"/.ssh
