sys = require "sys"
exec = require("child_process").exec
digitalocean = require "./digitalocean"


print_cmd = (error, stdout, stderr) ->
  sys.puts error
  sys.puts stdout
  sys.puts stderr

module.exports =

  create_server: ({client_id, api_key, host}) ->
    digitalocean.create_server client_id, api_key, host

  build: ->
    exec "cd ~ && cd documents/jitter-test/ && sudo docker build -t jitter .", print_cmd

  run: ->
    exec "sudo docker run -p 49000:1337 --name jitter -t jitter:latest", print_cmd

