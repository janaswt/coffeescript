class Trinary
  constructor: (@trinary) ->

  trinDigits: ->
    digits = @trinary.split ""
    digits.map( (digit) -> parseInt digit )

  toDecimal: (toConvert=@trinDigits(), acc=0, place=1) ->
    return 0 if @trinary.match /[^012]/
    return acc if toConvert.length is 0
    acc += place * toConvert.pop()
    @toDecimal toConvert, acc, place*3

module.exports = Trinary
