default:
	@cat makefile
# Get raw date from URL: 
pg1065.txt:
	wget https://www.gutenberg.org/cache/epub/1065/pg1065.txt
# Process data, i.e. include ONLY the lines that include any upper/lower combination of raven, (Raven, RAVEN, etc)
raven_lines.txt:
	grep -i 'raven' pg1065.txt | sed G > raven_lines.txt
	cat raven_lines.txt
# Here include a count of the lines including the word Raven, note the upper and lower case
number_of_Raven.txt:
	grep 'Raven' raven_lines.txt | wc -l > number_of_Raven.txt
	cat number_of_Raven.txt
# Here include a count of the lines including the word RAVEN, note the upper and lower case
number_of_RAVEN.txt:
	grep 'RAVEN' raven_lines.txt | wc -l > number_of_RAVEN.txt
	cat number_of_RAVEN.txt
# Here include a count of the lines including the word raven, note the upper and lower case
number_of_raven.txt:
	grep 'raven' raven_lines.txt | wc -l > number_of_raven.txt
	cat number_of_raven.txt
# This creates all three
make_all: pg1065.txt raven_lines.txt number_of_Raven.txt number_of_RAVEN.txt number_of_raven.txt
# Remove all files generated
.PHONY: clean
clean:
	rm pg1065.txt || true
	rm raven_lines.txt | true
	rm number_of_Raven.txt || true
	rm number_of_RAVEN.txt || true
	rm number_of_raven.txt || true
	ls -la



