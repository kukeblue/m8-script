function 碗子山坐标寻路(左边坐标, 右边坐标)
点击小地图()
mSleep(1000)
碗子山左边坐标键盘(左边坐标)
碗子山右边坐标键盘(右边坐标)
mSleep(1000)
randomTap(1462, 89, 3)
等待到达目的地(左边坐标, 右边坐标 )
end



function 碗子山左边坐标键盘(变量)
randomTap(985,136,3)
mSleep(500)					
for i=0,string.len(变量) do
	tn= string.sub(变量,i,i)
	mSleep(50)
	if tn=='0' then  tap( 1359,465)  mSleep(50) end
	if tn=='1' then  tap( 928,300)  mSleep(50)  end
	if tn=='2' then  tap( 1070,314)  mSleep(50)  end
	if tn=='3' then  tap( 1220,307)  mSleep(50)  end
	if tn=='4' then  tap( 924,446)  mSleep(50)  end
	if tn=='5' then  tap( 1082,451)  mSleep(50)  end
	if tn=='6' then  tap( 1227,457)  mSleep(50)  end
	if tn=='7' then  tap( 934,591)  mSleep(50)  end
	if tn=='8' then  tap( 1077,592)  mSleep(50)  end
	if tn=='9' then  tap( 1230,597)  mSleep(50)  end
end
mSleep(500)	
end

function 建业城快速寻路(左边坐标, 右边坐标)
    点击小地图()
    左下角位置 = {254, 889}
    左下角坐标 = {0, 0}
    右上角位置 = {1663, 189}
    右上角坐标 = {285, 141}
    单位X距离的像素 = (1663 - 254) / 285
    单位Y距离的像素 = (889 - 189) / 141
    坐标点X位置 = math.floor(tonumber(左边坐标) * 单位X距离的像素 + 254)
    坐标点Y位置 = math.floor(889 - tonumber(右边坐标) * 单位Y距离的像素)
    tap(坐标点X位置,坐标点Y位置)
    mSleep(1000)
end

function 建邺城坐标寻路(左边坐标, 右边坐标)
    建业城快速寻路(左边坐标, 右边坐标)
    点击小地图()
    mSleep(1000)
    建邺城左边坐标键盘(左边坐标)
    建邺城右边坐标键盘(右边坐标)
    mSleep(1000)
    randomTap(1699, 76, 3)
    等待到达目的地(左边坐标, 右边坐标 )
end
function 建邺城右边坐标键盘(变量)
    randomTap(610,120,3)
    mSleep(1000)	
    randomTap(610,120,3)
    mSleep(1000)				
    for i=0,string.len(变量) do
        tn= string.sub(变量,i,i)
        mSleep(50)
        if tn=='0' then  tap( 1030,445)  mSleep(50) end
        if tn=='1' then  tap( 565,306)  mSleep(50)  end
        if tn=='2' then  tap( 719,306)  mSleep(50)  end
        if tn=='3' then  tap( 871,302)  mSleep(50)  end
        if tn=='4' then  tap( 570,448)  mSleep(50)  end
        if tn=='5' then  tap( 719,442)  mSleep(50)  end
        if tn=='6' then  tap( 875,449)  mSleep(50)  end
        if tn=='7' then  tap( 561,589)  mSleep(50)  end
        if tn=='8' then  tap( 718,589)  mSleep(50)  end
        if tn=='9' then  tap( 873,592)  mSleep(50)  end
        mSleep(100)
    end
    mSleep(1000)
    randomTap(796,130,3)
    mSleep(300)
    randomTap(796,130,3)
end
function 建邺城左边坐标键盘(变量)
    randomTap(591,134,3)
    mSleep(1000)					
    for i=0,string.len(变量) do
        tn= string.sub(变量,i,i)
        mSleep(50)
        if tn=='0' then  tap( 990,452)  mSleep(50) end
        if tn=='1' then  tap( 544,306)  mSleep(50)  end
        if tn=='2' then  tap( 698,300)  mSleep(50)  end
        if tn=='3' then  tap( 843,302)  mSleep(50)  end
        if tn=='4' then  tap( 546,446)  mSleep(50)  end
        if tn=='5' then  tap( 691,445)  mSleep(50)  end
        if tn=='6' then  tap( 844,450)  mSleep(50)  end
        if tn=='7' then  tap( 545,595)  mSleep(50)  end
        if tn=='8' then  tap( 693,594)  mSleep(50)  end
        if tn=='9' then  tap( 842,598)  mSleep(50)  end
        mSleep(100)
    end
    mSleep(1500)
end

function 碗子山右边坐标键盘(变量)
randomTap(1182,130,3)
mSleep(500)	
randomTap(1182,130,3)
mSleep(500)
for i=0,string.len(变量) do
	tn= string.sub(变量,i,i)
	mSleep(50)
	if tn=='0' then  tap( 1563,452)  mSleep(50) end
	if tn=='1' then  tap( 1109,296)  mSleep(50)  end
	if tn=='2' then  tap( 1261,310)  mSleep(50)  end
	if tn=='3' then  tap( 1422,301)  mSleep(50)  end
	if tn=='4' then  tap( 1133,462)  mSleep(50)  end
	if tn=='5' then  tap( 1270,460)  mSleep(50)  end
	if tn=='6' then  tap( 1398,441)  mSleep(50)  end
	if tn=='7' then  tap( 1110,581)  mSleep(50)  end
	if tn=='8' then  tap( 1266,598)  mSleep(50)  end
	if tn=='9' then  tap( 1409,596)  mSleep(50)  end
end
mSleep(500)
randomTap(1356,136,3)
mSleep(300)
randomTap(1356,136,3)
randomTap(1356,136,3)
end


-- 长安寻路
function 长安坐标寻路(左边坐标, 右边坐标)
点击小地图()
mSleep(1000)
长安左边坐标键盘(左边坐标)
长安右边坐标键盘(右边坐标)
mSleep(1000)
randomTap(1823, 97, 3)
等待到达目的地(左边坐标, 右边坐标 )
end


function 长安左边坐标键盘(变量)
randomTap(614,141,3)
mSleep(500)					
for i=0,string.len(变量) do
	tn= string.sub(变量,i,i)
	mSleep(50)
	if tn=='0' then  tap( 1000,464)  mSleep(50) end
	if tn=='1' then  tap( 574,322)  mSleep(50)  end
	if tn=='2' then  tap( 724,317)  mSleep(50)  end
	if tn=='3' then  tap( 858,315)  mSleep(50)  end
	if tn=='4' then  tap( 547,457)  mSleep(50)  end
	if tn=='5' then  tap( 691,450)  mSleep(50)  end
	if tn=='6' then  tap( 851,453)  mSleep(50)  end
	if tn=='7' then  tap( 562,594)  mSleep(50)  end
	if tn=='8' then  tap( 716,588)  mSleep(50)  end
	if tn=='9' then  tap( 875,595)  mSleep(50)  end
end
mSleep(500)	
end



function 长安右边坐标键盘(变量)
randomTap(803,137,3)
mSleep(500)	
randomTap(803,137,3)
mSleep(500)
for i=0,string.len(变量) do
	tn= string.sub(变量,i,i)
	mSleep(50)
	if tn=='0' then  tap( 1219,459)  mSleep(50) end
	if tn=='1' then  tap( 754,319)  mSleep(50)  end
	if tn=='2' then  tap( 895,321)  mSleep(50)  end
	if tn=='3' then  tap( 1056,318)  mSleep(50)  end
	if tn=='4' then  tap( 765,449)  mSleep(50)  end
	if tn=='5' then  tap( 911,452)  mSleep(50)  end
	if tn=='6' then  tap( 1064,457)  mSleep(50)  end
	if tn=='7' then  tap( 750,602)  mSleep(50)  end
	if tn=='8' then  tap( 890,596)  mSleep(50)  end
	if tn=='9' then  tap( 1064,595)  mSleep(50)  end
end
mSleep(500)
randomTap(997,139,3)
mSleep(300)
randomTap(997,139,3)
end




当前寻路坐标 = ''
寻路坐标预警次数 = 0
当前是否模糊寻路 = false
function 等待到达目的地(达目的地x, 达目的地y)
mSleep(1500)
count=120
到达目的地=false
while (到达目的地 == false) do
	count = count - 1
	显示器('倒计时:'..count)
	local ret = 达目的地x..达目的地y
	if(当前是否模糊寻路) then
		local 坐标 =  返回屏幕当前坐标2()
		if 坐标 == nil then
			寻路坐标预警次数 = 寻路坐标预警次数 + 1
			if 寻路坐标预警次数 > 20 then
				弹出警告('寻路卡死')
				httpSendTaskLogAsyn('error', '寻路卡死')
				break
			end
		else
			local 坐标距离x = math.abs(tonumber(坐标[1]) - tonumber(达目的地x))
			local 坐标距离y = math.abs(tonumber(坐标[2]) - tonumber(达目的地y))
			local 坐标距离 = math.sqrt(坐标距离x * 坐标距离x + 坐标距离y * 坐标距离y)
			if 坐标距离 < 30 then
				显示器('即将到达目的地')
				mSleep(5000)
				到达目的地 = true
				break
			end
		end
	else
		local 坐标2 = 返回屏幕当前坐标()
		if 当前寻路坐标 == 坐标2 then
			寻路坐标预警次数 = 寻路坐标预警次数 + 1
			if 寻路坐标预警次数 > 20 then
				弹出警告('寻路卡死')
				httpSendTaskLogAsyn('error', '寻路卡死')

			end
		else
			当前寻路坐标 = 坐标2
			寻路坐标预警次数 = 0
		end
		if 返回屏幕当前坐标()==ret or count==0 then
			到达目的地 = true
			mSleep(500)
			break
		end
	end
	mSleep(1000)
end
当前是否模糊寻路 = false
end
function 大唐国境坐标寻路(左边坐标, 右边坐标)
点击小地图()
mSleep(1000)
大唐国境左边坐标键盘(左边坐标)
大唐国境右边坐标键盘(右边坐标)
mSleep(1000)
randomTap(1712,46,3)
等待到达目的地(左边坐标, 右边坐标 )
end

function 大唐国境左边坐标键盘(变量)
randomTap(727,90,3)
mSleep(1000)					
for i=0,string.len(变量) do
	tn= string.sub(变量,i,i)
	mSleep(50)
	if tn=='0' then  tap( 1127,411)  mSleep(50) end
	if tn=='1' then  tap( 672,271)  mSleep(50)  end
	if tn=='2' then  tap( 816,276)  mSleep(50)  end
	if tn=='3' then  tap( 973,272)  mSleep(50)  end
	if tn=='4' then  tap( 670,418)  mSleep(50)  end
	if tn=='5' then  tap( 816,413)  mSleep(50)  end
	if tn=='6' then  tap( 964,411)  mSleep(50)  end
	if tn=='7' then  tap( 665,552)  mSleep(50)  end
	if tn=='8' then  tap( 826,549)  mSleep(50)  end
	if tn=='9' then  tap( 963,549)  mSleep(50)  end
end
mSleep(1000)	
end


function 大唐国境右边坐标键盘(变量)
randomTap(926,94,3)
mSleep(1000)	
randomTap(926,94,3)
mSleep(1000)
for i=0,string.len(变量) do
	tn= string.sub(变量,i,i)
	mSleep(50)
	if tn=='0' then  tap( 1322,415)  mSleep(50) end
	if tn=='1' then  tap( 863,266)  mSleep(50)  end
	if tn=='2' then  tap( 1020,264)  mSleep(50)  end
	if tn=='3' then  tap( 1164,266)  mSleep(50)  end
	if tn=='4' then  tap( 876,409)  mSleep(50)  end
	if tn=='5' then  tap( 1010,404)  mSleep(50)  end
	if tn=='6' then  tap( 1157,414)  mSleep(50)  end
	if tn=='7' then  tap( 865,546)  mSleep(50)  end
	if tn=='8' then  tap( 1018,568)  mSleep(50)  end
	if tn=='9' then  tap( 1163,565)  mSleep(50)  end
end
mSleep(1000)
randomTap(1100,99,3)
mSleep(300)
randomTap(1100,99,3)
end