--checklistMenu.lua
defineProperty("checklistPagination", 0)


local startY = 380
local CONST_resetStartY = startY
local startX = 60
local CONST_numInComponents = 7
local lineWidth = {1,1,1}
local n = 1


function drawClist(clistId, start, stop, clistName)
    for i = start, stop - 1, 1 do
        table.insert(components, n + CONST_numInComponents , drawChecklist {
            position    = {0, startY - 30, 800, 20},
            size        = {800, 20},
            clistNum    = i,
            call        = clistName[clistId][i+1][1],
            response    = clistName[clistId][i+1][2],
            dataref     = clistName[clistId][i+1][3],
            checkedState = clistName[clistId][i+1][4],
            checklistId = clistId,
            visible     = true,
            cursor = {
                x = -16 ,
                y = -16 ,
                width = 32 ,
                height = 32 ,
                shape = sasl.gl.loadImage ("mc_button.png") ,
                hideOSCursor = true
                }
        })
        n = n + 1
        startY = startY - 25
    end
    n = 1
end

function drawChecklistButtons(checklist, begin, stop)
    for i = 1, stop, 1 do
        table.insert(components, i + CONST_numInComponents , buttonChecklist{
            position    = {startX, startY, 300, 32},
            size        = {300, 32},
            buttonName = checklist[i][1],
            chkListNr   = i,
            noImage     = false,
            cursor = {
                x = -16 ,
                y = -16 ,
                width = 32 ,
                height = 32 ,
                shape = sasl.gl.loadImage ("mc_button.png") ,
                hideOSCursor = true
                },
        })
            startY = startY - 35
            if i == 10 then
                startX = 460
                startY = CONST_resetStartY
            end
    end
    startX = 60
end


function removeClist()
    for i = CONST_numInComponents + 1, #components, 1 do
        table.remove(components, CONST_numInComponents + 1)
    end
end


function update()
    if get(tabletApp) == 3 then
        visible = true
    else
        visible = false
    end


    if get(checklistPage) == 0 and get(checklistId) == 0 and get(btnClicked) == 1 then
        removeClist()
        drawChecklistButtons(clist, 8, #clist)
        startY = CONST_resetStartY
        set(btnClicked, 0)
        
    elseif get(checklistPage) == 1 and get(checklistId) == 0 and get(btnClicked) == 1 then
        removeClist()
        drawChecklistButtons(clistEmer, 8, #clistEmer)
        startY = CONST_resetStartY
        set(btnClicked, 0)
    end

    if get(checklistId) > 0 and  get(btnClicked) == 1 then
        if get(checklistPage) == 0 then
            removeClist()
            if #clist[get(checklistId)] <= 13 then
                drawClist(get(checklistId), 1, #clist[get(checklistId)], clist)
                startY = CONST_resetStartY
            elseif #clist[get(checklistId)] > 13 and #clist[get(checklistId)] <=26 and get(checklistPagination) == 0 then
                drawClist(get(checklistId), 1, 14, clist)
                startY = CONST_resetStartY
            elseif #clist[get(checklistId)] > 13 and #clist[get(checklistId)] <=26 and get(checklistPagination) == 1 then
                drawClist(get(checklistId), 14, #clist[get(checklistId)], clist)
                startY = CONST_resetStartY
            elseif #clist[get(checklistId)] > 26 and get(checklistPagination) == 0 then
                drawClist(get(checklistId), 1, 14, clist)
                startY = CONST_resetStartY
            elseif #clist[get(checklistId)] > 26 and get(checklistPagination) == 1 then
                drawClist(get(checklistId), 14, 27, clist)
                startY = CONST_resetStartY
            elseif #clist[get(checklistId)] > 26 and get(checklistPagination) == 2 then
                drawClist(get(checklistId), 27, #clist[get(checklistId)], clist)
                startY = CONST_resetStartY
            end

            startY = CONST_resetStartY
            set(btnClicked, 0)

        elseif get(checklistPage) == 1 then
            removeClist()
            --drawClist(get(checklistId), 1, #clistEmer[get(checklistId)], clistEmer)
            if #clistEmer[get(checklistId)] <= 13 then
                drawClist(get(checklistId), 1, #clistEmer[get(checklistId)], clistEmer)
                startY = CONST_resetStartY
            elseif #clistEmer[get(checklistId)] > 13 and #clistEmer[get(checklistId)] <=26 and get(checklistPagination) == 0 then
                drawClist(get(checklistId), 1, 14, clistEmer)
                startY = CONST_resetStartY
            elseif #clistEmer[get(checklistId)] > 13 and #clistEmer[get(checklistId)] <=26 and get(checklistPagination) == 1 then
                drawClist(get(checklistId), 14, #clistEmer[get(checklistId)], clistEmer)
                startY = CONST_resetStartY
            elseif #clistEmer[get(checklistId)] > 26 and get(checklistPagination) == 0 then
                drawClist(get(checklistId), 1, 14, clistEmer)
                startY = CONST_resetStartY
            elseif #clistEmer[get(checklistId)] > 26 and get(checklistPagination) == 1 then
                drawClist(get(checklistId), 14, 27, clistEmer)
                startY = CONST_resetStartY
            elseif #clistEmer[get(checklistId)] > 26 and get(checklistPagination) == 2 then
                drawClist(get(checklistId), 27, #clistEmer[get(checklistId)], clistEmer)
                startY = CONST_resetStartY
            end
            startY = CONST_resetStartY
            set(btnClicked, 0)
        end
    end
    updateAll(components)
end

function draw()
    sasl.gl.drawRectangle(0,0,800,480,col.darkblue) -- background

    --NORMAL PROCEDURES
    sasl.gl.drawWidePolyLine({20,420,35,450, 270, 450, 285, 420},lineWidth[1], col.white)

    --EMERGENCY PROCEDURES
    sasl.gl.drawWidePolyLine({310,420,325,450, 595, 450, 610, 420},lineWidth[2], col.white)

    --REFERENCES
    sasl.gl.drawWidePolyLine({625,420,640,450, 775, 450, 790, 420},lineWidth[3], col.white)
    
    if get(checklistPage) == 0 then
        sasl.gl.drawWideLine(311,420,611,420,3, col.white)
        sasl.gl.drawWideLine(626,420,789,420,3, col.white)
        lineWidth = {3,1,1}
    elseif get(checklistPage) == 1 then
        sasl.gl.drawWideLine(21,420,311,420,3, col.white)
        sasl.gl.drawWideLine(626,420,789,420,3, col.white)
        lineWidth = {1,3,1}
    elseif get(checklistPage) == 2 then
        sasl.gl.drawWideLine(21,420,311,420,3, col.white)
        sasl.gl.drawWideLine(311,420,611,420,3, col.white)
        lineWidth = {1,1,3}
    end

    if get(checklistId) > 0 then
        if get(checklistPage) == 0 then
            sasl.gl.drawText(font1, 400, startY, clist[get(checklistId)][1], 22, true, false, TEXT_ALIGN_CENTER, col.white)
        elseif get(checklistPage) == 1 then
            sasl.gl.drawText(font1, 400, startY, clistEmer[get(checklistId)][1], 22, true, false, TEXT_ALIGN_CENTER, col.white)
        elseif get(checklistPage) == 2 then
            sasl.gl.drawText(font1, 400, startY, "REFERENCES", 22, true, false, TEXT_ALIGN_CENTER, col.white)
        end
    end

    sasl.gl.drawWideLine(0,420,21,420,3, col.white)
    sasl.gl.drawWideLine(284,420,311,420,3, col.white)
    sasl.gl.drawWideLine(611,420,626,420,3, col.white)
    sasl.gl.drawWideLine(789,420,800,420,3, col.white)

    drawAll(components)
end


components = {
    activate {
        position    = {120, 15, 50, 20},
        size        = {50, 20},
        dref        = "Maximus1/tablet/autoCheck",
        btnName     = "Auto checks",
        textX       = 40,
        cursor = {
            x = -16 ,
            y = -16 ,
            width = 32 ,
            height = 32 ,
            shape = sasl.gl.loadImage ("mc_button.png") ,
            hideOSCursor = true
            }
    },
    buttonChecklistPage{
        position    = {40, 425, 200, 30},
        size        = {200, 30},
        buttonName = "NORMAL PROCEDURES",
        toPage   = 0,
        isBold      = true,
        fontSize    = 20,
        cursor = {
            x = -16 ,
            y = -16 ,
            width = 32 ,
            height = 32 ,
            shape = sasl.gl.loadImage ("mc_button.png"),
            hideOSCursor = true
            } 
    
    },
    buttonChecklistPage{
        position    = {330, 425, 150, 30},
        size        = {150, 30},
        buttonName  = "EMERGENCY PROCEDURES",
        toPage      = 1,
        isBold      = true,
        fontSize    = 20,
        cursor = {
            x = -16 ,
            y = -16 ,
            width = 32 ,
            height = 32 ,
            shape = sasl.gl.loadImage ("mc_button.png"),
            hideOSCursor = true
            } 
    
    },
    buttonChecklistPage{
        position    = {645, 425, 150, 30},
        size        = {150, 30},
        buttonName = "REFERENCES",
        toPage   = 2,
        isBold      = true,
        fontSize    = 20,
        cursor = {
            x = -16 ,
            y = -16 ,
            width = 32 ,
            height = 32 ,
            shape = sasl.gl.loadImage ("mc_button.png"),
            hideOSCursor = true
            } 
    
    },
    buttonChecklist{
        position    = {10, 10, 75, 30},
        size        = {75, 30},
        buttonName = "BACK",
        chkListNr   = 0,
        isBold      = true,
        fontSize    = 24,
        cursor = {
            x = -16 ,
            y = -16 ,
            width = 32 ,
            height = 32 ,
            shape = sasl.gl.loadImage ("mc_button.png"),
            hideOSCursor = true
            } 
    
    },
    buttonChecklist{
        position    = {700, 10, 75, 30},
        size        = {75, 30},
        buttonName = "NEXT",
        chkListNr   = 0,
        isBold      = true,
        fontSize    = 24,
        cursor = {
            x = -16 ,
            y = -16 ,
            width = 32 ,
            height = 32 ,
            shape = sasl.gl.loadImage ("mc_button.png"),
            hideOSCursor = true
            }
    },
    buttonChecklist{
        position    = {600, 10, 75, 30},
        size        = {75, 30},
        buttonName = "PREV",
        chkListNr   = 0,
        isBold      = true,
        fontSize    = 24,
        cursor = {
            x = -16 ,
            y = -16 ,
            width = 32 ,
            height = 32 ,
            shape = sasl.gl.loadImage ("mc_button.png"),
            hideOSCursor = true
            }
    },
    topbar{
        position    = {0, 450, 800, 30},
        size        = {800, 30}
    }
}

