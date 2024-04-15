#Using rm -Rf * results in “/bin/rm: Argument list too long” error when attempting to delete too many files at once.
#The script below can be used as a workaround to delete files.
#Modify the location as needed and replace "Folder" and "subfolder" with the actual folder(s) you want to target.

#!/bin/bash
sudo find /Users/$(whoami)/subfolder/ /home/$(whoami)/subfolder/ /Folder/subfolder/ -type f -exec /bin/rm -Rf {} \; -print 2>/dev/null
