#!/usr/bin/env bash

if [[ ! -f ./.pypirc ]] ; then
    echo 'File "./.pypirc" is missing, aborting.'
    exit
fi

rm -rf dist
rm -rf build
python setup.py sdist bdist_wheel
python -m twine upload --config ./.pypirc dist/*