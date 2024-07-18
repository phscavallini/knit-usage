local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ServerStorage = game:GetService("ServerStorage")

local Knit = require(ReplicatedStorage.Packages.Knit)

for i, v in pairs(ServerStorage.Source:GetDescendants()) do
    if v:IsA("ModuleScript") and v.Name:match("Service$") then
        require(v)
    end
end

Knit.Start():andThen(function()
    print("Knit started")
end):catch(warn)