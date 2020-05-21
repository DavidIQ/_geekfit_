#!/bin/bash

clear;
echo "
*****************
* QuarantWOD 01 *
*****************

        |Beginner|Intermediate|Advanced|
Lunges  |   4    |     6      |   8    |
Sit-ups |   3    |     5      |   7    |
Burpees |   2    |     4      |   6    |

Do all 3 exercises for the prescribed
reps every minute for 15 minutes.";

selection="";

while :; do
	echo "
Pick a level:
1) Beginner
2) Intermediate
3) Advanced
9) Exit
";

	read -p '# ' selection;
	case $selection in
		1)
			level="Beginner";
			reps=("4" "3" "2");
			break;
			;;
		2)
			level="Intermediate";
			reps=("6" "5" "4");
			break;
			;;
		3)
			level="Advanced";
			reps=("8" "7" "6");
			break;
			;;
		9)
			exit;
			;;
	esac
done
clear;
routine="
---------------------------
$level level selected
---------------------------
Lunges:  ${reps[0]}
Sit-ups: ${reps[1]}
Burpees: ${reps[2]}\n";
echo -e "$routine\nBegin in...\n"
t=5
while [ $t -ge 1 ]
do
	echo $t;
	sleep 1s;
	((t--));
done
echo -e "\nGO GO GOOOOOOO!!!!!\n\n";
clear;
echo -e "$routine\nStart with first exercise every minute.\n";
m=15;
while [ $m -ge 1 ]
do
	echo -en "\r\e[KTime Remaining: $(printf %02d $m):00";
	((m--));
	sleep 1s;
	s=59;
	while [ $s -ge 1 ]
	do
		echo -en "\r\e[KTime Remaining: $(printf %02d $m):$(printf %02d $s)";
		sleep 1s;
		((s--));
	done
done
clear;
echo "
______________OOOOOOOOOO____________________
_____________OO__O_____OOOOO________________
_____________OO_OO__OO____OOOOOOOO__________
____________OO_OO__OOOOO________OOO_________
___________OO_OO__OO__OO_OOO__OO__OO________
___________OO_OO__O__OO__OOOOOOOO__OO_______
____________OOOOO_OO_OOO_OOOOOOOO_OOO_______
_____________OOOOOOOOOOOOO_OO___O_OOOO______
________________OO_OOO______OOOOO_OOOO______
_________________OOOO_______OOOOO___OOO_____
___________________________OO_OO____OOOO____
___________________________OO_OO____OOOOO___
__________________________OOOOO_____OOOOOO__
_________________________O__OO_______OOOOO__
________________________OOO_OO________OOOOO_
________________________OOO___________OOOOO_
_________________OOOO___OO____________OOOOOO
__OOOOOOOO____OOOOOOOOOO_O____________OOO_OO
_OOOOOOOOOOOOOOO______OOOOOOO___OO____OO_OOO
OO________OOOO__________O_OOO___OOO_____OOOO
OO______OOO_____________OOOOOOOOOOOOOOOOO_OO
OO______OO_______________OO_OOOOOOOOOOOOOOO_
OO_____O_OOOOO__________OOO_OOOOOOOOOOOOOOO_
OO___OOO__OOOOOOOOOOOOOOOOO__OOOOOOOOOOOOO__
OO_OOOO_____OOOOOOOOOOOO________OOOOOO__O___
OOOOOOOOOOOOOO_________OOOOO______OOOOOOO___
OOOO_OOOOO______________OOOOOOOOOOOOOOOO____
OO__OOOO_____OO___________OOOOOOOOOOOOO_____
OO_OOOOOOOOOOOO____________OOOOOOOOOO_______
OO_OOOOOOOhgOOO____OOOOOOOO__OOO____________
OOOO__OOOOOOOOOOOOOOOOOOOOOOOO______________
OO_________OOOOOOOOOOOOOOO__________________

GREAT JOB! Now go hydrate.
";

read -n 1 -s -r -p "Press any key to exit...";

echo -e "\n\n";
