--clickDone.lua

defineProperty("clistNum", 99)
defineProperty("call", "")
defineProperty("response", "")
defineProperty("dataref", "nil")
defineProperty("checkedState", 1)
defineProperty("itemNum", 1)
defineProperty("checklistId")

local dref = ""
if get(dataref) ~= "nil" then
    dref = globalProperty(get(dataref))
end

local length = 0
local responseLen = #get(response)
local i2 = 0
local newStr1 = {}
local newStr2 = {}
local clistId = get(checklistId)

print(#get(response))

--clist[clistId][get(itemNum)][2]

if responseLen >= 26 then
    include("b58.lua")
    function Split(s, delimiter)
        result = {};
        for match in (s..delimiter):gmatch("(.-)"..delimiter) do
            table.insert(result, match);
        end
        return result;
    end

    split_string = Split(clist[clistId][get(itemNum)][2], " ")

    

    for i = 1, #split_string do
        --print(split_string[i])
        --print(length)

        if length < 25 then
            table.insert(newStr1, i, split_string[i].." ")
            i2 = i
            print(i2)
        else
            table.insert(newStr2, i-i2, split_string[i].." ")
        end
        length = length + #split_string[i] + 1
        --print(length)

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
            if responseLen <= 25 then
                sasl.gl.drawText(font1, 550, 0, get(response), 20, false, false, TEXT_ALIGN_LEFT, c2)
            else

            end
            sasl.gl.drawLine(40, 0, 750, 0, col.white)
end
