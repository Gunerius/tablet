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
                        "Fuel Boost Pump Switch",
                        "HI - until fuel flow peaks then OFF",
                        "nil",
                        1
                    },
                    {
                        "Throttle" ,
                        "CLOSE, THEN OPEN 1/2 INCH",
                        "nil",
                        1
                    },
                    {
                        "Magneto/Start Switch" ,
                        "START",
                        "nil",
                        1
                    },
                    {
                        "Throttle",
                        "900 to 1000RPM after start",
                        "nil",
                        1
                    },
                    {
                        "Oil Pressure",
                        "10 PSI WITHIN 30 SECONDS",
                        "nil",
                        1
                    },
                    {
                        "Alternator Switch",
                        "ON",
                        "nil",
                         1
                    },
                    {
                        "Loadmeters and Voltmeter" ,
                        "CHECK FOR BATTERY CHARGE",
                        "nil",
                        1
                    },
                    {
                        "Voltmeter" ,
                        "CHECK FOR 28 VOLTS",
                        "nil",
                        1
                    }
        },
        {
                "After start/TAXI",
                    {
                        "Avionics",
                        "ON, AS REQUIRED",
                        "nil",
                        1
                    },
                    {
                        "Exterior Lights",
                        "AS REQUIRED",
                        "nil",
                        1
                    },
                    {
                        "Brakes",
                        "RELEASE AND CHECK",
                        "nil",
                        1
                    },
        },
        {
                "Before Takeoff",
                    {
                        "Parking Brake",
                        "SET",
                        "nil",
                        1
                    },
                    {
                        "Seat Belts and Shoulder Harnesses",
                        "CHECK",
                        "nil",
                        1
                    },
                    {
                        "Fuel Boost",
                        "Pumps OFF (if OAT > 32°C, use LOW pres boost)",
                        "nil",
                        1
                    },
                    {
                        "All Instruments",
                        "CHECKED",
                        "nil",
                        1
                    },
                    {
                        "Fuel Indicators" ,
                        "QUANTITY INDICATED",
                        "nil",
                        1
                    },
                    {
                        "Mixture" ,
                        "FULL RICH",
                        "nil",
                        1
                    },
                    {
                        "Starter Annunciator Light",
                        "CHECK OFF",
                        "nil",
                        1
                    },
                    {
                        "Throttles",
                        "2200 RPM",
                        "nil",
                        1
                    },
                    {
                        "Propeller",
                        "EXERCISE",
                        "nil",
                         1
                    },
                    {
                        "Throttles" ,
                        "1700 RPM",
                        "nil",
                        1
                    },
                    {
                        "Magnetos" ,
                        "CHECK",
                        "nil",
                        1
                    },
                    {
                        "Throttles",
                        "1500 RPM",
                        "nil",
                        1
                    },
                    {
                        "Propellers",
                        "CHECK FEATHERING",
                        "nil",
                        1
                    },
                    {
                        "Throttles",
                        "IDLE (Note RPM)",
                        "nil",
                        1
                    },
                    {
                        "Throttles",
                        "900 to 1000 RPM",
                        "nil",
                        1
                    },
                    {
                        "Electric Trim" ,
                        "CHECK OPERATION",
                        "nil",
                        1
                    },
                    {
                        "Flaps" ,
                        "CHECK AND SET FOR TAKEOFF",
                        "nil",
                        1
                    },
                    {
                        "Flight Controls",
                        "CHECK",
                        "nil",
                        1
                    },
                    {
                        "Elevator Trim",
                        "Takeoff",
                        "nil",
                        1
                    },
                    {
                        "Propeller",
                        "EXERCISE",
                        "nil",
                         1
                    },
                    {
                        "Doors and Windows" ,
                        "CLOSED AND LOCKED",
                        "nil",
                        1
                    },
                    {
                        "Parking Brake" ,
                        "OFF",
                        "nil",
                        1
                    }
        },
        {
            "TAKEOFF",
                {
                    "Landing Lights",
                    "ON",
                    "nil",
                    1
                },
                {
                    "Tansponder",
                    "ALT",
                    "nil",
                    1
                },
                {
                    "Takeoff Power",
                    "Full Throttle, 2700 rpm",
                    "nil",
                    1
                },
                {
                    "Minimum Takeoff Oil Temperature",
                    "24°C",
                    "nil",
                    1
                },
                {
                    "Power" ,
                    "SET TAKEOFF POWER (MIXTURE FULL RICH) BEFORE BRAKE RELEASE",
                    "nil",
                    1
                },
                {
                    "Airspeed" ,
                    "ACCELERATE TO AND MANTAIN RECOMMENDED SPEEDS",
                    "nil",
                    1
                },
                {
                    "Landing Gear",
                    "RETRACT",
                    "nil",
                    1
                },
                {
                    "Landing Lights",
                    "OFF",
                    "nil",
                    1
                },
                {
                    "Airspeed",
                    "ESTABLISH DESIRED CLIMB SPEED",
                    "nil",
                     1
                },
                {
                    "Flaps" ,
                    "RETRACT",
                    "nil",
                    1
                }
        },
        {
            "CRUISE CLIMB",
                {
                    "Mixture",
                    "FULL RICH",
                    "nil",
                    1
                },
                {
                    "Cowl Flaps",
                    "AS REQUIRED",
                    "nil",
                    1
                },
                {
                    "POWER",
                    "FULL THROTTLE",
                    "nil",
                    1
                },
                {
                    "Propellers",
                    "2500 RPM",
                    "nil",
                    1
                },
                {
                    "Engine Temperatures" ,
                    "MONITOR",
                    "nil",
                    1
                },
                {
                    "Airspeed" ,
                    "ACCELERATE TO AND MANTAIN RECOMMENDED SPEEDS",
                    "nil",
                    1
                },
                {
                    "Fuel Boost Pumps",
                    "OFF",
                    "nil",
                    1
                }
        },
        {
            "CRUISE",
                {
                    "Cowl Flaps",
                    "CLOSED",
                    "nil",
                    1
                },
                {
                    "POWER",
                    "SET",
                    "nil",
                    1
                },
                {
                    "Fuel Boost Pumps",
                    "AS REQUIRED",
                    "nil",
                    1
                },
                {
                    "Mixtures",
                    "SET USING EGT",
                    "nil",
                    1
                }
        },
        {
            "DESCENT",
                {
                    "Altimeter",
                    "SET",
                    "nil",
                    1
                },
                {
                    "Mixture",
                    "FULL SET",
                    "nil",
                    1
                },
                {
                    "Cowl Flaps",
                    "CLOSED",
                    "nil",
                    1
                },
                {
                    "Flaps",
                    "AS REQUIRED",
                    "nil",
                    1
                },
                {
                    "Power",
                    "AS REQUIRED",
                    "nil",
                    1
                }
        },
        {
            "LANDING",
                {
                    "Seat Belts and Shoulder Harnesses",
                    "FASTENED",
                    "nil",
                    1
                },
                {
                    "Fuel Selector Valves",
                    "SELECT FULLER TANK",
                    "nil",
                    1
                },
                {
                    "Fuel Boost Pumps",
                    "OFF, OR LOW AS PER OAT",
                    "nil",
                    1
                },
                {
                    "Cowl Flaps",
                    "AS REQUIRED",
                    "nil",
                    1
                },
                {
                    "Mixture Controls",
                    "FULL RICH",
                    "nil",
                    1
                },
                {
                    "FLAPS",
                    "APPROACH (15°) below 152 kts",
                    "nil",
                    1
                },
                {
                    "Landing Gear",
                    "FULL DOWN below 122 kts",
                    "nil",
                    1
                },
                {
                    "Airspeed",
                    "ESTABLISH NORMAL LANDING APPROACH SPEED",
                    "nil",
                    1
                },
                {
                    "Propellers",
                    "HIGH RPM",
                    "nil",
                    1
                }
        },
        {
            "BALKED LANDING",
                {
                    "Propellers",
                    "HIGH RPM",
                    "nil",
                    1
                },
                {
                    "Power",
                    "MAXIMUM ALLOWABLE",
                    "nil",
                    1
                },
                {
                    "Airspeed",
                    "95 kts",
                    "nil",
                    1
                },
                {
                    "Flaps",
                    "UP",
                    "nil",
                    1
                },
                {
                    "Landing Gear",
                    "UP",
                    "nil",
                    1
                },
                {
                    "Cowl Flaps",
                    "AS REQUIRED",
                    "nil",
                    1
                }
        },
        {
            "AFTER LANDING",
                {
                    "Landing and Taxi Lights",
                    "AS REQUIRED",
                    "nil",
                    1
                },
                {
                    "Flaps",
                    "UP",
                    "nil",
                    1
                },
                {
                    "Trim Tabs",
                    "SET TO ZERO",
                    "nil",
                    1
                },
                {
                    "Cowl Flaps",
                    "OPEN",
                    "nil",
                    1
                },
                {
                    "Fuel Boost Pumps",
                    "AS REQUIRED",
                    "nil",
                    1
                }
        },
        {
            "SHUTDOWN",
                {
                    "Parking Brake",
                    "SET",
                    "nil",
                    1
                },
                {
                    "Propellers",
                    "HIGH RPM",
                    "nil",
                    1
                },
                {
                    "Throttles",
                    "1000 RPM",
                    "nil",
                    1
                },
                {
                    "Fuel Boost Pumps",
                    "OFF",
                    "nil",
                    1
                },
                {
                    "Electrical and Avionics Equipment",
                    "OFF",
                    "nil",
                    1
                },
                {
                    "Mixture Controls",
                    "IDLE CUT-OFF",
                    "nil",
                    1
                },
                {
                    "Magneto/Start Switches",
                    "OFF, AFTER ENGINES STOP",
                    "nil",
                    1
                },
                {
                    "Battery and Alternator Switches",
                    "OFF",
                    "nil",
                    1
                }
        },
    }

    clistEmer = {
        {
            "WHERE IS OTTO",
                {
                        "EMERGENCY",
                        "AAAAAAAAAAAAAAAAAAAAAA",
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
                "THIS IS A CAR",
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
                        "Fuel Boost Pump Switch",
                        "HI - until fuel flow peaks then OFF",
                        "nil",
                        1
                    },
                    {
                        "Throttle" ,
                        "CLOSE, THEN OPEN 1/2 INCH",
                        "nil",
                        1
                    },
                    {
                        "Magneto/Start Switch" ,
                        "START",
                        "nil",
                        1
                    },
                    {
                        "Throttle",
                        "900 to 1000RPM after start",
                        "nil",
                        1
                    },
                    {
                        "Oil Pressure",
                        "10 PSI WITHIN 30 SECONDS",
                        "nil",
                        1
                    },
                    {
                        "Alternator Switch",
                        "ON",
                        "nil",
                         1
                    },
                    {
                        "Loadmeters and Voltmeter" ,
                        "CHECK FOR BATTERY CHARGE",
                        "nil",
                        1
                    },
                    {
                        "Voltmeter" ,
                        "CHECK FOR 28 VOLTS",
                        "nil",
                        1
                    }
        },
        {
                "NO WINGS",
                    {
                        "Avionics",
                        "ON, AS REQUIRED",
                        "nil",
                        1
                    },
                    {
                        "Exterior Lights",
                        "AS REQUIRED",
                        "nil",
                        1
                    },
                    {
                        "Brakes",
                        "RELEASE AND CHECK",
                        "nil",
                        1
                    },
        },
        {
                "BURNING",
                    {
                        "Parking Brake",
                        "SET",
                        "nil",
                        1
                    },
                    {
                        "Seat Belts and Shoulder Harnesses",
                        "CHECK",
                        "nil",
                        1
                    },
                    {
                        "Fuel Boost",
                        "Pumps OFF (if OAT > 32°C, use LOW pres boost)",
                        "nil",
                        1
                    },
                    {
                        "All Instruments",
                        "CHECKED",
                        "nil",
                        1
                    },
                    {
                        "Fuel Indicators" ,
                        "QUANTITY INDICATED",
                        "nil",
                        1
                    },
                    {
                        "Mixture" ,
                        "FULL RICH",
                        "nil",
                        1
                    },
                    {
                        "Starter Annunciator Light",
                        "CHECK OFF",
                        "nil",
                        1
                    },
                    {
                        "Throttles",
                        "2200 RPM",
                        "nil",
                        1
                    },
                    {
                        "Propeller",
                        "EXERCISE",
                        "nil",
                         1
                    },
                    {
                        "Throttles" ,
                        "1700 RPM",
                        "nil",
                        1
                    },
                    {
                        "Magnetos" ,
                        "CHECK",
                        "nil",
                        1
                    },
                    {
                        "Throttles",
                        "1500 RPM",
                        "nil",
                        1
                    },
                    {
                        "Propellers",
                        "CHECK FEATHERING",
                        "nil",
                        1
                    },
                    {
                        "Throttles",
                        "IDLE (Note RPM)",
                        "nil",
                        1
                    },
                    {
                        "Throttles",
                        "900 to 1000 RPM",
                        "nil",
                        1
                    },
                    {
                        "Electric Trim" ,
                        "CHECK OPERATION",
                        "nil",
                        1
                    },
                    {
                        "Flaps" ,
                        "CHECK AND SET FOR TAKEOFF",
                        "nil",
                        1
                    },
                    {
                        "Flight Controls",
                        "CHECK",
                        "nil",
                        1
                    },
                    {
                        "Elevator Trim",
                        "Takeoff",
                        "nil",
                        1
                    },
                    {
                        "Propeller",
                        "EXERCISE",
                        "nil",
                         1
                    },
                    {
                        "Doors and Windows" ,
                        "CLOSED AND LOCKED",
                        "nil",
                        1
                    },
                    {
                        "Parking Brake" ,
                        "OFF",
                        "nil",
                        1
                    }
        },
        {
            "AAAAAAAH",
                {
                    "Avionics",
                    "ON, AS REQUIRED",
                    "nil",
                    1
                },
                {
                    "Exterior Lights",
                    "AS REQUIRED",
                    "nil",
                    1
                },
                {
                    "Brakes",
                    "RELEASE AND CHECK",
                    "nil",
                    1
                },
    }
    }