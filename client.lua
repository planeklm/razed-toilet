local QBCore = exports['qb-core']:GetCoreObject()
local toilets = Config.Toilets
 

-- Sit Pee
 exports['qb-target']:AddTargetModel(toilets, {
    options = {
    {
      type = "client",
      event = "razed-toilet:useToiletPee",
      label = "Use Toilet - Pee Standing",
      icon = "fa-solid fa-toilet",
    }
  },
  distance = Config.TargetDistance,
})

RegisterNetEvent('razed-toilet:useToiletPee')
AddEventHandler('razed-toilet:useToiletPee', function()
  ExecuteCommand(
    "e pee"
)
TriggerServerEvent("InteractSound_SV:PlayOnSource", "Pee", 0.3)
QBCore.Functions.Progressbar('Pee', 'Peeing...', 16000, false, true, {
    disableMovement = true,
    disableCarMovement = true,
    disableMouse = false,
    disableCombat = true
    }, {}, {}, {}, function()
        ExecuteCommand(
            "e c"
         )
         TriggerServerEvent('hud:server:RelieveStress', Config.relieveStress)  
    end, function()
        ExecuteCommand(
            "e c"
        )
        TriggerServerEvent('hud:server:GainStress', Config.gainStress)  
end)
end)

--Stand Pee
 exports['qb-target']:AddTargetModel(toilets, {
    options = {
    {
      type = "client",
      event = "razed-toilet:useToiletPeeSitting",
      label = "Use Toilet - Pee Sitting",
      icon = "fa-solid fa-toilet",
    }
  },
  distance = Config.TargetDistance,
})

RegisterNetEvent('razed-toilet:useToiletPeeSitting')
AddEventHandler('razed-toilet:useToiletPeeSitting', function()
  ExecuteCommand(
    "e sitchair"
)
TriggerServerEvent("InteractSound_SV:PlayOnSource", "Pee", 0.3)
QBCore.Functions.Progressbar('Pee', 'Peeing...', 16000, false, true, {
    disableMovement = true,
    disableCarMovement = true,
    disableMouse = false,
    disableCombat = true
    }, {}, {}, {}, function()
        ExecuteCommand(
            "e c"
         )
         TriggerServerEvent('hud:server:RelieveStress', Config.relieveStress)  
    end, function()
        ExecuteCommand(
            "e c"
        )
        TriggerServerEvent('hud:server:GainStress', Config.gainStress)  
end)
end)

--Poo
exports['qb-target']:AddTargetModel(toilets, {
  options = {
  {
    type = "client",
    event = "razed-toilet:useToiletPoo",
    label = "Use Toilet - Poop",
    icon = "fa-solid fa-toilet",
  }
},
distance = Config.TargetDistance,
})

RegisterNetEvent('razed-toilet:useToiletPoo')
AddEventHandler('razed-toilet:useToiletPoo', function()
  ExecuteCommand(
    "e sitchair"
)
TriggerServerEvent("InteractSound_SV:PlayOnSource", "Poo", 0.3)
QBCore.Functions.Progressbar('Poo', 'Pooing...', 16000, false, true, {
    disableMovement = true,
    disableCarMovement = true,
    disableMouse = false,
    disableCombat = true
    }, {}, {}, {}, function()
        ExecuteCommand(
            "e c"
         )
         TriggerServerEvent('hud:server:RelieveStress', Config.relieveStress)  
    end, function()
        ExecuteCommand(
            "e c"
        )
        TriggerServerEvent('hud:server:GainStress', Config.gainStress)  
end)
end)
