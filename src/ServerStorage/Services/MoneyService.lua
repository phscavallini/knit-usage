local Players = game:GetService("Players")
local Knit = require(game:GetService("ReplicatedStorage").Packages.Knit)

local MoneyService = Knit.CreateService {
    Name = "MoneyService",
    Client = {},
    _PlayerMoney =  {},
    _StartingMoney = 0,
}

function MoneyService:GetMoney(player : Player): number
    local money = self._PlayerMoney[player] or self._StartingMoney
    return money
end

function MoneyService:AddMoney(player : Player, amount: number)
    local newMoney = self:GetMoney(player) + amount
    self._PlayerMoney[player] = newMoney
end

function MoneyService:KnitStart()
    print("MoneyService Started")
end

function MoneyService:KnitInit()
    print("MoneyService Init")
    Players.PlayerRemoving:Connect(function(player)
        self._PlayerMoney[player] = 0
    end)
end

return MoneyService