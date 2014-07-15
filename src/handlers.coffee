request = require("request")

module.exports = ((_arg) ->
  
  # environment config 
  config = _arg.configuration

  jitter = require("./handlers/jitter")(config)

  handle = (callback) ->
    (context) ->
      context.set_cors_headers "*"
      match = context.match
      authorization = match.authorization
      path = match.path
      query = match.query
      request = context.request
      body = request.body
      identifier = path
      params = query
      content = body
      details =
        authorization: authorization
        identifier: identifier
        params: params
        content: content
      respond context, callback(details)

  respond = ((context, events) ->
    match = context.match
    status = (match.success_status or 200)
    events.once "success", (result) ->
      context.respond status, result
    events.once "error", (result) ->
      context.error error.message, error.reason
  )
  
  # all of the resources we want exposed, via src/handlers/ files 

  jitter:
    create: jitter.create

)
