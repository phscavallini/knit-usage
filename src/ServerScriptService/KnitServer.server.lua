local Players = game:GetService("Players")
local ServerStorage = game:GetService("ServerStorage")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Knit = require(game:GetService("ReplicatedStorage").Packages.Knit)

-- knit run
local MundialService = require(ServerStorage.Source.Services.MundialService)

Knit.Start():andThen(function()
    print("Knit started")
end)

MundialService:CriarMundial(100)
print(MundialService:TemQuantosMundialKrai())