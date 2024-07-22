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

Knit.Start({
    InboundMiddleware = {
        function(args)
            print("MIDDLEWARE", args)
            return true
        end,
    }
}):andThen(function()
    print("Knit started")
end):catch(warn)