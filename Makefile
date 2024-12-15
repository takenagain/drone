default: build run
.PHONY: default build run

setup:
	sudo apt install pipx
	pipx ensurepath
	pipx install poetry
	poetry install --without rocm
	poetry update --without rocm

build:
	poetry build

run:
	poetry run python drone/main.py
