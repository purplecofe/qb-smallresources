local check = false

CreateThread(function()
    while true do
        SetArtificialLightsStateAffectsVehicles(false)
        if IsPedInAnyVehicle(PlayerPedId()) then
            Wait(1)
            if IsPlayerFreeAiming(PlayerId()) then
                if GetFollowPedCamViewMode() == 4 and check == false then
                    check = false
                else
                    SetFollowVehicleCamViewMode(4)
                    check = true
                end
            else
                if check == true then
                    SetFollowVehicleCamViewMode(1)
                    check = false
                end
            end
        else
            Wait(1000)
        end
    end
end)