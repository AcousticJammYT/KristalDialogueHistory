local Lib = {}

function Lib:init()
    print("Dialogue History library by AcousticJamm and BrandonK7200")
end

function Lib:load(data, new_file, index)
    if new_file then
        Game:setFlag("dh_history", { })
    end
end

return Lib
