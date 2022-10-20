local QBCore = exports['qb-core']:GetCoreObject()
local toilets = Config.Toilets
 
 exports['qb-target']:AddTargetModel(toilets, {
    options = {
    {
      type = "client",
      event = "razed-toilet:useToilet",
      label = "Use toilet",
      --icon = , -- Not set yet
      --targeticon = Target.Icon["smallBins"],
    }
  },
  distance = Config.TargetDistance,
})

RegisterNetEvent('razed-toliet:useToilet')
AddEventHandler('razed-toliet:useToilet', function()
    ExecuteCommand(
        "e pee"
    )
    QBCore.Functions.Progressbar('Pee', 'Peeing...', 1500, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true
        }, {}, {}, {}, function()
            ExecuteCommand(
                "e c"
             )
            TriggerClientEvent('QBCore:Notify', src, "You stopped peeing!")     
        end, function()
            ExecuteCommand(
                "e c"
            )
            TriggerClientEvent('QBCore:Notify', src, "That was a nice stinker!")   
            TriggerServerEvent('hud:server:RelieveStress', 10)  
    end)
end)
