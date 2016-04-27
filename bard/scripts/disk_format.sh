disk_available=$4

if [ $disk_available -ge 10 ]; 
 then
	echo -en "%{F\$color[green]}"
elif [ $disk_available -ge 5 ] && [[ $disk_available -lt 10 ]]; 
 then
	 echo -en "%{F\$color[yellow]}"
else
	echo -en "%{F\$color[brightred]}"
fi
echo "%{T-}%{F-}$disk_available GB"
