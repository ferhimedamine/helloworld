SHELL := /bin/bash
.DEFAULT_GOAL := help

help:
	@echo "help			-- print this help"
	@echo "run"

run:
	docker run --name jobx \
		-d -p 80:80 \
		-v html:/app \
		tutum/apache-php

cleanup:
	docker stop jobx
	docker rm jobx
