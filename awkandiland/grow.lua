-- File grow.lua ; this causes minetest to self distruct but print as much memory as it can take
local tb = {}
local i = 0
local s = string.rep("a", 1024 * 1024)
while true do
    i = i + 1
    tb[i] = s .. i
    minetest.log("action", collectgarbage("count"), " KB")
end
