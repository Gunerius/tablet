defineProperty("buttonName")
defineProperty("isBold")
defineProperty("fontSize", 20)

function onMouseDown(_,_,_,b)
    if b == MB_LEFT then
        set(downloadOfp, 1)
    end
end

function draw()
    sasl.gl.drawFrame(0, 0, 160, 24, col.white)
    sasl.gl.drawText(font2, 2, 4, get(buttonName), get(fontSize), get(isBold), false, TEXT_ALIGN_LEFT, col.white)
end