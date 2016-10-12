requirements=requirements.txt

run: bin/jupyter dataset/mnist.py ch3/sample_weight.pkl
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

ch3:
	mkdir -p $@

ch3/sample_weight.pkl: ch3
	wget -O $@ https://github.com/oreilly-japan/deep-learning-from-scratch/raw/master/ch03/sample_weight.pkl

