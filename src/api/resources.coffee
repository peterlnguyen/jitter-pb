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
