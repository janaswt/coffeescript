class Luhn
  constructor: (@number) ->
    @checkDigit = parseInt(@number.toString().split("").pop())
    @addends = @addends()
    @checksum = @checksum()
    @valid = @valid()

  addends: (newArr=[], place=-1, remainder) ->
    return newArr.reverse() if remainder and remainder.length is 0
    remainder = remainder ||  @number.toString().split("").reverse()
    num = parseInt(remainder.shift())
    if place < 0
      newArr.push num
    else
      if num * 2 >= 10 then newArr.push(num * 2 - 9) else newArr.push num * 2
    @addends newArr, place*-1, remainder

  checksum: () ->
    @.addends.reduce (element, sum) -> sum + parseInt(element)

  valid: () ->
    @.checksum % 10 is 0

  @create: (number) ->
    luhn = new Luhn number * 10
    if luhn.valid then luhn.number else luhn.number + 10 - luhn.checksum % 10


module.exports = Luhn
