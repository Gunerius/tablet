--slider.lua

defineProperty("dref", "")
local dr = globalProperty(get(dref))

local state = 0

function onMouseUp ()
    state = 0
    return true
end
function onMouseDown (_, x, _, b)
    if b == MB_LEFT then
    state = 1
    set(dr, mm.clamp((x / 185), 0, 1))
    end
    return true
end
function onMouseMove(_, x)
    if state ==1 then
        set(dr, mm.clamp((x / 185), 0, 1))
    end
end

function draw()
    sasl.gl.drawTexture(img, get(dr)*185, 0, 20, 20, col.white)
end