--checklist.lua

--include("b58.lua")
local startY = 400

function drawClist(clistId)
    for i = 1, #clist[clistId] - 1, 1 do
        table.insert(components, 2 + i , clickDone {
            position    = {0, startY, 800, 20},
            size        = {800, 20},
            clistNum    = i,
            call        = clist[clistId][i+1][1],
            response    = clist[clistId][i+1][2],
            dataref     = clist[clistId][i+1][3],
            checkedState = clist[clistId][i+1][4],
            itemNum     = i+1,
            checklistId = clistId,
            cursor = {
                x = -16 ,
                y = -16 ,
                width = 32 ,
                height = 32 ,
                shape = sasl.gl.loadImage ("mc_button.png") ,
                hideOSCursor = true
                }
        })
        startY = startY - 20
    end
end


function removeClist()
    for i = 3, #components, 1 do
        table.remove(components, i)
    end
end

local state = true
function update()
    if get(page) == 3 and get(checklistId) > 0 then
    visible = true
    else
        visible = false
    end

    if get(checklistId) > 0 and state then
        local clistId = get(checklistId)
        drawClist(clistId)
        state = false
    end
    if get(checklistId) == 0 then
        
            removeClist()
        
        state = true
    end
    updateAll(components)
end

function draw()
    startY = 400
    sasl.gl.drawRectangle(0,0,800,480,col.darkblue)
    if get(checklistId) > 0 then
        local clistId = get(checklistId)
        sasl.gl.drawText(font1, 400, 420, clist[clistId][1], 22, true, false, TEXT_ALIGN_CENTER, col.white)
    end

    drawAll(components)
end

components = {
    buttonChecklist{
        position    = {10, 10, 70, 24},
        size        = {70, 24},
        chkListName = "BACK",
        chkListNr   = 0,
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
}