echo "in the .sh. Making Directories."

sudo yum install  tree

mkdir PlanetGreen
mkdir -p PlanetGreen/Earth
mkdir -p PlanetGreen/Fire PlanetGreen/Wind PlanetGreen/Water PlanetGreen/Heart
#tree
mkdir -p PlanetGreen/Earth/IT/Management PlanetGreen/Earth/IT/Engineering PlanetGreen/Earth/IT/Systems\ Administration PlanetGreen/Earth/IT/Security PlanetGreen/Earth/IT/Networking
#tree
mkdir PlanetGreen/Earth/Executive
mkdir PlanetGreen/Earth/HR
mkdir PlanetGreen/Earth/HR/Management PlanetGreen/Earth/HR/Audit PlanetGreen/Earth/HR/Payroll PlanetGreen/Earth/HR/Benefits PlanetGreen/Earth/HR/Policies
#tree
cd PlanetGreen/Earth/HR
find . -type d | while read -r directory; do     mkdir "$directory/2023"; done
rmdir 2023
find . -type d | while read -r directory; do     mkdir "$directory/2024"; done
#tree
rmdir 2024
#tree
rmdir Audit/2023/2024 Benefits/2023/2024 Management/2023/2024 Payroll/2023/2024 Policies/2023/2024
#tree
cd ~
cd Git/DonnaLab/
mkdir PlanetGreen/Earth/Finance
mkdir PlanetGreen/Earth/Finance/Management  PlanetGreen/Earth/Finance/Expense\ Reports  PlanetGreen/Earth/Finance/Budgets
#tree
mkdir PlanetGreen/Earth/Finance/Expense\ Reports/2023
cd ~/Git/DonnaLab/PlanetGreen/Earth/Finance/Expense\ Reports/2023/
mv ~/Git/DonnaLab/create_monthly_directories.sh .
#tree
chmod 777 create_monthly_directories.sh
./create_monthly_directories.sh
#tree
cd ~
cd Git/DonnaLab/
mkdir PlanetGreen/Earth/Finance/Budgets/proposed PlanetGreen/Earth/Finance/Budgets/Actual
#tree
mkdir PlanetGreen/Earth/Operations
mkdir PlanetGreen/Earth/Operations/Management PlanetGreen/Earth/Operations/Customer\ Care PlanetGreen/Earth/Operations/Sales
tree
# For Bank Fire
mkdir -p PlanetGreen/Fire/IT/Management PlanetGreen/Fire/IT/Engineering PlanetGreen/Fire/IT/Systems\ Administration PlanetGreen/Fire/IT/Security PlanetGreen/Fire/IT/Networking
#tree
mkdir PlanetGreen/Fire/Executive
mkdir PlanetGreen/Fire/HR
mkdir PlanetGreen/Fire/HR/Management PlanetGreen/Fire/HR/Audit PlanetGreen/Fire/HR/Payroll PlanetGreen/Fire/HR/Benefits PlanetGreen/Fire/HR/Policies
#tree
cd PlanetGreen/Fire/HR
find . -type d | while read -r directory; do     mkdir "$directory/2023"; done
rmdir 2023
find . -type d | while read -r directory; do     mkdir "$directory/2024"; done
#tree
rmdir 2024
#tree
rmdir Audit/2023/2024 Benefits/2023/2024 Management/2023/2024 Payroll/2023/2024 Policies/2023/2024
#tree
cd ~
cd Git/DonnaLab/
mkdir PlanetGreen/Fire/Finance
mkdir PlanetGreen/Fire/Finance/Management  PlanetGreen/Fire/Finance/Expense\ Reports  PlanetGreen/Fire/Finance/Budgets
#tree
mkdir PlanetGreen/Fire/Finance/Expense\ Reports/2023
cd ~/Git/DonnaLab/PlanetGreen/Fire/Finance/Expense\ Reports/2023/
mv ~/Git/DonnaLab/create_monthly_directories.sh .
#tree
#chmod 777 create_monthly_directories.sh
./create_monthly_directories.sh
#tree
cd ~
cd Git/DonnaLab/
mkdir PlanetGreen/Fire/Finance/Budgets/proposed PlanetGreen/Fire/Finance/Budgets/Actual
#tree
mkdir PlanetGreen/Fire/Operations
mkdir PlanetGreen/Fire/Operations/Management PlanetGreen/Fire/Operations/Customer\ Care PlanetGreen/Fire/Operations/Sales
tree