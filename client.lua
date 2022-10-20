local QBCore = exports['qb-core']:GetCoreObject()
local toilets = Config.Toilets



 
 exports['qb-target']:AddTargetModel(toilets, {
    options = {
    {
      type = "client",
      event = "razed-toilets:useToliet",
      icon = Target.IconsHighLight["smallBins"],
      label = Target.Label["smallBins"],
      targeticon = Target.Icon["smallBins"],
    }
  },
  distance = Config.TargetDistance,
})
