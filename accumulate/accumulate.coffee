Array.prototype.accumulate = (accumulator) ->
  (accumulator(item) for item in @)

module.exports = Array.prototype.accumulate
