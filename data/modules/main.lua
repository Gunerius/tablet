		sasl.options.setAircraftPanelRendering ( true )
		sasl.options.set3DRendering ( false )
		sasl.options.setInteractivity ( true )
		loadedAircraft = sasl.getAircraft()
		size = {2048, 2048}
		panelWidth3d = 2048
		panelHeight3d = 2048

		Custommodule_path = sasl.getProjectPath().."/custom module"
		XpPath = sasl.getXPlanePath() 
		aircraftPath = sasl.getAircraftPath()

		addSearchPath(Custommodule_path.."/textures")
		addSearchPath(Custommodule_path.."/tablet")
		addSearchPath(Custommodule_path.."/tablet/checklists")
		addSearchPath(Custommodule_path.."/tablet/rep menu")
		addSearchPath(Custommodule_path.."/tablet/xp settings")
		addSearchPath(XpPath.."/Resources/fonts")

		addSearchResourcesPath(aircraftPath.."/plugins/REP/data/images/menu")
		addSearchResourcesPath(XpPath.."/Resources/bitmaps/interface11")
		addSearchResourcesPath(XpPath.."/Resources/bitmaps/interface")
		
		
		require "maximus1Module"
		
		

if loadedAircraft == "Baron_58.acf" then
	size = {2048, 2048}
	panelWidth3d = 2048
	panelHeight3d = 2048

	include("b58.lua")
	components = {
	tablet{
		position	= {1248, 0, 800, 480},
		size        = {800, 480}
	}
}
elseif loadedAircraft == "Car_PC12.acf" then
	size = {4096, 4096}
	panelWidth3d = 4096
	panelHeight3d = 4096

	include("pc12.lua")
	--print(#clist)
	components = {
		tablet{
			position	= {3296, 0, 800, 480},
			size        = {800, 480}
		}
	}
end





