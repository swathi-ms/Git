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


#username=$(generate_username "Genoa" "A" "Hattleburg")
#echo "$username"
sudo useradd -G CEO -c "Genoa A. Hattleburg, CEO" -m GAhattleburg
sudo useradd -G Finance -c "Arthur S. Johnson, CFO" -m ASjohnson
sudo groupadd CFO
sudo useradd -G HR -c "Erika N. Graham, CHRO" -m ENgraham
sudo useradd -G Operations -c "Daniella S. Sanchez, COO" -m DSsanchez
sudo useradd -G IT -c "Xavier J. Hurston, CIO" -m XJhurston
sudo useradd -G IT_Management -c "Michael R. Jones, Director" -m MRjones
sudo usermod -aG Engineering,Systems_Administration,Security,Networking MRjones
sudo useradd -G IT_Management -c "Jessica L. Bach, Manager, Engineering" -m JLbach
sudo usermod -aG Engineering JLbach
sudo useradd -G Engineering -c "Raphael K. James, Associate Developer" -m RKjames
sudo useradd -G Engineering -c "Mona S. Rupert, Associate Developer" -m MSrupert
sudo useradd -G IT_Management -c "Hannah D. St.James, Manager, Systems Administration" -m HDst.james
sudo usermod -aG Systems_Administration HDst.james
sudo useradd -G Systems_Administration -c "Donna D. Bradshaw, Systems Administrator" -m DDbradshaw
sudo useradd -G Systems_Administration -c "Johanas Y. Simon, Systems Administrator" -m JYsimon
sudo useradd -G IT_Management -c "David A. Rames, Sr. Manager, Security" -m DArames
sudo usermod -aG Security DArames
sudo useradd -G Security -c "Gordon N. Lee, Security Analyst" -m GNlee
sudo useradd -G Security -c "Frederico S. North, Security Analyst" -m FSnorth
sudo useradd -G IT_Management -c "Amos K. Long, Sr. Manager, Networking" -m AKlong
sudo usermod -aG Networking AKlong
sudo useradd -G Networking -c "Hazel J. Uriah, Network Engineer" -m HJuriah
sudo useradd -G Networking -c "Gary N. Lee, Network Engineer" -m GNlee1
sudo useradd -G HR -c "Joana L. Henry, Director, Human Resources" -m JLhenry
sudo usermod -aG HR_Management JLhenry
sudo useradd -c "Kyle S. Hendrick, Human Resources Associate" -m KShendrick
sudo useradd -c "Katrina A. Corinth, Human Resources Associate" -m KAcorinth
sudo useradd -G Fin_Management -c "Jonathan S. Brown, Director of Finance" -m JSbrown
sudo useradd -c "Robert R. Winthrow, Sr. Financial Associate" -m RRwinthrow
sudo useradd -c "Melissa A. Keet, Sr. Financial Associate" -m MAkeet
sudo useradd -G Op_Management -c "Tracey E. Smith, Director of Operations" -m TEsmith
sudo usermod -aG Customer_Care,Sales TEsmith
sudo useradd -G Op_Management -c "Elizabeth V. Querrell, Sr. Manager, Customer Care" -m EVquerrell
sudo usermod -aG Customer_Care EVquerrell
sudo useradd -G Customer_Care -c "Tisha Y. Corson, Teller 2" -m TYCorson
sudo useradd -G Customer_Care -c "Byron J. Graham, Teller 3" -m BJgraham
sudo useradd -G Op_Management -c "Jordan T. Curry, Sr. Sales Manager" -m JTcurry
sudo usermod -aG Sales JTcurry
sudo useradd -G Sales -c "Bryson J. Gomez, Commercial Sales Representative" -m BJgomez
sudo useradd -G Sales -c "Alicia T. Stone, Customer Sales Representative" -m ATstone

tail -40 /etc/passwd
tail -50 /etc/group

chmod 777 Permissions.sh
./Permissions.sh