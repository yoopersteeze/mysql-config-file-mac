#!/bin/bash
echo "This script will now remove all MySQL files from the system."
rm -rf /usr/local/mysql*
rm -rf /Library/StartupItems/MySQLCOM
rm -rf /Library/PreferencePanes/My*
rm -rf /Library/Receipts/mysql*
rm -rf /var/db/receipts/com.mysql.*
rm -rf /var/mysql
echo "Moving my.cnf to Desktop"
mv /etc/my.cnf ~/Desktop/
rm -rf /usr/bin/mysql*
echo "This script has finished removing MySQL from the system, and will now remove it from any startup or launch processes."
rm -rf /Library/LaunchDaemons/*mysql*
rm -rf /Library/LaunchAgents/*mysql*
rm -rf /System/Library/LaunchDaemons/*mysql*
rm -rf /System/Library/LaunchAgents/*mysql*
echo "Finished! Please restart the entire server."
