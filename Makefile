install: uninstall
	rm dist/*.whl
	python3 setup.py sdist
	pip3 install --force-reinstall dist/*.tar.gz

develop: uninstall
	pip3 install -e .

uninstall:
	pip3 uninstall -y catsoop

test:
	pytest catsoop/test

.PHONY: install develop test uninstall
