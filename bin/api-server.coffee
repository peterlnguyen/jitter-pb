#!/usr/bin/env coffee

CSON = require "c50n"

argv = require("minimist")(process.argv.slice(2))
env = argv.env || argv.e

fs = require "fs"

if env != undefined and env != null
  #TODO: check that file exists
  #TODO: get c50n working
  tmp = fs.readFileSync("./env/" + env + ".cson")
  console.log tmp
  #config = CSON.parse 
  if config != undefined and config != null
    Server = require("../src/server")(config)
    Server.run()
  else
    console.log "Specified config doesn't exist"
else
  console.log "Please specify an enviroment with -e or --env"

