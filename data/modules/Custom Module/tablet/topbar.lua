--[[ sim/cockpit2/clock_timer/current_day
sim/cockpit2/clock_timer/current_month
sim/cockpit2/clock_timer/local_time_hours
sim/cockpit2/clock_timer/local_time_minutes ]]
local hour = get(globalProperty("sim/cockpit2/clock_timer/local_time_hours"))
local minutes = get(globalProperty("sim/cockpit2/clock_timer/local_time_minutes"))
local frameTime = get(globalProperty("sim/operation/misc/frame_rate_period"))
local go = 1



function draw()
    hour = get(globalProperty("sim/cockpit2/clock_timer/local_time_hours"))
    minutes = get(globalProperty("sim/cockpit2/clock_timer/local_time_minutes"))
    local seconds = get(globalProperty("sim/time/zulu_time_sec"))
    seconds = tonumber(string.format("%.1f", seconds))
    local test = math.floor(seconds)

    if seconds == test and go == 1 then
        frameTime = get(globalProperty("sim/operation/misc/frame_rate_period"))
        go = 0
    elseif seconds ~= test and go == 0 then
        go = 1
    end

    --print(go)

    sasl.gl.drawRectangle(0, 0, 1000, 30, {0.1, 0.1, 0.1, 0.8 })
    sasl.gl.drawText(font1, 740, 7, string.format("%02d:%02d", hour, minutes), 20, false, false, TEXT_ALIGN_LEFT, col.white)
    sasl.gl.drawText(font1, -20, 7, string.format("%12d FPS", 1 / frameTime), 20, false, false, TEXT_ALIGN_LEFT, col.white)
end

