# bash
bash scripts to automate services checking and more

first: make scripts executable by using chmod +x service_check.sh


second: use crontab -e to edit crontabs and automate the run of service_check.sh every minute


 --- #every minute check ssh and service

*/1 * * * * cd /home/el/z_scripts && sh service_check.sh ssh >> /home/el/z_scripts/cronlogs/logs.log 2>&1




* * * * *

m h dom mon dow

 --- it will make logs on /home/el/z_scripts/cronlogs/ or any other specified path | use mkdir -p /opt/haw/hau/bau/bau to make all directory structure from single command
