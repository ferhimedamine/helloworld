SHELL := /bin/bash
.DEFAULT_GOAL := help

help:
	@echo "help			-- print this help"
	@echo "run"

run:
	docker run --name jobx \
		-d -p 80:80 \
		-v html/:/var/www/html/ \
		eboraas/apache

cleanup:
	docker stop jobx || true && docker rm -f jobx || true
