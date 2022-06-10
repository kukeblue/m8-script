function 碗子山巡逻()
while (true) do
	点击碗子山左上角()
	点击封妖()
	点击碗子山右上角()
	点击封妖()
	点击碗子山右下角()
	点击封妖()
	点击碗子山左下角()
	点击封妖()-- body
end

end


function 点击碗子山右上角()
mSleep(3000)
打开隐藏界面功能全部摊位()
点击小地图()
randomTap(1359, 319)
randomTap(1359, 319)
randomTap(1359, 319)
mSleep(4000)
randomTap(1457, 87)
end

function 点击碗子山右下角()
打开隐藏界面功能全部摊位()
点击小地图()
randomTap(1407, 930)
randomTap(1407, 930)
randomTap(1407, 930)
mSleep(4000)
randomTap(1457, 87)
end

function 点击碗子山左上角()
打开隐藏界面功能全部摊位()
点击小地图()
randomTap(1074, 240)
randomTap(1074, 240)
randomTap(1074, 240)
mSleep(4000)
randomTap(1457, 87)
end

function 点击碗子山左下角()
打开隐藏界面功能全部摊位()
点击小地图()
randomTap(1090, 735)
randomTap(1090, 735)
randomTap(1090, 735)
mSleep(4000)
randomTap(1457, 87)
end


function 点击封妖()
count = 1
显示器("点击封妖....")	
local tab = {
	"00e000000007800000003c03ffe001e03fff800f03ffff00781e00f803c0e003e01e07000f00f03800700781c003803c0e001c01e07000e00f03800700fe3c00381fffe001c0ffff000e07fff800700f83c003807c1e001c03e07000e01f03800700781c003803c0e001c01e07000e00f03e006007a1ffff003d0ffff801e83fffc00f40fffc007a000000019000000008800000f86400000781e00000@00$古$419$37$34",
}
local index = addTSOcrDictEx(tab)
while (true) do
	显示器(count)
	count = count + 1
	if count == 10 then
		break
	end
	x, y = tsFindText(index, "古",10,91,2246,1070, "F2E258 , 47452E # D5C53B , 2A2811 # DFCF45 , 34321B # E9D94F , 3E3C25 # F3E359 , 48462F # FDED63 , 525039", 80)
	if x>0 then
		显示器("古"..x..","..y)	
		tap(x - 100,y - 50, 50,"1.png")
		mSleep(500)
		if 少废话开打() then
			mSleep(1000)
			if 是否在战斗中2() then
				自动战斗()
				break
			end
		end
		点击关闭战斗后对话()
		x, y = tsFindText(index, "古",10,91,2246,1070, "F2E258 , 47452E # D5C53B , 2A2811 # DFCF45 , 34321B # E9D94F , 3E3C25 # F3E359 , 48462F # FDED63 , 525039", 80)
		if x>0 then
			显示器("古2"..x..","..y)	
			tap(x+30,y - 45)
			tap(x+30,y - 45)
			mSleep(500)
			if 少废话开打() then
				if 是否在战斗中2() then
					自动战斗()
				else
					点击关闭战斗后对话()
				end
				break
			end
			点击关闭战斗后对话()	
		end
		点击小地图()
		mSleep(200)
		randomTap(1462, 89, 3)
	end
end
end



function 少废话开打()

--内容已复制到剪贴板!
local tab = {
"0000007fc00001ffc3ffffffe0f0000000380000000e000000330080001cc070000e31fe00070c0780038300e001c0c03800e0300e01f04c0380783300e3fc0dc07ff807f7fffe01fdffdf807f7fe7f81cc038e706300e38e18c038e1fc300e383f0c038e07c360e381f0dc38e07c338e383f0c378f3fc30fe3fef0c3f87e06301e0001cc0380007300e0000@11$废$441$34$33",
}
local index = addTSOcrDictEx(tab)
for var= 1, 5 do
	x, y = tsFindText(index, "废", 1555,396,2180,953, "EAEEF0 , 151210 # F4F8FA , 1F1C1A # FEFFFF , 29231F", 90)
	if x > 0 then
		显示器('少废话开打')
		randomTap(x,y,1)
		return true
	end
end
return false
end




