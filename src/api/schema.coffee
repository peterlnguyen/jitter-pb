media_type = (name) ->
  "application/vnd.jitter.pb.#{name}+json;version=1.0"

module.exports =

  id: "urn:jitter.pb"
  definitions:

    # responses

    widget:
      mediaType: media_type "widget"

    server_status:
      mediaType: media_type "server_status"

    # request

    server:
      type: "object"
      mediaType: media_type "server"
      additionalProperties: false
      properties:
        build:
          required: true
          type: "string"
          enum: ["bamboo", "cedar"]
        api_key:
          required: true
          type: "string"
        client_id:
          required: true
          type: "string"
        host:
          required: true
          type: "string"
          enum: ["amazon", "linode", "digitalocean"]

