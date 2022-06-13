function 显示器(信息)
local 信息=信息 or "未知界面"
fwShowWnd("wid1",50,1,1515,48,1)
fwShowTextView("wid1","textid",信息,"center","FFFFFF","FF0000",12,1,892,1,1415,48,1)
end

function bise_mo(arg)
	local fl,abs = math.floor,math.abs
	local s = fl(0xff*0.05)
	for i=1,#arg,3 do
		local r,g,b = fl(arg[i+2]/0x10000),fl(arg[i+2]%0x10000/0x100),fl(arg[i+2]%0x100)
		local rr,gg,bb = getColorRGB(arg[i],arg[i+1])
		if abs(r-rr)>=s or abs(g-gg)>=s or abs(b-bb)>=s then
			return false
		end
	end
	return true
end

function 打开隐藏界面功能全部摊位()
while(true) do
	if bise_mo(隐藏界面功能全部摊位按钮_开启) then
		显示器('隐藏界面功能全部摊位按钮_开启')
		break
	else
		if bise_mo(隐藏界面功能全部摊位按钮_关闭) then
			显示器('隐藏界面功能全部摊位按钮_关闭')
			randomTap(472,991,1)
			mSleep(200)
		else
			打开隐藏界面功能()
		end
	end
	mSleep(200)
end
end

function 打开追踪任务栏()
    if bise_mo(任务栏展开按钮) then
        显示器('任务栏展开按钮')
        randomTap(2123,310,3)
    end
end

仓库下接受组队={ 1931,869,0x675256, 1932,869,0x675256, 1933,869,0x675256, 1934,869,0x675256, 1935,869,0x675256, 1936,869,0x60474c, 1937,869,0x4d272f, 1938,869,0x451a24, 1939,869,0x4e2a31}
function 接受组队()
if bise_mo(仓库下接受组队) then
	nLog('仓库下接受组队')
	return true
end
end

function 打开隐藏界面功能()
    dialog("打开隐藏界面功能")
while(true) do
	关闭隐藏界面功能隐藏界面()
	if bise_mo(隐藏界面功能返回按钮) then
		显示器('隐藏界面功能返回按钮')
		break
	else
		if bise_mo(隐藏界面功能按钮) then
			显示器('隐藏界面功能按钮')
			tap(136,363)
		else
			tap(136,363)
		end
		mSleep(100)
	end
	mSleep(200)
end
end

function 关闭隐藏界面功能隐藏界面()
if bise_mo(隐藏界面功能隐藏界面_开启) then
	nLog('隐藏界面功能隐藏界面')
	randomTap(159,822,3)
	mSleep(500)
end
end

function 打开道具栏()
if bise_mo(底部菜单_打开) then
	toast('底部菜单_打开')
	randomTap(2079,987,3)
end
end

function 处理弹出成语()
    local tab = {
        "6200800e0c701003c38fe203f0701c60f00e000cfe01e07bffe03fffffffffffffffffffffffffdc07bff80380633e00703c40f00c3f880e0106010000008020000000000100000600300001c10603803860e078070c1c0fe0c18381ee30307038fe060e070fe1e3c0e0fffffffc1ffffffb83e7ffff70fc1c3c0e3f818381ee3030703f83060e07e070c1c0f80e18380401c00700003800c0000000000000000000000000000000000000000000000000000000000000100000000300000000c1f00000381f00000703fe0000e003c00038003f800e0000f001c0000f80780000781e000007838000003cf0200003fc0600003f00f80003e00f0000fc00f8003f8003000ff0002003f7800000f07000007e0e00001e00e0001f800e0007c001c00ff0003803f0000383fc000038700000070c000000e00000000e00000000e00000001@11$释义$773$35$74",
    }
    local index = addTSOcrDictEx(tab)
    存在成语=false
    for var= 1, 3 do
        x, y = tsFindText(index, "释义", 514,75,1518,782, "FFFF36 , 3F3E36 # EAEA0E , 2A290E # F4F418 , 343318 # FEFE22 , 3E3D22 # FFFF2C , 3F3E2C # FFFF36 , 3F3E36", 90)
        mSleep(100)
        if x > 0 then
            存在成语=true
            显示器('处理弹出成语')
            返回成语()
            mSleep(500)
            break
        end
    end
    while (存在成语==true) do
        x2, y2 = tsFindText(index, "释义", 514,75,1518,782, "FFFF36 , 3F3E36 # EAEA0E , 2A290E # F4F418 , 343318 # FEFE22 , 3E3D22 # FFFF2C , 3F3E2C # FFFF36 , 3F3E36", 90)
        mSleep(100)
        if x2 > 0 then
            显示器('处理弹出成语2')
            弹出警告('弹出成语')
            -- 速安打码点击()
        else
            显示器('处理完弹出成语')
            httpSendTaskLogAsyn('info', '处理完弹出成语')
            存在成语=false
            break
        end
        mSleep(1000)
    end
end

function 处理弹出漂浮文字()
    --内容已复制到剪贴板!
    local tab = {
        "000000600406001c0080c03f0030181fc00703fff000e0fffe001fffffffffcfffc000f03fe0001c061c000300c1e00000000c0000000080000000000000602000001c0c06000701818061c070701c700e0c039c0183806f3030f00ce70e38039873fe186107ffc39c207ff83f84078703e080e0e03c101c0c07020f0181c0638030780ff0061e01f800c7003c001fc0000003e00000007800@0$移动$386$35$35",
    }
    local index = addTSOcrDictEx(tab)


    存在漂浮文字=false
    for var= 1, 3 do
        x, y = tsFindText(index, "移动",514,75,1518,782, "FFFFFF , 343232 # EFF0F0 , 242323 # FFFFFF , 343232 # FFFFFF , 343232 # FFFFFF , 343232", 90)
        mSleep(100)
        if x > 0 then
            存在漂浮文字=true
            显示器('存在漂浮文字')
            弹出警告('弹出漂浮文字')
            break
        end
    end
    while (存在漂浮文字==true) do
        x, y = tsFindText(index, "移动",514,75,1518,782, "FFFFFF , 343232 # EFF0F0 , 242323 # FFFFFF , 343232 # FFFFFF , 343232 # FFFFFF , 343232", 90)
        mSleep(100)
        if x > 0 then
            显示器('处理弹漂浮文字')
            弹出警告('弹出漂浮文字')
            -- 速安打码点击()
        else
            显示器('处理完漂浮文字')
            存在成语=false
            httpSendTaskLogAsyn('info', '处理完漂浮文字')
            break
        end
        mSleep(1000)
    end
end


function 返回屏幕当前坐标()
local ret = tsOcrText(左上角地图坐标字库, 208,72,407,146, "C0CFD4 , 534744", 90)
if(ret=='') then
	local ret = tsOcrText(左上角地图坐标字库, 208,72,407,146, "C0CFD4 , 534744", 90)
end
ret = string.gsub(ret, "，", "")
return ret
end

function 打开道具()
if bise_mo(道具行囊文字) then
	显示器('道具已打开')
	return
end
while (true) do
	if bise_mo(底部菜单_打开) then
		打开道具栏()
	else
		if bise_mo(道具) then
			显示器('打开道具')
			randomTap(1941,971,3)
			break
		end
	end
	mSleep(200)
end
end

function 关闭道具栏()
if bise_mo(底部菜单_关闭) then
	显示器('底部菜单_关闭')
	randomTap(2059,969,3)
end
end

function 关闭道具()
if bise_mo(道具关闭按钮) then
	显示器('道具关闭按钮')
	randomTap(1752,97,3)
end
end


function 点击使用道具精准()
local tab = {
	"00008000000060000000f80000007e000001ffc00000fffffffffffffffff0000000f800000000000000000000001c607e0007387fff01ce3c1fe0738e03de18e380e1c638e0387f8e380e0fe38e0381f0e380e07c38e0381e1f7c1f1f8ffffffff3ffffff1c7fffff070e380e00c38e038038e380e00e38e038018e380e00638e038018e380e00738e07801ce3ffe007383fe001ce000000700000001c00000002000000000000000000000000000000001f0000001f8fffffffc3ffffff03ffffff00f0781e00380e02000e0380800380e02000e0380800380e02000e0380800380e02000e0380800380e03000f07c1e003fffffffeffffffffbfffffffce0381c00380e02000e0380800380e02006e0380801b80e02006e0380801b80e02007e0380801f80e03007f0381e03fc1f07c1e7fffffff8fffffff8$使用$964$34$74",
}
local index = addTSOcrDictEx(tab)
x, y = tsFindText(index, "使用", 394,134,1036,827, "EFF2F5 , 25211F # F9FCFF , 2F2B29 # FFFFFF , 352E29 # FFFFFF , 352E29", 90)
if x > 0 then
	tap(x, y)
	return true
end
return false
end

function chRandomsTap(x,y)
	randomTap(x,y,3, '', 1, 10)
end

飞行符地图界面={ 1743,277,0x2e5574, 1744,277,0x264965, 1745,277,0x1f405a, 1746,277,0x1f405a, 1747,277,0x183850, 1748,277,0x183850, 1749,277,0x183850, 1750,277,0x183850, 1751,277,0x183850}

function 使用飞行符(x1, y1)
while (true) do
	if bise_mo(飞行符地图界面) then
		显示器('飞行符地图界面')
		randomTap(x1, y1)
		mSleep(1000)
		关闭道具()
		if bise_mo(飞行符地图界面) then
		else
			break
		end
	else
		if 点击使用道具精准() then
			显示器('飞行符使用按钮')
			mSleep(1000)
			randomTap(x1, y1)
			mSleep(500)
			关闭道具()
			break
		else
			if bise_mo(飞行符) then
				显示器('飞行符')
				randomTap(1255,329,3)
			else
				打开道具()
			end	
		end
	end
	mSleep(200)
end
end

function 使用导标旗(地点, px, py, 目地坐标)
local 使字 = {
	"0000200000000380000000fc0000001fe0000007ff800000fffffffdffffffffeffffffffffffffffff7f80000001f8000000e18000000f1e1ffdc078f3ffff03c79ffffe1e3cf87ff1f1e7c1ffff0f3c0f1ff879e0787fc3cf03c3fc1e781e0fe0f3c0f07f1ffffffff9ffffffffcffffffffe7ffffffcf1ffffff8783cf03c03c1e781e01f0f3c0f00f879e07803c3cf03c01f1e781e00f8f3e0f007c79fff803e3cfffc01f1e3ffc0078f07fc003c30000001e00000000e000000002@0$使$797$37$41",
}
local tab = {
	"0800000e01000001c0203fe038040c1c06008381808010701010020e02020041c0404008380838010701070020e020e0041c0418008380820e10701041820e02182041c0470c083ff8e38100000060200000380400000701c00001e07c0000703ffff81e00601f07000801ffe0010007fc0020007fe044000c0c08801f80f9100700073e0fe000f1c100001f38000001e100000070200000fe0000000000000000000000000000000000000000000000200000800400007300f000fe3007001c0300607f0010000c00020000800000000000000f8000000300000000e00000003c00000fff8fffff04719c70208e218e0411c4118082388220104710440208e20880411c4110082388220104f1044020fe20882401c4110680388220f00710441e00e20883c01c41187c038fe38f8071fcfb3ffe3fffe001c40000003880000001b00000003e0000@0$或滑$619$35$75",
}
local index = addTSOcrDictEx(tab)
while(true) do
	if(返回屏幕当前坐标()==目地坐标) then
		break
	else
		x, y = tsFindText(index, "或滑", 913,39,1755,277, "FFFFFF , 151414 # FFFFFF , 151414 # FFFFFF , 151414 # FFFFFF , 151414 # FFFFFF , 151414", 80)
		if x > 0 then
			tap(px,py)
			mSleep(1000)
			关闭道具()
		else
			if 点击使用道具精准() then
				显示器('点击使用道具精准')
				mSleep(1000)
			else
				打开道具()
				if(地点=='傲来国') then
					if bise_mo(道具黄色傲来国旗子) then
						显示器('道具黄色傲来国旗子')
						randomTap(1512,334,3)
					end
				end
				if(地点=='长寿村') then
					if bise_mo(道具绿色长寿村旗子) then
						显示器('道具绿色长寿村旗子')
						randomTap(1257,316,3)
					end
				end
				if(地点=='朱紫国') then
					if bise_mo(道具白色朱紫国) then
						显示器('道具白色朱紫国旗子')
						randomTap(1520,317,3)
					end
				end
				if(地点=='长安城') then
					if bise_mo(道具红色长安城旗子) then
					    
						显示器('道具红色长安城旗子')
						randomTap(1132,318,3)
					end
				end
			end        
		end
		mSleep(200)
	end
end
end


function 点击小地图()
randomTap(164, 77)
end 


function 点击关闭战斗后对话()
    for var= 1, 5 do
        x,y = findMultiColorInRegionFuzzy( 0x99bcc4,"4|0|0xa0c0c8,6|-4|0xa0c0c8,8|-6|0xa0c0c8,9|-7|0xa0c0c8,9|-1|0xa0c0c8,4|0|0xa0c0c8,4|-7|0xa0c0c8,11|-2|0xa0c0c8,11|1|0x9cbec8",80, 1972,583,2229,797)
        if x > 0 then
            显示器('点击关闭战斗后对话')
            randomTap(x,y)
            break
        end
    end
    mSleep(500)
end

自动战斗报警计数 = 0
function 自动战斗(是否是贼王)
自动战斗报警计数 = 0
local 是否进入战斗=false
while 是否进入战斗==false do
	if 自动战斗报警计数 > 10 then
		--httpSendTaskLogAsyn('info', '未进入自动战斗')
	end
	mSleep(1000)
	if 是否在战斗中2() then
		显示器('战斗中1')
		是否进入战斗=true
		if bise_mo(战斗自动按钮) then
			if 是否是贼王 then
				显示器('杀小兵')
				chRandomsTap(547,362)
				mSleep(1000)
				chRandomsTap(885,220,3)
				mSleep(200)
				chRandomsTap(885,220,3)
				mSleep(200)
				chRandomsTap(885,220,3)
			else
				显示器('点击自动按钮')
				chRandomsTap(2078,977,3) 
			end
		end
		break
	else
		自动战斗报警计数 = 自动战斗报警计数 + 1
		--处理弹出4小人()
	end
end
while 是否进入战斗 do
	显示器('战斗循环二')
	if bise_mo(战斗自动按钮) then
		显示器('点击自动按钮')
		randomTap(1851,981,3) 
	end
	if 是否在战斗中2() then
		显示器('战斗中2')
		mSleep(1000)
	else
		break
	end
end
点击关闭战斗后对话()
点击取消自动按钮()
end

function 是否在战斗中2()
for var= 1, 10 do
	if bise_mo(是否在战斗中) then
		显示器('是否在战斗中')
		return true
	end
	mSleep(200)
end
return false
end

function 点击取消自动按钮()
x,y = findMultiColorInRegionFuzzy( 0xf8f9fa,"2|0|0xcfd7db,4|0|0x8b9da7,5|-1|0x3a5969,8|-1|0xc2ccd1,10|-1|0xe4e8eb,11|0|0xced6da,14|0|0x486374,15|3|0x7a919e,18|-2|0x8498a2",90, 1628,503,2218,1051)
if x > 0 then
	显示器('点击取消自动按钮')
	tap(x,y)
end
end


------- 文字识别 -------
function 百度文字识别(x1, y1, x2 ,y2)
    require "TSLib"
    sz=require "sz"
    local m=TSVersions()
    local ts = require("ts")
    local a = ts.version()
    local tp = getDeviceType()
    local API  = "GOkNrLxVH3cV8I7DVpXx67mh"--替换1
    local Secret  = "9MTEeMd2nNcm457CsGTGNV5ddkISAuI1"--替换2
    local pic_name = userPath() .. "/res/baiduAI.jpg"
    snapshot(pic_name, x1, y1, x2 ,y2) --范围替换3
    local body=body or "未知界面"
    local tab={
        language_type="CHN_ENG",
        ocrType = 1,
    }
    local code1,access_token = getAccessToken(API,Secret)
    if code1 then
        local code2, body = baiduAI(access_token,pic_name,tab)
        if code2 then
            --nLog(body)
			
            b = ""
            for k, v in string.gmatch(body, 'words":"([^}]+)"}') do 
                if string.find(k,"%d") ~= nil then
                    b = b..k..'|'
                else
                    b = b..k
                end
            end
            -- 逗号全部换成英文
            b = string.gsub(b, "，", ",")
            b = string.gsub(b, "%.", ",")
            return b
        else
            显示器("识别失败\n" .. body)
        end
    else
        显示器("获取 access_token 失败\n" .. access_token)
    end
end



function 点击是的我要去()
    local tab = {
        "0000400020001c000c0003800380007000e7ff0e007dfff1c03e3fce38ff87f9c71fe0c238e3fc18471c018308e38038611c70038c238e00318471c007308e3800e611c7001cc238f003d8471ffffb08e3ffff611c79f1ec238e0c0d8471c181b08e38303611c70606c238e0c0d8471c181f08e38303f19c70607ff38e0c0ffff1c181fffe383038000704070000e000e0001c001c000380018000000000000000000000000000000000000000000001ffffff007ffffff00fffffff01c03e00e0f003000c1e0060019fc00c0037f8018006f7003000c0600600180c00c00301801800603ffffffc07ffffff80ffffffe003e0000000100000000600000007c0000001f0000007fc000019fe0700038380f80030700780070e007e0061c001f00c38001e018700000030e000000e1c000001c3800000f07000003e0fffffff80ffffff801fffff00@0$是的$920$35$75",
    }
    for var= 1, 3 do
        local index = addTSOcrDictEx(tab)
        x, y = tsFindText(index, "是的", 1602,380,2125,790, "F1F4F7 , 221F1D # FBFEFF , 2C2925 # FFFFFF , 302A25 # FFFFFF , 302A25", 90)
        if x > 0 then
            显示器('点击是的我要去')
            randomTap(x,y,1)
            mSleep(500)
            return true
        end

    end
    return false
end
function 精准获取坐标(b)
	c = string.gsub(b, "，", ",")
    c = string.match(c, '%d+,%d+')
    if string.find(c,"|") ~= nil then
        if string.find(c,",") ~= nil then
            c = string.gsub(c, "|", "")
        else
            c = string.gsub(c, "|", ",")
        end
    end
    
    if c==nil then
		显示器('精准获取坐标不完善')
		return nil
	end
    坐标x, 坐标y = c:match("(%d+),(%d+)")
    if (坐标x ~= nil and 坐标y ~= nil and string.len(坐标x) ~= nil and string.len(坐标y) ~= nil) then
		return {坐标x, 坐标y}
	end
end
function 点击任务栏()
	randomTap(2003, 393)
end
