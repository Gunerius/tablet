--checklistMenu.lua

local startY = 380
local CONST_numInComponents = 7
local lineWidth = {1,1,1}

function drawClist(clistId, stop, clistName)
    for i = 1, stop - 1, 1 do
        table.insert(components, i + CONST_numInComponents , drawChecklist {
            position    = {0, startY, 800, 20},
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

        if #clistName[clistId][i+1][2] <= 26 then
            startY = startY - 25
        else
            startY = startY - 50
        end
    end
end

function drawChecklistButtons(checklist, begin, stop)
    local j =1
    for i = begin, stop + begin - 1, 1 do
        table.insert(components, i , buttonChecklist{
            position    = {60, startY, 180, 32},
            size        = {180, 32},
            buttonName = checklist[i-7][1],
            chkListNr   = j,
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
            j = j + 1
    end
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
        startY = 380
        set(btnClicked, 0)
        
    elseif get(checklistPage) == 1 and get(checklistId) == 0 and get(btnClicked) == 1 then
        removeClist()
        drawChecklistButtons(clistEmer, 8, #clistEmer)
        startY = 380
        set(btnClicked, 0)
    end

    if get(checklistId) > 0 and  get(btnClicked) == 1 then
        if get(checklistPage) == 0 then
            removeClist()
            drawClist(get(checklistId),#clist[get(checklistId)], clist)
            startY = 380
            set(btnClicked, 0)
        elseif get(checklistPage) == 1 then
            removeClist()
            drawClist(get(checklistId),#clist[get(checklistId)], clistEmer)
            startY = 380
            set(btnClicked, 0)
        end
    end

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

    sasl.gl.drawWideLine(0,420,21,420,3, col.white)
    sasl.gl.drawWideLine(284,420,311,420,3, col.white)
    sasl.gl.drawWideLine(611,420,626,420,3, col.white)
    sasl.gl.drawWideLine(789,420,800,420,3, col.white)

    drawAll(components)
end


components = {
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
    },
    --[[ drawChecklist {
        position    = {0, 200, 800, 20},
        size        = {800, 20},
        clistNum    = 2,
        call        = clist[1][2][1],
        response    = clist[1][2][2],
        dataref     = clist[1][2][3],
        checkedState = clist[1][2][4],
        checklistId = 1,
        cursor = {
            x = -16 ,
            y = -16 ,
            width = 32 ,
            height = 32 ,
            shape = sasl.gl.loadImage ("mc_button.png") ,
            hideOSCursor = true
            }
    } ]]
}

