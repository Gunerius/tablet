defineProperty("buttonName", "")
defineProperty("chkListNr")
defineProperty("changePage")
defineProperty("noImage", true)
defineProperty("fontSize", 22)
defineProperty("isBold", false)

--clistName[clistId][i+1][1]


local pages = globalProperty("Maximus1/tablet/checklistNumPages")
local clistNr = globalProperty("Maximus1/tablet/checklistId")
local btn = globalProperty("Maximus1/tablet/buttonClicked")
local numPages = 0
local panelBrightnes = globalProperty("Maximus1/tablet/panelBrightnes")

local x = get(panelBrightnes)

    col = {
        white = {1 * x ,1 * x ,1 * x ,1},
        black = {0.001 * x ,0.001 * x ,0.001 * x ,1},
        red = {1 * x ,0 * x ,0 * x ,1},
        green = {0 * x ,1 * x ,0 * x ,1},
        darkgrey = {0.278 * x ,0.31 * x ,0.349 * x ,1},
        grey = {0.5 * x ,0.5 * x ,0.5 * x ,1},
        lightgrey = {0.7 * x ,0.7 * x ,0.7 * x ,1},
        blue = {0 * x ,0 * x ,1 * x ,1},
        darkblue = {0 * x ,0.1 * x ,0.15 * x ,1}
    }

function update()
    col = {
        white = {1 * x ,1 * x ,1 * x ,1},
        black = {0.001 * x ,0.001 * x ,0.001 * x ,1},
        red = {1 * x ,0 * x ,0 * x ,1},
        green = {0 * x ,1 * x ,0 * x ,1},
        darkgrey = {0.278 * x ,0.31 * x ,0.349 * x ,1},
        grey = {0.5 * x ,0.5 * x ,0.5 * x ,1},
        lightgrey = {0.7 * x ,0.7 * x ,0.7 * x ,1},
        blue = {0 * x ,0 * x ,1 * x ,1},
        darkblue = {0 * x ,0.1 * x ,0.15 * x ,1}
    }
    
    if get(clistNr) > 0 then
        if get(checklistPage) == 0 then
            activeChecklist = clist
        elseif get(checklistPage) == 1 then
            activeChecklist = clistEmer
        elseif get(checklistPage) == 2 then
            activeChecklist = clist
        end
        numPages = math.ceil((#activeChecklist[get(clistNr)] - 1) / 13) - 1
        set(pages, numPages + 1 )
    end

    if get(clistNr) > 0 and (get(buttonName) == "NEXT" or get(buttonName) == "PREV") then
            visible = true
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
            if get(checklistPagination) == numPages then
                set(clistNr, mm.clamp(get(clistNr) + 1, 1, #activeChecklist))
                set(checklistPagination, 0)
                set(btn, 1)
            else
                set(checklistPagination, mm.clamp(get(checklistPagination) + 1, 0, numPages))
                set(btn, 1)  
            end
            
        elseif get(buttonName) == "PREV" then
            if get(checklistPagination) == 0 then
                set(clistNr, mm.clamp(get(clistNr) - 1, 1, #activeChecklist))
                set(checklistPagination, math.ceil((#activeChecklist[get(clistNr)] - 1) / 13) - 1)
                set(btn, 1)
            else
                set(checklistPagination, mm.clamp(get(checklistPagination) - 1, 0, numPages))
                set(btn, 1)  
            end
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