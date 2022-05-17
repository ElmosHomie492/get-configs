#!/bin/bash
brew install jless 2>/dev/null
brew install jq 2>/dev/null

JSON="["

FIRST_RECORD=true
for FILE in *.yaml; do
	if [[ $FIRST_RECORD == false ]];
	then
		JSON="${JSON},"
	else
		FIRST_RECORD=false
	fi
	CUSTOMER_NAME="${FILE%%.*}"
	JSON="${JSON}{\"${CUSTOMER_NAME}\":"
	FILE_JSON=$(yq -o=json '.' $FILE)
	JSON="${JSON}${FILE_JSON}"
	JSON="${JSON}}"
done

JSON="${JSON}]"
echo $JSON | jless
