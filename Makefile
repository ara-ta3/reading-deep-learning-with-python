requirements=requirements.txt

run: bin/jupyter dataset/mnist.py
	$< notebook

bin/jupyter: bin/pip
	$(MAKE) install

bin/pip:
	pyvenv .

install: bin/pip
	$< install -r $(requirements)

dataset:
	mkdir -p $@

dataset/mnist.py: dataset
	wget -O $@ https://raw.githubusercontent.com/oreilly-japan/deep-learning-from-scratch/master/dataset/mnist.py
