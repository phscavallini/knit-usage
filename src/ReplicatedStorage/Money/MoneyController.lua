local Knit = require(game:GetService("ReplicatedStorage").Packages.Knit)

local MoneyController = Knit.CreateController {
    Name = "MoneyController"
}

function MoneyController:KnitStart()

    local function ObserveMoney(money : number)
        print("Money:", money)
    end

    local MoneyService = Knit.GetService("MoneyService")
    MoneyService:GetMoney():andThen(ObserveMoney):andThen(function()
        MoneyService.MoneyChanged:Connect(ObserveMoney)
    end)
end

function MoneyController:KnitInit()
    print("MoneyController initialized")
end

return MoneyController