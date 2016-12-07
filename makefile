SHELL := /bin/bash
.DEFAULT_GOAL := help

help:
	@echo "help			-- print this help"
	@echo "run"

run:
	docker run --name jobx \
		-d -p 80:80 \
		-v `pwd`:/app \
		tutum/apache-php
