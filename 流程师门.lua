

function 交任务并领取(是否二次点击)
回师门()
领取师门任务()
if 是否二次点击 == true then
	领取师门任务()
end
end

function 回师门()
坐标 = 返回屏幕当前坐标()
for var= 1, 3 do
	randomTap(1829, 988, 3)
	mSleep(1000)
	randomTap(1936, 853, 3)
	mSleep(2000)
	坐标2 = 返回屏幕当前坐标()
	if 坐标 ~= 坐标2 then
		return
	end
	mSleep(1000)
end
end

function 领取师门任务()
关闭对话框={ 2102,804,0xa0c0c8, 2103,804,0xa0c0c8}
randomTap(2003, 393)
while (true) do
	mSleep(1000)
	if bise_mo(关闭对话框) then
		nLog('关闭对话框')
		randomTap(2104,804,3)
		break
	end
end
end

function 师门任务()
回师门()
领取师门任务()
--while (true) do
	mSleep(1000)
执行师门任务()
--end
end


function 执行师门任务()
任务 = 百度文字识别(1833,305,2154,653)
while (true) do
	dialog(任务)
	mSleep(1000)
	if  string.find(任务,"品质") then
		显示器("购买三药")	
		购买三药()
		交任务并领取(true)
		break
	elseif  string.find(任务,"抓到") then
		显示器("抓到")	
		购买召唤兽()
		交任务并领取(true)
		break
	elseif  string.find(任务,"乾坤袋") then
		显示器("乾坤袋")	
		收服任务(任务)
		交任务并领取(true)
		break
	elseif  string.find(任务,"示威") then
		显示器("示威")	
		示威任务(任务)
		break
	elseif  string.find(任务,"苦战中") then
		显示器("苦战中")	
		同门任务(任务)
		break
	end
end
end


function 同门任务(任务)
任务导航(任务)
助你一臂之力={ 1810,502,0x385468, 1811,502,0x385468, 1812,502,0x385468, 1813,502,0x385468, 1821,502,0x385468, 1822,502,0x385468, 1823,502,0x8293a0, 1824,502,0xe7ebed, 1835,502,0x385468}
while (true) do
	mSleep(1000)
	if bise_mo(助你一臂之力) then
		显示器('助你一臂之力')
		tap(1836,502)
		break
	end
end
mSleep(1000)
自动战斗()
end

function 购买三药()
导航到长安驿站()
长安坐标寻路('321', '13')
等待人工操作()
end

function 示威任务(任务)
if  string.find(任务,"地府") then
	显示器("地府")	
	导航到地府()
end
end

function 购买召唤兽(任务)
导航到长安驿站()
长安坐标寻路('321', '13')
等待人工操作()
end

function 收服任务(任务)
任务导航(任务)
end

function 等待人工操作()
任务栏关闭按钮={ 1742,97,0x183850, 1743,97,0x183850, 1744,97,0x183850, 1745,97,0x183850}
while (true) do
	mSleep(1000)
	if bise_mo(任务栏关闭按钮) then
		nLog('任务栏关闭按钮')
		tap(1746,97)
		break
	end
end
end





















