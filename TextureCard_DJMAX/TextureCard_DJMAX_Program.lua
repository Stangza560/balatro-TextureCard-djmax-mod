--- STEAMODDED HEADER
--- MOD_NAME: TextureCard_DJMAX
--- MOD_ID: DJMAX_Mod
--- MOD_AUTHOR: [Stangza560 & BSAN]
--- MOD_DESCRIPTION: A mod that change Texture Card to DJMAX
--- VERSION: 1.0

----------------------------------------------
------------MOD CODE -------------------------

function debugMessage(message)
	sendDebugMessage('[TextureCard_DJMAX] ' .. message)
end

debugMessage("Launching")

G.F_NO_ACHIEVEMENTS = false
local TextureCard_DJMAX = SMODS.current_mod

-- DJMAX Icon
SMODS.Atlas({
    key = "modicon",
    path = "icon.png",
    px = 32,
    py = 32
})

-- Hearts DJMAX
SMODS.Atlas{
    key = "Hearts_DJMAX",
    path = "Hearts_DJMAX.png",
    px = 71,
    py = 95,
    atlas_table = 'ASSET_ATLAS',
	prefix_config = { key = false }
}

SMODS.DeckSkin{
    key = "Hearts_DJMAX",
    suit = 'Hearts',
    palettes = {
        {
            key = 'Default',
            ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King', 'Ace'},
            display_ranks = {"Ace", 'King', 'Queen', 'Jack'},
            atlas = 'Hearts_DJMAX',
            posStyle = 'suit',
            colour = HEX('f86a77')
        },
    },
    loc_txt = {
        ['en-us'] = 'Hearts_DJMAX'
    }
}

-- Clubs DJMAX
SMODS.Atlas{
    key = "Clubs_DJMAX",
    path = "Clubs_DJMAX.png",
    px = 71,
    py = 95,
    atlas_table = 'ASSET_ATLAS',
	prefix_config = { key = false }
}

SMODS.DeckSkin{
    key = "Clubs_DJMAX",
    suit = 'Clubs',
    palettes = {
        {
            key = 'Default',
            ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King', 'Ace'},
            display_ranks = {"Ace", 'King', 'Queen', 'Jack'},
            atlas = 'Clubs_DJMAX',
            posStyle = 'suit',
            colour = HEX('6ba2a5')
        },
    },
    loc_txt = {
        ['en-us'] = 'Clubs_DJMAX'
    }
}

-- Diamonds DJMAX
SMODS.Atlas{
    key = "Diamonds_DJMAX",
    path = "Diamonds_DJMAX.png",
    px = 71,
    py = 95,
    atlas_table = 'ASSET_ATLAS',
	prefix_config = { key = false }
}

SMODS.DeckSkin{
    key = "Diamonds_DJMAX",
    suit = 'Diamonds',
    palettes = {
        {
            key = 'Default',
            ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King', 'Ace'},
            display_ranks = {"Ace", 'King', 'Queen', 'Jack'},
            atlas = 'Diamonds_DJMAX',
            posStyle = 'suit',
            colour = HEX('d68078')
        },
    },
    loc_txt = {
        ['en-us'] = 'Diamonds_DJMAX'
    }
}

-- Spades DJMAX
SMODS.Atlas{
    key = "Spades_DJMAX",
    path = "Spades_DJMAX.png",
    px = 71,
    py = 95,
    atlas_table = 'ASSET_ATLAS',
	prefix_config = { key = false }
}

SMODS.DeckSkin{
    key = "Spades_DJMAX",
    suit = 'Spades',
    palettes = {
        {
            key = 'Default',
            ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King', 'Ace'},
            display_ranks = {"Ace", 'King', 'Queen', 'Jack'},
            atlas = 'Spades_DJMAX',
            posStyle = 'suit',
            colour = HEX('668699')
        },
    },
    loc_txt = {
        ['en-us'] = 'Spades_DJMAX'
    }
}

-------------------
--- Credits Tab ---
-------------------
TextureCard_DJMAX.credits_tab = function()

	local title_scale = 0.9 * 0.6
	local text_scale = 0.9 * 0.5
	local notice_scale = 0.9 * 0.3

	return {
		n = G.UIT.ROOT,
		config = { align = "cm", padding = 0.2, colour = G.C.BLACK, r = 0.1, emboss = 0.05, minh = 6, minw = 10 },
		nodes = {
			{
				n = G.UIT.R,
				config = { align = "cm", padding = 0.1, outline_colour = G.C.JOKER_GREY, r = 0.1, outline = 1 },
				nodes = {
					{
						n = G.UIT.R,
						config = { align = "cm", padding = 0 },
						nodes = {
							{ n = G.UIT.T, config = { text = 'Programming/Modder', scale = title_scale, colour = G.C.GOLD, shadow = true } },
						}
					},
					{
						n = G.UIT.R,
						config = { align = "cm", padding = 0 },
						nodes = {
							{ n = G.UIT.T, config = { text = 'Stangza560', scale = text_scale, colour = G.C.UI.TEXT_LIGHT, shadow = true } },
						}
					}
				}
			},
			{
				n = G.UIT.R,
				config = { align = "cm", padding = 0.1, outline_colour = G.C.JOKER_GREY, r = 0.1, outline = 1 },
				nodes = {
					{
						n = G.UIT.R,
						config = { align = "cm", padding = 0 },
						nodes = {
							{ n = G.UIT.T, config = { text = 'Artist', scale = title_scale, colour = G.C.RED, shadow = true } },
						}
					},
					{
						n = G.UIT.R,
						config = { align = "cm", padding = 0 },
						nodes = {
							{ n = G.UIT.T, config = { text = 'BSAN', scale = text_scale, colour = G.C.UI.TEXT_LIGHT, shadow = true } },
						}
					}
				}
			}
		}
	}
end
----------------------------------------------
------------MOD CODE END----------------------