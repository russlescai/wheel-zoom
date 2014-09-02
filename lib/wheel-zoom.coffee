
module.exports =

  activate: (state) ->
    atom.workspaceView.on 'mousewheel', @onMouseWheel
    console.log "wheel-zoom Added mousewheel event"

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
