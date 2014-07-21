media_type = (name) ->
  "application/vnd.jitter.pb.#{name}+json;version=1.0"

module.exports =

  id: "urn:jitter.pb"
  definitions:

    resource:
      mediaType: "application/json"
