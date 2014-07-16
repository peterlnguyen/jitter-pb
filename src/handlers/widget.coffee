module.exports = (application) ->

  get: (context) ->
    context.set_cors_headers "*"
    application.build()
    context.respond 200, "Ok, let's do this"

  create: (context) ->
    context.set_cors_headers "*"
    context.respond 201, "All good, baby"
