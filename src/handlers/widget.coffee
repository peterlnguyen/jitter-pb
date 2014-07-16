module.exports = (config) ->

  get: (context) ->
    context.set_cors_headers "*"
    context.respond 200, "Created"
