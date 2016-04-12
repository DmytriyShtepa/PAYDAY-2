if not PlayerTweakData then return end

local old_stances_init = PlayerTweakData._init_new_stances
function PlayerTweakData:_init_new_stances()
	old_stances_init(self)
	
	self.stances.new_m4.bipod = { shoulders = {}, vel_overshot = {}}	
	
	local pivot_shoulder_translation = Vector3( 10.7353, 23.0139, -1.43553 )
	local pivot_shoulder_rotation = Rotation( 0.106665, -0.0845104, 0.629231 )  
	local pivot_head_translation = Vector3( 0, 14, 0 )
	local pivot_head_rotation = Rotation( 0, 0, 0 )
	self.stances.new_m4.bipod.shoulders.translation = pivot_head_translation - pivot_shoulder_translation:rotate_with(pivot_shoulder_rotation:inverse()):rotate_with(pivot_head_rotation)
	self.stances.new_m4.bipod.shoulders.rotation = pivot_head_rotation * pivot_shoulder_rotation:inverse()
	self.stances.new_m4.bipod.vel_overshot.pivot = pivot_shoulder_translation + Vector3(0, 0, 0)
	self.stances.new_m4.bipod.vel_overshot.yaw_neg = 0
	self.stances.new_m4.bipod.vel_overshot.yaw_pos = 0
	self.stances.new_m4.bipod.vel_overshot.pitch_neg = 0
	self.stances.new_m4.bipod.vel_overshot.pitch_pos = 0
	self.stances.new_m4.bipod.FOV = 40
end