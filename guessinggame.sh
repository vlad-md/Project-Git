
function guessinggame {
	
	#pwd #just to see where we are working
	repnum=$(ls | wc -l) #number of files in the directory
	#echo $repnum #for troubleshooting the functionality of the program
	number=-1 #set a negative number just because to start the while statement

	while ! [ $number -eq $repnum ]
	do 
		read -p "How many files are in this directory?" number
		while ! [ "$number" -eq "$number" ] 2> /dev/null
		do
		        echo "Sorry integers only"
			read -p "How many files are in this directory?" number
		done
		if [ $number -eq $repnum ]
			then 
				echo "Congradulations you guessed the number correctly"
		elif [ $number -gt $repnum ]
			then
				echo "There are less files in the derictory"
		elif [ $number -lt $repnum ]
			then
				echo "There are more files in the derictory"
		fi
	done
}
