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

if razed-toilet:useToilet = true then
    ExecuteCommand()
