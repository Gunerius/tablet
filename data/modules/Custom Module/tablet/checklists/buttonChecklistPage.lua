defineProperty("buttonName")
defineProperty("isBold")
defineProperty("fontSize", 20)
defineProperty("toPage")





function onMouseDown(_,_,_,b)
    if b == MB_LEFT then
        set(checklistPage, get(toPage))
        set(btnClicked, 1)
    end
end

function draw()
    sasl.gl.drawText(font1, 0, 0, get(buttonName), get(fontSize), get(isBold), false, TEXT_ALIGN_LEFT, col.white)
end