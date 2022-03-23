--simbriefmenu.lua

--json = require "lunajson"

include("simbriefVariables.lua")
include("simbriefFunc.lua")
include("downloadFunc.lua")

function download()
    sasl.net.downloadFileAsync("https://www.simbrief.com/api/xml.fetcher.php?username="..stngs.apps.simbrief.userName.."&json=1", Custommodule_path.."/tablet/simbrief/data.json", onFileDownloaded)
end

--onFileDownloaded(true, true, true, true)

function update()
    if get(tabletApp) == 4 then
        visible = true
    else
        visible = false
    end

    if get(downloadOfp) == 1 then
        isDownloading = true
        download()
        set(downloadOfp, 0)
    end

    if isDownloaded then
        elapsed = get(timer) - time
        if elapsed > 1 then
            isDownloaded = false
            showPlan = true
        end
    end
    
    updateAll(components)
end

function draw()
    sasl.gl.drawRectangle(0,0,800,480,col.darkblue)
    sasl.gl.drawRectangle(120,40,565,440,col.white)
    

    if showIntro then
        sasl.gl.drawText(font3, 400, 300, "Generate OFP on simbrief.com,", 24, false, false, TEXT_ALIGN_CENTER, col.black)
        sasl.gl.drawText(font3, 400, 265, "then press \"DOWNLOAD OFP\"", 24, false, false, TEXT_ALIGN_CENTER, col.black)
    end
    
    if isDownloading then
        showIntro = false
        isDownloaded = false
        sasl.gl.drawText(font3, 400, 300, "Downloading, please wait", 24, false, false, TEXT_ALIGN_CENTER, col.black)
    end
    

    if isDownloaded then
        sasl.gl.drawText(font3, 400, 300, "DONE!", 24, false, false, TEXT_ALIGN_CENTER, col.black)
    end

    if showPlan then
        --LINE 1
        sasl.gl.drawText(font3, 130, line[1], "[OFP]", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        --LINE 2
        sasl.gl.drawText(font3, 400, line[2], "--------------------------------------------------------------------", fntSize, false, false, TEXT_ALIGN_CENTER, col.black )
        --LINE 3
        sasl.gl.drawText(font3, 130, line[3], p.general.icao_airline..p.general.flight_number, fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 190, line[3], schedOutDay..schedOutMonth..schedOutYear, fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 316, line[3], p.origin.icao_code, fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )
        sasl.gl.drawText(font3, 320, line[3], "-", fntSize, false, false, TEXT_ALIGN_CENTER, col.black )
        sasl.gl.drawText(font3, 324, line[3], p.destination.icao_code, fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 380, line[3], p.aircraft.icaocode.." "..p.aircraft.reg, fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 670, line[3], "RELEASE  "..releaseHour..releaseMinutes.." "..releaseDay..releaseMonth..releaseYear, fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )
        --LINE 4
        sasl.gl.drawText(font3, 130, line[4], "OFP 1", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 316, line[4], p.origin.name, fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )
        sasl.gl.drawText(font3, 320, line[4], "-", fntSize, false, false, TEXT_ALIGN_CENTER, col.black )
        sasl.gl.drawText(font3, 324, line[4], p.destination.name, fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        --LINE 5
        sasl.gl.drawText(font3, 670, line[5], "WX PROG 1815 1818 1821   OBS 1806 1806 1806", fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )
        --LINE 6
        --EMPTY 
        --LINE 7
        sasl.gl.drawText(font3, 202, line[7], "ATC C/S", fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )
        sasl.gl.drawText(font3, 220, line[7], p.atc.callsign, fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 326, line[7], p.origin.icao_code, fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )
        sasl.gl.drawText(font3, 330, line[7], "/", fntSize, false, false, TEXT_ALIGN_CENTER, col.black )
        sasl.gl.drawText(font3, 334, line[7], p.origin.iata_code, fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 416, line[7], p.destination.icao_code, fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )
        sasl.gl.drawText(font3, 420, line[7], "/", fntSize, false, false, TEXT_ALIGN_CENTER, col.black )
        sasl.gl.drawText(font3, 424, line[7], p.destination.iata_code, fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 520, line[7], "CRZ SYS", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 670, line[7], p.general.cruise_profile, fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )

        --LINE 8
        sasl.gl.drawText(font3, 202, line[8], schedOutDay..schedOutMonth..schedOutYear, fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )
        sasl.gl.drawText(font3, 220, line[8], p.aircraft.reg, fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 326, line[8], outHour..outMinutes, fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )
        sasl.gl.drawText(font3, 330, line[8], "/", fntSize, false, false, TEXT_ALIGN_CENTER, col.black )
        sasl.gl.drawText(font3, 334, line[8], offHour..offMinutes, fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 416, line[8], onHour..onMinutes, fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )
        sasl.gl.drawText(font3, 420, line[8], "/", fntSize, false, false, TEXT_ALIGN_CENTER, col.black )
        sasl.gl.drawText(font3, 424, line[8], inHour..inMinutes, fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 520, line[8], "GND DIST", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 670, line[8], p.general.route_distance, fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )
        --LINE 9
        sasl.gl.drawText(font3, 202, line[9], p.aircraft.name, fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )
        sasl.gl.drawText(font3, 385, line[9], "STA", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 424, line[9], schedArrHour..schedArrMinutes, fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 520, line[9], "AIR DIST", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 670, line[9], p.general.air_distance, fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )
        
        --LINE 10
        sasl.gl.drawText(font3, 295, line[10], "CTOT:...", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 520, line[10], "G/C DIST", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 670, line[10], p.general.gc_distance, fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )

        --LINE 11
        sasl.gl.drawText(font3, 520, line[11], "AVG WIND", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 670, line[11], p.general.avg_wind_dir.."/"..p.general.avg_wind_spd, fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )

        --LINE 12
        sasl.gl.drawText(font3, 130, line[12], "MAXIMUM", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 217, line[12], "TOW", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 247, line[12], p.weights.max_tow_struct, fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 299, line[12], "LAW", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 329, line[12], p.weights.max_ldw, fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 380, line[12], "ZFW", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 410, line[12], p.weights.max_zfw, fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 520, line[12], "AVG W/C", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 670, line[12], avgWindComp, fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )

        --LINE 13
        sasl.gl.drawText(font3, 130, line[13], "ESTIMATED", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 217, line[13], "TOW", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 247, line[13], p.weights.est_tow, fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 299, line[13], "LAW", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 329, line[13], p.weights.est_ldw, fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 380, line[13], "ZFW", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 410, line[13], p.weights.est_zfw, fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 520, line[13], "AVG ISA", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 670, line[13], avgIsa, fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )

        --LINE14
        sasl.gl.drawText(font3, 520, line[14], "AVG FF KGS/HR", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 670, line[14], p.fuel.avg_fuel_flow, fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )

        --LINE15
        sasl.gl.drawText(font3, 520, line[15], "FUEL BIAS", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 670, line[15], "P00.0", fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )

        --LINE16
        sasl.gl.drawText(font3, 130, line[16], "ALTN", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 170, line[16], p.alternate.icao_code, fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 520, line[16], "TKOF ALTN", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 670, line[16], ".......", fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )
        
        --LINE17
        sasl.gl.drawText(font3, 130, line[17], "FL STEPS "..p.general.stepclimb_string, fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        --sasl.gl.drawText(font3, 200, line[17], p.general.stepclimb_string, fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        
        --LINE 18
        sasl.gl.drawText(font3, 400, line[18], "--------------------------------------------------------------------", fntSize, false, false, TEXT_ALIGN_CENTER, col.black )

        --LINE 19
        if p.general.is_etops == "1" then
            sasl.gl.drawText(font3, 400, line[19], "*** ETOPS/ETP FLIGHT ***", fntSize, false, false, TEXT_ALIGN_CENTER, col.black )
        end
        --LINE 20
        sasl.gl.drawText(font3, 400, line[20], "--------------------------------------------------------------------", fntSize, false, false, TEXT_ALIGN_CENTER, col.black )
        --LINE 21
        sasl.gl.drawText(font3, 130, line[21], "DISP RMKS   NOT YET IMPLEMENTED IN TABLET", fntSize, false, false, TEXT_ALIGN_LEFT, col.black)
        --LINE 22
        --EMPTY
        --LINE 23
        sasl.gl.drawText(font3, 400, line[23], "--------------------------------------------------------------------", fntSize, false, false, TEXT_ALIGN_CENTER, col.black )
        --LINE 24
        sasl.gl.drawText(font3, 250, line[24], "PLANNED FUEL", fntSize, false, false, TEXT_ALIGN_CENTER, col.black )
        --LINE 25
        sasl.gl.drawText(font3, 130, line[25], "---------------------------------", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        --LINE 26
        sasl.gl.drawText(font3, 130, line[26], "FUEL", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 275, line[26], "ARPT", fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )
        sasl.gl.drawText(font3, 335, line[26], "FUEL", fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )
        sasl.gl.drawText(font3, 395, line[26], "TIME", fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )

        --LINE 27
        sasl.gl.drawText(font3, 130, line[27], "---------------------------------", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )

        --LINE 28
        sasl.gl.drawText(font3, 130, line[28], "TRIP", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 275, line[28], p.destination.iata_code, fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )
        sasl.gl.drawText(font3, 335, line[28], p.fuel.enroute_burn, fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )
        sasl.gl.drawText(font3, 395, line[28], tripFuelHour..tripFuelMinutes, fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )
        --LINE 29
        sasl.gl.drawText(font3, 130, line[29], "CONT 5%", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        --sasl.gl.drawText(font3, 275, line[29], "", fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )
        sasl.gl.drawText(font3, 335, line[29], p.fuel.contingency, fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )
        sasl.gl.drawText(font3, 395, line[29], contFuelHour..contFuelMinutes, fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )
        --LINE 30
        sasl.gl.drawText(font3, 130, line[30], "ALTN", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 275, line[30], p.alternate.iata_code, fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )
        sasl.gl.drawText(font3, 335, line[30], p.fuel.alternate_burn, fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )
        sasl.gl.drawText(font3, 395, line[30], altnFuelHour..altnFuelMinutes, fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )
        --LINE 31
        sasl.gl.drawText(font3, 130, line[31], "FINRES", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        --sasl.gl.drawText(font3, 275, line[31], "ARPT", fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )
        sasl.gl.drawText(font3, 335, line[31], p.fuel.reserve, fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )
        sasl.gl.drawText(font3, 395, line[31], reserveFuelHour..reserveFuelMinutes, fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )
        --LINE 32
        sasl.gl.drawText(font3, 130, line[32], "ETOPS/ETP", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        --sasl.gl.drawText(font3, 275, line[32], "ARPT", fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )
        sasl.gl.drawText(font3, 335, line[32], p.fuel.etops, fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )
        sasl.gl.drawText(font3, 395, line[32], etopsFuelHour..etopsFuelMinutes, fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )
        --LINE 33
        sasl.gl.drawText(font3, 130, line[33], "---------------------------------", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        --LINE 34
        sasl.gl.drawText(font3, 130, line[34], "MINIMUM T/OFF FUEL", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 335, line[34], p.fuel.min_takeoff, fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )
        sasl.gl.drawText(font3, 395, line[34], minTakeoffFuelHour..minTakeoffFuelMinutes, fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )
        --LINE 35
        sasl.gl.drawText(font3, 130, line[35], "---------------------------------", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        --LINE 36
        sasl.gl.drawText(font3, 130, line[36], "EXTRA", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 335, line[36], p.fuel.extra, fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )
        sasl.gl.drawText(font3, 395, line[36], extraFuelHour..extraFuelMinutes, fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )
        --LINE 37
        sasl.gl.drawText(font3, 130, line[37], "---------------------------------", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        --LINE 38
        sasl.gl.drawText(font3, 130, line[38], "T/OFF FUEL", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 335, line[38], p.fuel.plan_takeoff, fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )
        sasl.gl.drawText(font3, 395, line[38], takeoffFuelHour..takeoffFuelMinutes, fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )
        --LINE 39
        sasl.gl.drawText(font3, 130, line[39], "TAXI", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 275, line[39], p.origin.iata_code, fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )
        sasl.gl.drawText(font3, 335, line[39], p.fuel.taxi, fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )
        sasl.gl.drawText(font3, 395, line[39], taxiFuelHour..taxiFuelMinutes, fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )
        --LINE 40
        sasl.gl.drawText(font3, 130, line[40], "---------------------------------", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        --LINE 41
        sasl.gl.drawText(font3, 130, line[41], "BLOCK FUEL", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 275, line[41], p.origin.iata_code, fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )
        sasl.gl.drawText(font3, 335, line[41], p.fuel.plan_ramp, fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )
        --LINE 42
        sasl.gl.drawText(font3, 130, line[42], "PIC EXTRA", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 335, line[42], ".....", fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )
        --LINE 43
        sasl.gl.drawText(font3, 130, line[43], "TOTAL FUEL", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 335, line[43], ".....", fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )
        --LINE 44
        sasl.gl.drawText(font3, 130, line[44], "REASON FOR PIC EXTRA", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 335, line[44], ".....", fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )
        --LINE 45
        sasl.gl.drawText(font3, 400, line[45], "--------------------------------------------------------------------", fntSize, false, false, TEXT_ALIGN_CENTER, col.black )
        --LINE 46
        sasl.gl.drawText(font3, 130, line[46], "FMC INFO:", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        --LINE 47
        sasl.gl.drawText(font3, 130, line[47], "FINRES+ALTN", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 335, line[47], tonumber(p.fuel.reserve) + tonumber(p.fuel.alternate_burn), fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )
        --LINE 48
        sasl.gl.drawText(font3, 130, line[48], "TRIP+TAXI", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 335, line[48], tonumber(p.fuel.enroute_burn) + tonumber(p.fuel.taxi), fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )
        --LINE 49
        sasl.gl.drawText(font3, 400, line[49], "--------------------------------------------------------------------", fntSize, false, false, TEXT_ALIGN_CENTER, col.black )
        --LINE 50
        sasl.gl.drawText(font3, 130, line[50], "NO TANKERING RECOMMENDED (P)", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        --LINE 51
        sasl.gl.drawText(font3, 400, line[51], "--------------------------------------------------------------------", fntSize, false, false, TEXT_ALIGN_CENTER, col.black )
        --LINE 52
        sasl.gl.drawText(font3, 130, line[52], "I HEREWITH CONFIRM THAT I HAVE PERFORMED A THOROUGH SELF BRIEFING", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        --LINE 53
        sasl.gl.drawText(font3, 130, line[53], "ABOUT THE DESTINATION AND ALTERNATE AIRPORTS OF THIS FLIGHT ", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        --LINE 54
        sasl.gl.drawText(font3, 130, line[54], "INCLUDING THE APPLICABLE INSTRUMENT APPROACH PROCEDURES, AIRPORT", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        --LINE 55
        sasl.gl.drawText(font3, 130, line[55], "FACILITIES, NOTAMS AND ALL OTHER RELEVANT PARTICULAR INFORMATION.", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        --LINE 56
        --LINE 57
        sasl.gl.drawText(font3, 130, line[57], "DISPATCHER: "..p.crew.dx, fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 670, line[57], "PIC: "..p.crew.cpt, fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )
        --LINE 58
        --LINE 59
        sasl.gl.drawText(font3, 130, line[59], "TEL: +1 800 555 0199", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 655, line[59], "PIC SIGNATURE: .................", fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )
        --LINE 60
        --LINE 61
        --LINE 62
        sasl.gl.drawText(font3, 130, line[62], "ALTERNATE ROUTE TO:  ", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 670, line[62], "FINRES "..p.fuel.reserve, fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )
        --LINE 63
        sasl.gl.drawText(font3, 130, line[63], "APT", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 200, line[63], "TRK", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 240, line[63], "DIST", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 400, line[63], "VIA", fntSize, false, false, TEXT_ALIGN_CENTER, col.black )

        sasl.gl.drawText(font3, 520, line[63], "FL", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 560, line[63], "WC", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 590, line[63], "TIME", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 670, line[63], "FUEL", fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )
        --LINE 64
        sasl.gl.drawText(font3, 400, line[64], "--------------------------------------------------------------------", fntSize, false, false, TEXT_ALIGN_CENTER, col.black )
        --LINE 65
        sasl.gl.drawText(font3, 130, line[65], p.alternate.icao_code.."/"..p.alternate.plan_rwy, fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 200, line[65], p.alternate.track_true, fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 240, line[65], p.alternate.distance, fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 400, line[65], p.alternate.route, fntSize, false, false, TEXT_ALIGN_CENTER, col.black )
        sasl.gl.drawText(font3, 525, line[65], string.format("%03d" ,tonumber(p.alternate.cruise_altitude) / 100), fntSize, false, false, TEXT_ALIGN_CENTER, col.black )
        sasl.gl.drawText(font3, 565, line[65], p.alternate.avg_wind_comp, fntSize, false, false, TEXT_ALIGN_CENTER, col.black )
        sasl.gl.drawText(font3, 590, line[65], altnFuelHour..altnFuelMinutes, fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 670, line[65], p.alternate.burn, fntSize, false, false, TEXT_ALIGN_RIGHT, col.black )
        --LINE 66
        sasl.gl.drawText(font3, 400, line[66], "--------------------------------------------------------------------", fntSize, false, false, TEXT_ALIGN_CENTER, col.black )
        --LINE 67
        --LINE 68
        sasl.gl.drawText(font3, 130, line[68], "MEL/CDL ITEMS", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 245, line[68], "DESCRIPTION", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        --LINE 69
        sasl.gl.drawText(font3, 130, line[69], "-------------", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        sasl.gl.drawText(font3, 245, line[69], "-----------", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        --LINE 70
        --LINE 71
        sasl.gl.drawText(font3, 400, line[71], "--------------------------------------------------------------------", fntSize, false, false, TEXT_ALIGN_CENTER, col.black )
        --LINE 72
        --LINE 73
        sasl.gl.drawText(font3, 130, line[73], "ROUTING:", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        --LINE 74
        --LINE 75
        sasl.gl.drawText(font3, 130, line[75], "ROUTE ID:", fntSize, false, false, TEXT_ALIGN_LEFT, col.black )
        --LINE 76
        --LINE 77
        --LINE 78
        --LINE 79
    end


    sasl.gl.drawRectangle(0,0,800,40,col.darkblue)
    drawAll(components)
end

components = {
    btnSimbrief {
        position    = {25, 10, 160, 25},
        size        = {160, 25},
        buttonName = "DOWNLOAD OFP",
        isBold      = true,
        fontSize    = 20,
        cursor = {
            x = -16 ,
            y = -16 ,
            width = 32 ,
            height = 32 ,
            shape = sasl.gl.loadImage ("mc_button.png"),
            hideOSCursor = true
            }
    },
    scrollFunc {
        position = {120, 40, 565, 440},
        cursor = {
                x = -16 ,
                y = -16 ,
                width = 32 ,
                height = 32 ,
                shape = sasl.gl.loadImage ("mc_button.png"),
                hideOSCursor = true
                }
    }
}
