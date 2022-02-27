--b58.lua
    clist = {
        {
            "BEFORE STARTING",
                {
                        "Seats",
                        "POSITION AND LOCK",
                        "nil",
                        1
                },
                {
                        "Seat Belts and Shoulder Harnesses",
                        "FASTEN AND ADJUST",
                        "nil",
                        1
                },
                {
                        "Parking Brake",
                        "SET",
                        "sim/cockpit2/controls/parking_brake_ratio",
                        1
                },
                {
                        "All Avionics",
                        "OFF",
                        "sim/cockpit/electrical/avionics_on",
                        0
                },
                {
                        "Landing Gear Handle" ,
                        "DOWN",
                        "sim/cockpit/switches/gear_handle_status",
                        1
                },
                {
                        "Cowl Flap Switches" ,
                        "CHECK, OPEN",
                        "nil",
                        1
                },
                {
                        "Fuel Selectors",
                        "CHECK ON",
                        "nil",
                        1
                },
                {
                        "All Circuit Breakers, Switches and Equipment Controls",
                        "CHECK",
                        "nil",
                        1
                },
                {
                        "Battery Switch",
                        "ON",
                        "nil",
                        1
                },
                {
                        "Beacon" ,
                        "ON",
                        "nil",
                        1
                },
                {
                        "Fuel Quantity Indicators" ,
                        "CHECK QUANTITY",
                        "nil",
                        1
                },
                {
                        "Landing Gear Position Lights" ,
                        "CHECK",
                        "nil",
                        1
                },
                {
                        "Emergency Landing Gear Handcrank" ,
                        "STOWED",
                        "nil",
                        1
                }
        },
        {
                "Starting(Repeat for second engine)",
                    {
                        "Mixture Control",
                        "FULL RICH",
                        "nil",
                        1
                    },
                    {
                        "Propeller Control",
                        "FULL FORWARD",
                        "nil",
                        1
                    },
                    {
                        "Throttle",
                        "FULL OPEN",
                        "nil",
                        1
                    },
                    {
                        "Fuel Boost Pump",
                        "Switch HI - until fuel flow peaks then OFF",
                        "nil",
                        1
                    },
                    {
                        "Landing Gear Handle" ,
                        "DOWN",
                        "nil",
                        1
                    },
                    {
                        "Cowl Flap Switches" ,
                        "CHECK, OPEN",
                        "nil",
                        1
                    },
                    {
                        "Fuel Selectors",
                        "CHECK ON",
                        "nil",
                        1
                    },
                    {
                        "All Circuit Breakers, Switches and Equipment Controls",
                        "CHECK",
                        "nil",
                        1
                    },
                    {
                        "Battery Switch",
                        "ON",
                        "nil",
                         1
                    },
                    {
                        "Beacon" ,
                        "ON",
                        "nil",
                        1
                    },
                    {
                        "Fuel Quantity Indicators" ,
                        "CHECK QUANTITY",
                        "nil",
                        1
                    }
            }
    }
--[[ 1. Mixture Control FULL RICH
2. Propeller Control FULL FORWARD
3. Throttle FULL OPEN
4. Fuel Boost Pump Switch HI - until fuel flow peaks then OFF
5. Throttle CLOSE, THEN OPEN 1/2 INCH
6. Magneto/Start Switch START
7. Throttle 900 to 1000RPM after start
8. Oil Pressure 10 PSI WITHIN 30 SECONDS
9. Alternator Switch ON
10. Loadmeters and VoltmeterCHECK FOR BATTERY CHARGE
11. Voltmeter CHECK FOR 28 VOLTS

    STARTING (Repeat for second engine)
CAUTION
Do not engage starters for more than 30 seconds in any 4-
minute period.
NOTE
If the engine is hot, and the ambient temperature is 32°C or
above, place mixture control in IDEL CUT-OFF, switch fuel
boost pump to HI for 30 to 60 seconds, then OFF. Return
mixture control to FULL RICH.
In the event of a balked start (or overprime condition) place
mixture control in IDLE CUT-OFF and open the throttle;
operate the starter to remove excess of fuel. As engine starts,
reduce the throttle to idle rpm and place the mixture control in
FULL RICH. ]]
