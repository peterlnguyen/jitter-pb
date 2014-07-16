media_type = (name) ->
  "application/vnd.jitter.pb.#{name}+json;version=1.0"

module.exports =

  id: "urn:jitter.pb"
  definitions:

    widget:
      mediaType: media_type "widget"

