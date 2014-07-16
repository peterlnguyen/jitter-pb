Patchboard = require("./patchboard")
handlers = require("./handlers")
api = require("./api")

module.exports = (config) ->
  return new Patchboard.Server api,
    host: config.host
    port: config.port
    url: config.url
    handlers: handlers
