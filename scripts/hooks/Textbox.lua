local Textbox, super = Class(Textbox)

function Textbox:setText(text, callback)
    super:setText(self, text, callback)
    local dh_history = Game:getFlag("dh_history", {})
    table.insert(dh_history, 1, text)
    if #Game:getFlag("dh_history") > Kristal.getLibConfig("dialogue_history", "max_message") then
        table.remove(dh_history)
    end
    if self.face then
        local dh_faces = Game:getFlag("dh_faces", {})
        table.insert(dh_faces, 1, self.face)
        if #Game:getFlag("dh_faces") > Kristal.getLibConfig("dialogue_history", "max_message") then
            table.remove(dh_faces)
        end
    else
        local dh_faces = Game:getFlag("dh_faces", {})
        table.insert(dh_faces, 1, nil)
        if #Game:getFlag("dh_faces") > Kristal.getLibConfig("dialogue_history", "max_message") then
            table.remove(dh_faces)
        end
    end
    if self.actor then
        local dh_actor = Game:getFlag("dh_actor", {})
        table.insert(dh_actor, 1, self.actor)
        if #Game:getFlag("dh_actor") > Kristal.getLibConfig("dialogue_history", "max_message") then
            table.remove(dh_actor)
        end
    else
        local dh_actor = Game:getFlag("dh_actor", {})
        table.insert(dh_actor, 1, "")
        if #Game:getFlag("dh_actor") > Kristal.getLibConfig("dialogue_history", "max_message") then
            table.remove(dh_actor)
        end
    end
end

return Textbox
