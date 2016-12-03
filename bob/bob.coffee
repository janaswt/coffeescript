class Bob
  constructor: ->

  hey: (input) ->
    if @_isYell input
      "Whoa, chill out!"
    else if @_isQuestion input
      "Sure."
    else if @_isSilence input
      "Fine. Be that way!"
    elseou
      "Whatever."

  _isYell: (input) ->
    input.toUpperCase() is input and !@_isOnlyNumbers(input)

  _isOnlyNumbers: (input) ->
    input.replace(/[\s,0-9]/g, "").length is 0

  _isQuestion: (input) ->
    input.endsWith('?')

  _isSilence: (input) ->
    input.replace(/\s/g, "").length is 0


module.exports = Bob
