echo "in the .sh. Making Directories and adding users."

sudo yum install  tree

mkdir PlanetGreen
mkdir -p PlanetGreen/Earth
mkdir -p PlanetGreen/Fire PlanetGreen/Wind PlanetGreen/Water PlanetGreen/Heart
tree
mkdir -p PlanetGreen/Earth/IT/Management PlanetGreen/Earth/IT/Engineering PlanetGreen/Earth/IT/Systems\ Administration PlanetGreen/Earth/IT/Security PlanetGreen/Earth/IT/Networking
tree
mkdir PlanetGreen/Earth/Executive
mkdir PlanetGreen/Earth/HR
mkdir PlanetGreen/Earth/HR/Management PlanetGreen/Earth/HR/Audit PlanetGreen/Earth/HR/Payroll PlanetGreen/Earth/HR/Benefits PlanetGreen/Earth/HR/Policies
tree
cd PlanetGreen/Earth/HR
find . -type d | while read -r directory; do     mkdir "$directory/2023"; done
rmdir 2023
find . -type d | while read -r directory; do     mkdir "$directory/2024"; done
tree
rmdir 2024
tree
rmdir Audit/2023/2024 Benefits/2023/2024 Management/2023/2024 Payroll/2023/2024 Policies/2023/2024
tree
cd ~
cd Git/DonnaLab/
mkdir PlanetGreen/Earth/Finance
mkdir PlanetGreen/Earth/Finance/Management  PlanetGreen/Earth/Finance/Expense\ Reports  PlanetGreen/Earth/Finance/Budgets
tree
#cd PlanetGreen/Earth/Finance/Expense\ Reports/
mkdir PlanetGreen/Earth/Finance/Expense\ Reports/2023
cd ~/Git/DonnaLab/PlanetGreen/Earth/Finance/Expense\ Reports/2023/
mv ~/Git/DonnaLab/create_monthly_directories.sh .
tree
chmod 777 create_monthly_directories.sh
./create_monthly_directories.sh
tree
cd ~
cd Git/DonnaLab/
mkdir PlanetGreen/Earth/Finance/Budgets/proposed PlanetGreen/Earth/Finance/Budgets/Actual
tree
mkdir PlanetGreen/Earth/Operations
mkdir PlanetGreen/Earth/Operations/Management PlanetGreen/Earth/Operations/Customer\ Care PlanetGreen/Earth/Operations/Sales
tree
