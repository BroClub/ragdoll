local ragdoll = false

Citizen.CreateThread(function() --Create a Thread
    while true do
        Wait(0)
        if  ragdoll then
            SetPedToRagdoll(PlayerPedId(),1000,1000,0,true,true,false)--1000ms
        end
    end
end)

RegisterCommand('ragdoll', function() --Register our ragdoll command
    if not IsPedInAnyVehicle(PlayerPedId(), false) then
        ragdoll = not ragdoll
    end
end,false)

RegisterKeyMapping('ragdoll', 'Ragdoll', 'keyboard', 'g') -- add our key mapping



--[[

--Version of ragdoll with press and release

local ragdoll = false

Citizen.CreateThread(function()
    while true do
        Wait(0)
        if  ragdoll then
            SetPedToRagdoll(PlayerPedId(),-1,-1,0,true,true,false)
        end
    end
end)

RegisterCommand('+ragdoll', function()
        if not IsPedInAnyVehicle(PlayerPedId(), false) then
            ragdoll = true
        end
end,false)

RegisterCommand('-ragdoll',function()
        if not IsPedInAnyVehicle(PlayerPedId(), false) then
            ragdoll = false
        end
end,false)

RegisterKeyMapping('+ragdoll', 'Ragdoll', 'keyboard', 'g')

]]--
