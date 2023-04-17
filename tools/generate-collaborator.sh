IFS=$'\n'

FOLDER=./content/collaborators

for i in $(cat tools/collaborators.txt); do
	username=$(echo ${i} | gsed 's/ /-/'g |  gsed 's/./\L&/g')
	mkdir -p ${$FOLDER}/${username}/
	touch ${FOLDER}/${username}/_index.md
	echo "---
# Display name
title:  ${i}

# Is this the primary user of the site?
superuser: false

# Role/position
role: Collaborator

user_groups:
  - Collaborator
---" > ${FOLDER}/${username}/_index.md
done
