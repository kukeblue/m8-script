
function 自动买宝图并分图()
    --	导航长安酒店门口()
    --	mSleep(1000)
    --	购买宝图()
    开宝图()
    点击仓库管理员()
    mSleep(2000)
    自动分图()
end

function 好友栏给予(name)
    --内容已复制到剪贴板!
    local tab = {
        "001c0003e101fe301fe71fdff3f1fffc1fff81fb003e3007c301f8703e0703806000003800038000380003800038000380003ffff3ffff3ffff3c00038000380003800038000380001800000000$红$218$20$31",
    }
   

    while(true)do
        if bise_mo(好友栏给予标志) then
            dialog('给予栏打开')
            break
        else  
            if bise_mo(好友栏给予按钮) then
                randomTap(1698,821,3)
                mSleep(1000)
            else  
                if bise_mo(好友栏打开标志) then
                    local index = addTSOcrDictEx(tab)
                    x, y = tsFindText(index, "红", 1651,360,2129,892, "8E8D8E , 101015", 90)
                    mSleep(2000)
                    if(x>0 and y>0) then
                        randomTap(x+300,y+10)
                    end
                else
                    if bise_mo(好友按钮) then
                        randomTap(2082,848,3)
                        mSleep(1000)
                    end
                end
            end
        end
    end
end

function 导航长安酒店门口() 
    使用导标旗('长安城', 红色长安城导标旗坐标_酒店屏幕xy[1], 红色长安城导标旗坐标_酒店屏幕xy[2], 红色长安城导标旗坐标_酒店Str)
end

购买宝图数量 = 0

function 购买宝图()
    购买宝图数量 = 0
    是否购买完成 = false
    while (是否购买完成 == false) do
        打开附近摊位()
        mSleep(1000)
        if bise_mo(更多摊位按钮) then
            显示器('更多摊位按钮')
            randomTap(140,231,3)
            mSleep(1000)
            while (true) do
                if bise_mo(一号摊位) then
                    显示器('一号摊位')
                    randomTap(268,232,3)
                    点击购买宝图()
                end
                if 购买宝图数量 > 20 then
                    break
                end
                if bise_mo(二号摊位) then
                    显示器('二号摊位')
                    randomTap(266,322,3)
                    点击购买宝图()
                end
                if 购买宝图数量 > 20 then
                    break
                end
                if bise_mo(三号摊位) then
                    显示器('三号摊位')
                    randomTap(268,411,3)
                    点击购买宝图()
                end
                if 购买宝图数量 > 20 then
                    break
                end
                if bise_mo(四号摊位) then
                    显示器('四号摊位')
                    randomTap(269,497,3)
                    点击购买宝图()
                end
                if 购买宝图数量 > 20 then
                    break
                end
                if bise_mo(五号摊位) then
                    显示器('五号摊位')
                    randomTap(268,588,3)
                    点击购买宝图()
                end
                if 购买宝图数量 > 20 then
                    break
                end
                if bise_mo(六号摊位) then
                    显示器('六号摊位')
                    randomTap(269,674,3)
                    点击购买宝图()
                end
                if 购买宝图数量 > 20 then
                    break
                end
                if bise_mo(七号摊位) then
                    显示器('七号摊位')
                    randomTap(265,761,3)
                    点击购买宝图()
                end
                if 购买宝图数量 > 20 then
                    break
                end
                if bise_mo(换一批) then
                    显示器('换一批')
                    randomTap(331,910,3)
                end
                if bise_mo(更多摊位按钮) == false then
                    break
                end
            end
        end
        关闭附近摊位()
        打开道具()
        mSleep(1000)
        if 购买宝图数量 > 20 or bise_mo(最后一个格子宝图) then
            是否购买完成 = true
            关闭道具()
            break;
        else
            关闭道具()
            打开附近摊位()
        end
    end
end


function 领取宝图任务()
    导航长安酒店内()
    关闭道具栏()
    while (true) do
        mSleep(100)
        if bise_mo(任务栏绿色挖宝文字) then
            break
        else
            if bise_mo(听听无妨) then
                tap(1742,520)
                mSleep(1000)
                if bise_mo(弹窗关闭按钮店小二) then
                    nLog('弹窗关闭按钮店小二')
                    randomTap(2106,800, 3)
                end
                mSleep(1000)
                success = false
                打开追踪任务栏()
                for var= 1,5 do
                    if bise_mo(任务栏绿色挖宝文字) then
                        dialog("任务栏绿色挖宝文字")
                        success = true
                    end
                end
                if success == true then
                    randomTap(1901,116,3)
                    mSleep(1000)
                    打开道具栏()
                    break
                end
                处理弹出成语()
                处理弹出漂浮文字()
            else
                点击店小二()
            end
        end
    end
end

function 点击店小二() 
    找到务字 = false
    local tab = {
        "00000007c0402001f0381800f81e0e703c07039c0f0380e60781e07981e0f01e60787c07981e3f81c60f0fe07183c1fe1861e07f8e1cf01c7f87f8070fe3fc01c1fffc00707ffe001c1e06008707818061c1e0603870fc180e1c7f8603871fe180e1fe38603c7f8e180f1f818603c7e07180f1e01e78f830079ffe0001e7ff000078ff00001e000000030000@00$务$452$34$33",
    }
    local index = addTSOcrDictEx(tab)
    x, y = tsFindText(index, "务", 0,0,1906,984, "E1FFFF , 67470B # D6FFFF , 726938 # D6FFFF , 726938 # D6FFFF , 726938 # D6FFFF , 736A39 # D6FFFF , 736A39 # D6FFFF , 736A39 # D4FFFF , 757041 # D4FFFF , 757041", 85)
    if x>0 then
        显示器("务"..x..","..y)	
        tap(x + 20,y - 20,50,"1.png")
        mSleep(3000)
        找到务字 = true
    else
        --内容已复制到剪贴板!
        local tab = {
            "0181800703018007070398060e0388061c0308063807080e7807081cfc07081cfe0708187f0608387f86187071fe1fe070fe1fc0707fff00707ffc007078180070781800707818007078180670fc180671fe18067f8e18067f0618067e0618067c06180638071c0e30071f3e00070ffc00070fe000030000$务$355$32$30",
        }
        local index = addTSOcrDictEx(tab)
        x, y = tsFindText(index, "务3", 32,56,1906,984, "91C6FA , 2C3742 # 7DB2E6 , 18232E # 87BCF0 , 222D38 # 91C6FA , 2C3742", 80)
        local tab = {
            "000080000000200000100800000f03e00e0380f80383c1f700e0f07dc030f81f701c7e079c0f3f01e70783e0f9e3e0fe7e3ff03fff0ff80e1fc3fc0383f8fe00e0fffe00383fff000e0f87800383c0e000e0f03808383c0c020c3f0300e39fe0c038fffc700f3fdf9c03cfe1e381f3f038e0f8780e3c3e08039f9f0000f1ff80003c3fc0000f000000038000@00$务$455$34$33",
        }
        if x>0 then
            显示器("务3"..x..","..y)	
            tap(x + 20,y - 20,50,"1.png")
            mSleep(2000)
            找到务字 = true
        else
            local index = addTSOcrDictEx(tab)
            x, y = tsFindText(index, "务", 32,56,1906,984, "B10E0C , 630E0C # AC0907 , 5E0907 # A80503 , 5A0503", 80)
            if x>0 then
                显示器("务2"..x..","..y)	
                tap(x + 20,y - 20,50,"1.png")
                mSleep(2000)
                找到务字 = true
            end
        end
    end
    if 找到务字 == true then
        local tab = {
            "0000301807038070780f3fffffffff07c1e0181e018180181807c180ff660e0e60c0e6081c6083820870608e06180067800678007780071800719e0708e070870708787083c70c3e60e3e00fe400fe0000000$挖$239$20$33",
        }
        local index = addTSOcrDictEx(tab)
        x, y = tsFindText(index, "挖", 10,91,1904,1030, "D6FFFF , 706634 # D6FFFF , 706634 # D0FFFF , 76774B # D0FFFF , 76784C # D0FFFF , 76784C # D0FFFF , 76784C", 90)
        if x>0 then
            显示器("挖1")
            tap(x+78,y-32)	
            mSleep(1000)
        else
            local tab = {
                "0180303807078073fcffffffffffff0381e0381c03818038180fe201ffe61c0e6180e618186183861870618e0678006f8006f8007780071880719e0718e071870718387183c71c3e21ffe01fe000fc00$挖$271$20$32",
            }
            local index = addTSOcrDictEx(tab)
            x, y = tsFindText(index, "挖", 10,91,1904,1030, "D0FFFF , 76784C", 90)
            if x>0 then
                显示器("挖2")
                tap(x+78,y-62)	
                mSleep(1000)
            end
        end
    else
        randomTap(1630,279,3)
    end
end

function 导航长安酒店内()
    local success = false
    while (success == false) do
        if bise_mo(小地图长安酒店) then
            success = true
            打开隐藏界面功能全部摊位()
            tap(1150, 450)
            关闭道具栏()
            mSleep(1000)
            打开追踪任务栏()
            显示器('小地图长安酒店')
            break
        else
            导航长安酒店门口()
            打开隐藏界面功能隐藏玩家()
            打开隐藏界面功能隐藏摊位()
            chRandomsTap(1110,330,1)
            mSleep(2000)
        end
        mSleep(500)
    end
end


function 点击购买宝图()
    mSleep(1000)
    for var= 1, 20 do
        if bise_mo(摊位宝图) then
            显示器('摊位宝图')
            randomTap(629,347,1)
            if bise_mo(购买) then
                显示器('购买')
                randomTap(1734,915,3)
                购买宝图数量 = 购买宝图数量 + 1
            end
        end
    end
end

function 开宝图()
    打开道具()
    -- 第一排
    randomTap(1390, 333, 3)
    randomTap(1390, 333, 3)
    mSleep(500)
    randomTap(1514, 333, 3)
    randomTap(1514, 333, 3)
    mSleep(500)
    randomTap(1636, 333, 3)
    randomTap(1636, 333, 3)
    mSleep(500)
    -- 第三排
    randomTap(1123, 593, 3)
    randomTap(1123, 593, 3)
    mSleep(500)
    randomTap(1255, 593, 3)
    randomTap(1255, 593, 3)
    mSleep(500)
    randomTap(1387, 593, 3)
    randomTap(1387, 593, 3)
    mSleep(500)
    randomTap(1528, 593, 3)
    randomTap(1528, 593, 3)
    mSleep(500)
    randomTap(1660, 593, 3)
    randomTap(1660, 593, 3)
    mSleep(500)
    -- 第四排
    randomTap(1123, 725, 3)
    randomTap(1123, 725, 3)
    mSleep(500)
    randomTap(1255, 725, 3)
    randomTap(1255, 725, 3)
    mSleep(500)
    randomTap(1387, 725, 3)
    randomTap(1387, 725, 3)
    mSleep(500)
    randomTap(1528, 725, 3)
    randomTap(1528, 725, 3)
    mSleep(500)
    randomTap(1660, 725, 3)
    randomTap(1660, 725, 3)
    mSleep(5000)
    -- 第二排
    randomTap(1123, 457, 3)
    randomTap(1123, 457, 3)
    mSleep(500)
    randomTap(1250, 457, 3)
    randomTap(1250, 457, 3)
    mSleep(3000)
    randomTap(1386, 457, 3)
    randomTap(1386, 457, 3)
    mSleep(500)
    randomTap(1515, 457, 3)
    randomTap(1515, 457, 3)
    mSleep(500)
    randomTap(1655, 457, 3)
    randomTap(1655, 457, 3)
    关闭道具()
end

function 识别宝图位置()
    --dialog('????')
    --local _识别宝图字库 = {
    --"0800000018000e0018003c00180078001800fc001803fffc180fffff3c3fffffff780000ffe000003c0000001c00000018000e0018001e0018001c0018001c00183ffffc183ffffe183ffffe1c01f80eff00e006ff00e0077e01e0073c01c007180380071807800718070006180e0006180c00fe180001fc080001fc08000000000000000000000000000000000000040000380e0000381e3ffc381e3ffe381c7ffe383873ce38386186387861863870618638e0618638c0618639c061863f8063863f807fffffff7fffffff7fffffff77dfffc063863f8061863f80618639c0618639c0618638e06186386061863870738638787ffe38383ffe38183ffc381c0000381e0000381e0000000c0000000000000000000000000000000001fffff803fffffc03fffffe0000001e0000000e0000000e0000000e0000000e0000000e0000000e0000000e0000000e0000000e0000001e3ffffffe3ffffffe3ffffffe0000000e0000000e0000000e0000000e0000000e0000000e0000000e0000000e0000000e0000000e03fffffe03fffffc03fffffc$花果山$1093$32$101",
    --"3ffffffc3ffffffe7ffffffe7000008e6000000660000086638001c6638181c6638381c6638381c6638381c6638381c6638381c663c7c1c663ffffc663ffffc663ffffc663c781c6638381c66383c1c66383f9c66383f9c663839fc663838fc6638181c660000086600000867fc003fe3ffffffe3ffffffe3ffffff80000000000000000000000000000000000e0003000e000703fffffe07fffffe03fffffe001f007c000e00787006003070000000700e0000638e7fe0638f7fe0e38ffff1e3dffe79c3ffe67f83ffe67f03ffe67e07dfe6780f8fe670078fe678038fe67f83dfe67fc3ffe67fe3ffe67063fff67073dfffe0738fffe0738e7fe0718e3fc0600e0003e0000003e$国境$1038$32$66",
    --"0000003f1fffffff3fffffe03fffff803dfffffc3de7fffe7fff870effff8606f9c3860679c386063ffffffe3ffffffe39e7860638e7860630ff860430ff0600080002000c0006001f0007073fffff0f7fffff7e1ffffffc0c39c7f00c3087000c3087000e39c7000e79c7e01f7dfff87fffff7e1f000f1e0e00070f080000000000000000000000000000000000001f3fffffff3ffffffc3fc7ff803ffffffc3ffffffe7fff8606ffc786067fff86063ffffffe3fc7fffe31c7dffe31ff860620ff060620de0706008e0786218f3f86318fff8e3d8c71fc3dd871f801f07ff003f03fe07ffe3fc0fffe3fc03ffc3ff00ff83ff80ff838781fd878783d8dffff318cfffe018c7878000030100000000000000000000000000000000001fffff803fffffc03fffffe0000001e0000000e0000000e0000000e0000000e0000000e0000000e0000000e0000000e0000000e0000001e3ffffffe3ffffffe3ffffffe0000000e0000000e0000000e0000000e0000000e0000000e0000000e0000000e0000000e0000000e03fffffe03fffffc03fffffc$麒麟山$1462$32$101",
    --"006700380073c01c00f8e01e00f8700e01f8380e01fc1c0f01fc0e07800e070700030387800181c78000c0e38000607bc000307fc0007e3ff801fffffff9fffffffe7ffffffe0183fc0000c0fe00006073c0003038e000181c3c000c0e0e0006070780030381e00181c0f000c0e03c0060700f0020380380101c01c000080060000000000000000000000000000000000003c000c003e00061ffe00c7001f00e3800387f3c00187f9c000c7fcc0ffe3ffe1fff3fff01f7ffff8073fffe3039fffe1c18fcff0e0c7e7f87863e3fff82001fffc0000effcfff0e7807ffc7380039e31c0018738e000c398670040c03380606098e030307c3038181e1c1c1c0f0e0c1e03e3801f0070c00f00186000000000000000000000000000000000000000000fffffff07ffffffc7ffffffe38000047180000018c000010c638001c631c0c0e318e0e0718c707038c638381c631c1c0e318e0e0718c78f838c63ffffc631ffffe318fffff18c78f038c638381c631c1e0e318e0fe718c707f38c63839fc631c1c7e318e060718c000010c600000863fe001ff0fffffff87ffffffc3ffffff8@0$朱紫国$1323$33$101",
    --"000200000e0200000f0200000fc20ff80ffe1ffe0f7e7ffe0e0e79c7fe0679c7fe0679c77e0679c73ffe79c71ffe79c70ffe79c70f0679c70e0679c70e0279c70e0279c70e0679c70ffe79c70ffe79c71ffe79c71f0679c77e0279c7fe0679c7de0e79c70e1e79c70ffe7fff0ff61ffe0fe21ffc0f0200000602000000020000000000000000000000000000000000003fffffff3ffffffe3ffffffc300000e020000060301800e03fff00e03fc7c3c03f83ffc003007f0000003e000fe000000fe000000e0ffff00e1ffffc0c1ffffc0c0ffffe1c0070063c0070067c0060063c00e0061c00e0060c01c0060c0180060c0380060c0380060c0700060e06001e0f0000fc0fe001fc03c000000000000000000000000000000000000001fffff803fffffc03fffffe0000001e0000000e0000000e0000000e0000000e0000000e0000000e0000000e0000000e0000000e0000001e3ffffffe3ffffffe3ffffffe0000000e0000000e0000000e0000000e0000000e0000000e0000000e0000000e0000000e0000000e03fffffe03fffffc03fffffc$普陀山$1190$32$101",
    --"00e0007001f000707fffffe07fffffe03fffffe001f0078000e00787006002070000000700e0040638e7fe0638f7fe0e38ffff1e3dffe7bc3ffe67f83ffe67f03ffe67e07dfe6700f8fe670078fe678038fe67f83dfe67fc3ffe67fe3ffe67063fff670738fffe0738f7fe0738e7fe0718e3fc0e00e0003e0000003c000000000000000000000000000000000002000600060006003e000e007e001c3ff8001c3fc000387f0380781e0380f00c01c1e00c00e3c00c00ff800c00fe000c03fc000e07e0000fffc0000ff00000078000000000000000000000000000003ffffffe7ffffffe7ffffffe00fc000000780000001c0000000f00000007c0000003f0000000780000003800$境外$807$32$66",
    --"0801e0060c03c00e0c1fc01e0c3f801c0dfc00781cc060701c0079e07c003dc0fc003f801c003f800c007f800c80ffc00df7e1e00c7f80f00c3f00780c0f80100807c00000008000000000001c03f0003fffffff3ffffffe3c000078300000702000007020380078307e00783fff80783fe7e0703e01ffe038007fc0000000000000000000000000000000000002000600060006003e000e007e001c3ff8001c3fc000387f0380781e0380f00c01c1e00c00e3c00c00ff800c00fe000c03fc000e07e0000fffc0000ff00000078000000000000000000000000000003ffffffe7ffffffe7ffffffe00fc000000780000001c0000000f00000007c0000003f0000000780000003800$郊外$643$32$66",
    --"000000046000001cc0200039c070007380e000e701c001ce0380039c07000f380e07fe701e7ffce0fffff9effff0f3fff000e7ffc001cf0780039c070007380e000e701c001ce0380039c070007380e000e701c001ce03800f9c07007f380ffffe701ffffce03ff039c0000073800000e4000001c000000380000000000000000000000000000000000000e03fffffe1ffffff03fffff8060000000c0000041000000c20060018400c003080180061003000c20060018400c00318018006f003000fe006001bc7fffff3dfffffe31fffffc23fffff8400c003080180061003000c20060018400c003080180061003000c20060018400c003080000061000000@11$五庄$644$31$66",
    --"20380007301c000e380e001c380e00783c0601f01e0203e00e0007c002000e0000001e04000000060800000e1800000e1800000e1800000e1800000e1800000e1800000e1800001e1c00001e1ffffffe1ffffffe1c00001e1800001e1800000e1800000e1800000e1800000e1800000e1800000e1800000e0000000400000000000000000000000008000000383ffffc387ffffe38ffffff38f0020038e0000038e0030038e0c78038f1e78038f9e78038ffe78038ffe78038e3e78038e1e7807fe1fffcffe0fffeffe0fffe7fe1fffc38e1e78038e3e78038ffe78038ffe78038f9e78638f1e78638e0e78738e0830738e0000738e0000738ffffff387ffffe383ffffc18000000$江南$757$32$66",
    --"0001000000078000003f8000007ffffe0fffffff7ffffffcff0000001c2180070c21800f0c2180fe0e61c7fc0e61ffe00f73ff807fff8e027fff8e071fff8e070f738e070e6187fe0c2387fe0c078000000f0006007e000f00fe001e3fffc03c3fffe0783e01fff00600ffe006003fe007007ff007fff87c07ff003e07e0001f02000006020000000000000000000000000000000000801e0000801c0c0080180c0080380e0080700f8080e00ff081e00e7981c00c3f83800c0187800c00cf000c00fe000e01fc001ffffffc7fffffff7ffffffe3ffffffc0e01fe000c00fe000c00cf000c0187800c0d83800e3d81c00ff980e00ff080600f8080700e0080380c0080180800801c0000801c00000004000000000000000000000000000000003ffffffc3ffffffe7ffffffe7000008e6000000660000086638001c6638181c6638381c6638381c6638381c6638381c6638381c663c7c1c663ffffc663ffffc663ffffc663c781c6638381c66383c1c66383f9c66383f9c663839fc663838fc6638181c660000086600000867fc003fe3ffffffe3ffffffe3ffffff8$傲来国$1323$32$103",
    --}
    --local 识别宝图字库 = addTSOcrDictEx(_识别宝图字库)
    --dialog('????2')
    --local ret = tsOcrText(识别宝图字库, 381,290,1114,869, "0EE311 , 0E3111", 80)
    ret = 百度文字识别(455,413,953,663)
    if(ret == nil) then
        return 
    end
    if string.find(ret,"花果山") then
        return '花果山'
    elseif string.find(ret,"大唐国境") then
        return '大唐国境'
    elseif  string.find(ret,"麒麟山") then
        return '麒麟山'
    elseif string.find(ret,"朱紫国") then
        return '朱紫国'
    elseif string.find(ret,"普陀山") then
        return '普陀山'
    elseif string.find(ret,"境外") then
        return '大唐境外'
    elseif string.find(ret,"郊外") then
        return '长寿郊外'
    elseif string.find(ret,"五庄观") then
        return '五庄观'
    elseif string.find(ret,"江南") then
        return '江南野外'
    elseif string.find(ret,"傲来国") then
        return '傲来国'
    elseif string.find(ret,"建邺") then
        return '建邺城'
    elseif string.find(ret,"女") then
        return '女儿村'
    elseif string.find(ret,"东海") then
        return '东海湾'
    elseif string.find(ret,"北俱") then
        return '北俱芦洲'
    elseif string.find(ret,"狮驼岭") then
        return '狮驼岭'
    elseif string.find(ret,"墨家村") then
        return '墨家村'
    end
end
function 选择仓库(num)
    randomTap(570, 934, 3)
    mSleep(1000)
    height = 247 + math.floor(num / 5) * 138
    width = 0
    if(num % 5 == 0) then
        width = 482 + 4 * 138
        height = 247 + math.floor(num / 5 - 1) * 138
    else
        width = 482 + (num % 5 - 1) * 138
    end
    randomTap(width, height)
end

function 选择道具(num, 是否双击)
    height = 370 + math.floor(num / 5) * 138
    width = 0
    if(num % 5 == 0) then
        width = 1161 + 4 * 138
        height = 370 + math.floor(num / 5 - 1) * 138
    else
        width = 1161 + (num % 5 - 1) * 138
    end
    if(是否双击) then
        randomTap(width, height,3)
        randomTap(width, height,3)
    else
        randomTap(width, height,3)
    end
end

function 选择仓库道具(num, 是否双击)
    height = 380 + math.floor(num / 5) * 138
    width = 0
    if(num % 5 == 0) then
        width = 460 + 4 * 138
        height = 380+ math.floor(num / 5 - 1) * 138
    else
        width = 460 + (num % 5 - 1) * 138
    end
    if(是否双击) then
        randomTap(width, height,3)
        randomTap(width, height,3)
    else
        randomTap(width, height,3)
    end
end

function 选择给予道具(num)
    height = 185 + math.floor(num / 5) * 138
    width = 0
    if(num % 5 == 0) then
        width = 1577 + 4 * 138
        height = 185 + math.floor(num / 5 - 1) * 138
    else
        width = 1577 + (num % 5 - 1) * 138
    end
    randomTap(width, height,3)
end



仓库15号宝图={ 978,634,0xdfb4ae, 981,633,0xb3d6e6, 982,633,0xadd1e8, 984,633,0xb0d9e5, 985,633,0xbde1e3, 986,633,0xc9e7e4, 988,634,0xc6e5ea, 988,635,0xb5e4dd, 988,636,0xa4e4cc}
function 自动分图()
    满宝图仓库号 = 0
    for i = 3, 20 do
        选择道具(i)
        mSleep(1000)
        位置 = 识别宝图位置()
        if(位置 == nil) then
            位置 = 识别宝图位置()
        end
        if(位置 == nil) then
            goto continue
        end
        仓库数 = 地图仓库对应关系[位置]
        mSleep(500)
        选择仓库(仓库数)
        mSleep(500)
        if bise_mo(仓库15号宝图) then
            满宝图仓库号 = 仓库数
        end
        选择道具(i, true)
        mSleep(500)
        ::continue::
    end
    选择仓库(1)
    for i = 3, 20 do
        选择道具(i, true)
        mSleep(200)
    end
    mSleep(1000)
    if 接受组队() and 满宝图仓库号 > 0 then
        选择仓库(满宝图仓库号)
        mSleep(500)
        丢宝图()
        mSleep(500)
    end
    if bise_mo(关闭仓库) then
        nLog('关闭仓库')
        tap(1762,94)
    end
end 

--给予={ 1154,985,0x65d22b, 1155,985,0x57c827, 1156,985,0x4cc024}

function 等待丢宝图()

end

function 丢宝图()
    for i = 1, 15 do
        选择仓库道具(i, true)
        mSleep(200)
    end
    if bise_mo(关闭仓库) then
        nLog('关闭仓库')
        tap(1762,94)
    end
    mSleep(500)
    -- 组队
    randomTap(1672,865, 3)
    randomTap(2072,849,3)
    mSleep(500)
    randomTap(2075,610,3)
    mSleep(500)
    randomTap(1844,396,3)
    mSleep(500)
    for i = 1, 5 do
        randomTap(1464,967,3)
        start = 3 * (i - 1) + 3
        endCount = start + 2
        for i = start, endCount do
            选择给予道具(i)
            mSleep(500)
        end
        randomTap(1844,981,3)
        mSleep(1000)
    end
    randomTap(1588,59,3)
    mSleep(500)
    randomTap(2106,82,3)
end


function 打开附近摊位()
    if bise_mo(系统) then
        nLog('系统')
        randomTap(940,986,3)
        mSleep(1000)
        randomTap(580, 216,3)
        mSleep(1000)
        randomTap(1411,715,3)
        mSleep(1000)
        randomTap(588,224,3)
    end
end

function 登录梦幻西游(角色) 
    是否重启 = false
    mSleep(2000)
    if bise_mo(道具) then
    else
        是否重启 = true
        打开梦幻西游()
        mSleep(2000)
    end
    显示器('登录梦幻西游')
    httpSendTaskLog('info', '登录梦幻西游')
    while (true) do
        if bise_mo(道具) then
            显示器('登录成功')
            点击顶部菜单缩进按钮()
            if bise_mo(聊天窗缩进按钮) then
                显示器('聊天窗缩进按钮')
                randomTap(535,777,1)
            end
            if bise_mo(任务栏展开按钮) then
                显示器('任务栏展开按钮')
                randomTap(1900,400,1)
            end
            if 是否重启 == true then
                使用摄妖香()
            end
            break
        else
            if bise_mo(签到页面) then
                点击签到()
                mSleep(2000)
            else
                if bise_mo(进入互通版) then
                    if accountNickName ~= '' then
                        选择游戏角色(accountNickName)
                    end
                    显示器('进入互通版')
                    randomTap(949,894,1)
                    mSleep(3000)
                end     
            end
        end
        mSleep(200)
    end
    httpSendTaskLog('info', '登录梦幻西游完成')
end

function 关闭附近摊位()
    关闭摊位列表={ 1754,91,0x183850, 1755,91,0x183850, 1756,91,0x183850, 1757,91,0x183850, 1758,91,0x183850, 1759,91,0x183850, 1760,91,0x183850, 1761,91,0x183850, 1762,91,0x183850}
    关闭系统={ 1746,98,0x1e3b55, 1747,98,0x1b3850, 1748,98,0x18364b, 1749,98,0x18374e, 1750,98,0x183850, 1751,98,0x183850, 1751,98,0x183850, 1752,98,0x183850, 1753,98,0x183850}
关闭摊位={ 1969,96,0x1e3b54, 1970,96,0x1b384f, 1971,96,0x18364c, 1972,96,0x18374e, 1973,96,0x183850, 1974,96,0x183850, 1975,96,0x183850, 1976,96,0x183850, 1977,96,0x183850}
for var= 1, 3 do
    if bise_mo(关闭摊位) then
        nLog('关闭摊位')
        randomTap(1978,96,3)
    end
    if bise_mo(关闭摊位列表) then
        显示器('关闭摊位列表')
        randomTap(1763,91,1)
    end
    if bise_mo(关闭系统) then
        nLog('关闭系统')
        tap(1754,98)
    end
end
end


function 点击仓库管理员()
    使用飞行符(1342, 514)
    mSleep(1000)
    randomTap(508, 468, 3)
    mSleep(4000)
    randomTap(1129, 522, 3)
    mSleep(1000)
    randomTap(1802, 636, 3)
end


function 四季如画()
    碗子山坐标寻路('24', '33')
    mSleep(5000)
    randomTap(913, 425)
    mSleep(2000)
    randomTap(2101, 803)
    mSleep(1000)
    碗子山坐标寻路('77', '67')
    mSleep(5000)
    randomTap(1491, 522)
    mSleep(2000)
    randomTap(2101, 803)
end


function 导航到长安驿站()
    使用导标旗('长安城', 红色长安城导标旗坐标_驿站屏幕xy[1], 红色长安城导标旗坐标_驿站屏幕xy[2], 红色长安城导标旗坐标_驿站Str)
end


function 导航到长安大唐国境门口()
    使用导标旗('长安城', 红色长安城导标旗坐标_大唐国境屏幕xy[1], 红色长安城导标旗坐标_大唐国境屏幕xy[2], 红色长安城导标旗坐标_大唐国境Str)
end
function 导航到大唐国境驿站路线()
    是否达目的地=false
    导航到长安驿站()
    打开隐藏界面功能全部摊位()
    local tab = {
        "00030000001f0000003fb10001ffffff07fffffcff000000c00000000000000000040000000c0000040c0000060c0000040c0000040c0000063ef00007fff0400ffe3070fffc1070ee1c1070040c1030041c1010040c1018040c101c040c10bc040c11fc040c1bfc040c1f84040c1f04040c0800040c0000000c0000$传$253$32$31",
    }
    --内容已复制到剪贴板!
    local tab2 = {
        "00010000000380000007c000000fe080103fffffe07c000001c000000000000000000000000000000000030000c0018000f040c0007820e0003c1070003e0838e07f07fff07e1ffe08303fcf04180981820e004041070020608380103041c0081820f0040c107c0206087e01070473008183608040c1e0402060800010300000001800000004000000000000000002000000050000000000000080000@00$传$246$33$38",
    }
    --内容已复制到剪贴板!
    local tab3 = {
        "0002000000070000000f8000000fc000107fffff80f80000030000000000000000000000000000000000060000e0030000f0818000f840c0007c2060003e1071c03e0ffc60c21ffc10603f0e08300101041c0080820e0040c1070020608380103041e0081820f8040c10fc020608c2010306c1008183800040c00000206000000030000000000000000000000000080000000400000006000@0$传$221$33$37",
    }
    local index3 = addTSOcrDictEx(tab3)
    --请自行更改参数
    --1: 0,0,0,0 范围坐标，请自行修改
    --2: "89C4FF , 141415 # 7FBAF5 , 0A0A0B # 93CEFF , 1E1E15 # 9DD8FF , 282815 # A7E2FF , 323215 # B1ECFF , 3C3C15" 偏色,多组或单组.请在偏色列表中选择
    --3: 90 匹配精度 【0-100】
    local index = addTSOcrDictEx(tab)
    local index2 = addTSOcrDictEx(tab2)

    while (是否达目的地 == false) do
        显示器('查找驿站老板')
        if 点击是的我要去() then
            mSleep(1500)
            if bise_mo(小地图大唐国境) then
                显示器('小地图大唐国境')
                是否达目的地=true
                break
            end
        else
            for var= 1, 5 do
                x, y = tsFindText(index, "传", 777,27,1562,555, "77AFE7 , 0F1318 # 81B9F1 , 191D22 # 8BC3FB , 23272C # 95CDFF , 2D3130 # 9FD7FF , 373B30 # 7CB4EC , 14181D", 90)
                if x>0 then
                    randomTap(x + 100, y)
                    mSleep(1500)
                    break
                else
                    x, y = tsFindText(index2, "传", 777,27,1562,555, "7DB7F2 , 0B0C0E # 87C1FC , 151618 # 91CBFF , 1F201B # 9BD5FF , 292A1B # A5DFFF , 33341B", 90)
                    if x>0 then
                        randomTap(x + 100, y)
                        mSleep(1500)
                        break
                    else
                        x, y = tsFindText(index3, "传", 777,27,1562,555, "89C4FF , 141415 # 7FBAF5 , 0A0A0B # 93CEFF , 1E1E15 # 9DD8FF , 282815 # A7E2FF , 323215 # B1ECFF , 3C3C15", 90)
                        if x>0 then
                            randomTap(x + 100, y)
                            mSleep(1500)
                            break
                        end
                    end
                end
                mSleep(200)
            end
        end
        mSleep(200)
    end
end
function 导航大唐国境非驿站路线()
    while (true) do
        if bise_mo(小地图大唐国境) then
            显示器('小地图大唐国境')
            break
        else
            导航到长安大唐国境门口()
            打开隐藏界面功能全部摊位()
            chRandomsTap(13,1061)
            mSleep(2000)
        end
        mSleep(100)
    end
end
function 路线导航器(任务)
    任务坐标 = 精准获取坐标(任务)
    if 任务坐标 == nil then
        显示器('任务坐标错误')
    else
        显示器(任务坐标[1]..','..任务坐标[2])
    end
	
end
function 导航建邺城()
    while(true)  do
        if bise_mo(小地图建邺城) then
            显示器('建邺城')
            break
        else
            使用飞行符(1381,655) 
        end
        mSleep(100)
    end
end
function 任务导航(任务, 是否坐标寻路)
    任务坐标 = 精准获取坐标(任务)
    dialog(任务坐标[1])
    if  string.find(任务,"建邺城") then
        导航建邺城()
        if 是否坐标寻路 == true then
            显示器('坐标寻路')
        else
            点击任务栏()
        end
    elseif string.find(任务,"长寿村") then
        if(任务坐标 ~= nil) then
            导航长寿村(任务坐标[1], 任务坐标[2])
        else
            导航长寿村() 
        end
    end
    if(任务坐标 ~= nil) then
        等待到达目的地(任务坐标[1], 任务坐标[2])
    end
end
function 导航到长寿村飞机场()
    使用飞行符(938, 320)	
end
function 导航到方寸山门口()
    使用导标旗('长寿村', 绿色长寿村导标旗坐标_方寸山屏幕xy[1], 绿色长寿村导标旗坐标_方寸山屏幕xy[2], 绿色长寿村导标旗坐标_方寸山Str)
end
function 导航到长寿村钟书生()
    使用导标旗('长寿村', 绿色长寿村导标旗坐标_钟书生屏幕xy[1], 绿色长寿村导标旗坐标_钟书生屏幕xy[2], 绿色长寿村导标旗坐标_钟书生Str)
end
function 导航到长寿村酒店()
    使用导标旗('长寿村', 绿色长寿村导标旗坐标_酒店屏幕xy[1], 绿色长寿村导标旗坐标_酒店屏幕xy[2], 绿色长寿村导标旗坐标_酒店Str)
end
function 导航到长寿村当铺()
    使用导标旗('长寿村', 绿色长寿村导标旗坐标_当铺屏幕xy[1], 绿色长寿村导标旗坐标_当铺屏幕xy[2], 绿色长寿村导标旗坐标_当铺Str)
end
function 导航到长寿村村长家()
    使用导标旗('长寿村', 绿色长寿村导标旗坐标_村长家屏幕xy[1], 绿色长寿村导标旗坐标_村长家屏幕xy[2], 绿色长寿村导标旗坐标_村长家Str)
end
function 导航到长寿村孟婆婆()
    使用导标旗('长寿村', 绿色长寿村导标旗坐标_孟婆婆屏幕xy[1], 绿色长寿村导标旗坐标_孟婆婆屏幕xy[2], 绿色长寿村导标旗坐标_孟婆婆Str)
end
function 导航长寿村(x,y)
    if(x == nul) then
        导航到长寿村飞机场()
        return
    end
    local 距离方寸山 = math.abs(tonumber(x) - tonumber(绿色长寿村导标旗坐标_方寸山[1])) + math.abs(tonumber(y) - tonumber(绿色长寿村导标旗坐标_方寸山[2]))
    local 距离钟书生 = math.abs(tonumber(x) - tonumber(绿色长寿村导标旗坐标_钟书生[1])) + math.abs(tonumber(y) - tonumber(绿色长寿村导标旗坐标_钟书生[2]))
    local 距离长寿村酒店 = math.abs(tonumber(x) - tonumber(绿色长寿村导标旗坐标_酒店[1])) + math.abs(tonumber(y) - tonumber(绿色长寿村导标旗坐标_酒店[2]))
    local 距离长寿村当铺 = math.abs(tonumber(x) - tonumber(绿色长寿村导标旗坐标_当铺[1])) + math.abs(tonumber(y) - tonumber(绿色长寿村导标旗坐标_当铺[2]))
    local 距离长寿村村长家 = math.abs(tonumber(x) - tonumber(绿色长寿村导标旗坐标_村长家[1])) + math.abs(tonumber(y) - tonumber(绿色长寿村导标旗坐标_村长家[2]))
    local 距离长寿郊外 = math.abs(tonumber(x) - tonumber(绿色长寿村导标旗坐标_长寿郊外[1])) + math.abs(tonumber(y) - tonumber(绿色长寿村导标旗坐标_长寿郊外[2]))
    local 距离长寿村孟婆婆 = math.abs(tonumber(x) - tonumber(绿色长寿村导标旗坐标_孟婆婆[1])) + math.abs(tonumber(y) - tonumber(绿色长寿村导标旗坐标_孟婆婆[2]))
    local 距离长寿村飞机场 = math.abs(tonumber(x) - 111) + math.abs(tonumber(y) - 61)
    local table = {['距离长寿村飞机场']=距离长寿村飞机场, ['距离方寸山']=距离方寸山, ['距离钟书生']=距离钟书生,['距离长寿村酒店']=距离长寿村酒店,['距离长寿村当铺']=距离长寿村当铺,['距离长寿村村长家']=距离长寿村村长家,['距离长寿郊外']=距离长寿郊外,['距离长寿村孟婆婆']=距离长寿村孟婆婆}
    local 最近坐标点 = MinTable(table)
    if(最近坐标点 == '距离方寸山') then
        导航到方寸山门口()
    elseif(最近坐标点 == '距离钟书生') then
        导航到长寿村钟书生() 
    elseif(最近坐标点 == '距离长寿村飞机场') then
        导航到长寿村飞机场()
    elseif(最近坐标点 == '距离长寿村酒店') then
        导航到长寿村酒店()
    elseif(最近坐标点 == '距离长寿村当铺') then
        导航到长寿村当铺()
    elseif(最近坐标点 == '距离长寿村村长家') then
        导航到长寿村村长家()
    elseif(最近坐标点 == '距离长寿郊外') then
        导航到长寿村长寿郊外门口()
    elseif(最近坐标点 == '距离长寿村孟婆婆') then
        导航到长寿村孟婆婆()
    end
end
function 导航到傲来国药店门口() 
    使用导标旗('傲来国', 黄色傲来国导标旗坐标_药店屏幕xy[1], 黄色傲来国导标旗坐标_药店屏幕xy[2], 黄色傲来国导标旗坐标_药店Str)
end
function 导航到朱紫国大唐境外门口() 
    使用导标旗('朱紫国', 白色朱紫国导标旗坐标_大唐境外屏幕xy[1], 白色朱紫国导标旗坐标_大唐境外屏幕xy[2], 白色朱紫国导标旗坐标_大唐境外Str)
end
function 导航朱紫国大唐境外()
    while (true) do
        if bise_mo(小地图大唐境外) then
            显示器('小地图大唐境外')
            break 
        else
            导航到朱紫国大唐境外门口()
            chRandomsTap(24,958,0)
            mSleep(2000)
        end
        mSleep(100)
    end
end
function MinTable(t)
    local temp = nil
    local ret = ret
    for key, value in pairs(t) do
        if (temp == nil)  then
            temp = value
            ret = key
        end
        if temp > value then
            temp = value
            ret = key
        end
    end
    return ret
end
function 读取任务追踪栏文字() 
    return 百度文字识别(1826,296,2191,605)
end