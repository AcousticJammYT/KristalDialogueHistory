local Textbox, super = Class(Textbox)

function Textbox:setText(text, callback)
    super:setText(self, text, callback)
    local dh_history = Game:getFlag("dh_history", {})
    table.insert(dh_history, text)
end

return Textbox
