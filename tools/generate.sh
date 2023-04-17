IFS=$'\n'

function capitalize {
    word="$1"
    first_letter="$(echo $word | head -c 1 | tr '[:lower:]' '[:upper:]')"
    rest="$(echo $word | tail -c +2)"
    echo "$first_letter$rest"
}

function usage {
  echo "Usage: $0 <type> <input-file> <output-directory>"
  echo "Where:"
  echo "  type: 'collaborators', 'interns', or 'previous-interns'"
  echo "  input-file: Path to the file containing the list of people"
  echo "  output-directory: Path to the folder where the content will be generated"
  echo " Example: $0 interns tools/interns.txt content/authors"
  exit 1
}

# Check number of arguments
if [ "$#" -ne 3 ]; then
  usage
fi

# Assign variables to arguments
type=$1
input_file=$2
output_directory=$3



declare -A role_map=(
    ["collaborators"]="Collaborator"
    ["previous-interns"]="Previous Intern"
    ["interns"]="Intern"
)

declare -A user_group_map=(
    ["collaborators"]="Collaborators"
    ["previous-interns"]="Previous Interns"
    ["interns"]="Interns"
)


# Check that type is valid
if [[ "$type" != "collaborators" && "$type" != "interns" && "$type" != "previous-interns" ]]; then
  echo "Error: Invalid type"
  usage
fi

# Check that input file exists
if [ ! -f "$input_file" ]; then
  echo "Error: Input file does not exist"
  usage
fi

# Check that output directory exists
if [ ! -d "$output_directory" ]; then
  echo "Error: Output directory does not exist"
  usage
fi


FOLDER=${output_directory}
echo ${role_map[${type}]}
exit 0
for i in $(cat ${input_file}); do
	username=$(echo ${i} | gsed 's/ /-/'g |  gsed 's/./\L&/g')
  if [ -d "${FOLDER}/${username}" ]; then
    echo "Error: ${username} already exists"
  else
    echo "Creating ${username}"
    mkdir ${FOLDER}/${username}
    touch ${FOLDER}/${username}/_index.md
	echo "---
# Display name
title:  ${i}

# Is this the primary user of the site?
superuser: false

# Role/position
role: ${role_map[${type}]}

user_groups:
  - ${user_group_map[${type}]}


---" > ${FOLDER}/${username}/_index.md
  fi
done
