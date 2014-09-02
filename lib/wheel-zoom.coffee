
module.exports =

  activate: (state) ->
    atom.workspaceView.on 'mousewheel', @onMouseWheel

  deactivate: ->
    atom.workspaceView.off()

  serialize: ->

  onMouseWheel: (e) ->
    delta = e.originalEvent.wheelDeltaY;
    if e.ctrlKey
      if delta > 0
        atom.workspaceView.increaseFontSize()
      else if delta < 0
        atom.workspaceView.decreaseFontSize()
