

local state = 0
local y1 = 0

function onMouseUp ()
    state = 0
    y1 = 0
    return true
end
function onMouseDown (_, _, y2, b)
    if b == MB_LEFT then
        state = 1
        y1 = y2
    end
    return true
end
function onMouseMove(_, _, y2)
    if state == 1 then
        if (y2-y1) > 5 then
            line[1] = mm.clamp(line[1] + 15, 460, 2000)
            for i = 2, 100, 1 do
                table.insert(line, i, line[i-1] - nextLine)
            end
            y1 = y2
        elseif (y1-y2) > 5 then
            line[1] = mm.clamp(line[1] - 15, 460, 2000)
            y1 = y2
            for i = 2, 100, 1 do
                table.insert(line, i, line[i-1] - nextLine)
            end
        end
        print(line[1])
    end
end

--[[ function onMouseWheel(_, _, _, _, _, _, v)
    if v > 0 then
        line[1] = mm.clamp(line[1] + 15, 460, 1000)
            for i = 2, 100, 1 do
                table.insert(line, i, line[i-1] - nextLine)
            end
    elseif v < 0 then
        line[1] = mm.clamp(line[1] - 15, 460, 1000)
            for i = 2, 100, 1 do
                table.insert(line, i, line[i-1] - nextLine)
            end
    end
end ]]
