cat $1 | sort | sed -e 's/,[ ]\+/,/g' > $1.english.csv
cat $1.english.csv | awk -F $',' '{t = $1; $1 = $2; $2 = t; print; }' OFS=$',' | sort > $1.spanish.csv
