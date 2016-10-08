requirements=requirements.txt

run: bin/jupyter
	$< notebook

bin/jupyter: bin/pip
	$(MAKE) install

bin/pip:
	pyvenv .

install: bin/pip
	$< install -r $(requirements)

