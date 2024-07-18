local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Knit = require(ReplicatedStorage.Packages.Knit)
local MoneyConfig = require(script.Parent.MoneyConfig)

local MoneyService = Knit.CreateService {
    Name = "MoneyService",
    Client = {},
    _MoneyPerPlayer = {},
}
--[[
function MoneyService:GetMoney(player : Player)
    local money = self._MoneyPerPlayer[player] or MoneyConfig.StartingMoney
    return money
end

function MoneyService:AddMoney(player : Player, amount)
    local newMoney = self:GetMoney(player) + amount
    self._MoneyPerPlayer[player] = newMoney
end
]]

function MoneyService:KnitStart()
    print("MoneyService started")
end

function MoneyService:KnitInit()
    print("MoneyService initialized")
    Players.PlayerRemoving:Connect(function(player : Player)
        self._MoneyPerPlayer[player] = nil
    end)
end