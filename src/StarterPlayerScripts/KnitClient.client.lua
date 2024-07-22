local ProximityPromptService = game:GetService("ProximityPromptService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Knit = require(game:GetService("ReplicatedStorage").Packages.Knit)

local addedControllers = {}

for _, v in pairs(ReplicatedStorage.Source:GetDescendants()) do
    if not v:IsA("ModuleScript") or not v.Name:match("Controller$") then
        continue
    end
    table.insert(addedControllers, require(v))
end

--[[

-- disabled client promises

Knit.Start({ServerPromises = false}):andThen(function()
    print("Knit started")
end):catch(warn)

]]

local logger = function(args)
    print(args)
    return true
end

Knit.Start({ Middleware = { Inbound = { logger } } }):andThen(function()
    print("Knit started")
end):catch(warn)