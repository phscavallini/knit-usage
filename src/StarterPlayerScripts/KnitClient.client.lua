-- Client-side code
local Knit = require(game:GetService("ReplicatedStorage").Packages.Knit)

Knit.Start():andThen(function()
    print("Knit started")
end):catch(warn)