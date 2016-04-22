# tse-prestacao-de-contas
Scripts and data from Brazil's political campaign funding.

TSE, Brazil's Superior Electoral Court, publishes data on political campaign
funding for every election. Every year, the data format is slightly different
and the files are published in a format that makes analysis non-trivial for
non-technical people.

This repository aims to process the data-set to the point that all elections'
data follows a common format, push it onto a database to do analysis and
publish it as big files normal people can use with Excel (though that might not
work).

## Technical Aspects
Files are downloaded from:
- http://www.tse.jus.br/hotSites/pesquisas-eleitorais/prestacao_contas.html

At this point I'm just downloading the files and tracking them. The following
archives look like zip-bombs and couldn't be uncompressed:

- prestacao_contas_2002.zip
- prestacao_contas_2004.zip
- prestacao_contas_2006.zip
- prestacao_contas_2008.zip

So that's a bummer.

## Makefile tasks
### `make fetch_data`
Downloads the zip files from source.

### `make unzip_data`
Uncompresses the zip files.

### Prestação de Contas 2014
#### `make convert_to_utf8`
Ditch LATIN-1 encoding

#### `make txt_to_csv`
Rename \*.txt to \*.csv

#### `make install_csvkit`
Install `csvkit` dependency

#### `make db`
Generate a SQLite3 database with all csv files (this is the important bit
that'll change and is just a draft)

- - -

# Visualization
Currently I'm exploring the data and trying to generate a common table schema.
After that's done, we can use Open-Source software like Metabase to ask and get
answers from the data-set. Furthermore, we can expose a public Metabase instance
with the data so people can explore it:
![](/metabase-screenshot.png)
