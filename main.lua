PLUGIN = nil

function Initialize(Plugin)
	Plugin:SetName("Factions")
	Plugin:SetVersion(1)

	-- Hooks

    PLUGIN = Plugin
    
	cPluginManager.BindCommand("/fac", "default", CmdFac, " - helps manage factions!")

	LOG("Initialised " .. Plugin:GetName() .. " v." .. Plugin:GetVersion())
	return true
end

function OnDisable()
	LOG(PLUGIN:GetName() .. " is shutting down...")
end

function  CmdFac()
    LOG("this command doesn't do anything (yet)")
end