-- device/quirks.lua
local quirks = {}

-- Table to store quirks by device model
local quirk_data = {
    ["go7"] = { disable_rotation_map = true },
    ["gocolor7"] = { disable_rotation_map = true },
    ["moaanmix7"] = { disable_rotation_map = true },
    ["xiaomi_reader"] = { disable_rotation_map = true }
}

-- Function to check if a device has a specific quirk
function quirks:has(model, quirk)
    return quirk_data[model] and quirk_data[model][quirk] or false
end

return quirks
