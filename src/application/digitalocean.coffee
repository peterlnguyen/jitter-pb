DigitalOceanAPI = require "digitalocean-api"

# TODO: create a parent class to house child DO, linode, and amazon

module.exports =

  create_server: ({ client_id, api_key, host }) ->
    api = new DigitalOceanAPI client_id, api_key
    #api.dropletNew("pandastruck", ...)
