module.exports = (application) ->

  create: (context) ->
    context.set_cors_headers "*"
    {client_id, api_key, host} = context.request.body
    application.create_server({client_id, api_key, host})
    context.respond 201, "All good, baby"
