--repmenu.lua

--simcoders/rep/walkaround/static_elements/toggle
function update()
    if get(tabletApp) == 1 then
    visible = true
    else
        visible = false
    end
end

function draw()
    sasl.gl.drawRectangle(0,0,800,480,col.darkblue)
    drawAll(components)
end


components = {
    buttonRepMenu    {
        position    = {45, 300, 100, 120},
        size        = {100, 120},
        img         = "checklist.png",
        btnName        = "Checklist",
        textX          = 5,
        changePage     = 3,
        cursor = {
            x = -16 ,
            y = -16 ,
            width = 32 ,
            height = 32 ,
            shape = sasl.gl.loadImage ("mc_button.png") ,
            hideOSCursor = true
            }
    },
    buttonRepMenu    {
        position    = {195, 300, 100, 120},
        size        = {100, 120},
        img         = "hangar.png",
        btnName        = "Hangar",
        command        = "simcoders/rep/maintenancereport/show",
        textX          = 13,
        cursor = {
            x = -16 ,
            y = -16 ,
            width = 32 ,
            height = 32 ,
            shape = sasl.gl.loadImage ("mc_button.png") ,
            hideOSCursor = true
            }
    },
    buttonRepMenu    {
        position    = {345, 300, 100, 120},
        size        = {100, 120},
        img         = "tow.png",
        btnName        = "Tow",
        command        = "simcoders/rep/towing/toggle",
        textX          = 25,
        cursor = {
            x = -16 ,
            y = -16 ,
            width = 32 ,
            height = 32 ,
            shape = sasl.gl.loadImage ("mc_button.png") ,
            hideOSCursor = true
            }
    },
    buttonRepMenu    {
        position    = {485, 300, 100, 120},
        size        = {100, 120},
        img         = "walkaround.png",
        btnName        = "Walkaround",
        command        = "simcoders/rep/walkaround/toggle",
        textX          = -10,
        cursor = {
            x = -16 ,
            y = -16 ,
            width = 32 ,
            height = 32 ,
            shape = sasl.gl.loadImage ("mc_button.png") ,
            hideOSCursor = true
            }
    },
    buttonRepMenu    {
        position    = {625, 300, 100, 120},
        size        = {100, 120},
        img         = "weightandbalance.png",
        btnName        = "W & B",
        command        = "simcoders/rep/weightandbalance/show",
        textX          = 20,
        cursor = {
            x = -16 ,
            y = -16 ,
            width = 32 ,
            height = 32 ,
            shape = sasl.gl.loadImage ("mc_button.png") ,
            hideOSCursor = true
            }
    },
    topbar{
        position    = {0, 450, 800, 30},
        size        = {800, 30}
    },
}