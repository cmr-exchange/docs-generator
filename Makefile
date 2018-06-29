docs:
	@echo "Generating documentation ..."
	rm -rf docs-gen-docker/dist dist
	docker-compose -f docs-gen-docker/compose-build.yml up
	cp -r docs-gen-docker/dist .

images:
	@echo "Rebuilding all images ..."
	cp docs-gen-docker/docs/yarn.lock docs-gen-docker/docs/package.json \
		docs-gen-docker/yarn
	docker-compose -f docs-gen-docker/compose-build.yml build
	rm docs-gen-docker/yarn/yarn.lock docs-gen-docker/yarn/package.json

run:
	@echo "Running docs from yarn server  ..."
	docker-compose \
		-f docs-gen-docker/compose-run.yml run \
		--service-ports \
		docs

clean:
	rm -rf dist docs-gen-docker/dist
	docker system prune
