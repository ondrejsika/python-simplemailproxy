.PHONY: build

help:
	$(info See Makefile)

build:
	pipenv run python setup.py sdist bdist_wheel

publish:
	pipenv run python -m twine upload dist/*

clean:
	rm -rf ./build ./dist *.egg-info

format:
	pipenv run black .

format-check:
	pipenv run black . --check

setup-git-hooks:
	rm -rf .git/hooks && cd .git && ln -s ../.git-hooks hooks
