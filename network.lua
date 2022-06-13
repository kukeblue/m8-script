local sz = require("sz")--使用 sz 库前必须插入这一句
local json = sz.json--使用 JSON 模块前必须插入这一句
require("tsnet")
require("device")
thread = require('thread')

url = "http://192.168.0.13:3000"
header_send =  {}
header_send["content-type"]= "application/json"

-- 服务端全局变量
taskName = ''
taskNo = ''
accountNickName = ''
deviceId = 0
accountId = 0
isLogin = false
isWatuReady = false

local str = [[{"meme":[1,0,0,4,6,9,5,1,0,0],"我":"五毛","爱":"六块"}]]

function postJSON(path, body)
    status,header,content = http.post(url..path,{headers=header_send,postdata=body,opts={charset="utf8"}})
    if status == 200 then
        return content
    else
        dialog("失败")
    end
end
lastNote = ''
function httpSendTaskLogAsyn(type, note, count)
    if(lastNote == note) then
        return 1
    else
        lastNote = note
    end
    --处理协程的错误
    local thread_id = thread.create(function()
        httpSendTaskLog(type, note, count)
        return 1
    end,{
    callBack = function()
        -- dialog("协程结束了",0)
    end,
    errorBack = function(err)
        --协程错误结束，一般是引用空调用，err 是字符串
        -- dialog("协程错误了:"..err,0)
    end,
    catchBack = function(exp)
        --协程异常结束，异常是脚本调用了 throw 激发的，exp 是 table,exp.message 是异常原因
        -- local ts = require('ts')
        -- local cjson = ts.json
        -- dialog("协程异常了\n"..json.encode(exp),0)
    end
})
end



function httpSendTaskLog(type, note, taskCount)
    if isLogin == false then
        nLog(note)        
        return
    end
    params = {
        ["imei"] = imei, 
        ["nickName"] = accountNickName, 
        ["taskNo"] = taskNo, 
        ["deviceId"] = deviceId,
        ["accountId"] = accountId,
        ["taskName"] = taskName,
        ["note"] = note,
        ["type"] = type,
        ["time"] = os.time(),
    }
    if taskCount ~= nil then
        params["taskCount"] = taskCount
    end
    body = json.encode(params);
    status,header,content = http.post(url.."/api/task_log/add_task_log",{headers=header_send,postdata=body,opts={charset="utf8"}})
    if status == 200 then
    else
        dialog("日志发送失败")
    end
    return false
end

function httpGetStartTask()
    local body = '{"imei": "'..imei..'"}'
    status,header,content = http.post(url.."/api/task/get_start_task",{headers=header_send,postdata=body,opts={charset="utf8"}})
    if status == 200 then
        local res = json.decode(content);
        if res.status == 0 then
            taskName = res.data.taskName
            taskNo = res.data.taskNo
            accountNickName = res.data.accountNickName
            deviceId = res.data.deviceId
            accountId = res.data.accountId
            isLogin = true
            return true
        else 
            toast(res.message, 3)
        end
    else
        toast("没有匹配到任务")
    end
    return false
end

function httpGetReadyWatuTask()
    local body = '{"name": "主线挖图", "status": "启动中"}'
    status,header,content = http.post(url.."/api/client/get_one_task",{headers=header_send,postdata=body,opts={charset="utf8"}})
    if status == 200 then
        local res = json.decode(content);
        if res.status == 0 then
            taskName = res.data.taskName
            taskNo = res.data.taskNo
            accountNickName = res.data.accountNickName
            deviceId = res.data.deviceId
            accountId = res.data.accountId
            isWatuReady = true
            return true
        else 
            toast(res.message, 3)
        end
    else
        toast("没有匹配到任务")
    end
    return false
end

-- function httpCreateTask()
--     local body = '{"name": "流程打图","startTime": 1644283262,"endTime": 1644283262,"status": "初始化","note": "","taskNo": "2022020701","deviceImei": "902879041064870"}'
--     status,header,content = http.post(url.."/api/task/add_task",{headers=header_send,postdata=body,opts={charset="utf8"}})
--     if status == 200 then
--         toast("成功",5)
--         return content
--     else
--         dialog("失败")
--     end
-- end

-- httpGetStartTask()
-- httpSendTaskLog("launch", "启动脚本")

-- dialog(os.time(os.date("!*t")))