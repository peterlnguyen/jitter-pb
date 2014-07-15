module.exports = ((config) ->

  create: (context) ->
    context.set_cors_headers("*")

    data = context.request.body

    return context.respond 200, 

)
