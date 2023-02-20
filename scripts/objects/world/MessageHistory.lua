local MessageHistory, super = Class(Object)

function MessageHistory:init()
    super:init(self, 56, 60, 529, 350)
	
	self.parallax_x = 0
    self.parallax_y = 0

    self.draw_children_below = 0

    self.font = Assets.getFont("main")
    self.font_2 = Assets.getFont("plain")

    self.ui_move = Assets.newSound("ui_move")
    self.ui_select = Assets.newSound("ui_select")
    self.ui_cant_select = Assets.newSound("ui_cant_select")
    self.ui_cancel_small = Assets.newSound("ui_cancel_small")

    self.page = 1
	
	self.up_sprite = Assets.getTexture("ui/page_arrow_up")
	self.down_sprite = Assets.getTexture("ui/page_arrow_down")

    self.bg = UIBox(0, 0, self.width, self.height)
    self.bg.layer = -1
    self.bg.debug_select = false
    self:addChild(self.bg)

    self.textData = Game.dh_history

    self.scroll_y = 1
end

function MessageHistory:getText()
    local text = {}
    for _,history in ipairs(Game.dh_history) do
        table.insert(text, history)
    end
    return text
end

function MessageHistory:draw()
    love.graphics.setFont(self.font)
	
	love.graphics.print("Message History", 160, -10)

    love.graphics.setFont(self.font_2)

    local texts = self:getText()

    for i = self.scroll_y, math.min(#texts, self.scroll_y + 3) do
        local text = texts[i]
        local offset = i - self.scroll_y

        love.graphics.print(text, 100, 100 + (offset * 25))
    end
end

function MessageHistory:onKeyPressed(key, repeatable)
    if Input.isMenu(key) or Input.isCancel(key) then
        self.ui_cancel_small:stop()
        self.ui_cancel_small:play()
        Game.world:closeMenu()
        return
    end
end

function MessageHistory:close()
    Game.world.menu = nil
    self:remove()
end

function MessageHistory:update()
end

return MessageHistory
