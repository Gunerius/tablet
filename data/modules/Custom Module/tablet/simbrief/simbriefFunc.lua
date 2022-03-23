function numToMonth(num)
    if num == 01 then
        return "JAN"
    elseif num == 02 then
        return "FEB"
    elseif num == 03 then
        return "MAR"
    elseif num == 04 then
        return "APR"
    elseif num == 05 then
        return "MAY"
    elseif num == 06 then
        return "JUN"
    elseif num == 07 then
        return "JUL"
    elseif num == 08 then
        return "AUG"
    elseif num == 09 then
        return "SEP"
    elseif num == 10 then
        return "OCT"
    elseif num == 11 then
        return "NOV"
    elseif num == 12 then
        return "DEC"
    end
end

function negPosToLetter(x)
    number = tonumber(x)

    if number >= 0 then
        format = string.format("P%03d", number)
        return format
    else
        number = math.abs(number)
        format = string.format("M%03d", number)
        return format
    end
end

function switchFirstLastName(name)
    
end