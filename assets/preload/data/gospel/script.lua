local sus=0
function opponentNoteHit()
  sus=sus+36
  doTweenAngle('spin','circ1',sus,0.02,'linear')
end
function goodNoteHit()
  sus=sus+36
  doTweenAngle('spin2','circ1',sus,0.02,'linear')
  end