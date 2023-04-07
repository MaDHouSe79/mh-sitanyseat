--[[ ===================================================== ]]--
--[[               MH Sit Any Seat by MaDHouSe             ]]--
--[[ ===================================================== ]]--

local Translations = {
    info = {
        ['driver'] = "Driver",
        ['codriver'] = "Codriver",
        ['driverback'] = "Rear Driver",
        ['codriverback'] = "Rear Passenger",
        ['seat3'] = "Seat 3",
        ['seat4'] = "Seat 4",
        ['seat5'] = "Seat 5",
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})