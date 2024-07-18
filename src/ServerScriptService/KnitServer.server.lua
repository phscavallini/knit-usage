local Players = game:GetService("Players")
local ServerStorage = game:GetService("ServerStorage")
local Knit = require(game:GetService("ReplicatedStorage").Packages.Knit)

--[[
for i, v in pairs(ServerStorage.Source:GetDescendants()) do
    if v:IsA("ModuleScript") and v.Name:match("Service$") then
        require(v)
    end
end]]

-- mt melhor (diminui o runtime (na teoria))
Knit.AddServices(ServerStorage.Source.Money)

Knit.Start():andThen(function()
    print("Knit started")
end)