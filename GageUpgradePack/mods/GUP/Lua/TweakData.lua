-- Weapon Bipod TweakData
tweak_data.weapon.new_m4.timers.deploy_bipod = 0.7
tweak_data.weapon.new_m4.bipod_camera_spin_limit = 50
tweak_data.weapon.new_m4.bipod_camera_pitch_limit = 15

-- TODO: need change values
tweak_data.weapon.new_m4.bipod_weapon_translation = Vector3(-10, 10, 0)

-- idk work that or not
tweak_data.weapon.new_m4.animations.bipod_enter = "bipod_enter"
tweak_data.weapon.new_m4.animations.bipod_exit = "bipod_exit"
tweak_data.weapon.new_m4.animations.bipod_recoil = "bipod_recoil"
tweak_data.weapon.new_m4.animations.bipod_recoil_enter = "bipod_recoil"
tweak_data.weapon.new_m4.animations.bipod_recoil_loop = "bipod_recoil_loop"
tweak_data.weapon.new_m4.animations.bipod_recoil_exit = "bipod_recoil_exit"

--	CAR-4 Uses Parts
table.list_append(tweak_data.weapon.factory.wpn_fps_ass_m4.uses_parts, {
	"wpn_fps_upg_bp_lmg_lionbipod",
})

--	Bronco Gadgets adds
table.list_append(tweak_data.weapon.factory.wpn_fps_pis_rage.uses_parts, {
	"wpn_fps_upg_fl_pis_laser",
	"wpn_fps_upg_fl_pis_tlr1",
	"wpn_fps_upg_fl_pis_crimson",
	"wpn_fps_upg_fl_pis_x400v",
	"wpn_fps_upg_fl_pis_m3x"
})
