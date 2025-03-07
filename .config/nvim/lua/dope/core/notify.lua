local M = {
  "rcarriga/nvim-notify",
  priority = 1000,
  lazy = false,
}

function M.config()
  local notify = require "notify"
  notify.setup {
    background_colour = "#000000",
    fps = 60,
    icons = {
      DEBUG = "",
      ERROR = "",
      INFO = "",
      TRACE = "✎",
      WARN = "",
    },
    level = 2,
    minimum_width = 50,
    render = "compact", -- default, minimal, simple, compact
    stages = "fade_in_slide_out", -- fade_in_slide_out, fade, slide, static
    timeout = 2500,
    top_down = true,
  }

  local banned_messages = { "No information available" }
  vim.notify = function(msg, ...)
    for _, banned in ipairs(banned_messages) do
      if msg == banned then
        return
      end
    end
    return notify
  end
end

return M
