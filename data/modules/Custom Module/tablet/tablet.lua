--tablet.lua
createGlobalPropertyi("Maximus1/tablet/homescreen", 1, false, true, false)
createGlobalPropertyi("Maximus1/tablet/page", 0, false, true, false)
createGlobalPropertyi("Maximus1/tablet/checklist_page", 0, false, true, false)
createGlobalPropertyi("Maximus1/tablet/checklistId", 0, false, true, false)
createGlobalPropertyi("Maximus1/tablet/buttonClicked", 1, false, true, false)
createGlobalPropertyi("Maximus1/tablet/autoCheck", stngs.checklist.active, false, true, false)
createGlobalPropertyf("Maximus1/tablet/panelBrightnes", 1, false, true, false)
createGlobalPropertyi("Maximus1/tablet/checklistNumPages", 1, false, true, false)
createGlobalPropertyi("Maximus1/tablet/download", 0, false, true, false)
createGlobalPropertyi("Maximus1/tablet/simBrief", stngs.apps.simbrief.installed, false, true, false)
createGlobalPropertyi("Maximus1/tablet/avitab", stngs.apps.avitab.installed, false, true, false)
createGlobalPropertyi("Maximus1/tablet/rep", 0, false, true, false)
createGlobalPropertyi("Maximus1/tablet/showKeyb", 0, false, true, false)


checklistPage = globalProperty("Maximus1/tablet/checklist_page") -- Normal, emergency, references
checklistId = globalProperty("Maximus1/tablet/checklistId") -- Corresponds to table in b58.lua, pc12.lua etc
tabletApp = globalProperty("Maximus1/tablet/page") -- What is the current active app
panelBrightnes = globalProperty("Maximus1/tablet/panelBrightnes") -- duh
autoCheck = globalProperty("Maximus1/tablet/autoCheck") -- if == 1 checklists are automaticly checked
downloadOfp = globalProperty("Maximus1/tablet/download") -- 1 indicates OFP is being downloaded
timer = globalProperty("sim/time/total_running_time_sec")
appSimbrief = globalProperty("Maximus1/tablet/simBrief") -- 1 indicates the app is installed
appAvitab = globalProperty("Maximus1/tablet/avitab") -- 1 indicates the app is installed
appRep = globalProperty("Maximus1/tablet/rep") -- 1 indicates the app is installed
showKeyb = globalProperty("Maximus1/tablet/showKeyb") -- 1 indicates the app is installed

defineProperty("showDropDown", false) --
defineProperty("userName", "none") --simBrief username


charInput = {}

function keybInput(x)
    table.insert(charInput, #charInput + 1, x)
    for i = 1, #charInput, 1 do
        print(charInput[i])
    end
end

--tabletApp 1 = Rep menu
--tabletApp 2 = XP setting
--tabletApp 3 = Checklist
--tabletApp 4 = simbrief
--tabletApp 5 = settings


home = globalProperty("Maximus1/tablet/homescreen")
btnClicked = globalProperty("Maximus1/tablet/buttonClicked") -- Checks if button is clicked. Used for drawing in checklists.
avitab = globalProperty("avitab/panel_enabled") -- to start Avitab

font1 = sasl.gl.loadFont ("Roboto-Regular.ttf")
font2 = sasl.gl.loadFont ("RedHatMono-Regular.ttf")
font3 = sasl.gl.loadFont ("RedHatMono-SemiBold.ttf")


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

    local x = get(panelBrightnes)

    col = {
        white = {1 * x ,1 * x ,1 * x ,1},
        black = {0.001 * x ,0.001 * x ,0.001 * x ,1},
        red = {1 * x ,0 * x ,0 * x ,1},
        green = {0 * x ,1 * x ,0 * x ,1},
        darkgrey = {0.278 * x ,0.31 * x ,0.349 * x ,1},
        grey = {0.5 * x ,0.5 * x ,0.5 * x ,1},
        lightgrey = {0.7 * x ,0.7 * x ,0.7 * x ,1},
        blue = {0 * x ,0 * x ,1 * x ,1},
        darkblue = {0 * x ,0.1 * x ,0.15 * x ,1}
    }

    updateAll(components)
end

components = {
    repmenu         {
        position    = {0, 0, 800, 480},
        size        = {800, 480}
                    },
    simbriefmenu    {
        position    = {0, 0, 800, 480},
        size        = {800, 480}
                    },
    xpmenu          {
        position    = {0, 0, 800, 480},
        size        = {800, 480}
                    },
    checklistMenu   {
        position    = {0, 0, 800, 480},
        size        = {800, 480}
                    },
    settingsMenu   {
        position    = {0, 0, 800, 480},
        size        = {800, 480}
                    },
    menu            {
            position    = {0, 0, 800, 480},
            size        = {800, 480}
                    },
    dropdown        {
        position    = {500, 200, 300, 250},
        size        = {300, 250}
                    },
    interactive {
        position = {700, 450, 100, 30},
        cursor = {
                x = -16 ,
                y = -16 ,
                width = 32 ,
                height = 32 ,
                shape = sasl.gl.loadImage ("mc_button.png"),
                hideOSCursor = true
                },
        onMouseDown = function(_,_,_,b)
            if b == MB_LEFT then
                set(showDropDown, not get(showDropDown))
                print(get(showDropDown))
            end
        end
    }
}

--[[ table.insert(components, 1, checklistMenu   {
    position    = {0, 0, 800, 480},
    size        = {800, 480}
                }) ]]


--[[ if stngs.apps.simbrief.installed == "1" then
    table.insert(components, 1, simbriefmenu    {
        position    = {0, 0, 800, 480},
        size        = {800, 480}
                    })
end ]]
