nextLine = 15
line = {460}
for i = 2, 100, 1 do
    table.insert(line, i, line[i-1] - nextLine)
end

content = nil
flag = true
p = nil
isDownloaded = false
isDownloading = false
time = nil
showPlan = false
showIntro = true
fntSize = 14

dayGenerated = nil
monthGenerated = nil
yearGenerated = nil
releaseDay = nil
releaseMonth = nil
releaseYear = nil
releaseMinutes = nil
releaseHour = nil

schedOutYear = nil
schedOutMonth = nil
schedOutDay = nil

outYear = nil
outMonth = nil
outDay = nil
outHour = nil
outMinutes = nil


offHour = nil
offMinutes = nil

inHour = nil
inMinutes = nil

onHour = nil
onMinutes = nil

schedArrHour = nil
schedArrMinutes = nil

avgWindComp = nil
avgIsa = nil

tripFuelHour = nil
tripFuelMinutes = nil

contFuelHour = nil
contFuelMinutes = nil

altnFuelHour = nil
altnFuelMinutes = nil

reserveFuelHour = nil
reserveFuelMinutes = nil

etopsFuelHour = nil
etopsFuelMinutes = nil

takeoffFuelHour = nil
takeoffFuelMinutes = nil

local extraFuelHour
local extraFuelMinutes

local minTakeoffFuelHour
local minTakeoffFuelMinutes

local taxiFuelHour
local taxiFuelMinutes