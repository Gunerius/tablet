--buttonRep.lua

local logo = sasl.gl.loadImage(Custommodule_path.."/textures/b58.png")
if loadedAircraft == "Baron_58.acf" then
    logo = sasl.gl.loadImage(Custommodule_path.."/textures/b58.png")
elseif loadedAircraft == "Car_PC12.acf" then
    logo = sasl.gl.loadImage(Custommodule_path.."/textures/pc12.png")
end


function onMouseDown ( component , x , y , button , parentX , parentY )
    if button == MB_LEFT then
    set(home, 0)
    set(tabletApp, 1)
    end
    return true
end

function draw()
    sasl.gl.drawTexture(logo, 0, 30, 160, 160, col.white)
    sasl.gl.drawText(font1, 80, 0, "REP", 30, true, false, TEXT_ALIGN_CENTER, col.white)
end
