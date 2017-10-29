PLUGIN = nil

function Initialize(Plugin)
	Plugin:SetName("Factions")
	Plugin:SetVersion(1)
	
    dofile(cPluginManager:GetPluginsPath() .. "/InfoReg.lua")
    RegisterPluginInfoCommands()
    RegisterPluginInfoConsoleCommands()

	-- Hooks

    PLUGIN = Plugin
    
	cPluginManager.BindCommand("/fac make", "factions.standard", CmdFac, "- leave, join or create a new faction")
	cPluginManager.BindCommand("/fac help", "factions.standard", help "- tells you a list of commands")

	LOG("Initialised " .. Plugin:GetName() .. " v." .. Plugin:GetVersion())
	return true
end

function help()
	print("/fac make - creates new faction")
	print("/fac leave - leaves a faction")
	print("/fac join - joins a faction")
end

function OnDisable()
	LOG(PLUGIN:GetName() .. " is shutting down...")
end

function  CmdFac()
    LOG("this command doesn't do anything (yet)")
end