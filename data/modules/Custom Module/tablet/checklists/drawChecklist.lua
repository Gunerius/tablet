--clickDone.lua

defineProperty("clistNum", 99)
defineProperty("call", "")
defineProperty("response", "")
defineProperty("dataref", "nil")
defineProperty("checkedState", 1)

local ac = globalProperty("Maximus1/tablet/autoCheck")

local dref = ""
if get(dataref) ~= "nil" then
    dref = globalProperty(get(dataref))
end

--[[ local responseLen = #get(response)
local space = 0

 for i = 17, 30 do
    local chkSpace = string.sub(get(response), i, i)
    if chkSpace == " " then
        space = i
        break
    end
 end ]]

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

function update()
   if get(dataref) == "nil" or get(ac) == 0 then
        c2 = c
    elseif get(dataref) ~= "nil" and get(ac) == 1 then
         if get(dref) == get(checkedState) then
            c2 = col.green
        else
            c2 = c
        end
    end
end

function draw()
    

    sasl.gl.drawText(font1, 10, 0, tostring(get(clistNum))..".", 20, false, false, TEXT_ALIGN_LEFT, col.white)
    sasl.gl.drawText(font1, 40, 0, get(call), 20, false, false, TEXT_ALIGN_LEFT, c2)
    sasl.gl.drawText(font1, 790, 0, get(response), 19, true, false, TEXT_ALIGN_RIGHT, c2)
    sasl.gl.drawLine(40, -2, 790, -2, col.white)
end
