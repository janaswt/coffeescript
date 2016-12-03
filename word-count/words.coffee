class Words
  constructor: (@phrase) ->

  getWords: ->
    words = @phrase.split(/[^a-zA-Z_0-9-']+/);
    (word.toLowerCase() for word in words when word isnt "")

  count: ->
    wordCount = {}
    for word in @getWords()
      if wordCount[word] then wordCount[word]++ else wordCount[word] = 1
    wordCount

module.exports = Words
