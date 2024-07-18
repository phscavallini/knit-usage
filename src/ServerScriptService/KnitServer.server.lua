local Players = game:GetService("Players")
local Knit = require(game:GetService("ReplicatedStorage").Packages.Knit)

-- Create the service:
local MoneyService = Knit.CreateService {
    Name = "MoneyService",
    _PlayerMoney =  {},
    _DefaultValue = 0
}

-- Add some methods to the service:
Players.PlayerAdded:Connect(function(player : Player)
    MoneyService._PlayerMoney[player] = MoneyService:GetMoney(player) or 0
end)

function MoneyService:GetMoney(player): number
    -- Do some sort of data fetch
    return self._PlayerMoney[player]
end

function MoneyService:GiveMoney(player, amount): any
    -- Do some sort of data fetch
    local money = self:GetMoney(player)
    self._PlayerMoney[player] = (money + amount)
end

function MoneyService.Client:GetMoney(player : Player)
    return self.Server:GetMoney(player)
end

Knit.Start():catch(warn)