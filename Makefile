
all:
	pip install ../genbank_template/ --user

clean:
	rm -fr build/
	rm -fr dist/
	rm -fr genbank_template.egg-info/
	pip uninstall -y genbank_template
