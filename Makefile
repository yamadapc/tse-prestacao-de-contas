fetch_data:
	wget http://agencia.tse.jus.br/estatistica/sead/odsele/prestacao_contas/prestacao_contas_2002.zip
	wget http://agencia.tse.jus.br/estatistica/sead/odsele/prestacao_contas/prestacao_contas_2004.zip
	wget http://agencia.tse.jus.br/estatistica/sead/odsele/prestacao_contas/prestacao_contas_2006.zip
	wget http://agencia.tse.jus.br/estatistica/sead/odsele/prestacao_contas/prestacao_contas_2008.zip
	wget http://agencia.tse.jus.br/estatistica/sead/odsele/prestacao_contas/prestacao_contas_2010.zip
	wget http://agencia.tse.jus.br/estatistica/sead/odsele/prestacao_contas/prestacao_final_2012.zip
	wget http://agencia.tse.jus.br/estatistica/sead/odsele/prestacao_contas/prestacao_final_2014.zip

unzip_data:
	./bin/unzip_all
