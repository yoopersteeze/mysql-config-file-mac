#!/bin/bash
echo "This script will now remove all MySQL files from the system."
rm -rf /usr/local/mysql*
rm -rf /usr/local/var/mysql
rm -rf /Library/StartupItems/MySQLCOM
rm -rf /Library/PreferencePanes/My*
rm -rf /Library/Receipts/mysql*
rm -rf /var/db/receipts/com.mysql.*
rm -rf /var/mysql
echo "Removing previous mysql preferences"
rm -rf /Library/Receipts/mysql*
rm -rf /Library/Receipts/MySQL*
rm -rf /private/var/db/receipts/*mysql*
rm -rf /usr/bin/mysql*
echo "Moving my.cnf to my.cnf.bak"
mv /etc/my.cnf /etc/my.cnf.bak
echo "This script has finished removing MySQL from the system, and will now remove it from any startup or launch processes."
rm -rf /Library/LaunchDaemons/*mysql*
rm -rf /Library/LaunchAgents/*mysql*
rm -rf /System/Library/LaunchDaemons/*mysql*
rm -rf /System/Library/LaunchAgents/*mysql*
echo "Finished! Please restart the entire server."
exit 0
