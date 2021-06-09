function cdls() {
	if [ -n "$1" ]
	then
		cd "$1"
		if [ "$?" == 0 ]
		then
				exa
		else
			if [ -f "$1" ]
			then
				cat "$1"
			fi
		fi
	else
		cd
		exa
	fi
}
alias cd='cdls'

function encat() {
	for i in $*
	do
		if [ -d "$i" ]
		then
			exa -l "$i"
		else
			cat "$i"
		fi
	done
}
alias cat='encat'

function g() {
	g=https://www.google.com/search?q=
	for i in $*
	do
		local g=$g+$i
	done
	google-chrome-stable $g
}

function gam() {
    git add .
    git commit -m "$*"
}

function gamp() {
    git add .
    git commit -m "$*"
	git push
}

function t() {
	trans en:zh "$*"
}
