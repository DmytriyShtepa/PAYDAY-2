-- WeaponFactoryTweakData

local __init = WeaponFactoryTweakData.init
function WeaponFactoryTweakData:init()
	__init(self)
	self:_init_gage_upgrade()
end

function WeaponFactoryTweakData:_init_gage_upgrade()
	self.parts.wpn_fps_ass_carry_o_rail = {
		type = "extra",
		name_id = "bm_wp_famas_o_extra",
		a_obj = "a_sight",
		parent = "famas",
		unit = "units/pd2_dlc_berry/weapons/wpn_fps_snp_model70_pts/wpn_fps_snp_model70_o_rail",
		third_unit = "units/pd2_dlc_berry/weapons/wpn_third_snp_model70/wpn_third_snp_model70_o_rail",
		stats = {value = 2}
	}

	self.parts.wpn_fps_ass_m16_o_handle_sight_m4 = {
		type = "sight",
		name_id = "bm_wp_m16_o_handle_sight",
		a_obj = "a_o",
		unit = "units/payday2/weapons/wpn_fps_ass_m16_pts/wpn_fps_ass_m16_o_handle_sight",
		third_unit = "units/payday2/weapons/wpn_third_ass_m16_pts/wpn_third_ass_m16_o_handle_sight",
		stats = {value = 1},
		forbids = {
		  "wpn_fps_m4_uupg_fg_rail_ext"
		}
	}
	
	self.parts.barrel_extender_jp_smr = {
		type = "b_extender",
		name_id = "bm_wp_upg_barrel_extender",
		a_obj = "a_b",
		unit = "units/payday2/weapons/wpn_fps_ass_aug_pts/wpn_fps_aug_b_short",
		third_unit = "units/payday2/weapons/wpn_third_ass_aug_pts/wpn_third_ass_aug_b_short",
		stats = {value = 1},
        internal_part = true
	}  
	
	self.parts.stance_ext = {
		type = "extra",
		name_id = "bm_wp_cobray_o_adapter",
		a_obj = "a_body",
		unit = "units/payday2/weapons/wpn_fps_smg_mp9_pts/wpn_fps_smg_mp9_b_dummy",
		third_unit = "units/payday2/weapons/wpn_fps_smg_mp9_pts/wpn_fps_smg_mp9_b_dummy",
		stats = {value = 1},
        internal_part = true,
		stance_mod = {
			wpn_fps_ass_m4 = {
				translation = Vector3(0, 0, 0)
			}
		}
	}
	
	self.parts.extender_ap = {
		type = "extender",
		a_obj = "a_os",
		parent = "amcar",
		name_id = "bm_wp_upg_barrel_extender",
		unit = "units/pd2_dlc_dragan/weapons/wpn_fps_ass_vhs_pts/wpn_fps_ass_vhs_b_short",
		third_unit = "units/pd2_dlc_dragan/weapons/wpn_fps_ass_vhs_pts/wpn_fps_ass_vhs_b_short",
		stats = {value = 1},
		adds = {
			"double_ext"
		},
        internal_part = true
	}
	
	self.parts.double_ext = {
		type = "d_extender",
		a_obj = "a_ns",
		parent = "extender",
		name_id = "bm_wp_upg_barrel_extender",
		unit = "units/pd2_dlc_dragan/weapons/wpn_fps_ass_vhs_pts/wpn_fps_ass_vhs_b_short",
		third_unit = "units/pd2_dlc_dragan/weapons/wpn_fps_ass_vhs_pts/wpn_fps_ass_vhs_b_short",
		stats = {value = 1},
        internal_part = true
	}
	
	self.parts.famas_unit = {
		type = "famas",
		name_id = "bm_unit_m16",
		a_obj = "a_g",
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_famas/wpn_fps_ass_famas",
		third_unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_famas/wpn_fps_ass_famas",
		stats = { value = 1 },
        internal_part = true
	}
	
	self.parts.g17_unit = {
		type = "g17",
		name_id = "bm_unit_m16",
		a_obj = "a_g",
		unit = "units/payday2/weapons/wpn_fps_pis_g17/wpn_fps_pis_g17",
		third_unit = "units/payday2/weapons/wpn_fps_pis_g17/wpn_fps_pis_g17",
		stats = {value = 1},
        internal_part = true
	}
	
	self.parts.amcar_unit = {
		type = "amcar",
		name_id = "bm_unit_amcar",
		a_obj = "a_g",
		unit = "units/payday2/weapons/wpn_fps_ass_amcar/wpn_fps_ass_amcar",
		third_unit = "units/payday2/weapons/wpn_fps_ass_amcar/wpn_fps_ass_amcar",
		stats = { value = 1 },
        internal_part = true
	}
	
	self.parts.m16_unit = {
		type = "m16",
		name_id = "bm_unit_m16",
		a_obj = "a_g",
		unit = "units/payday2/weapons/wpn_fps_ass_m16/wpn_fps_ass_m16",
		third_unit = "units/payday2/weapons/wpn_fps_ass_m16/wpn_fps_ass_m16",
		stats = { value = 1 },
        internal_part = true
	}
		
	self.parts.ksg_unit = {
		type = "ksg",
		name_id = "bm_unit_ksg",
		a_obj = "a_body",
		parent = "g17",
		unit = "units/pd2_dlc_gage_shot/weapons/wpn_fps_sho_ksg/wpn_fps_sho_ksg",
		third_unit = "units/pd2_dlc_gage_shot/weapons/wpn_fps_sho_ksg/wpn_fps_sho_ksg",
		stats = { value = 1 },
        internal_part = true
	}

	self.parts.olympic_unit = {
		type = "olympic",
		name_id = "bm_unit_olympic",
		a_obj = "a_g",
		unit = "units/payday2/weapons/wpn_fps_smg_olympic/wpn_fps_smg_olympic",
		third_unit = "units/payday2/weapons/wpn_fps_smg_olympic/wpn_fps_smg_olympic",
		stats = { value = 1 },
        internal_part = true
	}
	
	self.parts.g26_unit_os = {
		type = "g26_os",
		name_id = "bm_unit_g26",
		a_obj = "a_o",
		--parent = "ksg",
		unit = "units/pd2_crimefest_2014/oct22/weapons/wpn_fps_pis_g26/wpn_fps_pis_g26",
		third_unit = "units/pd2_crimefest_2014/oct22/weapons/wpn_fps_pis_g26/wpn_fps_pis_g26",
		stats = { value = 1 },
		internal_part = true,
		adds = {
			"g26_double"
		}        
	}
	
	self.parts.g26_double = {
		type = "g26_dos",
		name_id = "bm_unit_g26",
		a_obj = "a_fl",
		parent = "g26_os",
		unit = "units/pd2_crimefest_2014/oct22/weapons/wpn_fps_pis_g26/wpn_fps_pis_g26",
		third_unit = "units/pd2_crimefest_2014/oct22/weapons/wpn_fps_pis_g26/wpn_fps_pis_g26",
		stats = { value = 1 },
        internal_part = true
	}
	
	self.parts.L85A2_unit = {
		type = "L85A2",
		name_id = "bm_unit_L85A2",
		unit = "units/pd2_dlc_clover/weapons/wpn_fps_ass_l85a2/wpn_fps_ass_l85a2",
		third_unit = "units/pd2_dlc_clover/weapons/wpn_fps_ass_l85a2/wpn_fps_ass_l85a2",
		a_obj = "a_g",
		stats = {value = 1},
        internal_part = true
	}
	
	self.parts.L85A2_unit_bp = {
		type = "L85A2_bp",
		unit = "units/pd2_dlc_clover/weapons/wpn_fps_ass_l85a2/wpn_fps_ass_l85a2",
		third_unit = "units/pd2_dlc_clover/weapons/wpn_fps_ass_l85a2/wpn_fps_ass_l85a2",
		a_obj = "a_s",
		stats = {value = 1},
        internal_part = true,
		adds = { "m249_unit" },
		override = {
			m249_unit = {
				a_obj = "a_m",
				parent = "L85A2_bp"
			}
		}
	}
	
	self.parts.m249_unit = {
		type = "m249",
		unit = "units/pd2_dlc_gage_lmg/weapons/wpn_fps_lmg_m249/wpn_fps_lmg_m249",
		third_unit = "units/pd2_dlc_gage_lmg/weapons/wpn_fps_lmg_m249/wpn_fps_lmg_m249",
		a_obj = "a_body",
		stats = {value = 1},
        internal_part = true
	}
	
	self.parts.deagle_unit = {
		type = "deagle",
		a_obj = "rp_wpn_fps_pis_rage",
		unit = "units/payday2/weapons/wpn_fps_pis_deagle/wpn_fps_pis_deagle",
		third_unit = "units/payday2/weapons/wpn_fps_pis_deagle/wpn_fps_pis_deagle",
		stats = {value = 1},
        internal_part = true
	}
	
	self.parts.wpn_fps_upg_ak_bayonet = {
		type = "dummy",
		name_id = "bm_wp_mosin_ns_bayonet",
		unit = "units/pd2_dlc_cro/weapons/wpn_upg_ak_bayonet/wpn_fps_mel_bayonet",
		third_unit = "units/pd2_dlc_cro/weapons/wpn_upg_ak_bayonet/wpn_third_mel_bayonet",
		a_obj = "a_ns",
		parent = "barrel",
		stats = {value = 1}
	}	
	
	self.parts.wpn_fps_m4_uupg_b_sd_dummy = {
		type = "dummy",
		name_id = "bm_wp_m4_uupg_b_sd",
		a_obj = "a_b",
		unit = "units/payday2/weapons/wpn_fps_ass_m4_pts/wpn_fps_m4_uupg_b_sd",
		third_unit = "units/payday2/weapons/wpn_third_ass_m4_pts/wpn_third_m4_uupg_b_sd",
		stats = {value = 1}
	}
	
	self.parts.wpn_fps_m4_uupg_b_sd_dummy_thin = {
		type = "dummy",
		name_id = "bm_wp_m4_uupg_b_sd",
		a_obj = "a_b",
		unit = "units/pd2_dlc_gage_jobs/weapons/wpn_fps_upg_fg_smr/wpn_fps_m4_upg_b_sd_smr",
		third_unit = "units/pd2_dlc_gage_jobs/weapons/wpn_third_upg_fg_smr/wpn_third_m4_upg_b_sd_smr",
		stats = {value = 1}
	}
    
	self.parts.cobray_unit = {
		type = "cobray",
		stats = { value = 1},
		unit = "units/pd2_dlc_hotline2/weapons/wpn_fps_smg_cobray/wpn_fps_smg_cobray",
		third_unit = "units/pd2_dlc_hotline2/weapons/wpn_fps_smg_cobray/wpn_fps_smg_cobray",
		a_obj = "a_body",
        internal_part = true
	}
	
	self.parts.mp5_unit = {
		type = "mp5",
		stats = { value = 1},
		unit = "units/payday2/weapons/wpn_fps_smg_mp5/wpn_fps_smg_mp5",
		third_unit = "units/payday2/weapons/wpn_fps_smg_mp5/wpn_fps_smg_mp5",
		a_obj = "a_body",
        internal_part = true
	}
	
	self.parts.sr2_unit = {
		type = "sr2",
		stats = { value = 1},
		unit = "units/pd2_dlc_coco/weapons/wpn_fps_smg_sr2/wpn_fps_smg_sr2",
		third_unit = "units/pd2_dlc_coco/weapons/wpn_fps_smg_sr2/wpn_fps_smg_sr2",
		a_obj = "a_body",
        internal_part = true
	}
	    
    self.parts.judge_unit = {
        type = "judge",
		stats = { value = 1},
		unit = "units/pd2_million/weapons/wpn_fps_pis_judge/wpn_fps_pis_judge",
		third_unit = "units/pd2_million/weapons/wpn_fps_pis_judge/wpn_fps_pis_judge",
		a_obj = "a_body",
        internal_part = true
    }
    
    self.parts.g3_unit = {
        type = "g3",
		stats = { value = 1},
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_g3/wpn_fps_ass_g3",
		third_unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_g3/wpn_fps_ass_g3",
		a_obj = "a_body",
        internal_part = true
    }
	
	self.parts.m32_unit = {
        type = "m32",
		stats = { value = 1},
		unit = "units/pd2_dlc_bbq/weapons/wpn_fps_sho_aa12/wpn_fps_sho_aa12",
		third_unit = "units/pd2_dlc_bbq/weapons/wpn_fps_sho_aa12/wpn_fps_sho_aa12",
		a_obj = "a_body",
        internal_part = true
    }	
		
	self.parts.p2006m_unit = {
        type = "p2006m",
		stats = { value = 1},
		unit = "units/pd2_dlc_arena/weapons/wpn_fps_pis_2006m/wpn_fps_pis_2006m",
		third_unit = "units/pd2_dlc_arena/weapons/wpn_fps_pis_2006m/wpn_fps_pis_2006m",
		a_obj = "a_body",
        internal_part = true
    }
	
	self.parts.sparrow_unit = {
        type = "sparrow",
		stats = { value = 1},
		unit = "units/pd2_dlc_rip/weapons/wpn_fps_pis_sparrow/wpn_fps_pis_sparrow",
		third_unit = "units/pd2_dlc_rip/weapons/wpn_fps_pis_sparrow/wpn_fps_pis_sparrow",
		a_obj = "a_body",
        internal_part = true
    }
	
	self.parts.mac10_unit = {
        type = "mac10",
		stats = { value = 1},
		unit = "units/payday2/weapons/wpn_fps_smg_mac10/wpn_fps_smg_mac10",
		third_unit = "units/payday2/weapons/wpn_fps_smg_mac10/wpn_fps_smg_mac10",
		a_obj = "a_body",
        internal_part = true
    }	
	
	self.parts.g18c_unit = {
        type = "g18c",
		stats = { value = 1},
		unit = "units/payday2/weapons/wpn_fps_pis_g18c/wpn_fps_pis_g18c",
		third_unit = "units/payday2/weapons/wpn_fps_pis_g18c/wpn_fps_pis_g18c",
		a_obj = "a_body",
        internal_part = true
    }
	
	self.parts.ak74_unit = {
		type = "ak74",
		stats = {value = 1},
		unit = "units/payday2/weapons/wpn_fps_ass_74/wpn_fps_ass_74",
		third_unit = "units/payday2/weapons/wpn_fps_ass_74/wpn_fps_ass_74",
		a_obj = "a_body",
        internal_part = true
	}
	
	self.parts.akm_unit = {
		type = "akm",
		stats = {value = 1},
		unit = "units/payday2/weapons/wpn_fps_ass_akm/wpn_fps_ass_akm",
		third_unit = "units/payday2/weapons/wpn_fps_ass_akm/wpn_fps_ass_akm",
		a_obj = "a_body",
        internal_part = true
	}	
	
	self.parts.mp9_unit = {
		type = "mp9",
		stats = {value = 1},
		unit = "units/payday2/weapons/wpn_fps_smg_mp9/wpn_fps_smg_mp9",
		third_unit = "units/payday2/weapons/wpn_fps_smg_mp9/wpn_fps_smg_mp9",
		a_obj = "a_body",
        internal_part = true
	}
	
	self.parts.wpn_fps_upg_o_rpk_scopemount = {
		type = "scopemount",
		name_id = "bm_wp_upg_o_ak_scopemount",
		a_obj = "a_g",
		unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_fps_upg_o_ak_scopemount/wpn_fps_upg_o_ak_scopemount",
		third_unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_third_upg_o_ak_scopemount/wpn_third_upg_o_ak_scopemount",
		stats = { value = 1 },
		texture_bundle_folder = "dlc_akm4",
		forbids = {
			"wpn_fps_ak_extra_ris"
		}		
	}		
end