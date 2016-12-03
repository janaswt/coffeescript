class Anagram
  constructor: (word) ->
    @word = word.toLowerCase()

  _sortChars: (word) ->
    chars = word.split ""
    chars.sort()

  match: (options) ->
    lowerCaseOptions = options.map( (option) -> option.toLowerCase() )
    lowerCaseOptions.filter( (word) =>
      @_sortChars(word).join() is @_sortChars(@word).join() unless word is @word
    )t

module.exports = Anagram
