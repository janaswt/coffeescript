class Triangle

  constructor: (@a, @b, @c) ->
    if @a < 0 or @b < 0 or @c < 0
      throw "negative sides are illegal"
    else if @a + @b <= @c or @b + @c <= @a or @a + @c <= @b
      throw "violation of triangle inequality"

  kind: ->
    if @a is @b and @b is @c then "equilateral"
    else if @a is @b or @b is @c or @a is @c then "isosceles"
    else "scalene"


module.exports = Triangle
