requirements=requirements.txt
deps=dataset/mnist.py \
	 ch3/sample_weight.pkl \
	 common/gradient.py \
	 common/functions.py \
	 common/layers.py \
	 common/util.py \
	 common/trainer.py \
	 common/optimizer.py \
	 ch7/train_convnet.py \
	 ch7/visualize_filer.py \
	 ch7/simple_convnet.py

run: bin/jupyter $(deps)
	$< notebook

bin/jupyter: bin/pip
	$(MAKE) install

bin/pip:
	pyvenv .

install: bin/pip
	$< install -r $(requirements)

clean:
	rm -rf bin lib include

dataset:
	mkdir -p $@

dataset/mnist.py: dataset
	wget -O $@ https://raw.githubusercontent.com/oreilly-japan/deep-learning-from-scratch/master/dataset/mnist.py

ch3:
	mkdir -p $@

ch3/sample_weight.pkl: ch3
	wget -O $@ https://github.com/oreilly-japan/deep-learning-from-scratch/raw/master/ch03/sample_weight.pkl

common:
	mkdir -p $@

common/gradient.py: common
	wget -O $@ https://raw.githubusercontent.com/oreilly-japan/deep-learning-from-scratch/master/common/gradient.py

common/functions.py: common
	wget -O $@ https://raw.githubusercontent.com/oreilly-japan/deep-learning-from-scratch/master/common/functions.py

common/layers.py: common
	wget -O $@ https://raw.githubusercontent.com/oreilly-japan/deep-learning-from-scratch/master/common/layers.py

common/util.py: common
	wget -O $@ https://raw.githubusercontent.com/oreilly-japan/deep-learning-from-scratch/master/common/util.py

common/optimizer.py: common
	wget -O $@ https://raw.githubusercontent.com/oreilly-japan/deep-learning-from-scratch/master/common/optimizer.py

common/trainer.py: common
	wget -O $@ https://raw.githubusercontent.com/oreilly-japan/deep-learning-from-scratch/master/common/trainer.py

common/optimizer.py: ch7
	wget -O $@ https://raw.githubusercontent.com/oreilly-japan/deep-learning-from-scratch/master/common/optimizer.py

ch7/visualize_filer.py: ch7
	wget -O $@ https://raw.githubusercontent.com/oreilly-japan/deep-learning-from-scratch/master/ch07/visualize_filter.py

ch7/train_convnet.py: ch7
	wget -O $@ https://raw.githubusercontent.com/oreilly-japan/deep-learning-from-scratch/master/ch07/train_convnet.py

ch7/simple_convnet.py: ch7
	wget -O $@ https://raw.githubusercontent.com/oreilly-japan/deep-learning-from-scratch/master/ch07/simple_convnet.py

ch7:
	mkdir -p $@
