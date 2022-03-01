defineProperty("buttonName", "")
defineProperty("chkListNr")
defineProperty("changePage")
defineProperty("noImage", true)
defineProperty("fontSize", 22)
defineProperty("isBold", false)

local clistNr = globalProperty("Maximus1/tablet/checklistId")
local btn = globalProperty("Maximus1/tablet/buttonClicked")

function update()

    
    if get(clistNr) > 0 and (get(buttonName) == "NEXT" or get(buttonName) == "PREV") then
        if  #clist[get(clistNr)] <= 14 and (get(buttonName) == "NEXT" or get(buttonName) == "PREV") then
            visible = false
        else
            visible = true
        end
    elseif get(clistNr) == 0 and (get(buttonName) == "NEXT" or get(buttonName) == "PREV")  then
        visible = false
    end
end


local img = sasl.gl.loadImage("checklist.png")
local font = sasl.gl.loadFont ("Roboto-Regular.ttf")

function onMouseDown(_, _, _, b)
    if b == MB_LEFT then
        if get(buttonName) == "BACK" then
            if get(clistNr) == 0 then
                set(tabletApp, 1)
            end
            set(clistNr, 0)
            set(btn, 1)
        elseif get(buttonName) == "NEXT" then
            set(checklistPagination, 1)
            set(btn, 1)
        elseif get(buttonName) == "PREV" then
            set(checklistPagination, 0)
            set(btn, 1)
        else
            set(clistNr, get(chkListNr))
            set(btn, 1)
        end
    end
end




function draw()

    if get(noImage) then
        sasl.gl.drawFrame(0,0,75,30,col.white)
        sasl.gl.drawText(font, 5, 5, get(buttonName), get(fontSize), get(isBold), false, TEXT_ALIGN_LEFT, col.white)
    else
        sasl.gl.drawTexture(img, 0, 0, 25,25,col.white)
        sasl.gl.drawText(font, 25, 3, get(buttonName), get(fontSize), get(isBold), false, TEXT_ALIGN_LEFT, col.white)
    end

end