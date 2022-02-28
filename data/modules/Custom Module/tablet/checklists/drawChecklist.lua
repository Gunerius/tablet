--clickDone.lua

defineProperty("clistNum", 99)
defineProperty("call", "")
defineProperty("response", "")
defineProperty("dataref", "nil")
defineProperty("checkedState", 1)


local dref = ""
if get(dataref) ~= "nil" then
    dref = globalProperty(get(dataref))
end

local responseLen = #get(response)
local space = 0

 for i = 20, 30 do
    local chkSpace = string.sub(get(response), i, i)
    if chkSpace == " " then
        space = i
        break
    end
 end

local font1 = sasl.gl.loadFont ("Roboto-Regular.ttf")
local c = col.white
local c2 = col.white
local state = false

function onMouseMove()
    return true
end

function onMouseEnter()
    c = col.lightgrey
end
function onMouseLeave()
    if state then
        c = col.grey
    else
        c = col.white
    end
end
function onMouseDown(_,_,_, b)
    if b == MB_LEFT then
        state = not state
        if state then
            c = col.grey
        else
            c = col.white
        end
    end
end

function draw()
    if get(dataref) == "nil" then
        c2 = c
    else
         if get(dref) == get(checkedState) then
            c2 = col.green
        else
            c2 = c
        end 

    end
            sasl.gl.drawText(font1, 10, 0, tostring(get(clistNum))..".", 20, false, false, TEXT_ALIGN_LEFT, col.white)
            sasl.gl.drawText(font1, 40, 0, get(call), 20, false, false, TEXT_ALIGN_LEFT, c2)
            if responseLen <= 26 then
                sasl.gl.drawText(font1, 520, 0, get(response), 20, false, false, TEXT_ALIGN_LEFT, c2)
            else
                local response1 = string.sub(get(response), 1, space-1)
                local response2 = string.sub(get(response), space+1, responseLen)
                sasl.gl.drawText(font1, 520, 0, response1, 20, false, false, TEXT_ALIGN_LEFT, c2)
                sasl.gl.drawText(font1, 520, -20, response2, 20, false, false, TEXT_ALIGN_LEFT, c2)
                sasl.gl.drawLine(520, -22, 790, -22, col.white)
            end
            sasl.gl.drawLine(40, -2, 790, 0, col.white)
end
