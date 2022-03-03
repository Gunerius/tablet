--xpmenu.lua
--[[
    sim/operation/replay_toggle sim/time/is_in_replay

    cursor = {
x = -8 ,
y = -8 ,
width = 30 ,
height = 30 ,
shape = sasl.gl.loadImage ( " myFancyCursor.png " ) ,
hideOSCursor = true
}
 ]]

local xpBackground = sasl.gl.loadImage("image_background_screenshot_ins.png")

function update()
    if get(tabletApp) == 2 then
    visible = true
    else
        visible = false
    end
    updateAll(components)
end
function draw()
    sasl.gl.drawTexture(xpBackground, 0, 0, 800, 600, {1,1,1,0.5})
    sasl.gl.drawText(font1, 100, 420, "SOUND", 25, true, false, TEXT_ALIGN_LEFT, col.white)
    sasl.gl.drawText(font1, 400, 420, "VR", 25, true, false, TEXT_ALIGN_LEFT, col.white)
    sasl.gl.drawText(font1, 600, 420, "MISC", 25, true, false, TEXT_ALIGN_LEFT, col.white)
    drawAll(components)
end

components = {
    checkbox{
        position    = {560, 325, 50, 20},
        size        = {50, 20},
        btnName     = "Toggle replay",
        dref        = "sim/time/is_in_replay",
        command     = "sim/operation/replay_toggle",
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
    checkbox{
        position    = {560, 355, 50, 20},
        size        = {50, 20},
        btnName     = "Show clickspots",
        dref        = "sim/graphics/misc/show_panel_click_spots",
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
    checkbox{
        position    = {560, 385, 50, 20},
        size        = {50, 20},
        btnName     = "Metric pressure",
        dref        = "sim/physics/metric_press",
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
    checkbox{
        position    = {350, 355, 50, 20},
        size        = {50, 20},
        btnName     = "Enable VR mouse",
        dref        = "sim/graphics/VR/using_3d_mouse",
        textX       = 40,
        command     = "sim/VR/toggle_3d_mouse_cursor",
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
        position    = {350, 385, 50, 20},
        size        = {50, 20},
        btnName     = "Enable VR",
        dref        = "sim/graphics/VR/enabled",
        textX       = 40,
        command     = "sim/VR/toggle_vr",
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
        position    = {58, 385, 50, 20},
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
        position    = {50, 325, 205, 45},
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
    },
    xpControlsSlider{
        position    = {50, 275, 205, 45},
        size        = {205, 45},
        btnName     = "Aircraft Exterior",
        dref        = "sim/operation/sound/exterior_volume_ratio",
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
    xpControlsSlider{
        position    = {50, 225, 205, 45},
        size        = {205, 45},
        btnName     = "Aircraft Interior",
        dref        = "sim/operation/sound/interior_volume_ratio",
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
    xpControlsSlider{
        position    = {50, 175, 205, 45},
        size        = {205, 45},
        btnName     = "Copilot",
        dref        = "sim/operation/sound/copilot_volume_ratio",
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
    xpControlsSlider{
        position    = {50, 125, 205, 45},
        size        = {205, 45},
        btnName     = "Radios",
        dref        = "sim/operation/sound/radio_volume_ratio",
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
    xpControlsSlider{
        position    = {50, 75, 205, 45},
        size        = {205, 45},
        btnName     = "Enviromental",
        dref        = "sim/operation/sound/enviro_volume_ratio",
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
    xpControlsSlider{
        position    = {50, 25, 205, 45},
        size        = {205, 45},
        btnName     = "User Interface",
        dref        = "sim/operation/sound/ui_volume_ratio",
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
    topbar{
        position    = {0, 450, 800, 30},
        size        = {800, 30}
    },
}