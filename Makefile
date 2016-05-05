IMAGE=rcoedo/static-site-compiler:0.0.1
RUN=docker run -t --rm -v $(shell pwd):/app $(IMAGE) gulp

dev:
	$(RUN) dev

prod:
	$(RUN) prod

clean:
	$(RUN) clean

watch:
	$(RUN) watch
