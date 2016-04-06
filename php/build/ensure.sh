#!/usr/bin/env bash

echo -e "\nGIT"
echo "------------------------------------------------------------"
git --version

echo -e "\nPHP"
echo "------------------------------------------------------------"
php -v

echo -e "\nCOMPOSER"
echo "------------------------------------------------------------"
composer --version

echo -e "\nPHP CODE SNIFFER"
echo "------------------------------------------------------------"
phpcs --version

echo -e "\nPHP MASS DETECTOR"
echo "------------------------------------------------------------"
phpmd --version

echo -e "\nPHPMETRICS"
echo "------------------------------------------------------------"
phpmetrics --version

echo -e "\nINISCAN"
echo "------------------------------------------------------------"
iniscan --version

echo -e "\nMYSQL CLIENT"
echo "------------------------------------------------------------"
mysql -V

echo -e "\nSUPERVISOR"
echo "------------------------------------------------------------"
supervisord -v

echo -e "\nMSMTP"
echo "------------------------------------------------------------"
msmtp --version
