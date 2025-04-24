return {
  "ahmedkhalf/project.nvim",
  lazy = false, -- Load at startup (you can change this to event-based later)
  dependencies = { "nvim-telescope/telescope.nvim" }, -- Ensure Telescope is available
  config = function()
    require("project_nvim").setup({
      -- Auto-detect root using common project files
      detection_methods = { "pattern" },
      patterns = { ".git", "Makefile", "package.json", "pyproject.toml" },

      -- Optional: Show hidden files in Telescope
      show_hidden = true,
    })

    -- Load Telescope extension
    require("telescope").load_extension("projects")
  end,
}
