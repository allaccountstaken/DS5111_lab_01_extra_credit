# DS5111_lab_01_extra_credit

## Below are my results on EC2 Ubuntu:
grep 'Raven' raven_lines.txt | wc -l > number_of_Raven.txt
cat number_of_Raven.txt
13
grep 'RAVEN' raven_lines.txt | wc -l > number_of_RAVEN.txt
cat number_of_RAVEN.txt
2
grep 'raven' raven_lines.txt | wc -l > number_of_raven.txt
cat number_of_raven.txt
1



PS: This makefile does not work on Mac properly. It gets the data, completes processing but only gives line count of 'Raven'. I do not understand why it does not do all three as on Ubuntu
