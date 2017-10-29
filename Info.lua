g_PluginInfo =
{
	Name = "Faction",
	Date = "2017-29-9",
	Description = "This plugin implements the factions game type",

	AdditionalInfo = {
        -- TODO
    },
	Commands = {
        ["/fac"] =
        {
            HelpString = "create, edit, or get info on factions",
            Permissions = "factions.standard",
            Alias = "/f",
            ParameterCombinitations = {
                -- TODO
            }
        }

    },
	ConsoleCommands = {
        -- TODO
    },
	Permissions = {
        ["factions.standard"] = 
        {
            Description = "default permission, all new users are immediatly granted 'standard'",
            RecommendedGroups = "players"
        },
        ["factions.mod"] = 
        {
            Description = "allowes players to modify other faction's territories, or ban players",
            RecommendedGroups = "mods, admins"
        },
        ["factions.god"] = 
        {
            Description = "basically grants creative mode, the player can edit the world, factions, and player's stats",
            RecommendedGroups = "",
        }   
    },
	Categories = {},
}