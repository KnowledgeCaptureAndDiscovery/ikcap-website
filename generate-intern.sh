IFS=$'\n'
for i in $(cat interns.txt); do
	username=$(echo ${i} | sed 's/ /-/'g |  sed 's/./\L&/g')
	mkdir -p ./interns/${username}/
	touch ./interns/${username}/_index.md
	echo "---
# Display name
title:  ${i}

# Is this the primary user of the site?
superuser: false

# Role/position
role: Intern

user_groups:
  - Intern
---" > ./interns/${username}/_index.md
done
