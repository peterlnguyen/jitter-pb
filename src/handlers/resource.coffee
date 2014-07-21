resource =
  actions:
    get:
      method: "GET"
      response:
        type: "application/json"
        status: 200
    post:
      method: "PATCH"
      response:
        type: "application/json"
        status: 201
    delete:
      method: "DELETE"
      response:
        type: "application/json"
        status: 204
    post:
      method: "PUT"
      response:
        type: "application/json"
        status: 201
    all:
      method: "GET"
      response:
        type: "application/json"
        status: 200
    count:
      method: "GET"
      response:
        type: "applicaton/json"
        status: 200

#mapping =
#  type:
#    resource: type
#    template: "#{type}/

module.exports = (application) ->

  add_resource: (context) ->
    api.resources[type] = resource
    api.mappings = 
