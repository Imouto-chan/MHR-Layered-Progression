local thing = 1
local things = { "hi", "hello", "howdy", "hola", "aloha" }

local DEBUG = true

local head1 = 100
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
armorID_layeredID[20] = 12 -- Mosgharl
armorID_layeredID[21] = 12 -- Mosgharl
armorID_layeredID[22] = 12 -- Mosgharl
armorID_layeredID[23] = 12 -- Mosgharl
armorID_layeredID[24] = 13 -- Aelucanth
armorID_layeredID[25] = 13 -- Aelucanth
armorID_layeredID[26] = 14 -- Rhopessa
armorID_layeredID[27] = 14 -- Rhopessa
armorID_layeredID[28] = 15 -- Vaik
armorID_layeredID[29] = 15 -- Vaik
armorID_layeredID[30] = 16 -- Chaoshroom
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
armorID_layeredID[42] = 21 -- Utsushi
armorID_layeredID[43] = 21 -- Utsushi
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
armorID_layeredID[81] = 45 -- Bnahabra
armorID_layeredID[82] = 45 -- Bnahabra
armorID_layeredID[83] = 46 -- Bullfango
armorID_layeredID[84] = 46 -- Bullfango
armorID_layeredID[85] = 47 -- Remobra
armorID_layeredID[86] = 47 -- Remobra
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
armorID_layeredID[134] = 74 -- Skull
armorID_layeredID[135] = 75 -- Flame
armorID_layeredID[137] = 77 -- Shadow
armorID_layeredID[138] = 78 -- Jaggi
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

local plOverwearIdList = sdk.get_managed_singleton("snow.data.EquipDataManager"):get_field("_PlOverwearMySetData"):get_field("_PlOverwearIdList")
local dataTest = sdk.get_managed_singleton("snow.data.DataManager"):get_field("_PlOverwearBox")
local dataArmorTest = sdk.get_managed_singleton("snow.data.DataManager"):get_field("_PlEquipBox")

sdk.hook(sdk.find_type_definition("snow.data.EquipBox"):get_method("changeEquipment"), 
function(args)
	log.info("called")
    --local armorId = sdk.to_managed_object(args[2])
	--if armorId:get_field("value__") ~= nil then
	--	log.info(tostring(armorId:get_field("value__")))
	--end
end,
function(retval)
	return retval;
end
)

re.on_draw_ui(function()
	imgui.text("Transmog:")
    if imgui.button("Transmog") then 
        --imgui.begin_child_window(100, true)
		log.info("pushed")
		--TransmogSet[0] = plOverwearIdList[0]
		--sdk.get_managed_singleton("snow.data.EquipDataManager"):call("equipPlOverwear", TransmogSet[0]:get_field("Overwear_Head_105"))
		--dataTest:call("addPlOverwear", TransmogSet[0]:get_field("Overwear_Head_002"), false)
		
		--armorList = dataArmorTest:get_field("<EquipBoxArmorData>k__BackingField")
		--if armorList ~= nil then
		--	log.info("not nil")
		--	log.info(tostring(armorList[0][0]:get_field("mSize")))
		--end
		armorList = dataArmorTest:get_field("<EquipBoxArmorData>k__BackingField")
		if armorList ~= nil then
			--log.info("not nil = " .. tostring(armorList:call("get_Item()", 0):call("get_Count()")))
			log.info("not nil")
			armorArray = armorList:call("get_Item(System.Int32)", 0)
			if armorArray ~= nil then
				log.info("not nil2 = " .. armorArray:call("get_Count()"))
				for i=0, 153 do
					item1 = armorArray:call("get_Item(System.Int32)", i)
					if item1 ~= nil then
						amount = item1:get_field("mSize")
						if amount >= 1 then
							log.info("not nil3 = " .. amount .. "  i = " .. i)
						end
					end
				end
			end
		end
    end
	
	if imgui.button("Unlock All Layered Armor") then
		log.info("[Transmog] Unlock All")
		TransmogSet[0] = plOverwearIdList[0]
		-- Unlock all
		-- 127 all
		-- 86 non-dlc (not 76,77,79)
		for i=80, 86 do
			if i ~= 76 and i ~= 77 and i ~= 79 then  
				dataTest:call("addPlOverwear", TransmogSet[0]:get_field("Overwear_Head_" .. string.format("%03d",i)), false)
				dataTest:call("addPlOverwear", TransmogSet[0]:get_field("Overwear_Chest_" .. string.format("%03d",i)), false)
				dataTest:call("addPlOverwear", TransmogSet[0]:get_field("Overwear_Arm_" .. string.format("%03d",i)), false)
				dataTest:call("addPlOverwear", TransmogSet[0]:get_field("Overwear_Waist_" .. string.format("%03d",i)), false)
				dataTest:call("addPlOverwear", TransmogSet[0]:get_field("Overwear_Leg_" .. string.format("%03d",i)), false)
				--log.info("Overwear_Head_" .. string.format("%03d",i))
			end
		end
    end
	
	if DEBUG then
		if imgui.button("Reset All Layered Armor") then
			log.info("[Transmog] Reset All")
			dataTest:call("reset()")
		end
	
		if dataTest ~= nil then
			--log.info("91 " .. tostring(dataTest:call("hasPlOverwear", 91)))
			--dataTest:call("addPlOverwear",2,true)
		end
		
		if plOverwearIdList ~= nil then
			--TransmogSet["Head"] = plOverwearIdList[0]:get_field("value__")
			TransmogSet[0] = plOverwearIdList[0]
			TransmogSet[1] = plOverwearIdList[1]
			TransmogSet[2] = plOverwearIdList[2]
			TransmogSet[3] = plOverwearIdList[3]
			TransmogSet[4] = plOverwearIdList[4]
			
			--TransmogSet[0]:set_field("value__", TransmogSet[0]:get_field("Overwear_Head_105"))
			
			--sdk.get_managed_singleton("snow.data.EquipDataManager"):call("equipPlOverwear", TransmogSet[0]:get_field("Overwear_Head_105"))
			
			Int_Drag(0, 0, 127)
			Int_Drag(1, 4096, 4223)
			Int_Drag(2, 8192, 8319)
			Int_Drag(3, 12288, 12415)
			Int_Drag(4, 16384, 16511)
		end
	end

    local changed, new_thing = imgui.combo("Greeting", thing, things) 
    if changed then thing = new_thing end
end)

function Int_Drag(slot, minNum, maxNum)
	local changed, value = imgui.drag_int(slot, TransmogSet[slot]:get_field("value__") - minNum, 1, 0, 127)
	if changed then
		--TransmogSet[slot]:set_field("value__", value)
	end
end