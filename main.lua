require("TSLib")
require("config")
require("仓库")
require("颜色")
require("文字")
require("任务")
require("坐标寻路")
require("流程封妖")
require("流程师门")
require("流程打图")
require("network")
init(1);


function UI界面()
	w,h = getScreenSize()
	UINew("梦幻西游打图","开始","退出","uiconfig1.dat",0,120,1080,1920,"248,248,255","248,248,255",userPath().."/res/50.png")
	UILabel("模拟器分辨率1080X1920  模拟器版本4.0.11",15,"left","255,20,147",500,0)
	UILabel("运行模式",15,"left","255,20,147",200,1)
	UICombo("process","主线打图,继续打图,主线卖图,主线分图,主线买图分图,主线抓鬼,主线封妖,退出游戏","",600)
	UIShow()
end

w,h = getScreenSize();
function start()
	UI界面()
	显示器("即将开始脚本")
	if process=="主线打图" then
		显示器("主线打图")
		登录梦幻西游()
        流程打图() 
	elseif process=="继续打图" then
		显示器("继续打图")
		流程打图()
	elseif process=="主线封妖" then
		显示器("主线封妖")
		碗子山巡逻()
	elseif process=="主线抓鬼" then
		显示器("主线抓鬼")
	elseif process=="主线分图" then
		显示器("主线分图")
		自动分图()
	elseif process=="主线买图分图" then
		显示器("主线分图")
		自动买宝图并分图()
	elseif process=="退出游戏" then
		显示器("退出游戏")
	end
	toast('启动脚本', 3)
	mSleep(3000)
end
--导航长安酒店门口()
--dialog(地图仓库对应关系["花果山"])
--选择仓库(25)
--导航朱紫国大唐境外()
-- start()
发图()
mSleep(3000);

