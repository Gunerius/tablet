defineProperty("buttonName", "")
defineProperty("chkListNr")
defineProperty("changePage")
defineProperty("noImage", true)
defineProperty("fontSize", 22)
defineProperty("isBold", false)

local clistNr = globalProperty("Maximus1/tablet/checklistId")
local btn = globalProperty("Maximus1/tablet/buttonClicked")
function update()

end


local img = sasl.gl.loadImage("checklist.png")
local font = sasl.gl.loadFont ("Roboto-Regular.ttf")

function onMouseDown(_, _, _, b)
    if b == MB_LEFT then
        if get(buttonName) == "BACK" then
            set(clistNr, 0)
            set(btn, 1)
        elseif get(buttonName) == "NEXT" then
            print(get(buttonName))
            set(btn, 1)
        elseif get(buttonName) == "PREV" then
            print(get(buttonName))
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