
sudo userdel GAhattleburg
sudo usermod -aG CEO ASjohnson 

mkdir -p PlanetGreen/DEIB
sudo groupadd DEIB


groupname="DEIB"
usernames=("ASjohnson" "ENgraham" "DSsanchez" "XJhurston" "RKjames" "KAcorinth" "RRwinthrow" "TYCorson")

# Use the usermod command to add users to the group
#sudo usermod -aG "$groupname" "$usernames"

# Loop through the array and add each user to the group
for username in "${usernames[@]}"; do
    sudo usermod -aG "$groupname" "$username"
done

tail -3 /etc/group

# As this is also meant to be a collaborative space, make sure that no one but the 
# owner of the file can delete any files created
sudo chmod 1770 PlanetGreen/DEIB

#Day3

sudo useradd -G CEO -c "Sarah J. Huckleberry, CEO" -m SJhuckleberry
sudo gpasswd -d ASjohnson CEO
groups ASjohnson

sudo useradd -r -s /usr/sbin/nologin dev_TEST
tail -1 /etc/passwd

cd ~
cd Git/DonnaLab/PlanetGreen/Earth/IT/Systems\ Administration/
mkdir -p backup
sudo cp /etc/shadow "Systems Administration/backup/"
sudo cp /etc/sysconfig/network-scripts/ifcfg-* "Systems Administration/backup/"
sudo cp /etc/resolv.conf "Systems Administration/backup/"
sudo cp /etc/hosts "Systems Administration/backup/"
sudo cp /etc/yum.conf "Systems Administration/backup/"
