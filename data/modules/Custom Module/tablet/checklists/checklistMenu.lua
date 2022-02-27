


function update()
    if get(page) == 3 and get(checklistId) == 0 then
    visible = true
    else
        visible = false
    end
end

function draw()
    sasl.gl.drawRectangle(0,0,800,480,col.darkblue)
    sasl.gl.drawText(font1, 40, 400, "NORMAL PROCEDURES", 28, true, false, TEXT_ALIGN_LEFT, col.white)
    sasl.gl.drawText(font1, 450, 400, "EMERGENCY PROCEDURES", 28, true, false, TEXT_ALIGN_LEFT, col.white)
    sasl.gl.drawText(font1, 450, 200, "REFERENCES", 28, true, false, TEXT_ALIGN_LEFT, col.white)
    drawAll(components)
end


components = {
    buttonChecklist{
        position    = {60, 350, 100, 32},
        size        = {100, 32},
        chkListName = "Before Starting",
        chkListNr   = 1,
        cursor = {
            x = -16 ,
            y = -16 ,
            width = 32 ,
            height = 32 ,
            shape = sasl.gl.loadImage ("mc_button.png") ,
            hideOSCursor = true
            },
    },
    buttonChecklist{
        position    = {60, 300, 100, 32},
        size        = {100, 32},
        chkListName = "Starting",
        chkListNr   = 2,
        cursor = {
            x = -16 ,
            y = -16 ,
            width = 32 ,
            height = 32 ,
            shape = sasl.gl.loadImage ("mc_button.png") ,
            hideOSCursor = true
            }
    },
    buttonChecklist{
        position    = {10, 10, 70, 24},
        size        = {70, 24},
        chkListName = "BACK",
        chkListNr   = 0,
        changePage  = 1,
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