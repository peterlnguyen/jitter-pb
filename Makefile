mocha:
	mocha test/functional/create_server.coffee --require coffee-script/register --compilers coffee:coffee-script/register
run:
	bin/api-server.coffee --env dev

.PHONY: all tests clean

