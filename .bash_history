# This history file has some templated commands to save me time via the use of ctrl-r
#
du -a /var | sort -n -r | head -n 10      # display 10 largest files in /var directory
tar -zcvf backuparchive.tar.gz htdocs     # create tar.gz of htdocs folder
cat /var/log/mail.log | grep 'adire.co.uk' | grep '07:0'     #search mail log for entries between 7am and 8am for adire.co.uk account activity
