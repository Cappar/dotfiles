IFS=$'\n'
for i in $(echo $2 | jq --compact-output '.[]|{name: .name, visible: .visible, urgent: .urgent}'); do
	visible=$(echo "$i" | jq --raw-output .visible)
	urgent=$(echo "$i" | jq --raw-output .urgent)
	name=$(echo "$i" | jq --raw-output .name)
	if [[ $visible == "true" ]]; then
		echo -n %{F\$color[green]}
	else
		echo -n %{F\$color[grey]}
	fi
	if [[ $urgent == "true" ]]; then
		echo -n %{F\&color[red]}
	fi
	echo -n "$name "	 
done
