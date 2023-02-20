local Lib = {}

function Lib:init()
    print("Dialogue History library by AcousticJamm and BrandonK7200")
end

function Lib:load(data, new_file, index)
    Game.dh_history = { }
    Game.dh_faces = { }
    Game.dh_actor = { }
end

function Lib:onKeyPressed(key)
    if Input.pressed("v") then
        Assets.stopAndPlaySound("ui_select")
        Game.world:openMenu(MessageHistory())
    end
end

return Lib
