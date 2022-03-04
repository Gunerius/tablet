

function update()
    visible = get(showDropDown)

end

function draw()

    sasl.gl.drawRectangle(0, 0, 300, 250, {0,0,0,0.7})
    sasl.gl.drawFrame(0, 0, 300, 250, col.white)
    drawAll(components)
end

components = {
    dropdownControlsSlider{
        position    = {20, 200, 205, 45},
        size        = {205, 45},
        btnName     = "Brightnes",
        dref        = "Maximus1/tablet/panelBrightnes",
        img         = "slider_bg_h_hover@2x.png",
        textX       = 5,
        cursor = {
            x = -16 ,
            y = -16 ,
            width = 32 ,
            height = 32 ,
            shape = sasl.gl.loadImage ("mc_button.png") ,
            hideOSCursor = true
            }
    },
    checkbox{
        position    = {20, 120, 50, 20},
        size        = {50, 20},
        btnName     = "Sound ON",
        dref        = "sim/operation/sound/sound_on",
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
    xpControlsSlider{
        position    = {20, 150, 205, 45},
        size        = {205, 45},
        btnName     = "Master Volume",
        dref        = "sim/operation/sound/master_volume_ratio",
        img         = "slider_bg_h_hover@2x.png",
        textX       = 5,
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