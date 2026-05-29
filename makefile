venv:
	python3 -m venv .venv

install: venv
	.venv/bin/pip install --upgrade pip
	.venv/bin/pip install -r requirements.txt

format:
	.venv/bin/black .

lint:
	.venv/bin/flake8 .
	.venv/bin/pylint .

test:
	.venv/bin/pytest -vv