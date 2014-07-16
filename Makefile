all:
	mocha test/functional/create_server.coffee --require coffee-script/register --compilers coffee:coffee-script/register

