#define my functions

function myadd {
	if [ $# -lt 2 ]; then
		echo "Usage : $FUNCNAME <num1> <num2> [num3]..." >&2
		return 100
	fi 
	echo $[ $1 + $2 ]
}
export -f myadd
function mysub { echo $[ $1 - $2 ]; }
mymul() { echo $[ $1 * $2 ]; }
mydiv() {
	if [ $2 -ne 0 ]
	then echo $[ $1 / $2 ]
	else echo "Invalid $2"
	fi
}
export -f mysub
export -f mymul
export -f mydiv

