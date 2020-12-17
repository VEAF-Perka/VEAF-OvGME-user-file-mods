local count = 0
local function counter()
	count = count + 1
	return count
end
devices = {}
devices["General"]								= counter()
devices["Simple_Electric_System"]						= counter()
devices["Network_Synchronization"]				= counter()
devices["General_Device"]						= counter()
devices["Update_Connectors"]					= counter()
devices["Pylon_Release_System"]					= counter()
devices["UHF_RADIO"]							= counter()
devices["Simple_Intercom"]								= counter()
devices["Helmet_Device"]						= counter()
devices["Clock"]								= counter()
devices["Autopilot"]							= counter()
devices["Aerodynamic_Factor"]						= counter()
devices["HerculesSounds"]						= counter()
devices["Debug"]						= counter()

