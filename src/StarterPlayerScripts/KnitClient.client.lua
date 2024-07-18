-- Client-side code
local Knit = require(game:GetService("ReplicatedStorage").Packages.Knit)
Knit.Start():catch(warn):await()

local MoneyService = Knit.GetService("MoneyService")

MoneyService:GetMoney():andThen(function(money)
    print(money)
end)

-- Don't want to use promises? When you start Knit on the client,
-- set the ServicePromises option to false: