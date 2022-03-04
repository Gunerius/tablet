--tablet.lua
createGlobalPropertyi("Maximus1/tablet/homescreen", 1, false, true, false)
createGlobalPropertyi("Maximus1/tablet/page", 0, false, true, false)
createGlobalPropertyi("Maximus1/tablet/checklist_page", 0, false, true, false)
createGlobalPropertyi("Maximus1/tablet/checklistId", 0, false, true, false)
createGlobalPropertyi("Maximus1/tablet/buttonClicked", 1, false, true, false)
createGlobalPropertyi("Maximus1/tablet/autoCheck", 1, false, true, false)
createGlobalPropertyf("Maximus1/tablet/panelBrightnes", 1, false, true, false)
createGlobalPropertyf("Maximus1/tablet/checklistNumPages", 1, false, true, false)

checklistPage = globalProperty("Maximus1/tablet/checklist_page") -- Normal, emergency, references
checklistId = globalProperty("Maximus1/tablet/checklistId") -- Corresponds to table in b58.lua, pc12.lua etc
tabletApp = globalProperty("Maximus1/tablet/page")
panelBrightnes = globalProperty("Maximus1/tablet/panelBrightnes")
autoCheck = globalProperty("Maximus1/tablet/autoCheck")

--tabletApp 1 = Rep menu
--tabletApp 2 = XP setting
--tabletApp 3 = Checklist
home = globalProperty("Maximus1/tablet/homescreen")
btnClicked = globalProperty("Maximus1/tablet/buttonClicked") -- Checks if button is clicked. Used for drawing in checklists.
avitab = globalProperty("avitab/panel_enabled") -- to start Avitab

font1 = sasl.gl.loadFont ("Roboto-Regular.ttf")


--[[ col = {
    white = {1,1,1,1},
    black = {0.001,0.001,0.001,1},
    red = {1,0,0,1},
    green = {0,1,0,1},
    darkgrey = {0.278,0.31,0.349,1},
    grey = {0.5,0.5,0.5,1},
    lightgrey = {0.7,0.7,0.7,1},
    blue = {0,0,1,1},
    darkblue = {0,0.1,0.15,1}
} ]]





function update()
    if get(home) == 1 then
        set(checklistId, 0)
    end

    updateAll(components)
end

components = {
    repmenu {
        position    = {0, 0, 800, 480},
        size        = {800, 480}
    },
    xpmenu {
        position    = {0, 0, 800, 480},
        size        = {800, 480}
    },
    checklistMenu {
        position    = {0, 0, 800, 480},
        size        = {800, 480}
    },
    menu     {
            position    = {0, 0, 800, 480},
            size        = {800, 480}
            }
        }