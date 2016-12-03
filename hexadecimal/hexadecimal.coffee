#not using parseInt to solve, i.e. (parseInt(@hex, 16))

class Hexadecimal
  constructor: (@hex) ->

  toDecimal: (toConvert=@_hexDigitsToInts(), converted=0, placeValue=1) ->
    return converted if toConvert.length is 0 or @hex.match(/[^0-9a-f]/)
    converted += toConvert.pop() * placeValue
    @toDecimal toConvert, converted, placeValue*16

  _hexDigitsToInts: ->
    digits = @hex.split('').map (digit) =>
      parseInt(if @_hexToDec[digit] then @_hexToDec[digit] else digit)

  _hexToDec:
    "a": 10
    "b": 11
    "c": 12
    "d": 13
    "e": 14
    "f": 15

module.exports = Hexadecimal
