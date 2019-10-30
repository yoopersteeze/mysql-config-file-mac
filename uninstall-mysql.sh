#!/bin/bash
echo "This script will now remove all MySQL files from the system."
rm -r /usr/local/mysql*
rm -r /Library/StartupItems/MySQLCOM
rm -r /Library/PreferencePanes/My*
rm -r /Library/Receipts/mysql*
rm -r /var/db/receipts/com.mysql.*
rm -r /var/mysql
rm -r /etc/my.cnf
rm -r /usr/bin/mysql*
echo "This script has finished removing MySQL from the system, and will now remove it from any startup or launch processes."
rm -r /Library/LaunchDaemons/*mysql*
rm -r /Library/LaunchAgents/*mysql*
rm -r /System/Library/LaunchDaemons/*mysql*
rm -r /System/Library/LaunchAgents/*mysql*
echo "Finished! Please restart your server."
