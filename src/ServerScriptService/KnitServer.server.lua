local Players = game:GetService("Players")
local ServerStorage = game:GetService("ServerStorage")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Knit = require(game:GetService("ReplicatedStorage").Packages.Knit)

-- knit run

for i, v in pairs(ServerStorage.Source.Services:GetDescendants()) do
    if v:IsA("ModuleScript") and v.Name:match("Service$") then
        require(v)
    end
end

Knit.Start():andThen(function()
    print("Knit started")
end)