local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ServerStorage = game:GetService("ServerStorage")

-- knit
local Knit = require(ReplicatedStorage.Packages.Knit)

local ProfileService = Knit.CreateService {
    Name = "ProfileService"
}

function ProfileService:KnitStart()
    print("ProfileService started")
    return require(ReplicatedStorage.Packages.ProfileService)
end

function ProfileService:KnitInit()
    print("ProfileService initialized")
end

return ProfileService