if not GuiTweakData then return end

local old_init = GuiTweakData.init
Hooks:RegisterHook("GuiTweakDataPostInit")
function GuiTweakData:init()
  old_init(self)
  
  Hooks:Call("GuiTweakDataPostInit", self)
  
  local dlc_1_folder = "units/pd2_dlc1/weapons/wpn_effects_textures/"
  local butch_folder = "units/pd2_dlc_butcher_mods/weapons/wpn_effects_textures/"
  local second_sight = {
		suffix = "_il",
		{
			texture_path = dlc_1_folder .. "wpn_sight_reticle_s_1_il",
			name_id = "menu_reticle_1_s"
		},
		{
			texture_path = dlc_1_folder .. "wpn_sight_reticle_m_1_il",
			name_id = "menu_reticle_1_m"
		},
		{
			texture_path = dlc_1_folder .. "wpn_sight_reticle_l_1_il",
			name_id = "menu_reticle_1_l"
		},
		{
			texture_path = dlc_1_folder .. "wpn_sight_reticle_2_il",
			name_id = "menu_reticle_2"
		},
		{
			texture_path = dlc_1_folder .. "wpn_sight_reticle_3_il",
			name_id = "menu_reticle_3"
		},
		{
			texture_path = dlc_1_folder .. "wpn_sight_reticle_4_il",
			name_id = "menu_reticle_4"
		},
		{
			texture_path = dlc_1_folder .. "wpn_sight_reticle_5_il",
			name_id = "menu_reticle_5",
			dlc = "gage_pack_jobs"
		},
		{
			texture_path = dlc_1_folder .. "wpn_sight_reticle_6_il",
			name_id = "menu_reticle_6",
			dlc = "gage_pack_jobs"
		},
		{
			texture_path = dlc_1_folder .. "wpn_sight_reticle_7_il",
			name_id = "menu_reticle_7",
			dlc = "gage_pack_jobs"
		},
		{
			texture_path = dlc_1_folder .. "wpn_sight_reticle_8_il",
			name_id = "menu_reticle_8",
			dlc = "gage_pack_jobs"
		},
		{
			texture_path = dlc_1_folder .. "wpn_sight_reticle_9_il",
			name_id = "menu_reticle_9",
			dlc = "gage_pack_jobs"
		},
		{
			texture_path = dlc_1_folder .. "wpn_sight_reticle_10_il",
			name_id = "menu_reticle_10",
			dlc = "gage_pack_jobs"
		},
		{
			texture_path = butch_folder .. "wpn_sight_reticle_11_il",
			name_id = "menu_reticle_11"
		},
		{
			texture_path = butch_folder .. "wpn_sight_reticle_12_il",
			name_id = "menu_reticle_12"
		},
		{
			texture_path = butch_folder .. "wpn_sight_reticle_13_il",
			name_id = "menu_reticle_13"
		},
		{
			texture_path = butch_folder .. "wpn_sight_reticle_14_il",
			name_id = "menu_reticle_14"
		},
		{
			texture_path = butch_folder .. "wpn_sight_reticle_15_il",
			name_id = "menu_reticle_15"
		},
		{
			texture_path = butch_folder .. "wpn_sight_reticle_16_il",
			name_id = "menu_reticle_16"
		},
		{
			texture_path = butch_folder .. "wpn_sight_reticle_17_il",
			name_id = "menu_reticle_17"
		},
		{
			texture_path = butch_folder .. "wpn_sight_reticle_18_il",
			name_id = "menu_reticle_18"
		},
		{
			texture_path = butch_folder .. "wpn_sight_reticle_19_il",
			name_id = "menu_reticle_19"
		},
		{
			texture_path = butch_folder .. "wpn_sight_reticle_20_il",
			name_id = "menu_reticle_20"
		},
		{
			texture_path = butch_folder .. "wpn_sight_reticle_21_il",
			name_id = "menu_reticle_21"
		},
		{
			texture_path = butch_folder .. "wpn_sight_reticle_22_il",
			name_id = "menu_reticle_22"
		},
		{
			texture_path = butch_folder .. "wpn_sight_reticle_23_il",
			name_id = "menu_reticle_23"
		}
	}
  
  self.weapon_texture_switches.types.second_sight = second_sight
end
