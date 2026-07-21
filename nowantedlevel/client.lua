Citizen.CreateThread(function ()
    while true do
        Citizen.Wait(1000)
        SetPlayerWantedLevel(PlayerId(), 0, false)
    end
end)
