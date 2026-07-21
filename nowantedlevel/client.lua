local recoilAmount = 0.15
local horizontalRecoil = 0.05

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local ped = PlayerPedId()
        
        if IsPedShooting(ped) then
            local currentPitch = GetGameplayCamRelativePitch()
            local currentHeading = GetGameplayCamRelativeHeading()
            
            local newPitch = currentPitch + recoilAmount
            local newHeading = currentHeading + (math.random(-10, 10) * (horizontalRecoil / 10))
            
            SetGameplayCamRelativePitch(newPitch, 1.0)
            SetGameplayCamRelativeHeading(newHeading)
        end
    end
end)

Citizen.CreateThread(function ()
    while true do
        Citizen.Wait(1000)
        SetPlayerWantedLevel(PlayerId(), 0, false)
    end
end)