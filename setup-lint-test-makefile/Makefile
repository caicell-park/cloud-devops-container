setup:
	python3 -m venv ~/.setup-lint-test-makefile

install:
	pip install -r requirements.txt

test:
	python -m pytest -vv --cov=myrepolib tests/*.py
	python -m pytest --nbval notebook.ipynb


lint:
	# myrepoblib cli web are directory or python file to lint
	pylint --disable=R,C myrepolib cli web

all: install lint test
