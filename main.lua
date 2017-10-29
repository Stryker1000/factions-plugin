PLUGIN = nil

function Initialize(Plugin)
	Plugin:SetName("Factions")
	Plugin:SetVersion(1)
	
    dofile(cPluginManager:GetPluginsPath() .. "/InfoReg.lua")
    RegisterPluginInfoCommands()
    RegisterPluginInfoConsoleCommands()

	-- Hooks

    PLUGIN = Plugin
    
	cPluginManager.BindCommand("/fac", "factions.standard", CmdFac, "- leave, join or create a new faction")

	LOG("Initialised " .. Plugin:GetName() .. " v." .. Plugin:GetVersion())
	return true
end

function OnDisable()
	LOG(PLUGIN:GetName() .. " is shutting down...")
end

function  CmdFac()
    LOG("this command doesn't do anything (yet)")
end