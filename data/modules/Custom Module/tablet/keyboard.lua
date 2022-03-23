function onMouseDown()
    return true
end

local flag = true

local rowNumY = {2}
local numY = {}
local rowNumX = 195
local numX = rowNumX + 20

local row1Y = {65}
local row1LetterY = {}
local row1X = 130
local row1LetterX = row1X + 20

local row2Y = {102}
local row2LetterY = {}
local row2X = 65
local row2LetterX = row2X + 20

local row3Y = {137}
local row3LetterY = {}
local row3X = 0
local row3LetterX = row3X + 20

local nums = {1, 2, 3, 4, 5, 6, 7, 8, 9, 0}
local lettersRow1 = {"Q", "W", "E", "R", "T", "Y", "U", "I", "O", "P"}
local lettersRow2 = {"A", "S", "D", "F", "G", "H", "J", "K", "L"}
local lettersRow3 = {"Z", "X", "C", "V", "B", "N", "M"}

for i = 2, #nums, 1 do
    rowNumY[i] = rowNumY[i-1] + 65
end
for i = 1, #nums, 1 do
    numY[i] = rowNumY[i] + 30
end

for i = 2, #lettersRow1, 1 do
    row1Y[i] = row1Y[i-1] + 65
end
for i = 1, #lettersRow1, 1 do
    row1LetterY[i] = row1Y[i] + 30
end

for i = 2, #lettersRow2, 1 do
    row2Y[i] = row2Y[i-1] + 65
end
for i = 1, #lettersRow2, 1 do
    row2LetterY[i] = row2Y[i] + 30
end

for i = 2, #lettersRow3, 1 do
    row3Y[i] = row3Y[i-1] + 65
end
for i = 1, #lettersRow3, 1 do
    row3LetterY[i] = row3Y[i] + 30
end

function drawNums(n)
    sasl.gl.drawFrame(rowNumY[n], rowNumX, 60, 60, col.white)
    sasl.gl.drawText(font3, numY[n], numX, tostring(nums[n]), 30, false, false, TEXT_ALIGN_CENTER, col.white)
end

function drawLetterRow1(n)
    sasl.gl.drawFrame(row1Y[n], row1X, 60, 60, col.white)
    sasl.gl.drawText(font3, row1LetterY[n], row1LetterX, lettersRow1[n], 30, false, false, TEXT_ALIGN_CENTER, col.white)
end

function drawLetterRow2(n)
    sasl.gl.drawFrame(row2Y[n], row2X, 60, 60, col.white)
    sasl.gl.drawText(font3, row2LetterY[n], row2LetterX, lettersRow2[n], 30, false, false, TEXT_ALIGN_CENTER, col.white)
end

function drawLetterRow3(n)
    sasl.gl.drawFrame(row3Y[n], row3X, 60, 60, col.white)
    sasl.gl.drawText(font3, row3LetterY[n], row3LetterX, lettersRow3[n], 30, false, false, TEXT_ALIGN_CENTER, col.white)
end




function update()

    if get(showKeyb) == 1 then
        visible = true
    else
        visible = false
    end

    if flag and get(showKeyb) == 1 then

        for i = 1, #nums, 1 do
            table.insert(components, i, interactive {
                position = {rowNumY[i], rowNumX, 60, 60},
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
                        keybInput(nums[i])
                        return true
                    end
                end
            })
        end

        for i = 1, #lettersRow1, 1 do
            table.insert(components, i, interactive {
                position = {row1Y[i], row1X, 60, 60},
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
                        keybInput(lettersRow1[i])
                        return true
                    end
                end
            })
        end

        for i = 1, #lettersRow2, 1 do
            table.insert(components, i, interactive {
                position = {row2Y[i], row2X, 60, 60},
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
                        keybInput(lettersRow2[i])
                        return true
                    end
                end
            })
        end

        for i = 1, #lettersRow3, 1 do
            table.insert(components, i, interactive {
                position = {row3Y[i], row3X, 60, 60},
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
                        keybInput(lettersRow3[i])
                        return true
                    end
                end
            })
        end

        flag = false

    end

    if get(showKeyb) == 0 and not flag then
        components = {}
        flag = true
    end

end

function draw()

     if get(showKeyb) == 1 then
        sasl.gl.drawRectangle(0, 0, 780, 300, {0, 0, 0, 0.8})

        for i = 1, #nums, 1 do
            drawNums(i)
        end
        for i = 1, #lettersRow1, 1 do
            drawLetterRow1(i)
        end
        for i = 1, #lettersRow2, 1 do
            drawLetterRow2(i)
        end
        for i = 1, #lettersRow3, 1 do
            drawLetterRow3(i)
        end

    end
end

components = {
}



