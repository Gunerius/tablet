defineProperty("img", "")
defineProperty("btnName", "")
defineProperty("command", "")
defineProperty("textX", 0)
defineProperty("changePage", 99)

local logo = sasl.gl.loadImage(get(img))


local isCommand = false
local cmdId = nil

if get(command) == "" then
    isCommand = false
else
    isCommand = true
end

if isCommand then
    cmdId = sasl.findCommand(get(command))
end





function onMouseDown ( component , x , y , button , parentX , parentY )
    if button == MB_LEFT then
        if get(changePage) == 99 then
            sasl.commandOnce(cmdId)
        else
            set(page, get(changePage))
        end
    end
    return true
end

function draw()
    sasl.gl.drawTexture(logo, 0, 20, 100, 100)
    sasl.gl.drawText(font1, get(textX), 0, get(btnName), 20, true, false, TEXT_ALIGN_LEFT, col.white)
end