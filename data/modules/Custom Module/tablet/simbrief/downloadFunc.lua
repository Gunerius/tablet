function onFileDownloaded ( inUrl , inFilePath , inIsOk , inError )
    if inIsOk then
      file = io.open(Custommodule_path.."/tablet/simbrief/data.json", "r")
      io.input(file)
      content = io.read("*a")
      io.close(file)
  
      p = json.decode(content)
      isDownloaded = true
      time = get(timer)
      isDownloading = false
  
      local releaseRaw = p.params.time_generated
      releaseDay = os.date("%d", releaseRaw)
      releaseMonth = numToMonth(tonumber(os.date("%m", releaseRaw)))
      releaseYear = string.gsub((os.date("%Y", releaseRaw)), "20", "")
      releaseMinutes = os.date("%M", releaseRaw)
      releaseHour = os.date("%H", releaseRaw)
      
      local schedOutRaw = p.times.sched_out
      schedOutDay = os.date("%d",schedOutRaw)
      schedOutMonth = numToMonth(tonumber(os.date("%m",schedOutRaw)))
      schedOutYear = os.date("%Y",schedOutRaw)
  
      local outRaw = p.times.est_out
      outHour = os.date("%H", outRaw)
      outMinutes = os.date("%M", outRaw)
  
      local offRaw = p.times.est_off
      offHour = os.date("%H", offRaw)
      offMinutes = os.date("%M", offRaw)
  
      local inRaw = p.times.est_in
      inHour = os.date("%H", inRaw)
      inMinutes = os.date("%M", inRaw)
  
      local onRaw = p.times.est_on
      onHour = os.date("%H", onRaw)
      onMinutes = os.date("%M", onRaw)
  
      local schedArrRaw = p.times.sched_out + p.times.est_time_enroute
      schedArrHour = os.date("%H", schedArrRaw)
      schedArrMinutes = os.date("%M", schedArrRaw)
  
      avgWindComp = negPosToLetter(p.general.avg_wind_comp)
      avgIsa = negPosToLetter(p.general.avg_temp_dev)
  
      tripFuelHour = string.format("%02d", math.floor(p.times.est_time_enroute / 3600))
      tripFuelMinutes = string.format("%02d", math.floor(p.times.est_time_enroute / 60 - (tripFuelHour * 60)))
  
      contFuelHour = string.format("%02d", math.floor(p.times.contfuel_time / 3600))
      contFuelMinutes = string.format("%02d", math.floor(p.times.contfuel_time / 60 - (contFuelHour * 60)))
  
      altnFuelHour = string.format("%02d", math.floor(p.alternate.ete / 3600))
      altnFuelMinutes = string.format("%02d", math.floor(p.alternate.ete / 60 - (altnFuelHour * 60)))
  
      reserveFuelHour = string.format("%02d", math.floor(p.times.reserve_time / 3600))
      reserveFuelMinutes = string.format("%02d", math.floor(p.times.reserve_time / 60 - (reserveFuelHour * 60)))
  
      etopsFuelHour = string.format("%02d", math.floor(p.times.etopsfuel_time / 3600))
      etopsFuelMinutes = string.format("%02d", math.floor(p.times.etopsfuel_time / 60 - (etopsFuelHour * 60)))
  
      takeoffFuelHour = string.format("%02d", math.floor(p.times.endurance / 3600))
      takeoffFuelMinutes = string.format("%02d", math.floor(p.times.endurance / 60 - (takeoffFuelHour * 60)))
      
      extraFuelHour = string.format("%02d", math.floor(p.times.extrafuel_time / 3600))
      extraFuelMinutes = string.format("%02d", math.floor(p.times.extrafuel_time / 60 - (extraFuelHour * 60)))
  
      minTakeoffFuelHour = string.format("%02d", math.floor((p.times.endurance - p.times.extrafuel_time) / 3600))
      minTakeoffFuelMinutes = string.format("%02d", math.floor((p.times.endurance - p.times.extrafuel_time) / 60 - (minTakeoffFuelHour * 60)))
      
      taxiFuelHour = string.format("%02d", math.floor((p.times.taxi_out) / 3600))
      taxiFuelMinutes = string.format("%02d", math.floor((p.times.taxi_out) / 60 - (taxiFuelHour * 60)))
  
    else
      logInfo ( inUrl )
      logInfo ( inFilePath )
      logWarning ( inError )
    end
  end