local Lib = {}

function Lib:init()
    print("Dialogue History library by AcousticJamm and BrandonK7200")
end

function Lib:load(data, new_file, index)
    Game:setFlag("dh_history", { })
end

return Lib
