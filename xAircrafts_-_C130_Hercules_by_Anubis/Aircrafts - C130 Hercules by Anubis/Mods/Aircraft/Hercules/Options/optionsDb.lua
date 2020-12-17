local DbOption = require('Options.DbOption')

return {
	NWS_Coupled_Separate_Input_Device	= DbOption.new():setValue(false):checkbox(),
	Steam_Version	= DbOption.new():setValue(false):checkbox(),
}
