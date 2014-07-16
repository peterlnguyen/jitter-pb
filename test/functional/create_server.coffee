should = require "should"
request = require "request"

url = "http://localhost:9000"

describe "initial POST test", (done) ->

  it "should respond with a 201", (done) ->

    data =
      build: "bamboo"
      api_key: "gibberish"
      host: "digitalocean"

    options =
      method: "POST"
      url: url + "/servers"
      headers:
        "Content-Type": "application/vnd.jitter.pb.server+json;version=1.0"
        "Accept": "application/vnd.jitter.pb.server_status+json;version=1.0"
      body: JSON.stringify data

    callback = (error, response, body) ->
      should.not.exist error
      response.should.be.ok
      body.should.be.ok
     
    request options, callback
