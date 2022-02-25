function cdls() {
	if [ -n "$1" ]
	then
		cd "$1"
		if [ "$?" == 0 ]
		then
			if [ -e /usr/bin/exa ]
			then
				exa
			else
				ls
			fi
		else
			if [ -f "$1" ]
			then
				cat "$1"
			fi
		fi
	else
		cd
		if [ -e /usr/bin/exa ]
		then
			exa
		else
			ls
		fi
	fi
}
