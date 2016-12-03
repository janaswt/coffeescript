class Binary

  constructor: (@binary) ->

  toDecimal: ->
    return 0 if @binary.match(/[^01]/)
    parseInt(@binary, 2)

module.exports = Binary
