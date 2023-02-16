local Textbox, super = Class(Textbox)

function Textbox:setText(text, callback)
    super:setText(self, text, callback)
    local dh_history = Game:getFlag("dh_history", {})
    table.insert(dh_history, 1, text)
    if #Game:getFlag("dh_history") > Kristal.getLibConfig("dialogue_history", "max_message") then
        table.remove(dh_history)
    end
end

function Textbox:setFace(face, ox, oy)
    super:setFace(self, face, ox, oy)
    local dh_faces = Game:getFlag("dh_faces", {})
    table.insert(dh_faces, 1, text)
    if #Game:getFlag("dh_faces") > Kristal.getLibConfig("dialogue_history", "max_message") then
        table.remove(dh_faces)
    end
end

return Textbox
