--tablet.lua
createGlobalPropertyi("Maximus1/tablet/homescreen", 1, false, true, false)
createGlobalPropertyi("Maximus1/tablet/page", 0, false, true, false)
createGlobalPropertyi("Maximus1/tablet/checklist_page", 0, false, true, false)
createGlobalPropertyi("Maximus1/tablet/checklistId", 0, false, true, false)
createGlobalPropertyi("Maximus1/tablet/buttonClicked", 1, false, true, false)
checklistPage = globalProperty("Maximus1/tablet/checklist_page")
checklistId = globalProperty("Maximus1/tablet/checklistId")
tabletApp = globalProperty("Maximus1/tablet/page")
home = globalProperty("Maximus1/tablet/homescreen")
btnClicked = globalProperty("Maximus1/tablet/buttonClicked")
avitab = globalProperty("avitab/panel_enabled")

font1 = sasl.gl.loadFont ("Roboto-Regular.ttf")

--tabletApp 1 = Rep menu
--tabletApp 2 = XP setting
--tabletApp 3 = Checklist

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
    --[[ checklist {
        position    = {0, 0, 800, 480},
        size        = {800, 480},
    }, ]]
    menu     {
            position    = {0, 0, 800, 480},
            size        = {800, 480}
            }
        }