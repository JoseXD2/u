function onUpdate(elapsed)
    if keyPressed('left') then
        doTweenColor('timeBar', 'timeBar', '8B0000', 0.01, 'linear');
    elseif keyPressed('right') then
        doTweenColor('timeBar', 'timeBar', '8B0000', 0.01, 'linear');
    elseif keyPressed('down') then
        doTweenColor('timeBar', 'timeBar', '8B0000', 0.01, 'linear');
    elseif keyPressed('up') then
        doTweenColor('timeBar', 'timeBar', '8B0000', 0.01, 'linear');
    else
        doTweenColor('timeBar', 'timeBar', '8B0000', 0.4, 'linear');
    end
end