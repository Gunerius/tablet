local logo = sasl.gl.loadImage(Custommodule_path.."/textures/settings.png")

function onMouseDown ( component , x , y , button , parentX , parentY )
    if button == MB_LEFT then
    set(home, 0)
    set(tabletApp, 5)
    end
    return true
end

function draw()
sasl.gl.drawTexture(logo, 0, 30, 160, 160, col.white)
sasl.gl.drawText(font1, 80, 0, "Settings", 30, true, false, TEXT_ALIGN_CENTER, col.white)
end