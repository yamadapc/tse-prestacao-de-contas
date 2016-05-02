db: stack
	for i in **/*.txt; do echo ">>> Inserting $$i" && csvsql --db sqlite:///prestacao_2012.db --insert $$i; done

stack:
	@echo "Stacking ReceitasCandidatos"
	csvstack -d ";" **/ReceitasCandidatos.txt > receitas-candidatos-all.txt
	@echo "Stacking DespesasCandidatos"
	csvstack -d ";" **/DespesasCandidatos.txt > despesas-candidatos-all.txt

	@echo "Stacking ReceitasPartidos"
	csvstack -d ";" **/ReceitasPartidos.txt > receitas-partidos-all.txt
	@echo "Stacking DespesasPartidos"
	csvstack -d ";" **/DespesasPartidos.txt > despesas-partidos-all.txt

	@echo "Stacking ReceitasComites"
	csvstack -d ";" **/ReceitasComites.txt > receitas-comites-all.txt
	@echo "Stacking DespesasComites"
	csvstack -d ";" **/DespesasComites.txt > despesas-comites-all.txt
