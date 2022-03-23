defineProperty("buttonName")
defineProperty("isBold")
defineProperty("fontSize", 20)



function onMouseDown(_,_,_,b)
    if b == MB_LEFT then
        --cmdReboot = sasl.findCommand(sasl/reload/Tablet_by_Maximus1)
        --commandOnce(sasl.findCommand("sasl/reload/all"))
---@diagnostic disable-next-line: undefined-field
        sasl.scheduleProjectReboot()
    end
end

function draw()
    sasl.gl.drawRectangle(0, 0, 110, 24, {0, 0, 0, 0.7})
    sasl.gl.drawFrame(0, 0, 110, 24, col.white)
    sasl.gl.drawText(font2, 2, 4, get(buttonName), get(fontSize), get(isBold), false, TEXT_ALIGN_LEFT, col.white)
end