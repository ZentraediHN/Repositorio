#!/bin/bash

#=========================================================================
##  Script to create directories or folders based on the date [year and month]
##  of existing files and simultaneously move them to each created folder.
##
##  This script is licensed under the GNU General Public License (GPL).
##  You can copy, distribute and modify this software under the terms of the GPL.
##  For more information, see: https://www.gnu.org/licenses/gpl-3.0.en.html
#=========================================================================

#  Save the original IFS
SAVEIFS=$IFS
# Set the internal field separator to newline or backspace
IFS=$(echo -en "\n\b")


#--------Iterate over each file in the current directory--------
for FILE in $(ls);
do
#--------Checks if it is a file and not a directory or link--------
	if [ -f "$FILE" ];
		then
#--------For each file found, its month and year date will be taken--------
		NEW_DIRECTORY=`stat -c%y "$FILE" | cut -c1-7`;
#--------Checks if the directory with the new created name "NewDirectory" exists--------
		if [ -d "$NEW_DIRECTORY" ];
			then
#--------If the directory "NewDirectory" exists, only the file is moved--------
			mv "$FILE" "$NEW_DIRECTORY"
		else
#--------If not, each folder is created with the new name--------
			mkdir "$NEW_DIRECTORY";
#--------And each original file is moved to each created folder respectively.--------
			mv "$FILE" "$NEW_DIRECTORY"
		fi
	else
		echo -e "$FILE no es un regular file"
	fi
done
#	Restore the delimiter
IFS=$SAVEIFS
