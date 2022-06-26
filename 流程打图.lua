require("坐标寻路")
打图任务次数 = 1
完成打图任务 = false 
function 流程打图()
    -- httpSendTaskLog('info', '流程打图')
    while (完成打图任务 == false) do
        打图()
        mSleep(500)
    end
    -- httpSendTaskLog('info', '流程打图完成')
end
function 获取打图次数(任务, 是否是贼王)
    if 是否是贼王 then
        httpSendTaskLogAsyn('info', '遇到贼王')
    else
        local number = string.match(任务, '已领取(%d+)次')
        if number then
            -- 当前获取打图次数 = number
            return number
        end
    end
end
打图任务数 = 0
function 打图()
    匹配地图名=nil
    点击顶部菜单缩进按钮()
    while (true) do
        if 打图任务数 ~= nil and tonumber(打图任务数) > 39 then
            完成打图任务 = true
            break
        end
        打开追踪任务栏()
        打开道具栏()
        mSleep(1000)
        local 任务=nil
		任务=读取任务追踪栏文字()
		dialog(任务)
        if string.find(任务, "挖宝") then
            显示器('任务栏绿色挖宝文字')
        else
            领取宝图任务()
            break
        end
		dialog('?????1')
        任务坐标 = 精准获取坐标(任务)
		dialog('?????2')
        是否是贼王 =string.find(任务, "贼")
        if 任务坐标==nil and 是否是贼王==nil then
            显示器('读取任务信息不完善')
            break
        end
        if(任务坐标~=nil)then
            坐标x = 任务坐标[1]
            坐标y = 任务坐标[2]
            if (坐标x ~= nil and 坐标y ~= nil and string.len(坐标x) ~= nil and string.len(坐标y) ~= nil) or 是否是贼王~= nil then
                打图任务数 = 获取打图次数(任务, 是否是贼王)
				dialog('?????')
                if bise_mo(隐藏界面功能返回按钮) then
                    显示器('隐藏界面功能返回按钮')
                    randomTap(69,947,3)
                end
                if  string.find(任务,"长安酒店二楼") then
                    显示器("长安酒店二楼")	
                    导航长安酒店二楼()
                    点击强盗("地府", 坐标x, 坐标y, 是否是贼王)
                elseif string.find(任务,"长寿村当铺") then
                    显示器("长寿村当铺")
                    导航到长寿村当铺内()
                    点击强盗("长寿村当铺", 坐标x, 坐标y, 是否是贼王)
                elseif  string.find(任务,"长安饰品店") then
                    显示器("长安饰品店")	
                    导航到长安饰品店内()
                    点击强盗("长安饰品店", 坐标x, 坐标y, 是否是贼王)
                elseif  string.find(任务,"长寿村酒店") then
                    显示器("长寿村酒店")	
                    导航到长寿村酒店内()
                    点击强盗("长寿村酒店", 坐标x, 坐标y, 是否是贼王)
                elseif  string.find(任务,"建") and string.find(任务,"杂货") then
                    显示器("建业邺杂货店")	
                    导航到建邺城杂货店()
                    点击强盗("建业邺布店", 坐标x, 坐标y, 是否是贼王)
                elseif  string.find(任务,"建") and string.find(任务,"布店") then
                    显示器("建业布店")	
                    导航到建邺城布店()
                    点击强盗("建业邺布店", 坐标x, 坐标y, 是否是贼王)
                elseif  string.find(任务,"国子监") then
                    显示器("国子监")	
                    导航到长安国子监()
                    点击强盗("长安国子监", 坐标x, 坐标y, 是否是贼王)
                elseif  string.find(任务,"长安杂货店") then
                    显示器("长安杂货店")	
                    导航到长安杂货店内()
                    点击强盗("长安杂货店", 坐标x, 坐标y, 是否是贼王)
                elseif  string.find(任务,"地府") then
                    显示器("地府")	
                    导航到地府()
                    设置是否模糊寻路(是否是贼王)
                    地府坐标寻路(坐标x, 坐标y)
                    点击强盗("地府", 坐标x, 坐标y, 是否是贼王)
           
                elseif string.find(任务,"长寿村") then
                    显示器("长寿村")
                    导航长寿村(坐标x, 坐标y)
                    设置是否模糊寻路(是否是贼王)
                    长寿村坐标寻路(坐标x, 坐标y)
                    点击强盗("长寿村", 坐标x, 坐标y, 是否是贼王)
                elseif string.find(任务,"傲来国药店") then
                    显示器("傲来国药店")
                    导航傲来国药店()
                    点击强盗("傲来国药店", 坐标x, 坐标y, 是否是贼王)
                elseif string.find(任务,"傲来国") then
                    显示器("傲来国")
                    导航傲来国(坐标x, 坐标y)
                    设置是否模糊寻路(是否是贼王)
                    傲来国坐标寻路(坐标x, 坐标y)
                    点击强盗("傲来国", 坐标x, 坐标y, 是否是贼王)
                elseif string.find(任务,"普陀山") then
                    显示器("普陀山")
                    导航到普陀山()
                    设置是否模糊寻路(是否是贼王)
                    普陀山坐标寻路(坐标x, 坐标y)
                    点击强盗("普陀山", 坐标x, 坐标y, 是否是贼王)
                elseif string.find(任务,"建邺") or string.find(任务,"建业") then
                    显示器("建邺城")
                    导航建邺城()
                    设置是否模糊寻路(是否是贼王)
                    建邺城坐标寻路(坐标x, 坐标y)
                    点击强盗("建邺城", 坐标x, 坐标y, 是否是贼王)
                elseif string.find(任务,"西梁女国") then
                    显示器("西梁女国")
                    导航西凉女国()
                    设置是否模糊寻路(是否是贼王)
                    西梁女国坐标寻路(坐标x,坐标y)
                    点击强盗("西凉女国", 坐标x, 坐标y, 是否是贼王)
                elseif string.find(任务,"花果山") then
                    显示器("花果山")
                    导航花果山()
                    设置是否模糊寻路(是否是贼王)
                    花果山坐标寻路(坐标x,坐标y)
                    点击强盗("花果山", 坐标x, 坐标y, 是否是贼王)
                elseif string.find(任务,"朱紫国") then
                    显示器("朱紫国")
                    导航朱紫国(坐标x, 坐标y)
                    设置是否模糊寻路(是否是贼王)
                    朱紫国坐标寻路(坐标x,坐标y)
                    点击强盗("朱紫国", 坐标x, 坐标y, 是否是贼王)
                elseif string.find(任务,"东海湾") then
                    显示器("东海湾")
                    导航到傲来国东海湾()
                    设置是否模糊寻路(是否是贼王)
                    东海湾坐标寻路(坐标x,坐标y)
                    点击强盗("东海湾", 坐标x, 坐标y, 是否是贼王)
                elseif string.find(任务,"长寿郊外") then
                    显示器("长寿郊外")
                    导航长寿郊外()
                    设置是否模糊寻路(是否是贼王)
                    长寿村郊外坐标寻路(坐标x,坐标y)
                    点击强盗("长寿郊外", 坐标x, 坐标y, 是否是贼王)
                elseif string.find(任务,"宝象国") then
                    显示器("宝象国")
                    导航宝象国()
                    设置是否模糊寻路(是否是贼王)
                    宝象国坐标寻路(坐标x,坐标y)
                    点击强盗("宝象国", 坐标x, 坐标y, 是否是贼王)
                elseif string.find(任务,"江南野外") then
                    显示器("江南野外")
                    导航江南野外()
                    设置是否模糊寻路(是否是贼王)
                    江南野外坐标寻路(坐标x,坐标y)
                    点击强盗("江南野外", 坐标x, 坐标y, 是否是贼王)
                elseif string.find(任务,"狮驼岭") then
                    显示器("狮驼岭")
                    导航狮驼岭()
                    设置是否模糊寻路(是否是贼王)
                    狮驼岭坐标寻路(坐标x,坐标y)
                    点击强盗("狮驼岭", 坐标x, 坐标y, 是否是贼王)
                elseif string.find(任务,"生寺") then
                    显示器("化生寺")
                    导航化生寺()
                    设置是否模糊寻路(是否是贼王)
                    化生寺坐标寻路(坐标x,坐标y)
                    点击强盗("化生寺", 坐标x, 坐标y, 是否是贼王)
                elseif string.find(任务,"大唐国境") then
                    显示器("大唐国境")
                    导航大唐国境(坐标x,坐标y)
                    设置是否模糊寻路(是否是贼王)
                    大唐国境坐标寻路(坐标x,坐标y)
                    点击强盗("大唐国境", 坐标x, 坐标y, 是否是贼王)
                elseif string.find(任务,"女儿村") then
                    显示器("女儿村")
                    导航女儿村()
                    设置是否模糊寻路(是否是贼王)
                    女儿村坐标寻路(坐标x,坐标y)
                    点击强盗("女儿村", 坐标x, 坐标y, 是否是贼王)
                elseif string.find(任务,"傲来客栈二楼") then
                    显示器("傲来客栈二楼")
                    导航傲来国酒店二楼()
                    点击强盗("傲来客栈二楼", 坐标x, 坐标y, 是否是贼王)
                else
                    dialog(任务)
                end
            end
        end
    end
end


function 点击强盗(地点, 坐标x, 坐标y, 是否是贼王)
    if 是否是贼王 then
        httpSendTaskLogAsyn('info', 地点..'击杀贼王', taskCount)
    else
        if(打图任务数 ~= nil) then
            local taskCount = tonumber(打图任务数)
            httpSendTaskLogAsyn('info', 地点..',当前第'..打图任务数..'次打图', taskCount)
        end
    end
    打图任务次数 = 打图任务次数 + 1
    收起追踪任务栏()
    关闭道具栏()
    if 是否是贼王 then
        打开隐藏界面功能全部摊位()
    else
        if 地点 == '傲来国' or 地点 == '长寿村' or 地点 == '建邺城' then
            打开隐藏界面功能隐藏摊位()
            打开隐藏界面功能隐藏玩家()    
        else
            打开隐藏界面功能全部摊位()
        end
    end
    local tab = {
        "c01fc00ce07fe00ec0fff01ec0ffe00ec0e0e00ec0c0e00ec0c0e01ee0c0fc1cffc0fffcffc0fff87f80ffc03e01fe000001f80c2203f81effcffc0effcffc0cf3cf0c0ce3ce0c0ce3cf0c0ce3cf2ffce3fffffce3fffffce3fffffce3fffffce3cf0e3ce3ce0e3cf7cf0ffcffcf1ffcffcffffc7f0ffffe0003f83f0000000e$强$579$32$32",
    }
    local index2 = addTSOcrDictEx(tab)
    完成任务=false
    while (完成任务==false) do
		dialog('??????2')
        count = 0
        显示器("第"..count..'次')
        if 是否是贼王 then
            点击贼王()
            mSleep(500)
            自动战斗(是否是贼王)
            完成任务=true
            break
        else 
            if 点击当前队长位置() then
                显示器("点击当前队长位置")
                二次点击强盗()
            else
                显示器("是否是强盗")	
                while (count < 5) do
                    count = count + 1
                    x, y = tsFindText(index2, "强",0,0,2241,1074, "EDDE5D , 635F3F # CFC03F , 454121 # C5B635 , 3B3717", 80)
                    显示器("识别到强 	x:"..x.." , y:"..y)
                    if x>0 then
                        显示器("点击强盗")	
                        randomTap(x + 130,y - 20, 2)
                        mSleep(500)
                        二次点击强盗()
                        break
                    else
                        显示器("未识别到强盗")	
                        弹出警告("未识别到强盗")
                    end
                    mSleep(500)
                end
            end
        end
        if 点击我是来收拾你的() then
            自动战斗()
            完成任务=true
            点击关闭战斗后对话()
            randomTap(1890,1046,1)
            break
        else
            httpSendTaskLogAsyn('error', '未找到点击我是来收拾你的弹出框')
            弹出警告()
        end
        if 点击不要挡路() then
            弹出警告('点击不要挡路')
        end
        -- 等待人为操作
        while true do
            显示器("等待手动操作")	
            弹出警告('等待手动操作')
            if 是否在战斗中2() then
                httpSendTaskLogAsyn('info', '手动操作完成')
                自动战斗()
                完成任务=true
                点击关闭战斗后对话()
                randomTap(1890,1046,1)
                break
            end    
            mSleep(1000)
        end
    end
end


function 二次点击强盗()
    local tab = {
        "0003e0003007fc002c07cf000b0180c002c0603000f0180c003c0603000f0180c006e0e038073cf00e0f83fc03ff8000000000000000000000070000001fe0087c07fc067fc3cf019870e0c06c1c30301b030c0c06c0c30301b039e1e0ec0ffffffb03fffffcc0ffffff3039e0e0cc0c303033030c0e0cc0c303833870e0f1c7fc387ff1fe0f3e7e3f01ff0f800000007$强$431$34$34",
    }
    local index = addTSOcrDictEx(tab)
    for var=1, 3 do
        x, y = tsFindText(index, "强", 0,0,2241,1074, "EEF1F3 , 13100F # F7FAFC , 1C1918 # FFFFFF , 241E1B # FFFFFF , 241E1B", 90)
        if x>0 then
            显示器("二次点击强盗")	
            randomTap(x,y, 2)
            mSleep(1000)
            return true
        end
        mSleep(100)
    end
    return false
end

function 点击我是来收拾你的()
    --内容已复制到剪贴板!
    local tab = {
        "07ffffe000fffffc0000000380000000700000000e00000001c0000000300000000e007fffffffdffffffffdfffffffe0000600000000e00000001c0008001f0003800fc00071fff0001cfffe00073fffe001e3fdfe00780c03f81f01800fc7c030003ff0060007fc00c0007f8018000ff003000fff00601ff0f00fffe00f01fff000f03e00000f07800000f0c000000e00000000c000000000000000000000000000000000000600180181c00700303800c00607803801c1f81fc07fffffffffffffffffc7ffffffc00f03c00000c07000001c0c000000e00000001c00000007801ff000e01fff803c07fff80f00f00301c61c006070c380043c1870008f030e0013c061c002f00c38005c0187000bc030e00138061c002380c380043818700083830e00103861c006038c3c00c03803c07803807fff007007ffc00e00000000e00000000800000@0$收拾$838$35$75",
    }
    local index = addTSOcrDictEx(tab)
    for var=1,5 do
        x, y = tsFindText(index, "收拾", 1681,374,2239,1027, "F1F4F7 , 221F1D # FBFEFF , 2C2925 # FFFFFF , 302A25 # FFFFFF , 302A25", 90)
        if x > 0 then
            显示器('点击我是来收拾你的')
            randomTap(x,y,1)
            mSleep(500)
            return true
        end
        mSleep(200)
    end
    return false
end


贼王报警次数 = 0
function 点击贼王()
    显示器("是否是贼王")	
    贼王报警次数 = 0
    while (true) do
        if 点击杀贼王() then
            break
        else
            local tab = {
                "7ffffe073fffff879fffffdf8fbfffffc61fffff0307ffff0183ff8180e1ffc0c07fffff7e3fffffbf0fffff8387ffff80c06006006030030070380181f81c00e3fc0e3ffff8071ffff0038fff0001c01f00006007003070030078fc0180f9fffcc0fcfffffff87ffffffc01803ffe00c01fff8fe1ff80f3f1ff007cf8f003fc0c7001fc000000c0000000000000000000000000000000006000000070600200387003001c3801800e1c01c0070e00e00387007001c3803800e1c01c0070e00e00387007001c3803800e1c01c00f0fffffff87ffffffc3ffffffe1fffffff0e00e00387003001c3803800e1c01c0070e00e00387007001c3803800e1c01c0070e00e00387003001c3801800e1c0040070000000380000001c$贼王$939$33$68",
            }
            local index = addTSOcrDictEx(tab)
            if 是否找到贼王 == false then
                for var=1,10 do
                    x, y = tsFindText(index, "贼王", 10,91,1904,1030, "F4E13E , 0B0B0B # FEEB48 , 151515 # FFF552 , 161F1F # CDBC36 , 333015", 90)
                    if x>0 then
                        randomTap(x+200,y + 20)
                        mSleep(3000)
                        是否找到贼王 = true
                        break
                    end
                    mSleep(500)
                end
            end
            if 是否找到贼王 == true then
                x, y = tsFindText(index, "贼王", 10,91,1904,1030, "F4E13E , 0B0B0B # FEEB48 , 151515 # FFF552 , 161F1F # CDBC36 , 333015", 90)
                if x>0 then
                    randomTap(x + 30, y - 30)
                    是否找到贼王 = true
                else
                    是否找到贼王 = false
                end
            else
                是否找到贼王 = false
                弹出警告('未找到贼王')
                break
            end
        end
    end
    while 是否找到贼王 == false do
        显示器("等待手动操作")	
        弹出警告('等待手动操作')
        if 是否在战斗中2() then
            httpSendTaskLogAsyn('info', '手动操作完成')
            break
        end    
        mSleep(1000)
    end
end 



function 点击杀贼王()
    local tab = {
        "000000020000000d0000001f0000003e0020007c006000f800c001f0018003e0030007c006000f800c001f0018003e0030007c006000f800c001f0018007ffffffffffffffffffffffff803c007e0030007c006000f800c001f0018003e0030007c006000f800c001f0018003e0030007c006000f800c001f0000003e00000060000000c0000001@1$王$290$31$35",
    }
    local index = addTSOcrDictEx(tab)
    x, y = tsFindText(index, "王", 1355,346,1906,881, "EBEEF0 , 141110 # F5F8FA , 1E1B1A # FFFFFF , 28221F # FFFFFF , 28221F", 90)
    if x > 0 then
        显示器('点击杀贼王')
        randomTap(x + 20,y,1)
        mSleep(500)
        return true
    end
    return false
end

function 点击不要挡路()
    local tab = {
        "00800e00c03001c01c0600380381e00f0073ffffffffffffffff3fffffffe01c0700000180e00000301c000002030000000000000000000000001004010e02008031e04010063f880200c0f10040180c20080300040100600080200c00300401bffe008037ffc01006fff80200c0010040180020080300040100600080200c0410040183c200c030f0703c0c380fffff8000fffff0000ffff800000000000000000000000000000000000000000004ffe03fffdffe07fffbffc0fffe70180001ce03800039c078000f380fffffe701e3f03ce0383c079e0f030063ffc060087ff0040303fe0080200100100000000600000c01c00003803dff00e007fff0fc01ffff7fc07b006ffc0e200cf1c384018e3fe08031c1fc1006381f8200c703f04018e07e08031c1fc100638ff8200c7bc184018fe038c031f003be1c3c003fff80000700000000e000@0$挡路$851$35$75",
    }
    local index = addTSOcrDictEx(tab)
    x, y = tsFindText(index, "挡路",35,785,534,874, "FFFFFF , 343232 # EFF0F0 , 242323 # FFFFFF , 343232 # FFFFFF , 343232 # FFFFFF , 343232", 90)
    if x > 0 then
        显示器('点击不要挡路')
        randomTap(x,y,1)
        mSleep(500)
        return true
    end
    return false
end

function 设置是否模糊寻路(是否是贼王)
    if 是否是贼王 then
        当前是否模糊寻路 = true
    else
        当前是否模糊寻路 = false
    end
end



