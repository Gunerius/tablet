--menu.lua

function update()
    inMenu = toboolean(get(home))
    visible = inMenu
    if inMenu then
        set(avitab, 0)
        set(tabletApp, 0)
    end
    updateAll(components)
end

components = {
    bg      {
        position    = {0, 0, 800, 480},
        size        = {800, 480}
    },
    topbar{
        position    = {0, 450, 800, 30},
        size        = {800, 30}
    },
    buttonRep {
        position    = {30, 250, 160, 190},
        size        = {160, 190},
        cursor = {
            x = -16 ,
            y = -16 ,
            width = 32 ,
            height = 32 ,
            shape = sasl.gl.loadImage ("mc_button.png") ,
            hideOSCursor = true
            }
    },
    buttonAvitab{
        position    = {30, 30, 160, 190},
        size        = {160, 190},
        cursor = {
            x = -16 ,
            y = -16 ,
            width = 32 ,
            height = 32 ,
            shape = sasl.gl.loadImage ("mc_button.png") ,
            hideOSCursor = true
            }
    },
    buttonXpSettings {
        position    = {240, 250, 160, 190},
        size        = {160, 190},
        cursor = {
            x = -16 ,
            y = -16 ,
            width = 32 ,
            height = 32 ,
            shape = sasl.gl.loadImage ("mc_button.png") ,
            hideOSCursor = true
            }
    }
}
