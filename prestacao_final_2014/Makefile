convert_to_utf8:
	for i in *.txt; do echo "Converting $$i to UTF-8" && ../bin/latin1-to-utf8 $$i; done

txt_to_csv:
	for i in *.txt; do echo "Moving $$i to `basename $$i \".txt\"`.csv" && mv $$i `basename $$i '.txt'`.csv; done
