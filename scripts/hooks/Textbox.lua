local Textbox, super = Class(Textbox)

function Textbox:setText(text, callback)
    super:setText(self, text, callback)
    local dh_history = Game:getFlag("dh_history", {})
    table.insert(dh_history, 1, text)
    if #Game:getFlag("dh_history") > Kristal.getLibConfig("dialogue_history", "max_message") then
        table.remove(dh_history)
    end
end

return Textbox
