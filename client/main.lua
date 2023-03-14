AddEventHandler('onResourceStart', function(resourceName)
    if GetCurrentResourceName() ~= resourceName then return end
    crearBlips()
end)

AddEventHandler('onClientResourceStart', function (resourceName)
    if(GetCurrentResourceName() ~= resourceName) then return end
    crearBlips()
    end)
  

function crearBlips()
    
    for blips in pairs(Config.Ubicaciones) do
        if Config.Ubicaciones[blips]["showblip"] then
            local blip = AddBlipForCoord(Config.Ubicaciones[blips]["coords"]["x"], Config.Ubicaciones[blips]["coords"]["y"], Config.Ubicaciones[blips]["coords"]["z"])
            SetBlipSprite(blip, Config.Ubicaciones[blips]["blipsprite"])
            SetBlipScale(blip, Config.Ubicaciones[blips]["blipscale"])
            SetBlipDisplay(blip, 4)
            SetBlipColour(blip, Config.Ubicaciones[blips]["blipcolor"])
            SetBlipAsShortRange(blip, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentSubstringPlayerName(Config.Ubicaciones[blips]["label"])
            EndTextCommandSetBlipName(blip)
        end
    end
end
