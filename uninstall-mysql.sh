#!/bin/bash
​
#This script will completely uninstall MySQL from an OS X machine. Restart after the script has completed.
​
#A complete uninstall of MySQL is recommended for any MySQL upgrade or downgrade and several MySQL issues, but the process for OS X is very in-depth, and so this script was created. Use it within the walls of JAMF Software, but if you want to use it with a customer, please check it yourself to make sure you don't spot any errors.
​
#DO NOT FORGET. After the server is restarted following this script, run a "ps auxww | grep mysql" to verify that there are no MySQL processes running. Also, edit the /etc/hostconfig file and remove the line MYSQLCOM=-YES-
​
#Aaron Wengerd 2016
​
echo "This script will now remove all MySQL files from the system."
​
sudo rm -r /usr/local/mysql*
​
sudo rm -r /Library/StartupItems/MySQLCOM
​
sudo rm -r /Library/PreferencePanes/My*
​
sudo rm -r /Library/Receipts/mysql*
​
sudo rm -r /var/db/receipts/com.mysql.*
​
sudo rm -r /var/mysql
​
sudo rm -r /etc/my.cnf
​
sudo rm -r /usr/bin/mysql*
​
echo "This script has finished removing MySQL from the system, and will now remove it from any startup or launch processes."
​
sudo rm -r /Library/LaunchDaemons/*mysql*
​
sudo rm -r /Library/LaunchAgents/*mysql*
​
sudo rm -r /System/Library/LaunchDaemons/*mysql*
​
sudo rm -r /System/Library/LaunchAgents/*mysql*
​
echo "Finished! Please restart your server."
