echo "in the DownloadingTree.sh. About to install tree command"

sudo yum install git -y
git clone https://github.com/swathi-ms/Git.git
cd Git/DonnaLab/
chmod 777 DownloadingTree.sh
ls -l
sudo yum install tree -y