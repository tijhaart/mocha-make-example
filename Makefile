.PHONY: test testw test-a test-b test-setup

REPORTER ?= spec
FILE ?= src/**/test/*.test.coffee

test:
	@./node_modules/.bin/mocha \
		--reporter $(REPORTER) \
		--compilers coffee:coffee-script/register \
		--require test/setup.coffee \
		--ui bdd \
		$(FILE)

testw:
	@./node_modules/.bin/mocha \
		--reporter $(REPORTER) \
		--compilers coffee:coffee-script/register \
		--require test/setup.coffee \
		--ui bdd \
		--watch \
		$(FILE)

test-a: 
	$(MAKE) test FILE="src/a/test/*.test.coffee"
test-b: 
	$(MAKE) test FILE="src/b/test/*.test.coffee"
test-setup: 
	$(MAKE) test FILE="src/test-setup/test/*.test.coffee"
