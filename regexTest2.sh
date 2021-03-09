#!/usr/bin/env bash

MYVAR="/var/cpanel/users/joebloggs:DNS9=domain.com"

echo "${MYVAR%%/*}"


# To extract joebloggs from this string in bash using parameter expansion without any extra processes...

# MYVAR="/var/cpanel/users/joebloggs:DNS9=domain.com"
#
# NAME=${MYVAR%:*}  # retain the part before the colon
# NAME=${NAME##*/}  # retain the part after the last slash
# echo $NAME

# Doesnt depend on joebloggs being at a particular depth in the path.
#
# Summary
#
# An overview of a few parameter expansion modes, for reference...

# ${MYVAR#pattern}     # delete shortest match of pattern from the beginning
# ${MYVAR##pattern}    # delete longest match of pattern from the beginning
# ${MYVAR%pattern}     # delete shortest match of pattern from the end
# ${MYVAR%%pattern}    # delete longest match of pattern from the end

# So # means match from the beginning (think of a comment line) and % means from the end. One instance means shortest and two instances means longest.
#
# You can get substrings based on position using numbers:

# ${MYVAR:3}   # Remove the first three chars (leaving 4..end)
# ${MYVAR::3}  # Return the first three characters
# ${MYVAR:3:5} # The next five characters after removing the first 3 (chars 4-9)

# You can also replace particular strings or patterns using:

# ${MYVAR/search/replace}
#
# The pattern is in the same format as file-name matching, so * (any characters) is common, often followed by a particular symbol like / or .
#
# Examples:
#
# Given a variable like

# MYVAR="users/joebloggs/domain.com"

# Remove the path leaving file name (all characters up to a slash):

# echo ${MYVAR##*/}
# domain.com

# Remove the file name, leaving the path (delete shortest match after last /):

# echo ${MYVAR%/*}
# users/joebloggs

# Get just the file extension (remove all before last period):

# echo ${MYVAR##*.}
# com

# NOTE: To do two operations, you can't combine them, but have to assign to an intermediate variable. So to get the file name without path or extension:

# NAME=${MYVAR##*/}      # remove part before last slash
# echo ${NAME%.*}        # from the new var remove the part after the last period
# domain
