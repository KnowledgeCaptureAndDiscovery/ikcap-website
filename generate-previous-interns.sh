IFS=$'\n'
for i in $(cat previous-interns.txt); do
	username=$(echo ${i} | sed 's/ /-/'g |  sed 's/./\L&/g')
	mkdir -p ./previous-interns/${username}/
	touch ./previous-interns/${username}/_index.md
	echo "---
# Display name
title:  ${i}
# Is this the primary user of the site?
superuser: false
# Role/position
role: Previous Intern
user_groups:
  - Previous Intern
---" > ./previous-interns/${username}/_index.md
done
