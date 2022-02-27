--checkbox.lua

defineProperty("btnName", "")
defineProperty("dref", "")
defineProperty("command", "")
defineProperty("textX", 0)


local img = sasl.gl.loadImage("button_toggle_ios_style_light.png")

local dr = globalProperty(get(dref))
local isCommand = false
local commandId = nil

if get(command) == "" then
    isCommand = false
else
    isCommand = true
end

if isCommand then
    commandId = sasl.findCommand(get(command))
end

function onMouseDown(_, _, _, b)
    if b == MB_LEFT then
        if get(command) == "" then
            if get(dr) == 1 then
                set(dr, 0)
            else
                set(dr, 1)
            end
        else
            sasl.commandOnce(commandId)
        end
    end
    return true
end

function draw()

    if get(dr) == 1 then
        sasl.gl.drawTexturePart(img, 0, -2, 38, 18, 0, 0, 50, 24)
    else
        sasl.gl.drawTexturePart(img, 0, -2, 38, 18, 0, 48, 50, 24)
    end
        sasl.gl.drawText(font1, get(textX), 0, get(btnName), 20, false, false, TEXT_ALIGN_LEFT, col.white)
end