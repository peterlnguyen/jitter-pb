media_type = (name) ->
  "application/vnd.jitter.pb.#{name}+json;version=1.0"

module.exports =

  widget:
    actions:
      get:
        method: "GET"
        response:
          type: media_type "widget"
          status: 200
#      create:
#        method: "POST"
#        requests:
#          type: media_type "widget"
#        response:
#          type: media_type "widget"
#          status: 201
