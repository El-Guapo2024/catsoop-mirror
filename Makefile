install: uninstall
	rm -f dist/*.whl
	python3 setup.py bdist_wheel
	pip3 install dist/*.whl

develop: uninstall
	pip3 install -e .

uninstall:
	pip3 uninstall -y catsoop

test:
	pytest catsoop/test

.PHONY: install develop test uninstall
