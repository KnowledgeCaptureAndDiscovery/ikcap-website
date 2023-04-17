IFS=$'\n'
for i in $(cat collaborators.txt); do
	username=$(echo ${i} | sed 's/ /-/'g |  sed 's/./\L&/g')
	mkdir -p ./collaborators/${username}/
	touch ./collaborators/${username}/_index.md
	echo "---
# Display name
title:  ${i}

# Is this the primary user of the site?
superuser: false

# Role/position
role: Collaborator

user_groups:
  - Collaborator
---" > ./collaborators/${username}/_index.md
done
