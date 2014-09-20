
module.exports =

  activate: (state) ->
    atom.workspaceView.on 'mousewheel', @onMouseWheel

  deactivate: ->
    atom.workspaceView.off()

  serialize: ->

  onMouseWheel: (e) ->
    {wheelDeltaX, wheelDeltaY} = e.originalEvent;
    if e.ctrlKey
      currentFontSize = atom.config.get("editor.fontSize")
      if wheelDeltaY > 0
        amount = 1
      else if wheelDeltaY < 0
        amount = -1
      atom.config.set("editor.fontSize", currentFontSize + amount)
      e.preventDefault()
