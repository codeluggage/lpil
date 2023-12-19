return {
  {
    "nvimdev/dashboard-nvim",
    opts = function(_, opts)
      -- figlet font "The Edge"
      local logo = [[
 ▄  █ ▄███▄   █    █    ████▄       ▄▄▄▄▄ ████▄ ▄███▄     ▄ 
█   █ █▀   ▀  █    █    █   █     ▄▀  █   █   █ █▀   ▀   █  
██▀▀█ ██▄▄    █    █    █   █         █   █   █ ██▄▄    █   
█   █ █▄   ▄▀ ███▄ ███▄ ▀████      ▄ █    ▀████ █▄   ▄▀ █   
   █  ▀███▀       ▀    ▀            ▀           ▀███▀       
  ▀                                                     ▀   
]]

      --       local logo = [[
      --  ▄▄▄▄▄▄▄ ▄▄▄     ▄▄▄▄▄▄▄ ▄▄▄▄▄▄ ▄▄   ▄▄
      -- █       █   █   █       █      █  █▄█  █
      -- █   ▄▄▄▄█   █   █    ▄▄▄█  ▄   █       █
      -- █  █  ▄▄█   █   █   █▄▄▄█ █▄█  █       █
      -- █  █ █  █   █▄▄▄█    ▄▄▄█      █       █
      -- █  █▄▄█ █       █   █▄▄▄█  ▄   █ ██▄██ █
      -- █▄▄▄▄▄▄▄█▄▄▄▄▄▄▄█▄▄▄▄▄▄▄█▄█ █▄▄█▄█   █▄█
      -- ]]

      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
    end,
  },
}
