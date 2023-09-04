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
}

sudo groupadd CEO
sudo groupadd Finance
sudo groupadd HR
sudo groupadd Operations
sudo groupadd IT
sudo groupadd IT_Management
sudo groupadd Engineering
sudo groupadd Systems_Administration
sudo groupadd Security
sudo groupadd Networking
sudo groupadd HR_Management
sudo groupadd Fin_Management
sudo groupadd Op_Management
sudo groupadd Customer_Care
sudo groupadd Sales


username=$(generate_username "Genoa" "A" "Hattleburg")
sudo useradd -G CEO -c "Genoa A. Hattleburg, CEO" -m $username

username=$(generate_username "Arthur" "S" "Johnson")
sudo useradd -G Finance -c "Arthur S. Johnson, CFO" -m $username
sudo groupadd CFO

username=$(generate_username "Erika" "N" "Graham")
sudo useradd -G HR -c "Erika N. Graham, CHRO" -m $username


