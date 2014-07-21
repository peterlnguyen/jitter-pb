module.exports = (application) ->

  get: (context) ->
    context.set_cors_headers "*"
    context.respond 200, "Ok, let's do this"
