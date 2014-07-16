Patchboard = require "patchboard"
handlers = require "./handlers"
api = require "./api"

module.exports = (config) ->
  {host, port, url} = config
  new Patchboard.Server api,
    host: host
    port: port
    url: url
    handlers: handlers(config)
