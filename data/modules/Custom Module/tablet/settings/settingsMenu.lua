

function update()
    if get(tabletApp) == 5 then
        visible = true
    else
        visible = false
    end
    updateAll(components)
end

local bg1 = sasl.gl.loadImage(Custommodule_path.."/textures/bg1.png")

function draw()
    sasl.gl.drawTexture(bg1, 0, 0, 800, 480, col.white)
    sasl.gl.drawRectangle(20, 220, 430, 220, {0,0,0,0.7})
    sasl.gl.drawRectangle(470, 220, 310, 220, {0,0,0,0.7})

    drawAll(components)
end

function onModuleDone()
    stngs.apps.simbrief.installed = get(appSimbrief)
    stngs.apps.avitab.installed = get(appAvitab)
    stngs.checklist.active = get(autoCheck)
    local file = io.open(Custommodule_path.."/tablet/settings/settings.json", "w")
    io.output(file)
    store = json.encode(stngs)
    io.write(store)
    io.close(file)
end

components = {
    topbar{
        position    = {0, 450, 800, 30},
        size        = {800, 30}
    },
    checkboxSettings{
        position    = {35, 400, 50, 20},
        size        = {50, 20},
        btnName     = "Install Simbrief app(requires reboot)",
        dref        = "Maximus1/tablet/simBrief",
        command     = "",
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
    checkboxSettings{
        position    = {35, 370, 50, 20},
        size        = {50, 20},
        btnName     = "Install Avitab app(requires reboot)",
        dref        = "Maximus1/tablet/avitab",
        command     = "",
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
    btnSettings {
        position    = {25, 10, 110, 25},
        size        = {110, 25},
        buttonName = "!REBOOT!",
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
    }
}