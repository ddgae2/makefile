
dssp: DsspCMBI.o p2clib.o Date.o Vector.o AccSurf.o CalcAccSurf.o Contacts.o
	echo "Running script to compile the CMBI version of DSSP, please wait..."
	gcc -c -O -Wall -DGCC AccSurf.c
	gcc -c -O -Wall -DGCC CalcAccSurf.c
	gcc -c -O -Wall -DGCC Contacts.c
	gcc -c -O -Wall -DGCC Date.c
	gcc -c -O -Wall -DGCC DsspCMBI.c
	gcc -c -O -Wall -DGCC Vector.c
	gcc -c -O -Wall -DGCC p2clib.c
	gcc -o dssp DsspCMBI.o p2clib.o Date.o Vector.o AccSurf.o CalcAccSurf.o Contacts.o -lm
	echo "Type dssp PDBSourcefile DSSPDestinationfile to run the program..."
