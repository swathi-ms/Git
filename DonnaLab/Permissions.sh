#[ec2-user@ip-172-31-30-251 DonnaLab]$ Under DonnaLab
# The group corresponding to a department should be the owner of the directory and the file within the 
# directory. (i.e. - the group IT should have group ownership 
# of the IT directory

sudo chown -R :IT PlanetGreen/Earth/IT
sudo chown -R :Finance PlanetGreen/Earth/Finance
sudo chown -R :HR PlanetGreen/Earth/HR
sudo chown -R :Operations PlanetGreen/Earth/Operations

#No other department should have any permissions associated with another 
#departments directory. (i.e. - HR should not have any permissions or access to 
#IT's directory)

sudo chmod 770 PlanetGreen/Earth/IT
sudo chmod 770 PlanetGreen/Earth/HR
sudo chmod 770 PlanetGreen/Earth/Finance
sudo chmod 770 PlanetGreen/Earth/Operations

#The management group of each department should have full rights to the 
#management folder. No one else in the department should have access to the 
#management directory of that department if they are not part of the 
#management group. (i.e. - IT_Management group should be the owner of the 
#Management subdirectory of IT)

sudo chown :IT_Management PlanetGreen/Earth/IT/Management
sudo chown :HR_Management PlanetGreen/Earth/HR/Management
sudo chown :Fin_Management PlanetGreen/Earth/Finance/Management
sudo chown :Op_Management PlanetGreen/Earth/Operations/Management

#The creator of the file is the only one who can delete the file
#The permission 1770 is used here:
#The first digit (1) sets the sticky bit.
#The second digit (7) grants read, write, and execute permissions to the owner (the creator of the file).
#The third digit (7) grants the same permissions to the group (filegroup).
#The fourth digit (0) denies permissions to others.
#The sticky bit ensures that only the file owner (creator) can delete their own files within this directory.


sudo chmod 1770 PlanetGreen/Earth/IT
sudo chmod 1770 PlanetGreen/Earth/HR
sudo chmod 1770 PlanetGreen/Earth/Finance
sudo chmod 1770 PlanetGreen/Earth/Operations

# Genoa Hattleburg should have read access at a bare minimum to all files in the 
# IT, Executive, HR, Finance and Operations directories. If she is a part of the 
# group, she should have the level of access afforded by the group.
# These commands grant read access (read permission) to all users and groups (go) for all files and 
# directories (+rX) within each department directory.

sudo chmod -R go+rX PlanetGreen/Earth/IT
sudo chmod -R go+rX PlanetGreen/Earth/HR
sudo chmod -R go+rX PlanetGreen/Earth/Finance
sudo chmod -R go+rX PlanetGreen/Earth/Operations

chmod 777 Day2.sh
./Day2.sh