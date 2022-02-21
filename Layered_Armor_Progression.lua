local DEBUG = false
local DEBUG_RESET = false
local TransmogSet = {}
local armorID_layeredID = {}

armorID_layeredID[0] = 1 -- Kamura
armorID_layeredID[1] = 1 -- Kamura
armorID_layeredID[2] = 2 -- Leather
armorID_layeredID[3] = 2 -- Leather
armorID_layeredID[4] = 3 -- Chainmail
armorID_layeredID[5] = 3 -- Chainmail
armorID_layeredID[6] = 4 -- Hunter's
armorID_layeredID[7] = 4 -- Hunter's
armorID_layeredID[8] = 5 -- Dober
armorID_layeredID[9] = 6 -- Alloy
armorID_layeredID[10] = 6 -- Alloy
armorID_layeredID[11] = 7 -- Ingot
armorID_layeredID[12] = 7 -- Ingot
armorID_layeredID[13] = 8 -- Damascus
armorID_layeredID[14] = 9 -- Melahoa
armorID_layeredID[15] = 9 -- Melahoa
armorID_layeredID[16] = 10 -- Makluva
armorID_layeredID[17] = 10 -- Makluva
armorID_layeredID[18] = 11 -- Death
armorID_layeredID[19] = 11 -- Death
armorID_layeredID[20] = 13 -- Mosgharl
armorID_layeredID[21] = 13 -- Mosgharl
armorID_layeredID[22] = 13 -- Mosgharl
armorID_layeredID[23] = 13 -- Mosgharl
armorID_layeredID[24] = 14 -- Aelucanth
armorID_layeredID[25] = 14 -- Aelucanth
armorID_layeredID[26] = 15 -- Rhopessa
armorID_layeredID[27] = 15 -- Rhopessa
armorID_layeredID[28] = 16 -- Vaik
armorID_layeredID[29] = 16 -- Vaik
armorID_layeredID[30] = 17 -- Chaoshroom
armorID_layeredID[31] = 17 -- Chaos
armorID_layeredID[32] = 18 -- Edel
armorID_layeredID[33] = 18 -- Edel
armorID_layeredID[34] = 19 -- Skalda
armorID_layeredID[35] = 19 -- Skalda
armorID_layeredID[36] = 20 -- Spio
armorID_layeredID[37] = 20 -- Spio
armorID_layeredID[38] = 21 -- Utsushi
armorID_layeredID[39] = 21 -- Utsushi
armorID_layeredID[40] = 22 -- Channeler's
armorID_layeredID[41] = 22 -- Channeler's
armorID_layeredID[42] = 23 -- Utsushi
armorID_layeredID[43] = 23 -- Utsushi
armorID_layeredID[44] = 24 -- Medium's
armorID_layeredID[45] = 24 -- Medium's
armorID_layeredID[46] = 25 -- S.
armorID_layeredID[47] = 25 -- S.
armorID_layeredID[48] = 26 -- Jelly
armorID_layeredID[49] = 26 -- Jelly
armorID_layeredID[50] = 27 -- Bishaten
armorID_layeredID[51] = 27 -- Bishaten
armorID_layeredID[52] = 28 -- Aknosom
armorID_layeredID[53] = 28 -- Aknosom
armorID_layeredID[54] = 29 -- Tetranadon
armorID_layeredID[55] = 29 -- Tetranadon
armorID_layeredID[56] = 30 -- Somnacanth
armorID_layeredID[57] = 30 -- Somnacanth
armorID_layeredID[58] = 32 -- Rakna 31
armorID_layeredID[59] = 32 -- Rakna 31
armorID_layeredID[60] = 33 -- Goss
armorID_layeredID[61] = 33 -- Goss
armorID_layeredID[62] = 34 -- Almudron
armorID_layeredID[63] = 34 -- Almudron
armorID_layeredID[64] = 35 -- Ibushi's
armorID_layeredID[65] = 35 -- Ibushi's
armorID_layeredID[66] = 36 -- Narwa's
armorID_layeredID[67] = 36 -- Narwa's
armorID_layeredID[68] = 37 -- Izuchi
armorID_layeredID[69] = 37 -- Izuchi
armorID_layeredID[70] = 38 -- Kushala
armorID_layeredID[71] = 39 -- Mizuha
armorID_layeredID[72] = 40 -- Kaiser
armorID_layeredID[73] = 41 -- Gargwa
armorID_layeredID[74] = 41 -- Gargwa
armorID_layeredID[75] = 42 -- Slagtoth
armorID_layeredID[76] = 42 -- Slagtoth
armorID_layeredID[77] = 43 -- Rhenoplos
armorID_layeredID[78] = 43 -- Rhenoplos
armorID_layeredID[79] = 44 -- Jaggi
armorID_layeredID[80] = 44 -- Jaggi
armorID_layeredID[81] = 45 -- Bnahabra
armorID_layeredID[82] = 45 -- Bnahabra
armorID_layeredID[83] = 46 -- Bullfango
armorID_layeredID[84] = 46 -- Bullfango
armorID_layeredID[85] = 47 -- Remobra
armorID_layeredID[86] = 47 -- Remobra
armorID_layeredID[87] = 48 -- Droth 
armorID_layeredID[88] = 48 -- Droth 
armorID_layeredID[89] = 49 -- Uroktor 
armorID_layeredID[90] = 49 -- Uroktor 
armorID_layeredID[91] = 50 -- Wroggi
armorID_layeredID[92] = 50 -- Wroggi
armorID_layeredID[93] = 51 -- Baggi
armorID_layeredID[94] = 51 -- Baggi
armorID_layeredID[95] = 52 -- Arzuros
armorID_layeredID[96] = 52 -- Arzuros
armorID_layeredID[97] = 53 -- Volvidon
armorID_layeredID[98] = 53 -- Volvidon
armorID_layeredID[99] = 54 -- Ludroth
armorID_layeredID[100] = 54 -- Ludroth
armorID_layeredID[101] = 55 -- Barroth
armorID_layeredID[102] = 55 -- Barroth
armorID_layeredID[103] = 56 -- Khezu
armorID_layeredID[104] = 56 -- Khezu
armorID_layeredID[105] = 57 -- Nargacuga
armorID_layeredID[106] = 57 -- Nargacuga
armorID_layeredID[107] = 58 -- Barioth
armorID_layeredID[108] = 58 -- Barioth
armorID_layeredID[109] = 59 -- Rathian
armorID_layeredID[110] = 59 -- Rathian
armorID_layeredID[111] = 60 -- Rathalos
armorID_layeredID[112] = 60 -- Rathalos
armorID_layeredID[113] = 61 -- Tigrex
armorID_layeredID[114] = 61 -- Tigrex
armorID_layeredID[115] = 62 -- Diablos
armorID_layeredID[116] = 62 -- Diablos
armorID_layeredID[117] = 63 -- Basarios
armorID_layeredID[118] = 63 -- Basarios
armorID_layeredID[119] = 64 -- Zinogre
armorID_layeredID[120] = 64 -- Zinogre
armorID_layeredID[121] = 65 -- Golden
armorID_layeredID[122] = 66 -- Valstrax
armorID_layeredID[123] = 67 -- Kulu-Ya
armorID_layeredID[124] = 67 -- Kulu-Ya
armorID_layeredID[125] = 68 -- Pukei-Pukei
armorID_layeredID[126] = 68 -- Pukei-Pukei
armorID_layeredID[127] = 69 -- Jyuratodus
armorID_layeredID[128] = 70 -- Kadachi
armorID_layeredID[129] = 70 -- Kadachi
armorID_layeredID[130] = 71 -- Anjanath
armorID_layeredID[131] = 71 -- Anjanath
armorID_layeredID[132] = 72 -- Bazelgeuse
armorID_layeredID[133] = 73 -- Chrome Metal
armorID_layeredID[134] = 74 -- Skull
armorID_layeredID[135] = 75 -- Flame
armorID_layeredID[137] = 77 -- Shadow
armorID_layeredID[138] = 78 -- Jaggi Mask
armorID_layeredID[139] = 78 -- Jaggi
armorID_layeredID[140] = 79 -- Cunning
armorID_layeredID[141] = 80 -- Mighty
armorID_layeredID[142] = 81 -- Sinister
armorID_layeredID[143] = 81 -- Sinister
armorID_layeredID[144] = 82 -- Lagombi
armorID_layeredID[145] = 82 -- Lagombi
armorID_layeredID[146] = 83 -- Bone
armorID_layeredID[147] = 83 -- Bone
armorID_layeredID[148] = 84 -- Mizutsune
armorID_layeredID[149] = 84 -- Mizutsune
armorID_layeredID[150] = 85 -- Brigade
armorID_layeredID[152] = 74 -- Skull
armorID_layeredID[153] = 85 -- Brigade

local plOverwearIdList = nil
local plOverwearBox = nil
local plEquipBox = nil


-- Add armor on Init and load required fields
sdk.hook(sdk.find_type_definition("snow.data.PlOverwearBox"):get_method("load"), 
function(args)
	plOverwearIdList = sdk.get_managed_singleton("snow.data.EquipDataManager"):get_field("_PlOverwearMySetData"):get_field("_PlOverwearIdList")
	plOverwearBox = sdk.get_managed_singleton("snow.data.DataManager"):get_field("_PlOverwearBox")
	plEquipBox = sdk.get_managed_singleton("snow.data.DataManager"):get_field("_PlEquipBox")
	TransmogSet[0] = plOverwearIdList[0]
end,
function(retval)
	local armorList = plEquipBox:get_field("<EquipBoxArmorData>k__BackingField")
	
	-- Add Layered Armor already unlocked
	UnlockArmor("Head", armorList:call("get_Item(System.Int32)", 0)) -- Head Armor
	UnlockArmor("Chest", armorList:call("get_Item(System.Int32)", 1)) -- Chest Armor
	UnlockArmor("Arm", armorList:call("get_Item(System.Int32)", 2)) -- Arm Armor
	UnlockArmor("Waist", armorList:call("get_Item(System.Int32)", 3)) -- Waist Armor
	UnlockArmor("Leg", armorList:call("get_Item(System.Int32)", 4)) -- Leg Armor
	return retval
end
)

-- Add armor through smithy
sdk.hook(sdk.find_type_definition("snow.data.SmithyFacility"):get_method("productEquipment(System.Boolean)"), 
function(args)
end,
function(retval)
	plOverwearIdList = sdk.get_managed_singleton("snow.data.EquipDataManager"):get_field("_PlOverwearMySetData"):get_field("_PlOverwearIdList")
	plOverwearBox = sdk.get_managed_singleton("snow.data.DataManager"):get_field("_PlOverwearBox")
	TransmogSet[0] = plOverwearIdList[0]
	local armorData = sdk.to_managed_object(retval)
	if DEBUG then log.info(tostring(armorData:call("isArmor"))) end
	
	if armorData:call("isArmor") then
		local armorIdData = armorData:call("getArmorData"):call("get_Id")
		
		if armorIdData ~= nil then
			if armorIdData >= 206569472 then -- Leg
				if DEBUG then log.info("Legs = " .. (armorIdData - 206569472)) end
				plOverwearBox:call("addPlOverwear", TransmogSet[0]:get_field("Overwear_Leg_" .. string.format("%03d",armorID_layeredID[(armorIdData - 206569472)])), false)
			elseif armorIdData >= 205520896 then -- Waist
				if DEBUG then log.info("Waist = " .. (armorIdData - 205520896)) end
				plOverwearBox:call("addPlOverwear", TransmogSet[0]:get_field("Overwear_Waist_" .. string.format("%03d",armorID_layeredID[(armorIdData - 205520896)])), false)
			elseif armorIdData >= 204472320 then -- Arms
				if DEBUG then log.info("Arms = " .. (armorIdData - 204472320)) end
				plOverwearBox:call("addPlOverwear", TransmogSet[0]:get_field("Overwear_Arm_" .. string.format("%03d",armorID_layeredID[(armorIdData - 204472320)])), false)
			elseif armorIdData >= 203423744 then -- Chest
				if DEBUG then log.info("Chest = " .. (armorIdData - 203423744)) end
				plOverwearBox:call("addPlOverwear", TransmogSet[0]:get_field("Overwear_Chest_" .. string.format("%03d",armorID_layeredID[(armorIdData - 203423744)])), false)
			elseif armorIdData >= 202375168 then -- Head
				if DEBUG then log.info("Head = " .. (armorIdData - 202375168)) end
				plOverwearBox:call("addPlOverwear", TransmogSet[0]:get_field("Overwear_Head_" .. string.format("%03d",armorID_layeredID[(armorIdData - 202375168)])), false)
			end
		end
	end
	
	return retval
end
)

-- Base:
-- head: 202375168
-- chest: 203423744
-- arm: 204472320
-- waist: 205520896
-- leg: 206569472

re.on_draw_ui(function()

	if DEBUG then
		imgui.text("Transmog:")
		
		if imgui.button("Transmog") then 
			log.info("[Transmog] Transmog")
			plOverwearIdList = sdk.get_managed_singleton("snow.data.EquipDataManager"):get_field("_PlOverwearMySetData"):get_field("_PlOverwearIdList")
			plOverwearBox = sdk.get_managed_singleton("snow.data.DataManager"):get_field("_PlOverwearBox")
			plEquipBox = sdk.get_managed_singleton("snow.data.DataManager"):get_field("_PlEquipBox")
			TransmogSet[0] = plOverwearIdList[0]
			local armorList = plEquipBox:get_field("<EquipBoxArmorData>k__BackingField")
			
			if armorList ~= nil then
				UnlockArmor("Head", armorList:call("get_Item(System.Int32)", 0)) -- Head Armor
				UnlockArmor("Chest", armorList:call("get_Item(System.Int32)", 1)) -- Chest Armor
				UnlockArmor("Arm", armorList:call("get_Item(System.Int32)", 2)) -- Arm Armor
				UnlockArmor("Waist", armorList:call("get_Item(System.Int32)", 3)) -- Waist Armor
				UnlockArmor("Leg", armorList:call("get_Item(System.Int32)", 4)) -- Leg Armor
				
			else
				log.info("[Transmog] armorList is nil")
			end
		end
		
		if imgui.button("Unlock All Layered Armor") then
			log.info("[Transmog] Unlock All")
			plOverwearIdList = sdk.get_managed_singleton("snow.data.EquipDataManager"):get_field("_PlOverwearMySetData"):get_field("_PlOverwearIdList")
			plOverwearBox = sdk.get_managed_singleton("snow.data.DataManager"):get_field("_PlOverwearBox")
			TransmogSet[0] = plOverwearIdList[0]
			-- Unlock all
			-- 127 all
			-- 86 non-dlc (not 76,77,79)
			for i=0, 86 do
				if i ~= 76 and i ~= 77 and i ~= 79 then  
					plOverwearBox:call("addPlOverwear", TransmogSet[0]:get_field("Overwear_Head_" .. string.format("%03d",i)), false)
					plOverwearBox:call("addPlOverwear", TransmogSet[0]:get_field("Overwear_Chest_" .. string.format("%03d",i)), false)
					plOverwearBox:call("addPlOverwear", TransmogSet[0]:get_field("Overwear_Arm_" .. string.format("%03d",i)), false)
					plOverwearBox:call("addPlOverwear", TransmogSet[0]:get_field("Overwear_Waist_" .. string.format("%03d",i)), false)
					plOverwearBox:call("addPlOverwear", TransmogSet[0]:get_field("Overwear_Leg_" .. string.format("%03d",i)), false)
				end
			end
		end
		
		if DEBUG_RESET then
			if imgui.button("Reset All Layered Armor") then
				log.info("[Transmog] Reset All")
				plOverwearBox:call("reset()")
			end
		end
		
		if plOverwearIdList ~= nil then
			TransmogSet[0] = plOverwearIdList[0]
			TransmogSet[1] = plOverwearIdList[1]
			TransmogSet[2] = plOverwearIdList[2]
			TransmogSet[3] = plOverwearIdList[3]
			TransmogSet[4] = plOverwearIdList[4]

			Int_Drag(0, 0)
			Int_Drag(1, 4096)
			Int_Drag(2, 8192)
			Int_Drag(3, 12288)
			Int_Drag(4, 16384)
		end
	end
end)

function UnlockArmor(slot, armorList)
	if armorList ~= nil then
		for i=0, 153 do -- Go through each armor piece in the list
			if DEBUG then  log.info(slot .. " = " .. i) end
			local item1 = armorList:call("get_Item(System.Int32)", i)
			
			if item1 ~= nil then
				local amount = item1:get_field("mSize")
				
				if amount >= 1 then -- Check to see if more than 0 of the armor piece is owned
					plOverwearBox:call("addPlOverwear", TransmogSet[0]:get_field("Overwear_" .. slot .. "_" .. string.format("%03d",armorID_layeredID[i])), false)
				end
			else
				log.info("[Transmog] " .. slot .. " " .. tostring(i) .. " item1 is nil")
			end
		end
	else
		log.info("[Transmog] " .. slot .. " ArmorList is nil")
	end
end

function Int_Drag(slot, minNum)
	local changed, value = imgui.drag_int(slot, TransmogSet[slot]:get_field("value__") - minNum, 1, 0, 127)
end