defineProperty("chkListName", "")
defineProperty("chkListNr", 1)
defineProperty("changePage")

local img = sasl.gl.loadImage("checklist.png")

function onMouseDown(_, _, _, b)
    if b == MB_LEFT then
        set(checklistId, get(chkListNr))
        if get(changePage) == 1 then
            set(page, get(changePage))
        end
    end
end

function draw()
    --sasl.gl.drawCircle(0, 10, 12, true, col.white)
    if get(chkListName) == "BACK" then
        sasl.gl.drawFrame(0, 0, 70, 24, col.white)
        sasl.gl.drawText(font1, 2, 2, get(chkListName), 24, true, false, TEXT_ALIGN_LEFT, col.white)
    else
        sasl.gl.drawTexture(img, 0, 0, 32, 32)
        sasl.gl.drawText(font1, 35, 7, get(chkListName), 24, false, false, TEXT_ALIGN_LEFT, col.white)
    end
    
end