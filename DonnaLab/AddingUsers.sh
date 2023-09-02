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
cd ~/Git/DonnaLab/
mkdir PlanetGreen/Earth/Finance
tree
cd PlanetGreen/Earth/Finance/Expense\ Reports/
mkdir 2023
cd 2023
