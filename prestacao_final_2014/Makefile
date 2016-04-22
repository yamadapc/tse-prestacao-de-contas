default:
	make convert_to_utf8
	make txt_to_csv

db:
	for i in *.csv; do echo "Inserting $$i" && csvsql --db sqlite:///prestacao_2014.db --insert $$i; done

install_csvkit:
	sudo pip install --upgrade csvkit

convert_to_utf8:
	for i in *.txt; do echo "Converting $$i to UTF-8" && ../bin/latin1-to-utf8 $$i; done

txt_to_csv:
	for i in *.txt; do echo "Moving $$i to `basename $$i \".txt\"`.csv" && mv $$i `basename $$i '.txt'`.csv; done
