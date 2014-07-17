DigitalOceanAPI = require "digitalocean-api"

# TODO: create a parent class to house child DO, linode, and amazon

module.exports =

  create_server: ({client_id, api_key, ssh_keys, host}) ->
    api = new DigitalOceanAPI client_id, api_key
    droplet_config =
      name: "computer_blue"
      region: "sfo1"
      size: "2gb"
      image: "docker-something"
      ssh_keys: "blah"
      backups: false
      ipv6: true
      private_networking: false
    api.dropletNew droplet_config
