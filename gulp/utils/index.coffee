exports = module.exports

exports.handleError = (err) ->
  console.log err.toString()
  if global.isWatching then @emit('end') else process.exit(1)
