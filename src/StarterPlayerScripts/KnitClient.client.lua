local ProximityPromptService = game:GetService("ProximityPromptService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Knit = require(game:GetService("ReplicatedStorage").Packages.Knit)

for _, v in pairs(ReplicatedStorage.Source:GetDescendants()) do
    if v:IsA("ModuleScript") and v.Name:match("Controller$") then
        require(v)
    end
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