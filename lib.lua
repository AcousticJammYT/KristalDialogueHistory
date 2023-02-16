local Lib = {}

function Lib:init()
    print("Dialogue History library by AcousticJamm and BrandonK7200")
end

function Lib:load(data, new_file, index)
    if not Game:getFlag("dh_history") then
        Game:setFlag("dh_history", { })
        Game:setFlag("dh_faces", { })
    end
end

return Lib
