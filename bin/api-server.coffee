#!/usr/bin/env coffee

CSON = require "c50n"

argv = require("minimist")(process.argv.slice(2))
env = argv.env || argv.e

fs = require "fs"

if env != undefined and env != null
  #TODO: check that file exists
  config_string = fs.readFileSync("./env/" + env + ".cson", "utf-8")
  config = CSON.parse config_string
  if config != undefined and config != null
    Server = require("../src/server")(config)
    console.log Server
    Server.run()
  else
    console.log "Specified config doesn't exist"
else
  console.log "Please specify an enviroment with -e or --env"

