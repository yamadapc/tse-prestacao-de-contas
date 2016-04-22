default:
	make convert_to_utf8
	make txt_to_csv

db: install_csvkit stack
	for i in *.csv; do echo ">>> Inserting $$i" && csvsql --db sqlite:///prestacao_2014.db --insert $$i; done

stack: install_csvkit
	@echo ">>> Generating despesas_all.csv"
	csvstack -d ";" despesas_*.csv > despesas_all.csv
	@echo ">>> Inserting despesas_all.csv"
	csvsql --db sqlite:///prestacao_2014.db --insert despesas_all.csv

	@echo ">>> Generating receitas_all.csv"
	csvstack -d ";" receitas_*.csv > receitas_all.csv
	@echo ">>> Inserting receitas_all.csv"
	csvsql --db sqlite:///prestacao_2014.db --insert receitas_all.csv

	make migrate_receitas

migrate_receitas:
	@echo ">>> Migrating receitas_all table"
	sqlite3 prestacao_2014.db < migrate-receitas.sql 

install_csvkit:
	if which csvsql; then echo "csvkit already installed"; else sudo pip install --upgrade csvkit; fi

convert_to_utf8:
	for i in *.txt; do echo "Converting $$i to UTF-8" && ../bin/latin1-to-utf8 $$i; done

txt_to_csv:
	for i in *.txt; do echo "Moving $$i to `basename $$i \".txt\"`.csv" && mv $$i `basename $$i '.txt'`.csv; done
