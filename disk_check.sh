    #!/bin/bash
    #
    #Extract % use for the filesystem
    #Send email warning to if the raid is 80% or more full
    #Include Folder/File sizes of the filesystem directory contents
    #
    df -h | awk '{ print $5 }' | cut -d'%' -f1 | while read usep; do
    if [ $usep -ge 80 ]; then
    echo "***$(hostname) is $usep% FULL at $(date)" > /var/log/fs_report.log
    echo "***Please remove unnecessary data from $(hostname)" >> /var/log/fs_report.log
    echo "***Detailed Folder/File size for BackupServer content:" >> /var/log/fs_report.log
    df -h >> /var/log/fs_report.log
    mail -s "WARNING-bksvr2 $usep% FULL" backup@mydomain.com < /var/log/fs_report.log -- -f "backup@mydomain.com"
    fi
    done