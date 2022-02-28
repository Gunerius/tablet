--tablet.lua
createGlobalPropertyi("Maximus1/tablet/homescreen", 1, false, true, false)
createGlobalPropertyi("Maximus1/tablet/page", 0, false, true, false)
createGlobalPropertyi("Maximus1/tablet/checklist_page", 0, false, true, false)
defineProperty("checklistId", 0)
page = globalProperty("Maximus1/tablet/page")
home = globalProperty("Maximus1/tablet/homescreen")
avitab = globalProperty("avitab/panel_enabled")
checklistPage = globalProperty("Maximus1/tablet/checklist_page")
font1 = sasl.gl.loadFont ("Roboto-Regular.ttf")

--Page 1 = Rep menu
--Page 2 = XP setting
--Page 3 = Checklist

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
    checklist {
        position    = {0, 0, 800, 480},
        size        = {800, 480},
    },
    menu     {
            position    = {0, 0, 800, 480},
            size        = {800, 480}
            }
        }