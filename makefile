SHELL := /bin/bash
.DEFAULT_GOAL := help

help:
	@echo "help			-- print this help"
	@echo "run"

run:
	docker run --name jobx \
		-d -p 80:80 \
		ferhimedamine/apache

build:
	docker build -t ferhimedamine/apache:latest .
	
cleanup:
	docker stop jobx || true && docker rm -v -f jobx || true
