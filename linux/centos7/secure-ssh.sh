#SECURE-SSH.sh
#AUTHOR ChampATW
#Creates a new ssh user called $1
#Adds a public key to that users authorized keys file
#Removes roots ability to ssh in
echo "I hope this works!"
sudo useradd sys265
sudo mkdir -p  /home/sys265/ssh
cd ~
sudo cp /home/andrew/wordboi/linux/public-keys/id_rsa.pub /home/sys265/.ssh/authorized_keys
sudo chmod 700 /home/sys265/.ssh
sudo chmod 600 /home/sys265/.ssh/authorized_keys
sudo chown -R sys265:sys265 /home/sys265/.ssh
cat /home/andrew/wordboi/linux/public-keys/id_rsa.pub | ssh root@web01-andrew 'cat >> /root/.ssh/authorized_keys'

echo "Did it work?"
