module.exports = (application) ->

  create: (context) ->
    context.set_cors_headers "*"
    application.build()
    context.respond 201, "All good, baby"
