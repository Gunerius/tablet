
local file = io.open(XpPath.."/metar.rwx", "r")
local data = file:read("*a")
local metars = {}
local i = 1


--[[ for i = 1, 1000, 1 do
    x = file:read("*l")
    print(x)
end ]]
