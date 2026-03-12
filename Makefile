install:
	pip install -r requirements.txt

lint:
	flake8 src

test:
	python -m pytest

coverage:
	python -m pytest --cov=src

ci:
	pip install -r requirements.txt
	flake8 src
	python -m pytest --cov=src --junitxml=reports/test-report.xml