
col = {
    white = {1,1,1,1},
    black = {0,0,0,1},
    red = {1,0,0,1},
    green = {0,1,0,1},
    darkgrey = {0.2,0.2,0.2,1},
    grey = {0.5,0.5,0.5,1},
    lightgrey = {0.7,0.7,0.7,1},
    blue = {0,0,1,1},
    darkblue = {0,0.1,0.15,1}
}

mm = {}

function mm.clamp(val, min, max)
    return math.min(math.max(val, min), max)
end
