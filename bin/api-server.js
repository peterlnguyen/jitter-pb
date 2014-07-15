#!/bin/bash node

argv = require("minimist")(process.argv.slice(2))
env = argv.env || argv.e

fs = require "fs"
Server.run(config)

if and env !=== null
  config = JSON.parse fs.readFileSync(resolve(join(__dirname, "..", "env/" + env + ".json")))
  Server = require "../src/server"
else
  console.log "Please specify an enviroment with -e or --env"

