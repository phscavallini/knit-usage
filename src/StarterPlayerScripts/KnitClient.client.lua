local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Knit = require(ReplicatedStorage.Packages.Knit)

Knit.Start():andThen(function()
    print("Knit started")
end):catch(warn)