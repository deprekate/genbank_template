
all:
	pip install ../$(shell basename $(CURDIR))/ --user

clean:
	rm -fr build/
	rm -fr dist/
	rm -fr $(shell basename $(CURDIR)).egg-info/
	pip uninstall -y $(shell basename $(CURDIR))

