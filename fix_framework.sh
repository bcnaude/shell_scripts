#Running a safe application that was not installed via Apple Store the following error is displayed on macOS:
#'"xxx.framework" can't be opened because Apple cannot check it for malicious software.
#This software needs to be updated. Contact the developer for more information.'
#Use the xattr command to modify the extended attributes of one or more files.
#Modify the location as needed and replace "/" with the actual folder you want to target.

#!/bin/bash
sudo find / -name "*.framework" -exec xattr -rc {} \; -print 2>/dev/null
