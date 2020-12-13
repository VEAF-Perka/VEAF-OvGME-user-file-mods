------------------------------------------------------------------------ Steam_Export
steam_sounds = false
local Steam_Export = get_param_handle("Steam_Export")
if (get_plugin_option_value("Hercules","Steam_Version") == true) then
	Steam_Export:set(1.0)
	print_message_to_user("Steam Version")
	-- print_message_to_user(string.format("Steam_Export is set to 1"))
else
	Steam_Export:set(0.0)
end

local update_time_step = 0.006--EFM rate (0.006 s) or multible of 0.006 s (fastest), 0.012 s, 0.024 s, etc
make_default_activity(update_time_step)

local Steam_Initialize = false

----------------------------------------------------------------------------------------------------------------------------------------InitApuSounds
local function InitAPUSounds()
	APUstartExt = sndhost:create_sound("External/Herc_APUstartExt")
	APUrunExt = sndhost:create_sound("External/Herc_APUrunExt")
	APUstopExt = sndhost:create_sound("External/Herc_APUstopExt")
	APU_Start_Sequence_Energized = get_param_handle("APU_Start_Sequence_Energized")
	APU_rpm = get_param_handle("APU_rpm")
	APU_stop = get_param_handle("APU_stop")
	Volume = get_param_handle("Volume")
	StartAPU = false
	RunAPU = false
	StopAPU = false
end

----------------------------------------------------------------------------------------------------------------------------------------APU
local function onEvent_APU(APU_Start_Sequence_Energized, APU_rpm, APU_stop, Volume)
	APUstartExt:update(nil, Volume, nil)
	APUrunExt:update(nil, Volume, nil)
	APUstopExt:update(nil, Volume, nil)
	-- ED_AudioAPI.setSourceGain(APUstartExt, Volume)
	-- ED_AudioAPI.setSourceGain(APUrunExt, Volume)
	-- ED_AudioAPI.setSourceGain(APUstopExt, Volume)
	if APU_Start_Sequence_Energized > 0 then--do not use true or false, the values come through as 1 and 0
		if StartAPU == false then
			APUstartExt:play_once()
			StopAPU = false
			StartAPU = true
		end
		if APU_rpm > 0.99 then
			if RunAPU == false then
				APUstartExt:stop()
				APUrunExt:play_continue()
				RunAPU = true
			end
		end
	else
		if APU_stop > 0 then--do not use true or false, the values come through as 1 and 0
			if StopAPU == false then
				APUstartExt:stop()
				APUrunExt:stop()
				APUstopExt:play_once()
				-- APUstopExt:play_once((-11.5 * APU_rpm) + 11.5)--no idea if this function can take an argument
				StartAPU = false
				RunAPU = false
				StopAPU = true
			end
		end
	end
end

----------------------------------------------------------------------------------------------------------------------------------------InitEng1Sounds
local function InitEng1Sounds ()
	Eng1Start = get_param_handle("Eng1Start")
	Eng1Started = get_param_handle("Eng1Started")
	Eng1Stop = get_param_handle("Eng1Stop")
	Eng1NP = get_param_handle("Eng1NP")
	Eng1NormalSpeedMode = get_param_handle("Eng1NormalSpeedMode")
	Eng1LowSpeedMode = get_param_handle("Eng1LowSpeedMode")
	Eng1HotelMode = get_param_handle("Eng1HotelMode")
	Eng1GroundRange_Engaged = get_param_handle("Eng1GroundRange_Engaged")
	Eng1ThrottleInput = get_param_handle("Eng1ThrottleInput")
	Eng1Volume = get_param_handle("Eng1Volume")
	Eng1ExtGain = get_param_handle("Eng1ExtGain")
	Eng1CockpitGain = get_param_handle("Eng1CockpitGain")
	Eng1Pitch = get_param_handle("Eng1Pitch")
	Eng1Motoring = get_param_handle("Eng1Motoring")
	StartEng1 = false
	StartedEng1 = false
	StopEng1 = false
	PowRevSwitchEng1 = false

	Eng1Motoring_Start = false
	Eng1Motoring_Cont = false
	Eng1Motoring_Stop = false

	Eng1PropPowerCpt = sndhost:create_sound("Cockpit/Herc_Eng1PropPowerCpt")
	Eng1EngineStartExt = sndhost:create_sound("External/Herc_Eng1EngineStartExt")
	Eng1EngineStopExt = sndhost:create_sound("External/Herc_Eng1EngineStopExt")
	Eng1EngineContExt = sndhost:create_sound("External/Herc_Eng1EngineContExt")
	Eng1PropReverseExt = sndhost:create_sound("External/Herc_Eng1PropReverseExt")
	Eng1PropPowerRevSwitchExt = sndhost:create_sound("External/Herc_Eng1PropPowerRevSwitchExt")
	Eng1PropPowerExt = sndhost:create_sound("External/Herc_Eng1PropPowerExt")

	Eng1MotoringStartExt = sndhost:create_sound("External/Herc_Eng1MotoringStartExt")
	Eng1MotoringContExt = sndhost:create_sound("External/Herc_Eng1MotoringContExt")
	Eng1MotoringStopExt = sndhost:create_sound("External/Herc_Eng1MotoringStopExt")
end

----------------------------------------------------------------------------------------------------------------------------------------Eng1Motoring
local function onEvent_Eng1Motoring(Eng1Motoring, Eng1NP, Eng1Volume)

	Eng1MotoringStartExt:update(nil, Eng1Volume, nil)
	Eng1MotoringContExt:update(nil, Eng1Volume, nil)
	Eng1MotoringStopExt:update(nil, Eng1Volume, nil)

	-- ED_AudioAPI.setSourceGain(Eng1MotoringStartExt, Eng1Volume)
	-- ED_AudioAPI.setSourceGain(Eng1MotoringContExt, Eng1Volume)
	-- ED_AudioAPI.setSourceGain(Eng1MotoringStopExt, Eng1Volume)
	if Eng1Motoring == -1.0 then
		if Eng1Motoring_Start == false then
			Eng1MotoringStartExt:play_once()
			-- ED_AudioAPI.playSourceOnce(, 58.7 * Eng1NP)
			Eng1Motoring_Start = true
		end
		Eng1Motoring_Stop = false
		if Eng1NP > 0.1 then
			if Eng1Motoring_Cont == false then
				Eng1MotoringStartExt:stop()
				Eng1MotoringContExt:play_continue()
				Eng1Motoring_Cont = true
			end
		end
	else
		if Eng1Motoring_Stop == false then
			Eng1MotoringStartExt:stop()
			Eng1MotoringContExt:stop()
			Eng1MotoringStopExt:play_once()
			-- ED_AudioAPI.playSourceOnce(Eng1MotoringStopExt, (-26.5 * Eng1NP) + 6.1)
			Eng1Motoring_Start = false
			Eng1Motoring_Cont = false
			Eng1Motoring_Stop = true
		end
	end
end

----------------------------------------------------------------------------------------------------------------------------------------onEvent_Eng1
local function onEvent_Eng1(Eng1Start, Eng1Started, Eng1Stop, Eng1NP, Eng1NormalSpeedMode, Eng1LowSpeedMode, Eng1HotelMode, Eng1GroundRange_Engaged, Eng1ThrottleInput, Eng1Volume, Eng1ExtGain, Eng1CockpitGain, Eng1Pitch)
	if Eng1NP > 0.0 then
		if Eng1Start > 0.0 then
            if StartEng1 == false then
                Eng1EngineStartExt:play_once()
				StartEng1 = true
				StartedEng1 = false
				StopEng1 = false
				PowRevSwitchEng1 = true
			end
			Eng1EngineStartExt:update(Eng1Pitch, Eng1Volume, nil)
			-- ED_AudioAPI.setSourceGain(Eng1EngineStartExt, Eng1Volume)
			-- ED_AudioAPI.setSourcePitch(Eng1EngineStartExt, Eng1Pitch)
		else
			if Eng1Started > 0.0 then
				if Eng1NormalSpeedMode > 0.0 and Eng1NP > 0.99 then
                    if StartedEng1 == false then
                        Eng1EngineStartExt:stop()

                        Eng1PropPowerCpt:play_continue()
                        Eng1EngineContExt:play_continue()
                        Eng1PropReverseExt:play_continue()
                        Eng1EngineContExt:play_continue()

						StartedEng1 = true
					end
				else
					if Eng1LowSpeedMode > 0.0 and Eng1NP > 0.72 then
                        if StartedEng1 == false then
                            Eng1EngineStartExt:stop()

                            Eng1PropPowerCpt:play_continue()
                            Eng1EngineContExt:play_continue()
                            Eng1PropReverseExt:play_continue()
                            Eng1EngineContExt:play_continue()
							StartedEng1 = true
						end
					else
						if Eng1HotelMode > 0.0 and Eng1NP > 0.24 then
							if StartedEng1 == false then
                                Eng1EngineStartExt:stop()

                                Eng1PropPowerCpt:play_continue()
                                Eng1EngineContExt:play_continue()
                                Eng1PropReverseExt:play_continue()
                                Eng1EngineContExt:play_continue()
                                StartedEng1 = true
							end
						end
					end
				end
				Eng1EngineContExt:update(Eng1Pitch, Eng1Volume, nil)
				-- ED_AudioAPI.setSourceGain(Eng1EngineContExt, Eng1Volume)
				-- ED_AudioAPI.setSourcePitch(Eng1EngineContExt, Eng1Pitch)
				if Eng1GroundRange_Engaged > 0.0 then
					if Eng1HotelMode == 0 then
						if Eng1ThrottleInput <= 0.1 and Eng1NP > 0.71 then
							Eng1PropPowerExt:update(Eng1Pitch, Eng1ExtGain, nil)
							Eng1PropPowerCpt:update(Eng1Pitch, 0.0, nil)
							Eng1PropReverseExt:update(Eng1Pitch, Eng1ExtGain, nil)
							-- ED_AudioAPI.setSourceGain(Eng1PropPowerExt, Eng1ExtGain)
							-- ED_AudioAPI.setSourceGain(Eng1PropPowerCpt, 0.0)
							-- ED_AudioAPI.setSourceGain(Eng1PropReverseExt, Eng1ExtGain)
							PowRevSwitchEng1 = false
						else
							if PowRevSwitchEng1 == false then
								Eng1PropPowerRevSwitchExt:update(nil, Eng1Volume, nil)
                                -- ED_AudioAPI.setSourceGain(Eng1PropPowerRevSwitchExt, Eng1Volume)
                                EngSwitchReverseExt:play_once()
								PowRevSwitchEng1 = true
							end
							if Eng1NP > 0.71 then
								Eng1PropPowerExt:update(Eng1Pitch, Eng1ExtGain, nil)
								Eng1PropPowerCpt:update(nil, 0.0, nil)
								-- ED_AudioAPI.setSourceGain(Eng1PropPowerExt, Eng1ExtGain)
								-- ED_AudioAPI.setSourceGain(Eng1PropPowerCpt, 0.0)
							end
							Eng1PropReverseExt:update(nil, 0.0, nil)
							-- ED_AudioAPI.setSourceGain(Eng1PropReverseExt, 0.0)
						end
					else
						Eng1PropPowerExt:update(Eng1Pitch, Eng1ExtGain, nil)
						Eng1PropPowerCpt:update(Eng1Pitch, Eng1CockpitGain, nil)
						Eng1PropReverseExt:update(nil, 0.0, nil)
						-- ED_AudioAPI.setSourceGain(Eng1PropPowerExt, Eng1ExtGain)
						-- ED_AudioAPI.setSourceGain(Eng1PropPowerCpt, Eng1CockpitGain)
						-- ED_AudioAPI.setSourceGain(Eng1PropReverseExt, 0.0)
					end
				else
					Eng1PropPowerExt:update(Eng1Pitch, Eng1ExtGain, nil)
					Eng1PropPowerCpt:update(Eng1Pitch, Eng1CockpitGain, nil)
					Eng1PropReverseExt:update(nil, 0.0, nil)
					-- ED_AudioAPI.setSourceGain(Eng1PropPowerExt, Eng1ExtGain)
					-- ED_AudioAPI.setSourceGain(Eng1PropPowerCpt, Eng1CockpitGain)
					-- ED_AudioAPI.setSourceGain(Eng1PropReverseExt, 0.0)
					PowRevSwitchEng1 = true
				end
			else
				if Eng1Stop > 0.0 then
					if StopEng1 == false then
                        Eng1EngineStartExt:stop()
                        Eng1PropPowerCpt:stop()
                        Eng1EngineContExt:stop()
                        Eng1PropReverseExt:stop()
                        Eng1EngineContExt:stop()
                        Eng1EngineStopExt:play_once()
                        -- ED_AudioAPI.playSourceOnce(Eng1EngineStopExt, (-27.0 * Eng1NP) + 27.0)
						StartEng1 = false
						StartedEng1 = false
						StopEng1 = true
					end
					Eng1EngineStopExt:update(Eng1Pitch, Eng1Volume, nil)
                    -- ED_AudioAPI.setSourceGain(Eng1EngineStopExt, Eng1Volume)
					-- ED_AudioAPI.setSourcePitch(Eng1EngineStopExt, Eng1Pitch)
                end
			end
		end
	end
end

----------------------------------------------------------------------------------------------------------------------------------------InitEng2Sounds
local function InitEng2Sounds ()
	Eng2Start = get_param_handle("Eng2Start")
	Eng2Started = get_param_handle("Eng2Started")
	Eng2Stop = get_param_handle("Eng2Stop")
	Eng2NP = get_param_handle("Eng2NP")
	Eng2NormalSpeedMode = get_param_handle("Eng2NormalSpeedMode")
	Eng2LowSpeedMode = get_param_handle("Eng2LowSpeedMode")
	Eng2HotelMode = get_param_handle("Eng2HotelMode")
	Eng2GroundRange_Engaged = get_param_handle("Eng2GroundRange_Engaged")
	Eng2ThrottleInput = get_param_handle("Eng2ThrottleInput")
	Eng2Volume = get_param_handle("Eng2Volume")
	Eng2ExtGain = get_param_handle("Eng2ExtGain")
	Eng2CockpitGain = get_param_handle("Eng2CockpitGain")
	Eng2Pitch = get_param_handle("Eng2Pitch")
	Eng2Motoring = get_param_handle("Eng2Motoring")
	StartEng2 = false
	StartedEng2 = false
	StopEng2 = false
	PowRevSwitchEng2 = false

	Eng2Motoring_Start = false
	Eng2Motoring_Cont = false
	Eng2Motoring_Stop = false

	Eng2PropPowerCpt = sndhost:create_sound("Cockpit/Herc_Eng2PropPowerCpt")
	Eng2EngineStartExt = sndhost:create_sound("External/Herc_Eng2EngineStartExt")
	Eng2EngineStopExt = sndhost:create_sound("External/Herc_Eng2EngineStopExt")
	Eng2EngineContExt = sndhost:create_sound("External/Herc_Eng2EngineContExt")
	Eng2PropReverseExt = sndhost:create_sound("External/Herc_Eng2PropReverseExt")
	Eng2PropPowerRevSwitchExt = sndhost:create_sound("External/Herc_Eng2PropPowerRevSwitchExt")
	Eng2PropPowerExt = sndhost:create_sound("External/Herc_Eng2PropPowerExt")

	Eng2MotoringStartExt = sndhost:create_sound("External/Herc_Eng2MotoringStartExt")
	Eng2MotoringContExt = sndhost:create_sound("External/Herc_Eng2MotoringContExt")
	Eng2MotoringStopExt = sndhost:create_sound("External/Herc_Eng2MotoringStopExt")
end

----------------------------------------------------------------------------------------------------------------------------------------Eng2Motoring
local function onEvent_Eng2Motoring(Eng2Motoring, Eng2NP, Eng2Volume)

	Eng2MotoringStartExt:update(nil, Eng2Volume, nil)
	Eng2MotoringContExt:update(nil, Eng2Volume, nil)
	Eng2MotoringStopExt:update(nil, Eng2Volume, nil)

	-- ED_AudioAPI.setSourceGain(Eng2MotoringStartExt, Eng2Volume)
	-- ED_AudioAPI.setSourceGain(Eng2MotoringContExt, Eng2Volume)
	-- ED_AudioAPI.setSourceGain(Eng2MotoringStopExt, Eng2Volume)
	if Eng2Motoring == -1.0 then
		if Eng2Motoring_Start == false then
			Eng2MotoringStartExt:play_once()
			-- ED_AudioAPI.playSourceOnce(, 58.7 * Eng2NP)
			Eng2Motoring_Start = true
		end
		Eng2Motoring_Stop = false
		if Eng2NP > 0.1 then
			if Eng2Motoring_Cont == false then
				Eng2MotoringStartExt:stop()
				Eng2MotoringContExt:play_continue()
				Eng2Motoring_Cont = true
			end
		end
	else
		if Eng2Motoring_Stop == false then
			Eng2MotoringStartExt:stop()
			Eng2MotoringContExt:stop()
			Eng2MotoringStopExt:play_once()
			-- ED_AudioAPI.playSourceOnce(Eng2MotoringStopExt, (-26.5 * Eng2NP) + 6.1)
			Eng2Motoring_Start = false
			Eng2Motoring_Cont = false
			Eng2Motoring_Stop = true
		end
	end
end

----------------------------------------------------------------------------------------------------------------------------------------onEvent_Eng2
local function onEvent_Eng2(Eng2Start, Eng2Started, Eng2Stop, Eng2NP, Eng2NormalSpeedMode, Eng2LowSpeedMode, Eng2HotelMode, Eng2GroundRange_Engaged, Eng2ThrottleInput, Eng2Volume, Eng2ExtGain, Eng2CockpitGain, Eng2Pitch)
	if Eng2NP > 0.0 then
		if Eng2Start > 0.0 then
            if StartEng2 == false then
                Eng2EngineStartExt:play_once()
				StartEng2 = true
				StartedEng2 = false
				StopEng2 = false
				PowRevSwitchEng2 = true
			end
			Eng2EngineStartExt:update(Eng2Pitch, Eng2Volume, nil)
			-- ED_AudioAPI.setSourceGain(Eng2EngineStartExt, Eng2Volume)
			-- ED_AudioAPI.setSourcePitch(Eng2EngineStartExt, Eng2Pitch)
		else
			if Eng2Started > 0.0 then
				if Eng2NormalSpeedMode > 0.0 and Eng2NP > 0.99 then
                    if StartedEng2 == false then
                        Eng2EngineStartExt:stop()

                        Eng2PropPowerCpt:play_continue()
                        Eng2EngineContExt:play_continue()
                        Eng2PropReverseExt:play_continue()
                        Eng2EngineContExt:play_continue()

						StartedEng2 = true
					end
				else
					if Eng2LowSpeedMode > 0.0 and Eng2NP > 0.72 then
                        if StartedEng2 == false then
                            Eng2EngineStartExt:stop()

                            Eng2PropPowerCpt:play_continue()
                            Eng2EngineContExt:play_continue()
                            Eng2PropReverseExt:play_continue()
                            Eng2EngineContExt:play_continue()
							StartedEng2 = true
						end
					else
						if Eng2HotelMode > 0.0 and Eng2NP > 0.24 then
							if StartedEng2 == false then
                                Eng2EngineStartExt:stop()

                                Eng2PropPowerCpt:play_continue()
                                Eng2EngineContExt:play_continue()
                                Eng2PropReverseExt:play_continue()
                                Eng2EngineContExt:play_continue()
                                StartedEng2 = true
							end
						end
					end
				end
				Eng2EngineContExt:update(Eng2Pitch, Eng2Volume, nil)
				-- ED_AudioAPI.setSourceGain(Eng2EngineContExt, Eng2Volume)
				-- ED_AudioAPI.setSourcePitch(Eng2EngineContExt, Eng2Pitch)
				if Eng2GroundRange_Engaged > 0.0 then
					if Eng2HotelMode == 0 then
						if Eng2ThrottleInput <= 0.1 and Eng2NP > 0.71 then
							Eng2PropPowerExt:update(Eng2Pitch, Eng2ExtGain, nil)
							Eng2PropPowerCpt:update(Eng2Pitch, 0.0, nil)
							Eng2PropReverseExt:update(nil, Eng2ExtGain, nil)
							-- ED_AudioAPI.setSourceGain(Eng2PropPowerExt, Eng2ExtGain)
							-- ED_AudioAPI.setSourceGain(Eng2PropPowerCpt, 0.0)
							-- ED_AudioAPI.setSourceGain(Eng2PropReverseExt, Eng2ExtGain)
							PowRevSwitchEng2 = false
						else
							if PowRevSwitchEng2 == false then
								Eng2PropPowerRevSwitchExt:update(nil, Eng2Volume, nil)
                                -- ED_AudioAPI.setSourceGain(Eng2PropPowerRevSwitchExt, Eng2Volume)
                                EngSwitchReverseExt:play_once()
								PowRevSwitchEng2 = true
							end
							if Eng2NP > 0.71 then
								Eng2PropPowerExt:update(Eng2Pitch, Eng2ExtGain, nil)
								Eng2PropPowerCpt:update(nil, 0.0, nil)
								-- ED_AudioAPI.setSourceGain(Eng2PropPowerExt, Eng2ExtGain)
								-- ED_AudioAPI.setSourceGain(Eng2PropPowerCpt, 0.0)
							end
							Eng2PropReverseExt:update(nil, 0.0, nil)
							-- ED_AudioAPI.setSourceGain(Eng2PropReverseExt, 0.0)
						end
					else
						Eng2PropPowerExt:update(Eng2Pitch, Eng2ExtGain, nil)
						Eng2PropPowerCpt:update(Eng2Pitch, Eng2CockpitGain, nil)
						Eng2PropReverseExt:update(nil, 0.0, nil)
						-- ED_AudioAPI.setSourceGain(Eng2PropPowerExt, Eng2ExtGain)
						-- ED_AudioAPI.setSourceGain(Eng2PropPowerCpt, Eng2CockpitGain)
						-- ED_AudioAPI.setSourceGain(Eng2PropReverseExt, 0.0)
					end
				else
					Eng2PropPowerExt:update(Eng2Pitch, Eng2ExtGain, nil)
					Eng2PropPowerCpt:update(Eng2Pitch, Eng2CockpitGain, nil)
					Eng2PropReverseExt:update(nil, 0.0, nil)
					-- ED_AudioAPI.setSourceGain(Eng2PropPowerExt, Eng2ExtGain)
					-- ED_AudioAPI.setSourceGain(Eng2PropPowerCpt, Eng2CockpitGain)
					-- ED_AudioAPI.setSourceGain(Eng2PropReverseExt, 0.0)
					PowRevSwitchEng2 = true
				end
			else
				if Eng2Stop > 0.0 then
					if StopEng2 == false then
                        Eng2EngineStartExt:stop()
                        Eng2PropPowerCpt:stop()
                        Eng2EngineContExt:stop()
                        Eng2PropReverseExt:stop()
                        Eng2EngineContExt:stop()
                        Eng2EngineStopExt:play_once()
                        -- ED_AudioAPI.playSourceOnce(Eng2EngineStopExt, (-27.0 * Eng2NP) + 27.0)
						StartEng2 = false
						StartedEng2 = false
						StopEng2 = true
					end
					Eng2EngineStopExt:update(Eng2Pitch, Eng2Volume, nil)
                    -- ED_AudioAPI.setSourceGain(Eng2EngineStopExt, Eng2Volume)
					-- ED_AudioAPI.setSourcePitch(Eng2EngineStopExt, Eng2Pitch)
                end
			end
		end
	end
end

----------------------------------------------------------------------------------------------------------------------------------------InitEng3Sounds
local function InitEng3Sounds ()
	Eng3Start = get_param_handle("Eng3Start")
	Eng3Started = get_param_handle("Eng3Started")
	Eng3Stop = get_param_handle("Eng3Stop")
	Eng3NP = get_param_handle("Eng3NP")
	Eng3NormalSpeedMode = get_param_handle("Eng3NormalSpeedMode")
	Eng3LowSpeedMode = get_param_handle("Eng3LowSpeedMode")
	Eng3HotelMode = get_param_handle("Eng3HotelMode")
	Eng3GroundRange_Engaged = get_param_handle("Eng3GroundRange_Engaged")
	Eng3ThrottleInput = get_param_handle("Eng3ThrottleInput")
	Eng3Volume = get_param_handle("Eng3Volume")
	Eng3ExtGain = get_param_handle("Eng3ExtGain")
	Eng3CockpitGain = get_param_handle("Eng3CockpitGain")
	Eng3Pitch = get_param_handle("Eng3Pitch")
	Eng3Motoring = get_param_handle("Eng3Motoring")
	StartEng3 = false
	StartedEng3 = false
	StopEng3 = false
	PowRevSwitchEng3 = false

	Eng3Motoring_Start = false
	Eng3Motoring_Cont = false
	Eng3Motoring_Stop = false

	Eng3PropPowerCpt = sndhost:create_sound("Cockpit/Herc_Eng3PropPowerCpt")
	Eng3EngineStartExt = sndhost:create_sound("External/Herc_Eng3EngineStartExt")
	Eng3EngineStopExt = sndhost:create_sound("External/Herc_Eng3EngineStopExt")
	Eng3EngineContExt = sndhost:create_sound("External/Herc_Eng3EngineContExt")
	Eng3PropReverseExt = sndhost:create_sound("External/Herc_Eng3PropReverseExt")
	Eng3PropPowerRevSwitchExt = sndhost:create_sound("External/Herc_Eng3PropPowerRevSwitchExt")
	Eng3PropPowerExt = sndhost:create_sound("External/Herc_Eng3PropPowerExt")

	Eng3MotoringStartExt = sndhost:create_sound("External/Herc_Eng3MotoringStartExt")
	Eng3MotoringContExt = sndhost:create_sound("External/Herc_Eng3MotoringContExt")
	Eng3MotoringStopExt = sndhost:create_sound("External/Herc_Eng3MotoringStopExt")
end

----------------------------------------------------------------------------------------------------------------------------------------Eng3Motoring
local function onEvent_Eng3Motoring(Eng3Motoring, Eng3NP, Eng3Volume)

	Eng3MotoringStartExt:update(nil, Eng3Volume, nil)
	Eng3MotoringContExt:update(nil, Eng3Volume, nil)
	Eng3MotoringStopExt:update(nil, Eng3Volume, nil)

	-- ED_AudioAPI.setSourceGain(Eng3MotoringStartExt, Eng3Volume)
	-- ED_AudioAPI.setSourceGain(Eng3MotoringContExt, Eng3Volume)
	-- ED_AudioAPI.setSourceGain(Eng3MotoringStopExt, Eng3Volume)
	if Eng3Motoring == -1.0 then
		if Eng3Motoring_Start == false then
			Eng3MotoringStartExt:play_once()
			-- ED_AudioAPI.playSourceOnce(, 58.7 * Eng3NP)
			Eng3Motoring_Start = true
		end
		Eng3Motoring_Stop = false
		if Eng3NP > 0.1 then
			if Eng3Motoring_Cont == false then
				Eng3MotoringStartExt:stop()
				Eng3MotoringContExt:play_continue()
				Eng3Motoring_Cont = true
			end
		end
	else
		if Eng3Motoring_Stop == false then
			Eng3MotoringStartExt:stop()
			Eng3MotoringContExt:stop()
			Eng3MotoringStopExt:play_once()
			-- ED_AudioAPI.playSourceOnce(Eng3MotoringStopExt, (-26.5 * Eng3NP) + 6.1)
			Eng3Motoring_Start = false
			Eng3Motoring_Cont = false
			Eng3Motoring_Stop = true
		end
	end
end

----------------------------------------------------------------------------------------------------------------------------------------onEvent_Eng3
local function onEvent_Eng3(Eng3Start, Eng3Started, Eng3Stop, Eng3NP, Eng3NormalSpeedMode, Eng3LowSpeedMode, Eng3HotelMode, Eng3GroundRange_Engaged, Eng3ThrottleInput, Eng3Volume, Eng3ExtGain, Eng3CockpitGain, Eng3Pitch)
	if Eng3NP > 0.0 then
		if Eng3Start > 0.0 then
            if StartEng3 == false then
                Eng3EngineStartExt:play_once()
				StartEng3 = true
				StartedEng3 = false
				StopEng3 = false
				PowRevSwitchEng3 = true
			end
			Eng3EngineStartExt:update(Eng3Pitch, Eng3Volume, nil)
			-- ED_AudioAPI.setSourceGain(Eng3EngineStartExt, Eng3Volume)
			-- ED_AudioAPI.setSourcePitch(Eng3EngineStartExt, Eng3Pitch)
		else
			if Eng3Started > 0.0 then
				if Eng3NormalSpeedMode > 0.0 and Eng3NP > 0.99 then
                    if StartedEng3 == false then
                        Eng3EngineStartExt:stop()

                        Eng3PropPowerCpt:play_continue()
                        Eng3EngineContExt:play_continue()
                        Eng3PropReverseExt:play_continue()
                        Eng3EngineContExt:play_continue()

						StartedEng3 = true
					end
				else
					if Eng3LowSpeedMode > 0.0 and Eng3NP > 0.72 then
                        if StartedEng3 == false then
                            Eng3EngineStartExt:stop()

                            Eng3PropPowerCpt:play_continue()
                            Eng3EngineContExt:play_continue()
                            Eng3PropReverseExt:play_continue()
                            Eng3EngineContExt:play_continue()
							StartedEng3 = true
						end
					else
						if Eng3HotelMode > 0.0 and Eng3NP > 0.24 then
							if StartedEng3 == false then
                                Eng3EngineStartExt:stop()

                                Eng3PropPowerCpt:play_continue()
                                Eng3EngineContExt:play_continue()
                                Eng3PropReverseExt:play_continue()
                                Eng3EngineContExt:play_continue()
                                StartedEng3 = true
							end
						end
					end
				end
				Eng3EngineContExt:update(Eng3Pitch, Eng3Volume, nil)
				-- ED_AudioAPI.setSourceGain(Eng3EngineContExt, Eng3Volume)
				-- ED_AudioAPI.setSourcePitch(Eng3EngineContExt, Eng3Pitch)
				if Eng3GroundRange_Engaged > 0.0 then
					if Eng3HotelMode == 0 then
						if Eng3ThrottleInput <= 0.1 and Eng3NP > 0.71 then
							Eng3PropPowerExt:update(Eng3Pitch, Eng3ExtGain, nil)
							Eng3PropPowerCpt:update(nil, 0.0, nil)
							Eng3PropReverseExt:update(Eng3Pitch, Eng3ExtGain, nil)
							-- ED_AudioAPI.setSourceGain(Eng3PropPowerExt, Eng3ExtGain)
							-- ED_AudioAPI.setSourceGain(Eng3PropPowerCpt, 0.0)
							-- ED_AudioAPI.setSourceGain(Eng3PropReverseExt, Eng3ExtGain)
							PowRevSwitchEng3 = false
						else
							if PowRevSwitchEng3 == false then
								Eng3PropPowerRevSwitchExt:update(Eng3Pitch, Eng3Volume, nil)
                                -- ED_AudioAPI.setSourceGain(Eng3PropPowerRevSwitchExt, Eng3Volume)
                                EngSwitchReverseExt:play_once()
								PowRevSwitchEng3 = true
							end
							if Eng3NP > 0.71 then
								Eng3PropPowerExt:update(Eng3Pitch, Eng3ExtGain, nil)
								Eng3PropPowerCpt:update(nil, 0.0, nil)
								-- ED_AudioAPI.setSourceGain(Eng3PropPowerExt, Eng3ExtGain)
								-- ED_AudioAPI.setSourceGain(Eng3PropPowerCpt, 0.0)
							end
							Eng3PropReverseExt:update(nil, 0.0, nil)
							-- ED_AudioAPI.setSourceGain(Eng3PropReverseExt, 0.0)
						end
					else
						Eng3PropPowerExt:update(Eng3Pitch, Eng3ExtGain, nil)
						Eng3PropPowerCpt:update(Eng3Pitch, Eng3CockpitGain, nil)
						Eng3PropReverseExt:update(nil, 0.0, nil)
						-- ED_AudioAPI.setSourceGain(Eng3PropPowerExt, Eng3ExtGain)
						-- ED_AudioAPI.setSourceGain(Eng3PropPowerCpt, Eng3CockpitGain)
						-- ED_AudioAPI.setSourceGain(Eng3PropReverseExt, 0.0)
					end
				else
					Eng3PropPowerExt:update(Eng3Pitch, Eng3ExtGain, nil)
					Eng3PropPowerCpt:update(Eng3Pitch, Eng3CockpitGain, nil)
					Eng3PropReverseExt:update(nil, 0.0, nil)
					-- ED_AudioAPI.setSourceGain(Eng3PropPowerExt, Eng3ExtGain)
					-- ED_AudioAPI.setSourceGain(Eng3PropPowerCpt, Eng3CockpitGain)
					-- ED_AudioAPI.setSourceGain(Eng3PropReverseExt, 0.0)
					PowRevSwitchEng3 = true
				end
			else
				if Eng3Stop > 0.0 then
					if StopEng3 == false then
                        Eng3EngineStartExt:stop()
                        Eng3PropPowerCpt:stop()
                        Eng3EngineContExt:stop()
                        Eng3PropReverseExt:stop()
                        Eng3EngineContExt:stop()
                        Eng3EngineStopExt:play_once()
                        -- ED_AudioAPI.playSourceOnce(Eng3EngineStopExt, (-27.0 * Eng3NP) + 27.0)
						StartEng3 = false
						StartedEng3 = false
						StopEng3 = true
					end
					Eng3EngineStopExt:update(Eng3Pitch, Eng3Volume, nil)
                    -- ED_AudioAPI.setSourceGain(Eng3EngineStopExt, Eng3Volume)
					-- ED_AudioAPI.setSourcePitch(Eng3EngineStopExt, Eng3Pitch)
                end
			end
		end
	end
end

----------------------------------------------------------------------------------------------------------------------------------------InitEng4Sounds
local function InitEng4Sounds ()
	Eng4Start = get_param_handle("Eng4Start")
	Eng4Started = get_param_handle("Eng4Started")
	Eng4Stop = get_param_handle("Eng4Stop")
	Eng4NP = get_param_handle("Eng4NP")
	Eng4NormalSpeedMode = get_param_handle("Eng4NormalSpeedMode")
	Eng4LowSpeedMode = get_param_handle("Eng4LowSpeedMode")
	Eng4HotelMode = get_param_handle("Eng4HotelMode")
	Eng4GroundRange_Engaged = get_param_handle("Eng4GroundRange_Engaged")
	Eng4ThrottleInput = get_param_handle("Eng4ThrottleInput")
	Eng4Volume = get_param_handle("Eng4Volume")
	Eng4ExtGain = get_param_handle("Eng4ExtGain")
	Eng4CockpitGain = get_param_handle("Eng4CockpitGain")
	Eng4Pitch = get_param_handle("Eng4Pitch")
	Eng4Motoring = get_param_handle("Eng4Motoring")
	StartEng4 = false
	StartedEng4 = false
	StopEng4 = false
	PowRevSwitchEng4 = false

	Eng4Motoring_Start = false
	Eng4Motoring_Cont = false
	Eng4Motoring_Stop = false

	Eng4PropPowerCpt = sndhost:create_sound("Cockpit/Herc_Eng4PropPowerCpt")
	Eng4EngineStartExt = sndhost:create_sound("External/Herc_Eng4EngineStartExt")
	Eng4EngineStopExt = sndhost:create_sound("External/Herc_Eng4EngineStopExt")
	Eng4EngineContExt = sndhost:create_sound("External/Herc_Eng4EngineContExt")
	Eng4PropReverseExt = sndhost:create_sound("External/Herc_Eng4PropReverseExt")
	Eng4PropPowerRevSwitchExt = sndhost:create_sound("External/Herc_Eng4PropPowerRevSwitchExt")
	Eng4PropPowerExt = sndhost:create_sound("External/Herc_Eng4PropPowerExt")

	Eng4MotoringStartExt = sndhost:create_sound("External/Herc_Eng4MotoringStartExt")
	Eng4MotoringContExt = sndhost:create_sound("External/Herc_Eng4MotoringContExt")
	Eng4MotoringStopExt = sndhost:create_sound("External/Herc_Eng4MotoringStopExt")
end

----------------------------------------------------------------------------------------------------------------------------------------Eng4Motoring
local function onEvent_Eng4Motoring(Eng4Motoring, Eng4NP, Eng4Volume)

	Eng4MotoringStartExt:update(nil, Eng4Volume, nil)
	Eng4MotoringContExt:update(nil, Eng4Volume, nil)
	Eng4MotoringStopExt:update(nil, Eng4Volume, nil)

	-- ED_AudioAPI.setSourceGain(Eng4MotoringStartExt, Eng4Volume)
	-- ED_AudioAPI.setSourceGain(Eng4MotoringContExt, Eng4Volume)
	-- ED_AudioAPI.setSourceGain(Eng4MotoringStopExt, Eng4Volume)
	if Eng4Motoring == -1.0 then
		if Eng4Motoring_Start == false then
			Eng4MotoringStartExt:play_once()
			-- ED_AudioAPI.playSourceOnce(, 58.7 * Eng4NP)
			Eng4Motoring_Start = true
		end
		Eng4Motoring_Stop = false
		if Eng4NP > 0.1 then
			if Eng4Motoring_Cont == false then
				Eng4MotoringStartExt:stop()
				Eng4MotoringContExt:play_continue()
				Eng4Motoring_Cont = true
			end
		end
	else
		if Eng4Motoring_Stop == false then
			Eng4MotoringStartExt:stop()
			Eng4MotoringContExt:stop()
			Eng4MotoringStopExt:play_once()
			-- ED_AudioAPI.playSourceOnce(Eng4MotoringStopExt, (-26.5 * Eng4NP) + 6.1)
			Eng4Motoring_Start = false
			Eng4Motoring_Cont = false
			Eng4Motoring_Stop = true
		end
	end
end

----------------------------------------------------------------------------------------------------------------------------------------onEvent_Eng4
local function onEvent_Eng4(Eng4Start, Eng4Started, Eng4Stop, Eng4NP, Eng4NormalSpeedMode, Eng4LowSpeedMode, Eng4HotelMode, Eng4GroundRange_Engaged, Eng4ThrottleInput, Eng4Volume, Eng4ExtGain, Eng4CockpitGain, Eng4Pitch)
	if Eng4NP > 0.0 then
		if Eng4Start > 0.0 then
            if StartEng4 == false then
                Eng4EngineStartExt:play_once()
				StartEng4 = true
				StartedEng4 = false
				StopEng4 = false
				PowRevSwitchEng4 = true
			end
			Eng4EngineStartExt:update(Eng4Pitch, Eng4Volume, nil)
			-- ED_AudioAPI.setSourceGain(Eng4EngineStartExt, Eng4Volume)
			-- ED_AudioAPI.setSourcePitch(Eng4EngineStartExt, Eng4Pitch)
		else
			if Eng4Started > 0.0 then
				if Eng4NormalSpeedMode > 0.0 and Eng4NP > 0.99 then
                    if StartedEng4 == false then
                        Eng4EngineStartExt:stop()

                        Eng4PropPowerCpt:play_continue()
                        Eng4EngineContExt:play_continue()
                        Eng4PropReverseExt:play_continue()
                        Eng4EngineContExt:play_continue()

						StartedEng4 = true
					end
				else
					if Eng4LowSpeedMode > 0.0 and Eng4NP > 0.72 then
                        if StartedEng4 == false then
                            Eng4EngineStartExt:stop()

                            Eng4PropPowerCpt:play_continue()
                            Eng4EngineContExt:play_continue()
                            Eng4PropReverseExt:play_continue()
                            Eng4EngineContExt:play_continue()
							StartedEng4 = true
						end
					else
						if Eng4HotelMode > 0.0 and Eng4NP > 0.24 then
							if StartedEng4 == false then
                                Eng4EngineStartExt:stop()

                                Eng4PropPowerCpt:play_continue()
                                Eng4EngineContExt:play_continue()
                                Eng4PropReverseExt:play_continue()
                                Eng4EngineContExt:play_continue()
                                StartedEng4 = true
							end
						end
					end
				end
				Eng4EngineContExt:update(Eng4Pitch, Eng4Volume, nil)
				-- ED_AudioAPI.setSourceGain(Eng4EngineContExt, Eng4Volume)
				-- ED_AudioAPI.setSourcePitch(Eng4EngineContExt, Eng4Pitch)
				if Eng4GroundRange_Engaged > 0.0 then
					if Eng4HotelMode == 0 then
						if Eng4ThrottleInput <= 0.1 and Eng4NP > 0.71 then
							Eng4PropPowerExt:update(Eng4Pitch, Eng4ExtGain, nil)
							Eng4PropPowerCpt:update(Eng4Pitch, 0.0, nil)
							Eng4PropReverseExt:update(Eng4Pitch, Eng4ExtGain, nil)
							-- ED_AudioAPI.setSourceGain(Eng4PropPowerExt, Eng4ExtGain)
							-- ED_AudioAPI.setSourceGain(Eng4PropPowerCpt, 0.0)
							-- ED_AudioAPI.setSourceGain(Eng4PropReverseExt, Eng4ExtGain)
							PowRevSwitchEng4 = false
						else
							if PowRevSwitchEng4 == false then
								Eng4PropPowerRevSwitchExt:update(Eng4Pitch, Eng4Volume, nil)
                                -- ED_AudioAPI.setSourceGain(Eng4PropPowerRevSwitchExt, Eng4Volume)
                                EngSwitchReverseExt:play_once()
								PowRevSwitchEng4 = true
							end
							if Eng4NP > 0.71 then
								Eng4PropPowerExt:update(Eng4Pitch, Eng4ExtGain, nil)
								Eng4PropPowerCpt:update(nil, 0.0, nil)
								-- ED_AudioAPI.setSourceGain(Eng4PropPowerExt, Eng4ExtGain)
								-- ED_AudioAPI.setSourceGain(Eng4PropPowerCpt, 0.0)
							end
							Eng4PropReverseExt:update(nil, 0.0, nil)
							-- ED_AudioAPI.setSourceGain(Eng4PropReverseExt, 0.0)
						end
					else
						Eng4PropPowerExt:update(Eng4Pitch, Eng4ExtGain, nil)
						Eng4PropPowerCpt:update(Eng4Pitch, Eng4CockpitGain, nil)
						Eng4PropReverseExt:update(nil, 0.0, nil)
						-- ED_AudioAPI.setSourceGain(Eng4PropPowerExt, Eng4ExtGain)
						-- ED_AudioAPI.setSourceGain(Eng4PropPowerCpt, Eng4CockpitGain)
						-- ED_AudioAPI.setSourceGain(Eng4PropReverseExt, 0.0)
					end
				else
					Eng4PropPowerExt:update(Eng4Pitch, Eng4ExtGain, nil)
					Eng4PropPowerCpt:update(Eng4Pitch, Eng4CockpitGain, nil)
					Eng4PropReverseExt:update(nil, 0.0, nil)
					-- ED_AudioAPI.setSourceGain(Eng4PropPowerExt, Eng4ExtGain)
					-- ED_AudioAPI.setSourceGain(Eng4PropPowerCpt, Eng4CockpitGain)
					-- ED_AudioAPI.setSourceGain(Eng4PropReverseExt, 0.0)
					PowRevSwitchEng4 = true
				end
			else
				if Eng4Stop > 0.0 then
					if StopEng4 == false then
                        Eng4EngineStartExt:stop()
                        Eng4PropPowerCpt:stop()
                        Eng4EngineContExt:stop()
                        Eng4PropReverseExt:stop()
                        Eng4EngineContExt:stop()
                        Eng4EngineStopExt:play_once()
                        -- ED_AudioAPI.playSourceOnce(Eng4EngineStopExt, (-27.0 * Eng4NP) + 27.0)
						StartEng4 = false
						StartedEng4 = false
						StopEng4 = true
					end
					Eng4EngineStopExt:update(Eng4Pitch, Eng4Volume, nil)
                    -- ED_AudioAPI.setSourceGain(Eng4EngineStopExt, Eng4Volume)
					-- ED_AudioAPI.setSourcePitch(Eng4EngineStopExt, Eng4Pitch)
                end
			end
		end
	end
end


local function InitGearSounds()
    GearExtendCpt = sndhost:create_sound("Cockpit/Herc_GearExtendCpt")
    GearWindFadeInCpt = sndhost:create_sound("Cockpit/Herc_GearWindFadeInCpt")
    GearWindCpt = sndhost:create_sound("Cockpit/Herc_GearWindCpt")
    GearWindFadeOutCpt = sndhost:create_sound("Cockpit/Herc_GearWindFadeOutCpt")
    GearRetractCpt = sndhost:create_sound("Cockpit/Herc_GearRetractCpt")
    GearNoseTouchCpt = sndhost:create_sound("Cockpit/Herc_GearNoseTouchCpt")
    GearLeftMainTouchCpt = sndhost:create_sound("Cockpit/Herc_GearLeftMainTouchCpt")
    GearRightMainTouchCpt = sndhost:create_sound("Cockpit/Herc_GearRightMainTouchCpt")
    GearWindLoop = false
    GearNoseTouchLoop = 0
    GearLeftMainTouchLoop = 0
	GearRightMainTouchLoop = 0

	GEAR_COMMAND = get_param_handle("GEAR_COMMAND")
	Gear_PRESS = get_param_handle("Gear_PRESS")
	NWStrutComp = get_param_handle("NWStrutComp")
	LWStrutComp = get_param_handle("LWStrutComp")
	RWStrutComp = get_param_handle("RWStrutComp")
	IAS = get_param_handle("IAS")
end

local function onEvent_GearOper(GEAR_COMMAND, Gear_PRESS, NWStrutComp, LWStrutComp, RWStrutComp, IAS, Volume)
	GearExtendCpt:update(nil, Volume, nil)
	GearWindFadeInCpt:update(nil, Volume - 0.4, nil)
	GearWindCpt:update(nil, Volume - 0.4, nil)
	GearWindFadeOutCpt.update(nil, Volume - 0.4, nil)
    GearRetractCpt:update(nil, Volume, nil)

	if IAS < 70 then
		GearWindCpt:stop()
		GearNoseTouchCpt:update(nil, 0, nil)
		GearLeftMainTouchCpt:update(nil, 0, nil)
		GearRightMainTouchCpt:update(nil, 0, nil)
	else
		GearNoseTouchCpt:update(nil, 0.3, nil)
		GearLeftMainTouchCpt:update(nil, 0.25, nil)
		GearRightMainTouchCpt:update(nil, 0.25, nil)
		GearNoseTouchCpt:update(nil, Volume, nil)
		GearLeftMainTouchCpt:update(nil, Volume, nil)
		GearRightMainTouchCpt:update(nil, Volume, nil)
	end
	if GEAR_COMMAND > 0 then
		if Gear_PRESS > 0 and Gear_PRESS < 0.4 then
			if GearWindLoop == false then
				GearExtendCpt:play_once()
				GearWindFadeInCpt:play_once()
				GearWindLoop = true
			end
		else
			if GearWindLoop == true then
				GearWindCpt:play_continue()
				GearWindLoop = false
			end
		end
		if NWStrutComp > 0.0 and GearNoseTouchLoop == 0 then
			GearNoseTouchCpt:play_once()
			GearNoseTouchLoop = 1000
		else
			if NWStrutComp == 0.0 and GearNoseTouchLoop > 0 then
				GearNoseTouchLoop = GearNoseTouchLoop - 1
			end
		end
		if LWStrutComp > 0.0 and GearLeftMainTouchLoop == 0  then
			GearLeftMainTouchCpt:play_once()
			GearLeftMainTouchLoop = 1000
		else
			if LWStrutComp == 0.0 and GearLeftMainTouchLoop > 0 then
				GearLeftMainTouchLoop = GearLeftMainTouchLoop - 1
			end
		end
		if RWStrutComp > 0.0 and GearRightMainTouchLoop == 0  then
			GearRightMainTouchCpt:play_once()
			GearRightMainTouchLoop = 1000
		else
			if RWStrutComp == 0.0 and GearRightMainTouchLoop > 0 then
				GearRightMainTouchLoop = GearRightMainTouchLoop - 1
			end
		end
	else
		if Gear_PRESS > 0 and Gear_PRESS < 0.4 then
			if GearWindLoop == false then
				GearWindCpt:stop()
				GearWindFadeOutCpt:play_once()
				GearWindLoop = true
			end
		else
			if GearWindLoop == true then
				GearRetractCpt:play_once()
				GearWindLoop = false
			end
		end
	end
end

---------------------------------------------------------------------------------------InitDC_OnCpt
local function onEvent_DC_On(DC, Volume)
	DC_OnCpt:update(nil,Volume,nil)
	if DC > 22.0 then
		if DC_On == false then
			DC_OnCpt:play_continue()
			DC_On = true
		end
	else
		if DC_On == true then
			DC_OnCpt:stop()
			DC_On = false
		end
	end
end

---------------------------------------------------------------------------------------InitAvionics_Fan
local function onEvent_Avionics_Fan(AC, Avionics_Fan_Speed, Volume)
	Avionics_Fan_StartCpt:update(nil,Volume,nil)
	Avionics_Fan_StopCpt:update(nil,Volume,nil)
	Avionics_Fan_StartCpt:update(nil,Volume,nil)
	if AC > 112.0 then
        if Avionics_Fan_Start == false then
            Avionics_Fan_StartCpt:play_once()
			-- ED_AudioAPI.playSourceOnce(Avionics_Fan_StartCpt, 13.5 * Avionics_Fan_Speed)
			Avionics_Fan_Stop = false
			Avionics_Fan_Start = true
		end
		if Avionics_Fan_Speed > 0.99 then
			if Avionics_Fan_Cont == false then
				Avionics_Fan_StartCpt:stop()
				Avionics_Fan_ContCpt:play_continue()
				Avionics_Fan_Cont = true
			end
		end
	else
		if Avionics_Fan_Stop == false then
			Avionics_Fan_StartCpt:stop()
            Avionics_Fan_ContCpt:stop()
            Avionics_Fan_StartCpt:play_once()
			-- ED_AudioAPI.playSourceOnce(Avionics_Fan_StopCpt, (-10.0 * Avionics_Fan_Speed) + 10.0)
			Avionics_Fan_Start = false
			Avionics_Fan_Cont = false
			Avionics_Fan_Stop = true
		end
	end
end

---------------------------------------------------------------------------------------------------------------------------InitAux Hyd Pump
local function onEvent_AuxHydPump(AC, ElecHydPump_Switch, ElecHydPump_PressSwitch, Volume)
	AuxHydPumpOnExt:update(nil,Volume,nil)
	AuxHydPumpRunExt:update(nil,Volume,nil)
	AuxHydPumpOffExt:update(nil,Volume,nil)
	if ElecHydPump_Switch > 0 and AC > 100 then
		AuxHydPumpLoop = true
		if ElecHydPump_PressSwitch == 0 then
			if AuxHydPumpPressLoop == 0 then
				AuxHydPumpOnExt:play_once()
				AuxHydPumpPressLoop = 1
			else
				if AuxHydPumpPressLoop < 80 then
					AuxHydPumpPressLoop = AuxHydPumpPressLoop + 1
				else
					if AuxHydPumpPressLoop == 80 then
						AuxHydPumpRunExt:play_continue()
						AuxHydPumpPressLoop = 81
					end
				end
			end
		else
			if AuxHydPumpPressLoop == 81 then
				AuxHydPumpRunExt:stop()
				AuxHydPumpOffExt:play_once()
				AuxHydPumpPressLoop = 0
			end
		end
	else
		if AuxHydPumpLoop == true and AuxHydPumpPressLoop > 0 then
			AuxHydPumpRunExt:stop()
			AuxHydPumpOffExt:play_once()
			AuxHydPumpPressLoop = 0
			AuxHydPumpLoop = false
		else
			AuxHydPumpLoop = false
		end
	end
end

---------------------------------------------------------------------------------------------------------------------------InitCargoDoorsPump
local function onEvent_CargoDoorsPump(AC, CargoDoorRamp_Operating, HydraulicPress, Volume)
	CargoDoorsPumpOnExt:update(nil,Volume,nil)
	CargoDoorsPumpRunExt:update(nil,Volume,nil)
	CargoDoorsPumpOffExt:update(nil,Volume,nil)
	if CargoDoorRamp_Operating > 0 and AC > 100 then
		CargoDoorsPumpLoop = true
		if HydraulicPress > 0 then
			if CargoDoorsPumpPressLoop == 0 then
				CargoDoorsPumpOnExt:play_once()
				CargoDoorsPumpPressLoop = 1
			else
				if CargoDoorsPumpPressLoop < 1100.0 then
					CargoDoorsPumpPressLoop = CargoDoorsPumpPressLoop + 1
				else
					if CargoDoorsPumpPressLoop == 1100.0 then
						CargoDoorsPumpRunExt:play_continue()
						CargoDoorsPumpPressLoop = 1101.0
					end
				end
			end
		else
			if CargoDoorsPumpPressLoop == 1101.0 then
				CargoDoorsPumpRunExt:stop()
				CargoDoorsPumpOffExt:play_once()
				CargoDoorsPumpPressLoop = 0
			end
		end
	else
		if CargoDoorsPumpLoop == true and CargoDoorsPumpPressLoop > 0 then
			CargoDoorsPumpRunExt:stop()
			CargoDoorsPumpOffExt:play_once()
			CargoDoorsPumpPressLoop = 0
			CargoDoorsPumpLoop = false
		else
			CargoDoorsPumpLoop = false
		end
	end
end

---------------------------------------------------------------------------------------InitCargoDownLoadingFWD
local function onEvent_CargoDownloadingFWD(Pallet_Loading, Volume)
	CargoDownLoadingFWDExt:update(nil,Volume,nil)
	if Pallet_Loading > 0 then
		if CargoDownloadingFWD == false then
			CargoDownLoadingFWDExt:play_once()
			CargoDownloadingFWD = true
		end
	else
		CargoDownLoadingFWDExt:stop()
		CargoDownloadingFWD = false
	end
end

---------------------------------------------------------------------------------------InitCargoDownLoadingMID
local function onEvent_CargoDownloadingMID(Pallet_Loading, Volume)
	CargoDownLoadingMIDExt:update(nil,Volume,nil)
	if Pallet_Loading > 0 then
		if CargoDownloadingMID == false then
			CargoDownLoadingMIDExt:play_once()
			CargoDownloadingMID = true
		end
	else
		CargoDownLoadingMIDExt:stop()
		CargoDownloadingMID = false
	end
end

---------------------------------------------------------------------------------------InitCargoDownLoadingAFT
local function onEvent_CargoDownloadingAFT(Pallet_Loading, Volume)
	CargoDownLoadingAFTExt:update(nil,Volume,nil)
	if Pallet_Loading > 0 then
		if CargoDownloadingAFT == false then
			CargoDownLoadingAFTExt:play_once()
			CargoDownloadingAFT = true
		end
	else
		CargoDownLoadingAFTExt:stop()
		CargoDownloadingAFT = false
	end
end

---------------------------------------------------------------------------------------CargoUpLoadingFWD
local function onEvent_CargoUpLoadingFWD(Pallet_Loading, Volume)
	CargoUpLoadingFWDExt:update(nil,Volume,nil)
	if Pallet_Loading > 0 then
		if CargoUpLoadingFWD == false then
			CargoUpLoadingFWDExt:play_once()
			CargoUpLoadingFWD = true
		end
	else
		CargoUpLoadingFWDExt:stop()
		CargoUpLoadingFWD = false
	end
end

----------------------------------------------------------------------------------InitCargoUpLoadingMID
local function onEvent_CargoUpLoadingMID(Pallet_Loading, Volume)
	CargoUpLoadingMIDExt:update(nil,Volume,nil)
	if Pallet_Loading > 0 then
		if CargoUpLoadingMID == false then
			CargoUpLoadingMIDExt:play_once()
			CargoUpLoadingMID = true
		end
	else
		CargoUpLoadingMIDExt:stop()
		CargoUpLoadingMID = false
	end
end

---------------------------------------------------------------------------------------InitCargoUpLoadingAFT
local function onEvent_CargoUpLoadingAFT(Pallet_Loading, Volume)
	CargoUpLoadingAFTExt:update(nil,Volume,nil)
	if Pallet_Loading > 0 then
		if CargoUpLoadingAFT == false then
			CargoUpLoadingAFTExt:play_once()
			CargoUpLoadingAFT = true
		end
	else
		CargoUpLoadingAFTExt:stop()
		CargoUpLoadingAFT = false
	end
end

---------------------------------------------------------------------------------------InitParatroop_PortDoorCpt
local function onEvent_Paratroop_PortDoor(Open, Close, Volume)
	Paratroop_PortDoorCpt:update(nil,Volume,nil)
	if Open > 0 then
		if Paratroop_PortDoor_Open == false then
			Paratroop_PortDoorCpt:play_once()
			Paratroop_PortDoor_Open = true
		end
	else
		Paratroop_PortDoor_Open = false
	end
	if Close > 0 then
		if Paratroop_PortDoor_Close == false then
			Paratroop_PortDoorCpt:play_once()
			Paratroop_PortDoor_Close = true
		end
	else
		Paratroop_PortDoor_Close = false
	end
end

---------------------------------------------------------------------------------------InitParatroop_StarboardDoorCpt
local function onEvent_Paratroop_StarboardDoor(Open, Close, Volume)
	Paratroop_StarboardDoorCpt:update(nil,Volume,nil)
	if Open > 0 then
		if Paratroop_StarboardDoor_Open == false then
			Paratroop_StarboardDoorCpt:play_once()
			Paratroop_StarboardDoor_Open = true
		end
	else
		Paratroop_StarboardDoor_Open = false
	end
	if Close > 0 then
		if Paratroop_StarboardDoor_Close == false then
			Paratroop_StarboardDoorCpt:play_once()
			Paratroop_StarboardDoor_Close = true
		end
	else
		Paratroop_StarboardDoor_Close = false
	end
end

---------------------------------------------------------------------------------------------------------------------------InitAir_Deflector
local function onEvent_AirDeflector(AirDeflector_Pct, IAS, Volume)
	AirDeflectorWindFadeInCpt:update(nil,Volume,nil)
	AirDeflectorWindCpt:update(nil,Volume,nil)
	AirDeflectorWindFadeOutCpt:update(nil,Volume,nil)
	if AirDeflector_Pct > 0 and IAS > 70.0 then
		if AirDeflectorWindLoopStart == false then
			AirDeflectorWindFadeInCpt:play_once()
			AirDeflectorWindLoopStart = true
		end
		if AirDeflector_Pct > 0.5 then
			if AirDeflectorWindLoopRun == false then
				AirDeflectorWindCpt:play_continue()
				AirDeflectorWindLoopRun = true
			end
		end
	else
		if AirDeflectorWindLoopStart == true then
            AirDeflectorWindFadeOutCpt:play_once()
            -- ED_AudioAPI.playSourceOnce(AirDeflectorWindFadeOutCpt, 0.3 * AirDeflector_Pct)
			AirDeflectorWindFadeInCpt:stop()
			AirDeflectorWindCpt:stop()
			AirDeflectorWindLoopStart = false
		end
		AirDeflectorWindLoopRun = false
	end
end

---------------------------------------------------------------------------------------InitTORocket
local function onEvent_TORocket(Rocket_Assist_Triggered, Volume)
	if Rocket_Assist_Triggered > 0 then
		TORocketStartExt:update(nil,Volume,nil)
		TORocketEngineExt:update(nil,Volume,nil)
		if TORocket == false then
			TORocketStartExt:play_once()
			TORocketEngineExt:play_continue()
			TORocket = true
		end
	else
		TORocketEngineExt:stop()
		TORocket = false
	end
end

---------------------------------------------------------------------------------------InitBell_Alarm
local function onEvent_Bell_Alarm(Bell_Alarm_state, Volume)
	if Bell_Alarm_state > 0 then
		Bell_AlarmCpt:update(nil,Volume,nil)
		if Bell_Alarm == false then
			Bell_AlarmCpt:play_continue()
			Bell_Alarm = true
		end
	else
		if Bell_Alarm == true then
			Bell_AlarmCpt:stop()
			Bell_Alarm = false
		end
	end
end

---------------------------------------------------------------------------------------------------------------------------InitSpecialAlerts
local function onEvent_ICS_Volume(ICS_Volume_Change)
	ICS_Volume = ICS_Volume_Change
end

---------------------------------------------------------------------------------------InitICS_Testing_Sound
local function onEvent_ICS_Testing(ICS_Sound_Testing)
	if ICS_Sound_Testing > 0 then
		ICS_TestingSoundCpt:update(nil,ICS_Volume,nil)
		if ICS_Testing_Sound == false then
			ICS_TestingSoundCpt:play_continue()
			ICS_Testing_Sound = true
		end
	else
		if ICS_Testing_Sound == true then
			ICS_TestingSoundCpt:stop()
			ICS_Testing_Sound = false
		end
	end
end

---------------------------------------------------------------------------------------InitBankangle
local function onEvent_AlertBankangle(AlertBankangle_Message)
	AlertBankangleCpt:update(nil,ICS_Volume,nil)
	if AlertBankangle_Message > 0 then
		if BankangleAlert == false then
			AlertBankangleCpt:play_continue()
			BankangleAlert = true
		end
	else
		if BankangleAlert == true then
			AlertBankangleCpt:stop()
			BankangleAlert = false
		end
	end
end

---------------------------------------------------------------------------------------InitOverspeedAlert
local function onEvent_AlertOverspeed(AlertOverspeed_Message)
	AlertOverspeedCpt:update(nil,ICS_Volume,nil)
	if AlertOverspeed_Message > 0 then
		if OverspeedAlert == false then
			AlertOverspeedCpt:play_continue()
			OverspeedAlert = true
		end
	else
		if OverspeedAlert == true then
			AlertOverspeedCpt:stop()
			OverspeedAlert = false
		end
	end
end

---------------------------------------------------------------------------------------InitstickshakerAlert
local function onEvent_AlertStickShaker(AlertStickShaker_Message)
	AlertStickShakerCpt:update(nil,ICS_Volume,nil)
	if AlertStickShaker_Message > 0 then
		if StickShakerAlert == false then
			AlertStickShakerCpt:play_continue()
			StickShakerAlert = true
		end
	else
		if StickShakerAlert == true then
			AlertStickShakerCpt:stop()
			StickShakerAlert = false
		end
	end
end

---------------------------------------------------------------------------------------FLAPS (Voice) special alert
local function onEvent_AlertFlaps(FLAPS_Message)
	AlertFlapsCpt:update(nil,ICS_Volume,nil)
	if FLAPS_Message > 0 then
		if FlapsAlert == false then
			AlertFlapsCpt:play_continue()
			FlapsAlert = true
		end
	else
		if FlapsAlert == true then
			AlertFlapsCpt:stop()
			FlapsAlert = false
		end
	end
end

---------------------------------------------------------------------------------------InitTOO LOW FLAPS (Voice) special alert
local function onEvent_AlertTooLowFlaps(FlapsTooLow_Message)
	AlertTooLowFlapsCpt:update(nil,ICS_Volume,nil)
	if FlapsTooLow_Message > 0 then
		if FlapsTooLowAlert == false then
			AlertTooLowFlapsCpt:play_continue()
			FlapsTooLowAlert = true
		end
	else
		if FlapsTooLowAlert == true then
			AlertTooLowFlapsCpt:stop()
			FlapsTooLowAlert = false
		end
	end
end

---------------------------------------------------------------------------------------InitLANDING GEAR (Voice) special alert
local function onEvent_AlertGear(GearMessage)
	AlertGearCpt:update(nil,ICS_Volume,nil)
	if GearMessage > 0 then
		if GearAlert == false then
			AlertGearCpt:play_continue()
			GearAlert = true
		end
	else
		if GearAlert == true then
			AlertGearCpt:stop()
			GearAlert = false
		end
	end
end

---------------------------------------------------------------------------------------InitStallAlert
local function onEvent_AlertStall(AlertStallMessage)
	AlertStallCpt:update(nil,ICS_Volume,nil)
	if AlertStallMessage > 0 then
		if StallAlert == false then
			AlertStallCpt:play_continue()
			StallAlert = true
		end
	else
		if StallAlert == true then
			AlertStallCpt:stop()
			StallAlert = false
		end
	end
end

-------------------------------------------------------------------------------------InitAutoPilotAlert
local function onEvent_AlertAutoPilot(AlertAutoPilotMessage)
	AlertAutoPilotCpt:update(nil,ICS_Volume,nil)
	if AlertAutoPilotMessage > 0 then
		if AutoPilotAlert == false then
			AlertAutoPilotCpt:play_continue()
			AutoPilotAlert = true
		end
	else
		if AutoPilotAlert == true then
			AlertAutoPilotCpt:stop()
			AutoPilotAlert = false
		end
	end
end

-------------------------------------------------------------------------------------InitAutoThrottleAlert
local function onEvent_AlertAutoThrottle(AlertAutoThrottleMessage)
	AlertAutoThrottleCpt:update(nil,ICS_Volume,nil)
	if AlertAutoThrottleMessage > 0 then
		if AutoThrottleAlert == false then
			AlertAutoThrottleCpt:play_once()
			AutoThrottleAlert = true
		end
	else
		AutoThrottleAlert = false
	end
end

local function InitMiscSounds()
	AlertAutoThrottleCpt = sndhost:create_sound("Cockpit/Herc_AlertAutoThrottleCpt")
	AutoThrottleAlert = false
	AlertAutoThrottleMessage = get_param_handle("AlertAutoThrottleMessage")

	AlertAutoPilotCpt = sndhost:create_sound("Cockpit/Herc_AlertAutoPilotCpt")
	AutoPilotAlert = false
	AlertAutoPilotMessage = get_param_handle("AlertAutoPilotMessage")

	AlertStallCpt = sndhost:create_sound("Cockpit/Herc_AlertStallCpt")
	StallAlert = false
	AlertStallMessage = get_param_handle("AlertStallMessage")

	AlertGearCpt = sndhost:create_sound("Cockpit/Herc_AlertGearCpt")
	GearAlert = false
	GearMessage = get_param_handle("GearMessage")

	AlertTooLowFlapsCpt = sndhost:create_sound("Cockpit/Herc_AlertTooLowFlapsCpt")
	FlapsTooLowAlert = false
	FlapsTooLow_Message = get_param_handle("FlapsTooLow_Message")

	AlertFlapsCpt = sndhost:create_sound("Cockpit/Herc_AlertFlapsCpt")
	FlapsAlert = false
	FLAPS_Message = get_param_handle("FLAPS_Message")

	AlertStickShakerCpt = sndhost:create_sound("Cockpit/Herc_AlertStickShakerCpt")
	StickShakerAlert = false
	AlertStickShaker_Message = get_param_handle("AlertStickShaker_Message")

	AlertOverspeedCpt = sndhost:create_sound("Cockpit/Herc_AlertOverspeedCpt")
	OverspeedAlert = false
	AlertOverspeed_Message = get_param_handle("AlertOverspeed_Message")

	AlertBankangleCpt = sndhost:create_sound("Cockpit/Herc_AlertBankangleCpt")
	BankangleAlert = false
	AlertBankangle_Message = get_param_handle("AlertBankangle_Message")

	ICS_TestingSoundCpt = sndhost:create_sound("Cockpit/Herc_ICS_TestingSoundCpt")
	ICS_Testing_Sound = false
	ICS_Sound_Testing = get_param_handle("ICS_Sound_Testing")

	ICS_Volume = 0.0
	ICS_Volume_Change = get_param_handle("ICS_Volume_Change")

	Bell_AlarmCpt = sndhost:create_sound("Cockpit/Herc_Bell_AlarmCpt")
	Bell_Alarm = false
	Bell_Alarm_state = get_param_handle("Bell_Alarm_state")
	Volume = get_param_handle("Volume")

	TORocketStartExt = sndhost:create_sound("External/Herc_TORocketStartExt")
	TORocketEngineExt = sndhost:create_sound("External/Herc_TORocketEngineExt")
	TORocket = false
	Rocket_Assist_Triggered = get_param_handle("Rocket_Assist_Triggered")
	Volume = get_param_handle("Volume")

	AirDeflectorWindFadeInCpt = sndhost:create_sound("Cockpit/Herc_AirDeflectorWindFadeInCpt")
	AirDeflectorWindCpt = sndhost:create_sound("Cockpit/Herc_AirDeflectorWindCpt")
	AirDeflectorWindFadeOutCpt = sndhost:create_sound("Cockpit/Herc_AirDeflectorWindFadeOutCpt")
	AirDeflectorWindLoopStart = false
	AirDeflectorWindLoopRun = false
	IAS = get_param_handle("IAS")
	AirDeflector_Pct = get_param_handle("AirDeflector_Pct")
	Volume = get_param_handle("Volume")

	Paratroop_StarboardDoorCpt = sndhost:create_sound("Cockpit/Herc_Paratroop_DoorCpt")
	Paratroop_StarboardDoor_Open = false
	Paratroop_StarboardDoor_Close = false
	Open = get_param_handle("Open")
	Close = get_param_handle("Close")
	Volume = get_param_handle("Volume")

	Paratroop_PortDoorCpt = sndhost:create_sound("Cockpit/Herc_Paratroop_DoorCpt")
	Paratroop_PortDoor_Open = false
	Paratroop_PortDoor_Close = false
	Open = get_param_handle("Open")
	Close = get_param_handle("Close")
	Volume = get_param_handle("Volume")

	CargoUpLoadingAFTExt = sndhost:create_sound("External/Herc_CargoUpLoadingAFTExt")
	CargoUpLoadingAFT = false
	Pallet_Loading = get_param_handle("Pallet_Loading")
	Volume = get_param_handle("Volume")

	CargoUpLoadingMIDExt = sndhost:create_sound("External/Herc_CargoUpLoadingMIDExt")
	CargoUpLoadingMID = false
	Pallet_Loading = get_param_handle("Pallet_Loading")
	Volume = get_param_handle("Volume")

	CargoUpLoadingFWDExt = sndhost:create_sound("External/Herc_CargoUpLoadingFWDExt")
	CargoUpLoadingFWD = false
	Pallet_Loading = get_param_handle("Pallet_Loading")
	Volume = get_param_handle("Volume")

	CargoDownLoadingAFTExt = sndhost:create_sound("External/Herc_CargoDownLoadingAFTExt")
	CargoDownloadingAFT = false
	Pallet_Loading = get_param_handle("Pallet_Loading")
	Volume = get_param_handle("Volume")

	CargoDownLoadingMIDExt = sndhost:create_sound("External/Herc_CargoDownLoadingMIDExt")
	CargoDownloadingMID = false
	Pallet_Loading = get_param_handle("Pallet_Loading")
	Volume = get_param_handle("Volume")

	CargoDownLoadingFWDExt = sndhost:create_sound("External/Herc_CargoDownLoadingFWDExt")
	CargoDownloadingFWD = false
	Pallet_Loading = get_param_handle("Pallet_Loading")
	Volume = get_param_handle("Volume")

	CargoDoorsPumpOnExt = sndhost:create_sound("External/Herc_CargoDoorsPumpOnExt")
	CargoDoorsPumpRunExt = sndhost:create_sound("External/Herc_CargoDoorsPumpRunExt")
	CargoDoorsPumpOffExt = sndhost:create_sound("External/Herc_CargoDoorsPumpOffExt")
	CargoDoorsPumpLoop = false
	CargoDoorsPumpPressLoop = 0
	AC = get_param_handle("AC")
	CargoDoorRamp_Operating = get_param_handle("CargoDoorRamp_Operating")
	HydraulicPress = get_param_handle("HydraulicPress")
	Volume = get_param_handle("Volume")

	AuxHydPumpOnExt = sndhost:create_sound("External/Herc_AuxHydPumpOnExt")
	AuxHydPumpRunExt = sndhost:create_sound("External/Herc_AuxHydPumpRunExt")
	AuxHydPumpOffExt = sndhost:create_sound("External/Herc_AuxHydPumpOffExt")
	AuxHydPumpLoop = false
	AuxHydPumpPressLoop = 0
	AC = get_param_handle("")
	ElecHydPump_Switch = get_param_handle("ElecHydPump_Switch")
	ElecHydPump_PressSwitch = get_param_handle("ElecHydPump_PressSwitch")
	Volume = get_param_handle("Volume")

	Avionics_Fan_StartCpt = sndhost:create_sound("Cockpit/Herc_Avionics_Fan_Start")
	Avionics_Fan_ContCpt = sndhost:create_sound("Cockpit/Herc_Avionics_Fan_Cont")
	Avionics_Fan_StopCpt = sndhost:create_sound("Cockpit/Herc_Avionics_Fan_Stop")
	Avionics_Fan_Start = false
	Avionics_Fan_Cont = false
	Avionics_Fan_Stop = false
	AC = get_param_handle("AC")
	Avionics_Fan_Speed = get_param_handle("Avionics_Fan_Speed")
	Volume = get_param_handle("Volume")

	DC_OnCpt = sndhost:create_sound("Cockpit/Herc_DC_On")
	DC_On = false
	DC = get_param_handle("DC")
	Volume = get_param_handle("Volume")
end

function post_initialize()
	if Steam_Export:get() == 1.0 then
		if Steam_Initialize == false then
			---------------------------------------------------------------------------------------------------------create_sound_host
			sndhost = create_sound_host("COCKPIT", "3D", 0, 0, 0)
			------------------------------------------------------------------------------------------------------------InitMiscSounds
			InitMiscSounds()
			-------------------------------------------------------------------------------------------------------------------InitAPU
			InitAPUSounds()
			------------------------------------------------------------------------------------------------------------InitEng1Sounds
			InitEng1Sounds()
			------------------------------------------------------------------------------------------------------------InitEng2Sounds
			InitEng2Sounds()
			------------------------------------------------------------------------------------------------------------InitEng3Sounds
			InitEng3Sounds()
			------------------------------------------------------------------------------------------------------------InitEng4Sounds
			InitEng4Sounds()
			------------------------------------------------------------------------------------------------------------InitGearSounds
			InitGearSounds()
			--------------------------------------------------------------------------------------------------------------------------
			Steam_Initialize = true
			steam_sounds = true
		end
	end
end

----------------------------------------------------------------------------------------------------------------------------------------update
function update()
	if steam_sounds == true then
		--------------------------------------------------------------------------------------------------------------------APU
		onEvent_APU(APU_Start_Sequence_Energized:get(), APU_rpm:get(), APU_stop:get(), Volume:get())
		--------------------------------------------------------------------------------------------------------------------Eng1Motoring
		onEvent_Eng1Motoring(Eng1Motoring:get(), Eng1NP:get(), Eng1Volume:get())
		-- --------------------------------------------------------------------------------------------------------------------Eng1
		onEvent_Eng1(Eng1Start:get(), Eng1Started:get(), Eng1Stop:get(), Eng1NP:get(), Eng1NormalSpeedMode:get(), Eng1LowSpeedMode:get(), Eng1HotelMode:get(), Eng1GroundRange_Engaged:get(), Eng1ThrottleInput:get(), Eng1Volume:get(), Eng1ExtGain:get(), Eng1CockpitGain:get(), Eng1Pitch:get())
		--------------------------------------------------------------------------------------------------------------------Eng2Motoring
		onEvent_Eng2Motoring(Eng2Motoring:get(), Eng2NP:get(), Eng2Volume:get())
		-- --------------------------------------------------------------------------------------------------------------------Eng2
		onEvent_Eng2(Eng2Start:get(), Eng2Started:get(), Eng2Stop:get(), Eng2NP:get(), Eng2NormalSpeedMode:get(), Eng2LowSpeedMode:get(), Eng2HotelMode:get(), Eng2GroundRange_Engaged:get(), Eng2ThrottleInput:get(), Eng2Volume:get(), Eng2ExtGain:get(), Eng2CockpitGain:get(), Eng2Pitch:get())
		-- --------------------------------------------------------------------------------------------------------------------Eng3Motoring
		onEvent_Eng3Motoring(Eng3Motoring:get(), Eng3NP:get(), Eng3Volume:get())
		-- --------------------------------------------------------------------------------------------------------------------Eng3
		onEvent_Eng3(Eng3Start:get(), Eng3Started:get(), Eng3Stop:get(), Eng3NP:get(), Eng3NormalSpeedMode:get(), Eng3LowSpeedMode:get(), Eng3HotelMode:get(), Eng3GroundRange_Engaged:get(), Eng3ThrottleInput:get(), Eng3Volume:get(), Eng3ExtGain:get(), Eng3CockpitGain:get(), Eng3Pitch:get())
		-- --------------------------------------------------------------------------------------------------------------------Eng4Motoring
		onEvent_Eng4Motoring(Eng4Motoring:get(), Eng4NP:get(), Eng4Volume:get())
		-- --------------------------------------------------------------------------------------------------------------------Eng4
		onEvent_Eng4(Eng4Start:get(), Eng4Started:get(), Eng4Stop:get(), Eng4NP:get(), Eng4NormalSpeedMode:get(), Eng4LowSpeedMode:get(), Eng4HotelMode:get(), Eng4GroundRange_Engaged:get(), Eng4ThrottleInput:get(), Eng4Volume:get(), Eng4ExtGain:get(), Eng4CockpitGain:get(), Eng4Pitch:get())
		-- --------------------------------------------------------------------------------------------------------------------GearOper
		onEvent_GearOper(GEAR_COMMAND:get(), Gear_PRESS:get(), NWStrutComp:get(), LWStrutComp:get(), RWStrutComp:get(), IAS:get(), Volume:get())
		---------------------------------------------------------------------------------------DC_OnCpt
		onEvent_DC_On(DC:get(), Volume:get())
		---------------------------------------------------------------------------------------Avionics_Fan
		onEvent_Avionics_Fan(AC:get(), Avionics_Fan_Speed:get(), Volume:get())
		---------------------------------------------------------------------------------------------------------------------------Aux Hyd Pump
		onEvent_AuxHydPump(AC, ElecHydPump_Switch:get(), ElecHydPump_PressSwitch:get(), Volume:get())
		---------------------------------------------------------------------------------------------------------------------------CargoDoorsPump
		onEvent_CargoDoorsPump(AC:get(), CargoDoorRamp_Operating:get(), HydraulicPress:get(), Volume:get())
		---------------------------------------------------------------------------------------CargoDownLoadingFWD
		onEvent_CargoDownloadingFWD(Pallet_Loading:get(), Volume:get())
		---------------------------------------------------------------------------------------CargoDownLoadingMID
		onEvent_CargoDownloadingMID(Pallet_Loading:get(), Volume:get())
		---------------------------------------------------------------------------------------CargoDownLoadingAFT
		onEvent_CargoDownloadingAFT(Pallet_Loading:get(), Volume:get())
		---------------------------------------------------------------------------------------CargoUpLoadingFWD
		onEvent_CargoUpLoadingFWD(Pallet_Loading:get(), Volume:get())
		---------------------------------------------------------------------------------------CargoUpLoadingMID
		onEvent_CargoUpLoadingMID(Pallet_Loading:get(), Volume:get())
		---------------------------------------------------------------------------------------CargoUpLoadingAFT
		onEvent_CargoUpLoadingAFT(Pallet_Loading:get(), Volume:get())
		---------------------------------------------------------------------------------------Partroop_PortDoorCpt
		onEvent_Paratroop_PortDoor(Open:get(), Close:get(), Volume:get())
		----------------------------------------------------------------------------Paratroop_StarboardDoorCpt
		onEvent_Paratroop_StarboardDoor(Open:get(), Close:get(), Volume:get())
		---------------------------------------------------------------------------------------------------------------------------Air_Deflector
		onEvent_AirDeflector(AirDeflector_Pct:get(), IAS:get(), Volume:get())
		---------------------------------------------------------------------------------------TORocket
		onEvent_TORocket(Rocket_Assist_Triggered:get(), Volume:get())
		---------------------------------------------------------------------------------------Bell_Alarm
		onEvent_Bell_Alarm(Bell_Alarm_state:get(), Volume:get())
		---------------------------------------------------------------------------------------------------------------------------SpecialAlerts
		onEvent_ICS_Volume(ICS_Volume_Change:get())
		-----------------------------------------------------------------------ICS_Testing_Sound
		onEvent_ICS_Testing(ICS_Sound_Testing:get())
		---------------------------------------------------------------------------------------Bankangle
		onEvent_AlertBankangle(AlertBankangle_Message:get())
		---------------------------------------------------------------------------------------OverspeedAlert
		onEvent_AlertOverspeed(AlertOverspeed_Message:get())
		---------------------------------------------------------------------------------------stickshakerAlert
		onEvent_AlertStickShaker(AlertStickShaker_Message:get())
		---------------------------------------------------------------------------------------FLAPS (Voice) special alert
		onEvent_AlertFlaps(FLAPS_Message:get())
		---------------------------------------------------------------------------------------TOO LOW FLAPS (Voice) special alert
		onEvent_AlertTooLowFlaps(FlapsTooLow_Message:get())
		---------------------------------------------------------------------------------------LANDING GEAR (Voice) special alert
		onEvent_AlertGear(GearMessage:get())
		---------------------------------------------------------------------------------------StallAlert
		onEvent_AlertStall(AlertStallMessage:get())
		-------------------------------------------------------------------------------------AutoPilotAlert
		onEvent_AlertAutoPilot(AlertAutoPilotMessage:get())
		-------------------------------------------------------------------------------------AutoThrottleAlert
		onEvent_AlertAutoThrottle(AlertAutoThrottleMessage:get())
	end
end

