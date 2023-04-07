--[[ ===================================================== ]]--
--[[               MH Sit Any Seat by MaDHouSe             ]]--
--[[ ===================================================== ]]--

local Translations = {
    info = {
        ['driver'] = "Besturder",
        ['codriver'] = "Passagier",
        ['driverback'] = "Achter Besturder",
        ['codriverback'] = "Achter Passagier",
        ['seat3'] = "Stoel 3",
        ['seat4'] = "Stoel 4",
        ['seat5'] = "Stoel 5",
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})