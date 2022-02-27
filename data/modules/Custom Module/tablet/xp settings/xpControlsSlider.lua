defineProperty("dref", "")
defineProperty("textX", 0)
defineProperty("btnName", "")
defineProperty("img", "")

img = sasl.gl.loadImage(get(img))



function draw()
    --sasl.gl.drawFrame(5, 23, 196, 12, col.white)
    sasl.gl.drawRectangle(11, 24, 184, 10, col.darkgrey)
    sasl.gl.drawCircle(11, 29, 5, true, col.darkgrey)
    sasl.gl.drawCircle(196, 29, 5, true, col.darkgrey)
    sasl.gl.drawText(font1, get(textX), 0, get(btnName), 20, false, false, TEXT_ALIGN_LEFT, col.white)
    drawAll(components)
end

components = {
    slider{
        position = {0,19,205,25},
        size = {205,25},
        dref = dref
    }
}