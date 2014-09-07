
module.exports =

  activate: (state) ->
    atom.workspaceView.on 'mousewheel', @onMouseWheel

  deactivate: ->
    atom.workspaceView.off()

  serialize: ->

  onMouseWheel: (e) ->
    {wheelDeltaX, wheelDeltaY} = e.originalEvent;
    if e.ctrlKey
      if wheelDeltaY > 0
        atom.workspace.increaseFontSize()
        e.preventDefault()
      else if wheelDeltaY < 0
        atom.workspace.decreaseFontSize()
        e.preventDefault()
