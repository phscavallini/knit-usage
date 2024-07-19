local Knit = require(game:GetService("ReplicatedStorage").Packages.Knit)

local MundialService = Knit.CreateService {
    Name = "MundialService",
    Mundiais = 1,
    Client = {},
}

function MundialService:KnitInit()
    print(MundialService.Name, "initialized")
end

function MundialService:KnitStart()
    print(MundialService.Name, "started")
end

function MundialService:CriarMundial(qtd : number): number
    MundialService.Mundiais += qtd
    print(string.format("agr o palmeiras tem %i mundiais", MundialService.Mundiais))
end

function MundialService:TemQuantosMundialKrai(): number
    return MundialService.Mundiais
end

return MundialService