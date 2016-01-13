# Description
#   A hubot script that does the things
#
# Configuration:
#   LIST_OF_ENV_VARS_TO_SET
#
# Commands:
#   hubot hello - <what the respond trigger does>
#   orly - <what the hear trigger does>
#
# Notes:
#   <optional notes required for the script>
#
# Author:
#   ShingoIchikawa <ichikawa.shingo.0829@gmail.com>

module.exports = (robot) ->
  robot.router.post "/merge-request", (req, res) ->
    json = req.body
    console.log('test')
    if not json
      res.writeHead 200, 'Content-Type':'text/plain'
      res.end 'Hello World!\n'
    console.log(json)
    res.end()

  robot.respond /hello/, (res) ->
    res.reply "hello!"

  robot.hear /orly/, ->
    res.send "yarly"
