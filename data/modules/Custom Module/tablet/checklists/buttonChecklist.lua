defineProperty("chkListName", "")
defineProperty("chkListNr", 1)
defineProperty("changePage")
--defineProperty("checklistPage")



function update()

if get(chkListName) == "page" then
    if get(checklistId) ~= 0 then
        if #clist[get(checklistId)] <= 14 then
            visible = false
        else
            visible = true
        end
    end
end 
end

local btnName = "NEXT PAGE"
local img = sasl.gl.loadImage("checklist.png")
local font = sasl.gl.loadFont ("Roboto-Regular.ttf")

function onMouseDown(_, _, _, b)
    if b == MB_LEFT then
        if get(chkListName) == "page" and get(checklistPage) == 0 then
            set(checklistPage, 1)
        elseif get(chkListName) == "page" and get(checklistPage) == 1 then
            set(checklistPage, 0)
        else 
            set(checklistId, get(chkListNr))
            if get(changePage) == 1 then
                set(page, get(changePage))
            end
        end
        
    end
end




function draw()
    if get(chkListName) == "BACK" then
        sasl.gl.drawFrame(0, 0, 70, 24, col.white)
        sasl.gl.drawText(font, 2, 2, get(chkListName), 24, true, false, TEXT_ALIGN_LEFT, col.white)
    elseif get(chkListName) == "page" then
        if get(checklistPage) == 0 then
            btnName = "NEXT PAGE"
        else
            btnName = "PREV PAGE"
        end
        sasl.gl.drawFrame(0, 0, 120, 20, col.white)
        sasl.gl.drawText(font, 2, 2, btnName, 20, true, false, TEXT_ALIGN_LEFT, col.white)
    else
        sasl.gl.drawTexture(img, 0, 0, 32, 32)
        sasl.gl.drawText(font, 35, 7, get(chkListName), 24, false, false, TEXT_ALIGN_LEFT, col.white)
    end

    
end