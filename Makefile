.PHONY:
venv:
	virtualenv -p python3 venv --no-site-packages

.PHONY: setup
setup:
	pip install -r requirements.txt
	pip install --editable .

.PHONY: dist
dist:
	python3 setup.py sdist bdist_wheel

.PHONY: clean
clean:
	rm -fr build dist *.egg-info

.PHONY: black
black:
	black --skip-string-normalization wazo_router_call_logd

.PHONY: flake8
flake8:
	flake8 --ignore=E501,E402,W503 wazo_router_call_logd

.PHONY: pylint
pylint:
	pylint --disable=E501,W503,W0612,W0613,E402,E701 wazo_router_call_logd

.PHONY: pycodestyle
pycodestyle:
	pycodestyle --ignore=E501,W503,W0612,W0613,E402,E701 wazo_router_call_logd

.PHONY: test
test:
	py.test -p no:warnings

.PHONY: coverage
coverage:
	coverage run -m py.test -p no:warnings
	coverage report
	coverage html
	coverage xml

.PHONY: dockerfile
dockerfile:
	docker build -t wazo-router-call_logd:latest .
