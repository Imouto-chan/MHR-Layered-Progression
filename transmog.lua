local thing = 1
local things = { "hi", "hello", "howdy", "hola", "aloha" }


local head1 = 100
local TransmogSet = {}

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
				item1 = armorArray:call("get_Item(System.Int32)", 0)
				if item1 ~= nil then
					log.info("not nil3 = " .. item1:get_field("mSize"))
				end
			end
		end
    end
	
	if imgui.button("Unlock All Layered Armor") then
		log.info("[Transmog] Unlock All")
		TransmogSet[0] = plOverwearIdList[0]
		-- Unlock all
		for i=0, 127 do
			dataTest:call("addPlOverwear", TransmogSet[0]:get_field("Overwear_Head_" .. string.format("%03d",i)), false)
			dataTest:call("addPlOverwear", TransmogSet[0]:get_field("Overwear_Chest_" .. string.format("%03d",i)), false)
			dataTest:call("addPlOverwear", TransmogSet[0]:get_field("Overwear_Arm_" .. string.format("%03d",i)), false)
			dataTest:call("addPlOverwear", TransmogSet[0]:get_field("Overwear_Waist_" .. string.format("%03d",i)), false)
			dataTest:call("addPlOverwear", TransmogSet[0]:get_field("Overwear_Leg_" .. string.format("%03d",i)), false)
			--log.info("Overwear_Head_" .. string.format("%03d",i))
		end
    end
	
	if dataTest ~= nil then
		--log.info("91 " .. tostring(dataTest:call("hasPlOverwear", 91)))
		--dataTest:call("addPlOverwear",2,true)
	end
	
	if plOverwearIdList ~= nil then
		--TransmogSet["Head"] = plOverwearIdList[0]:get_field("value__")
		--TransmogSet[0] = plOverwearIdList[0]
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

    local changed, new_thing = imgui.combo("Greeting", thing, things) 
    if changed then thing = new_thing end
end)

function Int_Drag(slot, minNum, maxNum)
	local changed, value = imgui.drag_int(slot, TransmogSet[slot]:get_field("value__"), 1, minNum, maxNum)
	if changed then
		TransmogSet[slot]:set_field("value__", value)
	end
end