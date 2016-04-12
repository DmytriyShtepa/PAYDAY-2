_G.GageUpgradeOptions = _G.GageUpgradeOptions or {}

GageUpgradeOptions._lua_path = ModPath .. "Lua/"
GageUpgradeOptions._data_path = SavePath .. "gup_opts.txt"
GageUpgradeOptions._menu_path = ModPath .. "Menu/"
GageUpgradeOptions._loc_path = ModPath .. "Localization/"
GageUpgradeOptions._opts = {}
GageUpgradeOptions._languages = {
    "en",
    "ru"
}

GageUpgradeOptions._mod_anims = "assets/mod_overrides/Gage Upgrade Pack/anims/fps/"

anims = {
    m4_anims = {
        "m4",
        "amcar",
        "m16",
        "olympic"
    },
    m16_anims = {
        "m16",
        "amcar",
        "m4",
        "olympic"
    } 
}


GageUpgradeOptions.HookFiles = {
   	["lib/tweak_data/tweakdata"] = {
		"TweakData.lua",
		"WeaponFactory.lua"
	},
	["lib/tweak_data/weaponfactorytweakdata"] = "WeaponFactoryTweakData.lua",	
	["lib/tweak_data/playertweakdata"] = "PlayerTweak.lua",
    ["lib/tweak_data/guitweakdata"] = "GUITweakData.lua"
}

function GageUpgradeOptions:Save()
	local file = io.open( self._data_path, "w+" )
  
	if file then
		file:write( json.encode( self._opts ) )
		file:close()
	end
end

function GageUpgradeOptions:Load()
	local file = io.open( self._data_path, "r" )
  
	if file then
		self._opts = json.decode( file:read("*all") )		
		file:close()
	else       
        --  Localization Options
		self._opts = {}
        self._opts.Language = 1
	end
    
    dofile( self._lua_path .. "_Init_Options.lua" )
    self:Save()
end

function GageUpgradeOptions:FileReplace(new, old)
	local new_temp = io.open(new, "rb")
	
	if new_temp == nil then
		QuickMenu:new( ":/", new_temp.." not found!", {}, true )
	else
		local anims = new_temp:read("*all")
		local old_temp = io.open(GageUpgradeOptions._mod_anims .. old, "wb")  
		if old_temp then
			old_temp:write(anims)
			os.remove(GageUpgradeOptions._mod_anims  .. old)
			old_temp:close()
			new_temp:close()
	    end
	end
end

GageUpgradeOptions:Load()

Hooks:Add("MenuManagerInitialize", "MenuManagerInitialize_WPO_Options", function( menu_manager )	
	--Main
	MenuCallbackHandler.choose_language = function(self, item)
		GageUpgradeOptions._opts.Language = tonumber(item:value())
		GageUpgradeOptions:Save()
	end	
	--CAR4
	--Animation
	MenuCallbackHandler.animation_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.animation_car_4 = tonumber(item:value())
		GageUpgradeOptions:Save()
		
		GageUpgradeOptions:FileReplace("mods/GUP/Animations/".. anims.m4_anims[tonumber(item:value())] .."/".. anims.m4_anims[tonumber(item:value())] .."_reload.animation", "m4/m4_reload.animation")
		GageUpgradeOptions:FileReplace("mods/GUP/Animations/".. anims.m4_anims[tonumber(item:value())] .."/".. anims.m4_anims[tonumber(item:value())] .."_reload_not_empty.animation", "m4/m4_reload_not_empty.animation")
	end
	--	Mags
	--Std Mag
	MenuCallbackHandler.std_m_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Mags._std_m_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end	
	--PMAG
	MenuCallbackHandler.pmag_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Mags._pmag_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end	
	--Straight Mag
	MenuCallbackHandler.straight_m_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Mags._straight_m_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end	
	--Quad Mag
	MenuCallbackHandler.quad_m_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Mags._quad_m_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end	
	--L85 Mag
	MenuCallbackHandler.l85a2_m_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Mags._l85a2_m_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end
	--L5 Mag
	MenuCallbackHandler.l5_m_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Mags._l5_m_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end
	--	Upper Receivers
	--	Round
	MenuCallbackHandler.round_receiver_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Receivers._round_receiver_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end	
	MenuCallbackHandler.round_dh_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Receivers._round_dh_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end	
	--	Edge
	MenuCallbackHandler.edge_receiver_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Receivers._edge_receiver_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end	
	MenuCallbackHandler.edge_dh_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Receivers._edge_dh_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end
	--	Ballos
	MenuCallbackHandler.ballos_receiver_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Receivers._ballos_receiver_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end	
	MenuCallbackHandler.ballos_dh_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Receivers._ballos_dh_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end
	--	Core
	MenuCallbackHandler.core_receiver_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Receivers._core_receiver_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end	
	MenuCallbackHandler.core_dh_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Receivers._core_dh_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end
	--	Foregrips
	--Rail FG
	MenuCallbackHandler.rail_foregrip_car4= function(self, item)
		GageUpgradeOptions._opts.CAR4.Foregrips._rail_foregrip_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end	
	MenuCallbackHandler.sight_rail_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Foregrips._sight_rail_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end		
	MenuCallbackHandler.optic_gadget_rail_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Foregrips._optic_gadget_rail_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end	
	MenuCallbackHandler.vg_rail_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Foregrips._vg_rail_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end	
	--LR300
	MenuCallbackHandler.lr300_foregrip_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Foregrips._lr300_foregrip_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end	
	MenuCallbackHandler.sight_lr300_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Foregrips._sight_lr300_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end		
	MenuCallbackHandler.optic_gadget_lr300_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Foregrips._optic_gadget_lr300_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end	
	MenuCallbackHandler.vg_lr300_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Foregrips._vg_lr300_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end	
	--JP
	MenuCallbackHandler.jp_foregrip_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Foregrips._jp_foregrip_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end	
	MenuCallbackHandler.sight_jp_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Foregrips._sight_jp_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end		
	MenuCallbackHandler.optic_gadget_jp_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Foregrips._optic_gadget_jp_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end	
	MenuCallbackHandler.vg_jp_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Foregrips._vg_jp_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end	
	--SMR
	MenuCallbackHandler.smr_foregrip_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Foregrips._smr_foregrip_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end	
	MenuCallbackHandler.sight_smr_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Foregrips._sight_smr_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end		
	MenuCallbackHandler.optic_gadget_smr_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Foregrips._optic_gadget_smr_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end
	MenuCallbackHandler.vg_smr_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Foregrips._vg_smr_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end	
	--LVOA
	MenuCallbackHandler.lvoa_foregrip_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Foregrips._lvoa_foregrip_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end
	MenuCallbackHandler.sight_lvoa_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Foregrips._sight_lvoa_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end		
	MenuCallbackHandler.optic_gadget_lvoa_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Foregrips._optic_gadget_lvoa_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end	
	MenuCallbackHandler.vg_lvoa_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Foregrips._vg_lvoa_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end	
	--MOE
	MenuCallbackHandler.moe_foregrip_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Foregrips._moe_foregrip_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end
	MenuCallbackHandler.sight_moe_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Foregrips._sight_moe_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end		
	MenuCallbackHandler.optic_gadget_moe_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Foregrips._optic_gadget_moe_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end
	MenuCallbackHandler.vg_moe_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Foregrips._vg_moe_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end		
	--Gadgets
	MenuCallbackHandler.surefire_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Gadgets._surefire_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end	
	MenuCallbackHandler.peqbox_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Gadgets._peqbox_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end	
	MenuCallbackHandler.ass_laser_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Gadgets._ass_laser_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end	
	MenuCallbackHandler.military_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Gadgets._military_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end	
	MenuCallbackHandler.utg_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Gadgets._utg_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end
	--Stocks
	--Standard Stock
	MenuCallbackHandler.standard_stock_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Stocks._standard_stock_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end
	--Tactical Stock
	MenuCallbackHandler.tactical_stock_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Stocks._tactical_stock_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end
	--Folding Stock
	MenuCallbackHandler.folding_stock_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Stocks._folding_stock_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end
	--Wide Stock
	MenuCallbackHandler.wide_stock_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Stocks._wide_stock_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end
	--War-Thorn Stock
	MenuCallbackHandler.war_thorn_stock_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Stocks._war_thorn_stock_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end
	--2 Piece Stock
	MenuCallbackHandler.two_piece_stock_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Stocks._two_piece_stock_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end	
	--Grips
	--Standard Grip
	MenuCallbackHandler.standard_grip_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Grips._standard_grip_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end
	--Ergo Grip
	MenuCallbackHandler.ergo_grip_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Grips._ergo_grip_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end
	--Pro Grip
	MenuCallbackHandler.pro_grip_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Grips._pro_grip_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end
	--Rubber Grip
	MenuCallbackHandler.rubber_grip_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Grips._rubber_grip_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end
	--Straight Grip
	MenuCallbackHandler.straight_grip_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Grips._straight_grip_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end
	
	--Barrels
	--Medium Barrel
	MenuCallbackHandler.medium_barrel_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Barrels._medium_barrel_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end	
	--Short Barrel
	MenuCallbackHandler.short_barrel_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Barrels._short_barrel_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end	
	--Long Barrel
	MenuCallbackHandler.long_barrel_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Barrels._long_barrel_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end	
	--DMR Barrel
	MenuCallbackHandler.dmr_barrel_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Barrels._dmr_barrel_car4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end	
	
	--The Bigger Then Better Supressor Barrel replace
	MenuCallbackHandler.big_suppressor_replace_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Barrels._big_suppressor_replace_car4 = (item:value() == "on" and true or false)
		GageUpgradeOptions:Save()
	end	
	--Use Thin Barrel(Big Sup)
	MenuCallbackHandler.use_thin_big_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Barrels._use_thin_big_car4 = (item:value() == "on" and true or false)
		GageUpgradeOptions:Save()
	end		
	--Medium Suppressor Barrel replace
	MenuCallbackHandler.medium_suppressor_replace_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Barrels._medium_suppressor_replace_car4 = (item:value() == "on" and true or false)
		GageUpgradeOptions:Save()
	end	
	--Use Thin Barrel(Medium Sup)
	MenuCallbackHandler.use_thin_medium_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Barrels._use_thin_medium_car4 = (item:value() == "on" and true or false)
		GageUpgradeOptions:Save()
	end		
	--Low Profile Suppressor Barrel replace
	MenuCallbackHandler.low_profile_suppressor_replace_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Barrels._low_profile_suppressor_replace_car4 = (item:value() == "on" and true or false)
		GageUpgradeOptions:Save()
	end	
	--Use Thin Barrel(Low Profile Sup)
	MenuCallbackHandler.use_thin_low_profile_car4 = function(self, item)
		GageUpgradeOptions._opts.CAR4.Barrels._use_thin_low_profile_car4 = (item:value() == "on" and true or false)
		GageUpgradeOptions:Save()
	end	
	
	--	Globals
	--	Barrel Extensions
	--	Stubby Compensator
	MenuCallbackHandler.stubby_compensator = function(self, item)
		GageUpgradeOptions._opts.GlobalOpt.Extensions._stubby_compensator = tonumber(item:value())
		GageUpgradeOptions:Save()
	end
	--	The Tank Compensator
	MenuCallbackHandler.tank_compensator = function(self, item)
		GageUpgradeOptions._opts.GlobalOpt.Extensions._tank_compensator = tonumber(item:value())
		GageUpgradeOptions:Save()
	end
	--	Fire Breather Nozzle
	MenuCallbackHandler.fire_breather = function(self, item)
		GageUpgradeOptions._opts.GlobalOpt.Extensions._fire_breather = tonumber(item:value())
		GageUpgradeOptions:Save()
	end
	--	Competitor's Compensator
	MenuCallbackHandler.competitors_compensator = function(self, item)
		GageUpgradeOptions._opts.GlobalOpt.Extensions._competitors_compensator = tonumber(item:value())
		GageUpgradeOptions:Save()
	end
	--	Funnel of Fun Nozzle
	MenuCallbackHandler.funnel_of_fun = function(self, item)
		GageUpgradeOptions._opts.GlobalOpt.Extensions._funnel_of_fun = tonumber(item:value())
		GageUpgradeOptions:Save()
	end
	--	Tactical Compensator
	MenuCallbackHandler.tactical_compensator = function(self, item)
		GageUpgradeOptions._opts.GlobalOpt.Extensions._tactical_compensator = tonumber(item:value())
		GageUpgradeOptions:Save()
	end
	--	Ported Compensator
	MenuCallbackHandler.ported_compensator = function(self, item)
		GageUpgradeOptions._opts.GlobalOpt.Extensions._ported_compensator = tonumber(item:value())
		GageUpgradeOptions:Save()
	end
	--	Shark Teeth Nozzle
	MenuCallbackHandler.shark_teeth = function(self, item)
		GageUpgradeOptions._opts.GlobalOpt.Extensions._shark_teeth = tonumber(item:value())
		GageUpgradeOptions:Save()
	end
	--	King's Crown Compensator
	MenuCallbackHandler.kings_crown = function(self, item)
		GageUpgradeOptions._opts.GlobalOpt.Extensions._kings_crown = tonumber(item:value())
		GageUpgradeOptions:Save()
	end
	--	Flash Hider
	MenuCallbackHandler.flash_hider = function(self, item)
		GageUpgradeOptions._opts.GlobalOpt.Extensions._flash_hider = tonumber(item:value())
		GageUpgradeOptions:Save()
	end
    --  AMR-16 Menu
    --	Reload animation
	MenuCallbackHandler.animation_amr16 = function(self, item)
		GageUpgradeOptions._opts.AMR16._animation_amr16 = tonumber(item:value())
		GageUpgradeOptions:Save()
        
        GageUpgradeOptions:FileReplace("mods/GUP/Animations/".. anims.m16_anims[tonumber(item:value())] .."/".. anims.m16_anims[tonumber(item:value())] .."_reload.animation", "m16/m16_reload.animation")
		GageUpgradeOptions:FileReplace("mods/GUP/Animations/".. anims.m16_anims[tonumber(item:value())] .."/".. anims.m16_anims[tonumber(item:value())] .."_reload_not_empty.animation", "m16/m16_reload_not_empty.animation")
	end
    
    --	Upper Receivers
	--	Round
	MenuCallbackHandler.round_receiver_amr16 = function(self, item)
		GageUpgradeOptions._opts.AMR16.Receivers._round_receiver_amr16 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end	
	MenuCallbackHandler.round_dh_amr16 = function(self, item)
		GageUpgradeOptions._opts.AMR16.Receivers._round_dh_amr16 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end	
	--	Edge
	MenuCallbackHandler.edge_receiver_amr16 = function(self, item)
		GageUpgradeOptions._opts.AMR16.Receivers._edge_receiver_amr16 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end	
	MenuCallbackHandler.edge_dh_amr16 = function(self, item)
		GageUpgradeOptions._opts.AMR16.Receivers._edge_dh_amr16 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end
	--	Ballos
	MenuCallbackHandler.ballos_receiver_amr16 = function(self, item)
		GageUpgradeOptions._opts.AMR16.Receivers._ballos_receiver_amr16 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end	
	MenuCallbackHandler.ballos_dh_amr16 = function(self, item)
		GageUpgradeOptions._opts.AMR16.Receivers._ballos_dh_car_4 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end
	--	Core
	MenuCallbackHandler.core_receiver_amr16 = function(self, item)
		GageUpgradeOptions._opts.AMR16.Receivers._core_receiver_amr16 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end	
	MenuCallbackHandler.core_dh_amr16 = function(self, item)
		GageUpgradeOptions._opts.AMR16.Receivers._core_dh_amr16 = tonumber(item:value())
		GageUpgradeOptions:Save()
	end	
    
    --  APPLY
	MenuCallbackHandler.callback_options_apply = function(self, item)
		dofile( GageUpgradeOptions._lua_path .. "WeaponFactory.lua" )
	end

	GageUpgradeOptions:Load()	
	
	local selected_language = GageUpgradeOptions._languages[GageUpgradeOptions._opts.Language]
	LocalizationManager:load_localization_file( GageUpgradeOptions._loc_path .. selected_language .. ".txt" )
	LocalizationManager:load_localization_file( GageUpgradeOptions._loc_path .. "en.txt")
  
	MenuHelper:LoadFromJsonFile(GageUpgradeOptions._menu_path .. "wpo_options.txt", GageUpgradeOptions, GageUpgradeOptions._opts)	
	--	CAR4 Menu
	MenuHelper:LoadFromJsonFile(GageUpgradeOptions._menu_path .. "wpo_car4.txt", GageUpgradeOptions, GageUpgradeOptions._opts.CAR4)	 -- TODO:
	MenuHelper:LoadFromJsonFile(GageUpgradeOptions._menu_path .. "wpo_car4_foregrips.txt", GageUpgradeOptions, GageUpgradeOptions._opts.CAR4.Foregrips)	
	MenuHelper:LoadFromJsonFile(GageUpgradeOptions._menu_path .. "wpo_car4_mags.txt", GageUpgradeOptions, GageUpgradeOptions._opts.CAR4.Mags)		
	MenuHelper:LoadFromJsonFile(GageUpgradeOptions._menu_path .. "wpo_car4_gadgets.txt", GageUpgradeOptions, GageUpgradeOptions._opts.CAR4.Gadgets)	
	MenuHelper:LoadFromJsonFile(GageUpgradeOptions._menu_path .. "wpo_car4_receivers.txt", GageUpgradeOptions, GageUpgradeOptions._opts.CAR4.Receivers)	
	MenuHelper:LoadFromJsonFile(GageUpgradeOptions._menu_path .. "wpo_car4_stocks.txt", GageUpgradeOptions, GageUpgradeOptions._opts.CAR4.Stocks)	
	MenuHelper:LoadFromJsonFile(GageUpgradeOptions._menu_path .. "wpo_car4_grips.txt", GageUpgradeOptions, GageUpgradeOptions._opts.CAR4.Grips)	
	MenuHelper:LoadFromJsonFile(GageUpgradeOptions._menu_path .. "wpo_car4_barrels.txt", GageUpgradeOptions, GageUpgradeOptions._opts.CAR4.Barrels)	    
    --  AMR-16
	MenuHelper:LoadFromJsonFile(GageUpgradeOptions._menu_path .. "wpo_amr16.txt", GageUpgradeOptions, GageUpgradeOptions._opts.AMR16)	
	MenuHelper:LoadFromJsonFile(GageUpgradeOptions._menu_path .. "wpo_amr16_receivers.txt", GageUpgradeOptions, GageUpgradeOptions._opts.AMR16.Receivers)
    --	Globals Menu
	MenuHelper:LoadFromJsonFile(GageUpgradeOptions._menu_path .. "wpo_globals.txt", GageUpgradeOptions, GageUpgradeOptions._opts.GlobalOpt)	
	MenuHelper:LoadFromJsonFile(GageUpgradeOptions._menu_path .. "wpo_globals_barrel_extensions.txt", GageUpgradeOptions, GageUpgradeOptions._opts.GlobalOpt.Extensions)
end)

if RequiredScript then
	local requiredScript = RequiredScript:lower()
	if GageUpgradeOptions.HookFiles[requiredScript] then
		if type(GageUpgradeOptions.HookFiles[requiredScript]) == "table" then
			local _loads = GageUpgradeOptions.HookFiles[requiredScript]
			
			for	i, value in pairs(_loads) do
				dofile( GageUpgradeOptions._lua_path .. value )	
			end
		else		
			dofile( GageUpgradeOptions._lua_path .. GageUpgradeOptions.HookFiles[requiredScript] )	
		end
	end
end