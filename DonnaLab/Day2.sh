
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

tail -50 /etc/group