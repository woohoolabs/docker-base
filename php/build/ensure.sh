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

echo -e "\nBLACKFIRE"
echo "------------------------------------------------------------"
php --ri blackfire

echo -e "\nMYSQL CLIENT"
echo "------------------------------------------------------------"
mysql -V

echo -e "\nSUPERVISOR"
echo "------------------------------------------------------------"
supervisord -v
