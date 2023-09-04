generate_username() {
first_initial=${1:0:1}            # First initial
middle_initial=${2:0:1}           # Middle initial or hyphen
last_name=${3,,}                 # Convert last name to lowercase

# Check if the generated username already exists
count=1
username="${first_initial}${middle_initial}${last_name}"
while id "$username" &>/dev/null; do
count=$((count + 1))
username="${first_initial}${middle_initial}${last_name}${count}"
done

echo "$username"
}
full_name = "Genoa A. Hattleburg"
username=$(generate_username "Genoa" "A" "Hattleburg")
sudo useradd -c "$fullname" $username
echo "Generated username: $username"
echo "Full name: $full_name"
sudo groupadd CEO
sudo usermod -aG CEO $username

