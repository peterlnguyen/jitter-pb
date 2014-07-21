media_type = (name) ->
  "application/vnd.jitter.pb.#{name}+json;version=1.0"

module.exports =

  resource:
    actions:
      get:
        method: "GET"
        response:
          type: "application/json"
          status: 200

  servers:
    actions:
      create:
        method: "POST"
        request:
          type: media_type "server"
        response:
          type: media_type "server_status"
          status: 201
