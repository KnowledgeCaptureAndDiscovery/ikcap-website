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
role=$(capitalize ${type})

for i in $(cat ${input_file}); do
	username=$(echo ${i} | gsed 's/ /-/'g |  gsed 's/./\L&/g')
	mkdir -p ${$FOLDER}/${username}/
	touch ${FOLDER}/${username}/_index.md
	echo "---
# Display name
title:  ${i}

# Is this the primary user of the site?
superuser: false

# Role/position
role: ${role}

user_groups:
  - ${role}
---" > ${FOLDER}/${username}/_index.md
done
