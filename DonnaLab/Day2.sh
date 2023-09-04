
sudo userdel GAhattleburg
sudo usermod -aG CEO ASjohnson 

mkdir -p PlanetGreen/DEIB
sudo groupadd DEIB


groupname="DEIB"
usernames="ASjohnson,ENgraham,DSsanchez,XJhurston,RKjames,KAcorinth,RRwinthrow,TYCorson"

# Use the usermod command to add users to the group
sudo usermod -aG "$groupname" "$usernames"
