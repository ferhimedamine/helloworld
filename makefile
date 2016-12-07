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
	app="jobx"
	if docker ps | awk -v app="app" 'NR>1{  ($(NF) == app )  }'; then
	  docker stop "$app" && docker rm -f "$app"
	fi
