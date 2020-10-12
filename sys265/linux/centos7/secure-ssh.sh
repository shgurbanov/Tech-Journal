#author walber
#creates a new ssh user using $1 parameter
#adds a public key from the local repo or curled from the remote repo
#removes roots ability to ssh in
sudo useradd -m -d /home/sys276 -s bin/bash sys265
sudo mkdir /home/sys265/.ssh
sudo cp SYS265/linux/public-keys/id_rsa.pub /home/sys265/.ssh/authorized_keys
sudo chmod 700 /home/sys265/.ssh
sudo chmod 600 /home/sys265/.ssh/authorized_keys
sudo chown -R sys265:sys265 /home/sys265/.ssh
