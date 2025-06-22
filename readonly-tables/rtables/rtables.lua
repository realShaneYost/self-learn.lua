local RTables = {}

function RTables.read_only(t)
    return setmetatable({}, {
        __index = t,
        __newindex = function(_, k, v)
            error(string.format("Error (%s, %s), read only", k, v))
        end,
        __tostring = function()
            local output = {}
            for k, v in pairs(t) do
                table.insert(output, string.format("%s=%s", k, v))
            end
            return table.concat(output, ", ")
        end,
        __metatable = false,
    })
end

return RTables
