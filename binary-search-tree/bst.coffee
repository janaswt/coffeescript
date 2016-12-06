class Bst
  constructor: (@data) ->
    @left = null
    @right = null


  insert: (toInsert, current=@) ->
    if toInsert <= current.data
      if !current.left
        current.left = new Bst toInsert
      else
        @insert(toInsert, current.left)
    else
      if !current.right
        current.right = new Bst toInsert
      else
        @insert(toInsert, current.right)


  each: (fn) ->
    if @left then @left.each(fn)
    fn @data
    if @right then @right.each(fn)


module.exports = Bst
