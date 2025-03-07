local M = {}

-- NOTE: GENERATE ASCII ART : https://textkool.com/en/test-ascii-art-generator?text=Neovim

M.jagervim = {
  "                                                                 ",
  "     ██╗ █████╗  ██████╗ ███████╗██████╗ ██╗   ██╗██╗███╗   ███╗",
  "     ██║██╔══██╗██╔════╝ ██╔════╝██╔══██╗██║   ██║██║████╗ ████║ ",
  "     ██║███████║██║  ███╗█████╗  ██████╔╝██║   ██║██║██╔████╔██║ ",
  "██   ██║██╔══██║██║   ██║██╔══╝  ██╔══██╗╚██╗ ██╔╝██║██║╚██╔╝██║ ",
  "╚█████╔╝██║  ██║╚██████╔╝███████╗██║  ██║ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
  " ╚════╝ ╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
}

M.neovim_filled = {
  "                                                       ",
  " ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
  " ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
  " ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
  " ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
  " ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
  " ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
  " ",
}

M.random = function(inputTable)
  local tableToUse = inputTable or M -- Use the provided table, or default to M if none is provided
  local keys = {}
  for key, _ in pairs(tableToUse) do
    table.insert(keys, key)
  end
  if #keys > 0 then
    local randomKey = keys[math.random(#keys)]
    return tableToUse[randomKey]
  else
    return M.jagervim
  end
end

return M
