local Textbox, super = Class(Textbox)

function Textbox:setText(text, callback)
    super:setText(self, text, callback)
end

return Textbox
