--avitabbtn.lua

local avitablogo = sasl.gl.loadImage(Custommodule_path.."/textures/avitablogo.png")

function onMouseDown ( avitabbtn , x , y , button , parentX , parentY )
    if button == MB_LEFT then
     set(home, 0)
     set(avitab, 1)
    end
    return true
end

function draw()
sasl.gl.drawTexture(avitablogo, 0, 30, 160, 160)
sasl.gl.drawText(font1, 30, 0, "Avitab", 30, true, false, TEXT_ALIGN_LEFT, col.white)

end