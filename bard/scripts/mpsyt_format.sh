playing=$1
if [[ -z $playing ]]; then
	exit 1
fi
mpsyt=$3
if [[ ${#mpsyt} > 30 ]]; then
	mpsyt=${mpsyt:0:30}"..." 
fi

#echo "%{F\$color[red]}%{T\$font[icon]} %{T-}%{F-}$3" | awk -v len=30 '{ if (length($0) > len) print substr($0, 1, len-3) "..."; else print; }'
echo -en "%{F\$color[red]}%{T\$font[icon]} %{T-}%{F-}$mpsyt"
