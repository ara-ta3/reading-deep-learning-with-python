requirements=requirements.txt

run: bin/jupyter
	$< notebook

bin/jupyter: bin/pip
	$< install -r $(requirements)

bin/pip:
	pyvenv .

