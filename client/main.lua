--[[ ===================================================== ]]--
--[[               MH Sit Any Seat by MaDHouSe             ]]--
--[[ ===================================================== ]]--

local QBCore = exports['qb-core']:GetCoreObject()
local PlayerData = {}

local function GetIn(vehicle, seat)
    if IsVehicleSeatFree(vehicle, seat) then
        SetVehicleDoorsLocked(vehicle, 0)
        TaskEnterVehicle(PlayerPedId(), vehicle, -1, seat, 1.0, 1, 0)
    end
end

local function LoadTagetModels()
    for k, vehicle in pairs(QBCore.Shared.Vehicles) do
        exports['qb-target']:AddTargetModel(k, {
            options = {
                {
                    type = "client",
                    icon = "fas fa-car",
                    label = Lang:t('info.driver'),
                    action = function(entity)
                        if not IsEntityAVehicle(entity) then return false end
                        GetIn(entity, -1)
                    end,
                    canInteract = function(entity, distance, data)
                        if not IsEntityAVehicle(entity) then return false end
                        if not IsVehicleSeatFree(entity, -1) then return false end
                        local lockstate = GetVehicleDoorLockStatus(entity) 
                        if lockstate > 1 then return false end
                        return true
                    end
                },
                {
                    type = "client",
                    icon = "fas fa-car",
                    label = Lang:t('info.codriver'),
                    action = function(entity)
                        if not IsEntityAVehicle(entity) then return false end
                        GetIn(entity, 0)
                    end,
                    canInteract = function(entity, distance, data)
                        if not IsEntityAVehicle(entity) then return false end
                        if not IsVehicleSeatFree(entity, 0) then return false end
                        local lockstate = GetVehicleDoorLockStatus(entity) 
                        if lockstate > 1 then return false end
                        return true
                    end
                },
                {
                    type = "client",
                    icon = "fas fa-car",
                    label = Lang:t('info.driverback'),
                    action = function(entity)
                        if not IsEntityAVehicle(entity) then return false end
                        GetIn(entity, 1)
                    end,
                    canInteract = function(entity, distance, data)
                        if not IsEntityAVehicle(entity) then return false end
                        if not IsVehicleSeatFree(entity, 1) then return false end
                        local lockstate = GetVehicleDoorLockStatus(entity) 
                        if lockstate > 1 then return false end
                        return true
                    end
                },
                {
                    type = "client",
                    icon = "fas fa-car",
                    label = Lang:t('info.codriverback'),
                    action = function(entity)
                        if not IsEntityAVehicle(entity) then return false end
                        GetIn(entity, 2)
                    end,
                    canInteract = function(entity, distance, data)
                        if not IsEntityAVehicle(entity) then return false end
                        if not IsVehicleSeatFree(entity, 2) then return false end
                        local lockstate = GetVehicleDoorLockStatus(entity) 
                        if lockstate > 1 then return false end
                        return true
                    end
                },  
                {
                    type = "client",
                    icon = "fas fa-car",
                    label = Lang:t('info.seat3'),
                    action = function(entity)
                        if not IsEntityAVehicle(entity) then return false end
                        GetIn(entity, 3)
                    end,
                    canInteract = function(entity, distance, data)
                        if not IsEntityAVehicle(entity) then return false end
                        if not IsVehicleSeatFree(entity, 3) then return false end
                        local lockstate = GetVehicleDoorLockStatus(entity) 
                        if lockstate > 1 then return false end
                        return true
                    end
                },
                {
                    type = "client",
                    icon = "fas fa-car",
                    label = Lang:t('info.seat4'),
                    action = function(entity)
                        if not IsEntityAVehicle(entity) then return false end
                        GetIn(entity, 4)
                    end,
                    canInteract = function(entity, distance, data)
                        if not IsEntityAVehicle(entity) then return false end
                        if not IsVehicleSeatFree(entity, 4) then return false end
                        local lockstate = GetVehicleDoorLockStatus(entity) 
                        if lockstate > 1 then return false end
                        return true
                    end
                },
                {
                    type = "client",
                    icon = "fas fa-car",
                    label = Lang:t('info.seat5'),
                    action = function(entity)
                        if not IsEntityAVehicle(entity) then return false end
                        GetIn(entity, 5)
                    end,
                    canInteract = function(entity, distance, data)
                        if not IsEntityAVehicle(entity) then return false end
                        if not IsVehicleSeatFree(entity, 5) then return false end
                        local lockstate = GetVehicleDoorLockStatus(entity) 
                        if lockstate > 1 then return false end
                        return true
                    end
                },
            },
            distance = 5.0 
        })
    end
end

AddEventHandler('onResourceStart', function(resource)
    if resource == GetCurrentResourceName() then
        LoadTagetModels()
    end
end)

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    PlayerData = QBCore.Functions.GetPlayerData()
    LoadTagetModels()
end)