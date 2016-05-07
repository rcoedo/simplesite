IMAGE=rcoedo/simplesite-compiler:0.0.2
RUN=docker run -it --rm -v $(shell pwd):/app

dev:
	$(RUN) $(IMAGE) "echo pid1 > /dev/null && gulp dev"

prod:
	$(RUN) $(IMAGE) "echo pid1 > /dev/null && gulp prod"

clean:
	$(RUN) $(IMAGE) "echo pid1 > /dev/null && gulp clean"

watch:
	$(RUN) -p 35729:35729 $(IMAGE)  "echo pid1 > /dev/null && gulp watch"
