PACKAGE_NAME = entry_cli

.PHONY: init install uninstall test

init:
	conda env create -f environment.yml

install:
	pip install --upgrade pip setuptools
	pip install -e .

test:
	nosetests tests

uninstall:
	pip uninstall -y $(PACKAGE_NAME)
