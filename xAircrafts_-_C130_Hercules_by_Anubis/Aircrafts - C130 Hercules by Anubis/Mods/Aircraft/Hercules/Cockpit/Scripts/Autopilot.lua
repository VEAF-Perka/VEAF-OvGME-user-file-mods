
-- local updateanim = GetSelf()

dt = 0.006 --EFM rate (0.006 s) or multible of 0.006 s (fastest), 0.012 s, 0.024 s, etc
make_default_activity(dt)

--------------------------------------------------------------------------------------------------------------------------------------Autothrottle
local Autothrottle_COMMAND_val = get_param_handle("Autothrottle_COMMAND")
local Autothrottle_COMMAND
local IAS_val = get_param_handle("IAS")
local IAS
local Pitch_RAD_val = get_param_handle("Pitch_RAD")
local Pitch_RAD
local AT_IAS_capture_val = get_param_handle("AT_IAS_capture")
local AT_IAS_capture
local ThrottleInput12_val = get_param_handle("ThrottleInput12")
local ThrottleInput12
local ThrottleInput34_val = get_param_handle("ThrottleInput34")
local ThrottleInput34
local ThrottleInput12Back = get_param_handle("ThrottleInput12Back")
local ThrottleInput34Back = get_param_handle("ThrottleInput34Back")

local A_x_val = get_param_handle("A_x")
local A_x

local C_D_Acc_Damping_Engage = get_param_handle("C_D_Acc_Damping_Engage")
-- C_D_Acc_Damping:set(A_x_val * 0.03)

local aaaa = 0.0
local AT_IAS_capture_app = 0
local AT_IAS_capture_engage = false

function update()
--------------------------------------------------------------------------------------------------------------------------------------Autothrottle
	Autothrottle_COMMAND = Autothrottle_COMMAND_val:get()
	IAS = IAS_val:get()
	Pitch_RAD = math.abs(Pitch_RAD_val:get() * 1.7)-- * 1.7
	AT_IAS_capture = AT_IAS_capture_val:get()
	ThrottleInput12 = ThrottleInput12_val:get()
	ThrottleInput34 = ThrottleInput34_val:get()
	A_x = A_x_val:get()
	-- print_message_to_user(string.format("AT_IAS_capture: %.3f", AT_IAS_capture));
	-- print_message_to_user(string.format("A_x: %.3f", A_x));
	-- print_message_to_user(string.format("aaaa: %.3f", aaaa));
	-- print_message_to_user(string.format("Pitch_RAD: %.3f", Pitch_RAD));
	-- print_message_to_user(string.format("AT_IAS_capture_app: %d", AT_IAS_capture_app));
	-- print_message_to_user(string.format("AAAAAAAAAAAA"))
	
	if (Autothrottle_COMMAND == 1) then
		if (IAS < (AT_IAS_capture - 5.0)) then
			C_D_Acc_Damping_Engage:set(0.0)
			aaaa = 1.0
			AT_IAS_capture_app = 0
			if (ThrottleInput12 < 1.0 or ThrottleInput34 < 1.0) then
				ThrottleInput12Back:set(ThrottleInput12 + (0.5 * dt))
				ThrottleInput34Back:set(ThrottleInput34 + (0.5 * dt))
			else
				ThrottleInput12Back:set(1.0)
				ThrottleInput34Back:set(1.0)
			end
		else
			if (IAS < (AT_IAS_capture - 0.5)) then
				C_D_Acc_Damping_Engage:set(0.0)
				aaaa = 2.0
				if (AT_IAS_capture_app == 0) then
					if (A_x > 0.3) then
						if (ThrottleInput12 > 0.0 or ThrottleInput34 > 0.0) then
							ThrottleInput12Back:set(ThrottleInput12 - (math.abs(A_x) * dt))
							ThrottleInput34Back:set(ThrottleInput34 - (math.abs(A_x) * dt))
						else
							ThrottleInput12Back:set(0.0)
							ThrottleInput34Back:set(0.0)
						end
					else
						AT_IAS_capture_app = 1
					end
				else
					C_D_Acc_Damping_Engage:set(1.0)
					if (A_x < (0.2 + Pitch_RAD)) then
						if (ThrottleInput12 < 1.0 or ThrottleInput34 < 1.0) then
							ThrottleInput12Back:set(ThrottleInput12 + (math.abs(A_x) * dt))
							ThrottleInput34Back:set(ThrottleInput34 + (math.abs(A_x) * dt))
						else
							ThrottleInput12Back:set(1.0)
							ThrottleInput34Back:set(1.0)
						end
					else
						if (ThrottleInput12 > 0.0 or ThrottleInput34 > 0.0) then
							ThrottleInput12Back:set(ThrottleInput12 - (math.abs(A_x) * dt))
							ThrottleInput34Back:set(ThrottleInput34 - (math.abs(A_x) * dt))
						else
							ThrottleInput12Back:set(0.0)
							ThrottleInput34Back:set(0.0)
						end
					end
				end
			else
				if (IAS >= (AT_IAS_capture - 0.5) and IAS <= (AT_IAS_capture + 0.5)) then
					C_D_Acc_Damping_Engage:set(0.0)
					aaaa = 3.0
					if (A_x > 0.0) then--accelerating
						ThrottleInput12Back:set(ThrottleInput12 - (math.abs(A_x) * dt))
						ThrottleInput34Back:set(ThrottleInput34 - (math.abs(A_x) * dt))
					else
						ThrottleInput12Back:set(ThrottleInput12 + (math.abs(A_x) * dt))
						ThrottleInput34Back:set(ThrottleInput34 + (math.abs(A_x) * dt))
					end
				else
					if (IAS > (AT_IAS_capture + 5.0)) then
						C_D_Acc_Damping_Engage:set(0.0)
						aaaa = 5.0
						AT_IAS_capture_app = 0
						if (ThrottleInput12 > 0.0 or ThrottleInput34 > 0.0) then
							ThrottleInput12Back:set(ThrottleInput12 - (math.abs(A_x) * dt))
							ThrottleInput34Back:set(ThrottleInput34 - (math.abs(A_x) * dt))
						else
							ThrottleInput12Back:set(0.0)
							ThrottleInput34Back:set(0.0)
						end
					else
						if (IAS > (AT_IAS_capture + 0.5)) then
							C_D_Acc_Damping_Engage:set(0.0)
							aaaa = 4.0
							if (AT_IAS_capture_app == 0) then
								if (A_x < -0.3) then
									if (ThrottleInput12 < 1.0 or ThrottleInput34 < 1.0) then
										ThrottleInput12Back:set(ThrottleInput12 + (0.5 * dt))
										ThrottleInput34Back:set(ThrottleInput34 + (0.5 * dt))
									else
										ThrottleInput12Back:set(1.0)
										ThrottleInput34Back:set(1.0)
									end
								else
									AT_IAS_capture_app = 1
								end
							else
								C_D_Acc_Damping_Engage:set(1.0)
								if (A_x > (-0.2 - Pitch_RAD)) then
									if (ThrottleInput12 > 0.0 or ThrottleInput34 > 0.0) then
										ThrottleInput12Back:set(ThrottleInput12 - (math.abs(A_x) * dt))
										ThrottleInput34Back:set(ThrottleInput34 - (math.abs(A_x) * dt))
									else
										ThrottleInput12Back:set(0.0)
										ThrottleInput34Back:set(0.0)
									end
								else
									if (ThrottleInput12 < 1.0 or ThrottleInput34 < 1.0) then
										ThrottleInput12Back:set(ThrottleInput12 + (math.abs(A_x) * dt))
										ThrottleInput34Back:set(ThrottleInput34 + (math.abs(A_x) * dt))
									else
										ThrottleInput12Back:set(1.0)
										ThrottleInput34Back:set(1.0)
									end
								end
							end
						end
					end
				end
			end
		end
	else
		AT_IAS_capture_app = 0
	end
end
	
	
	