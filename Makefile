clean:
	-rm *~
	-rm *.csv


FILES = Beginner-Spanish-Basics.txt \
        Beginner-Spanish-Time.txt   \
        Beginner-Spanish-Nouns.txt  \
        Beginner-Spanish-Verbs.txt  

all: $(FILES)
	for f in $^ ; do ./prep.sh $$f ; done
