return {
  "ahmedkhalf/project.nvim",
  event = "VeryLazy",
  config = function()
    require("project_nvim").setup({
      -- Automatically detect root dirs using these patterns
      detection_methods = { "pattern" },
      patterns = { ".git", "Makefile", "package.json", "pyproject.toml" },

      -- Show hidden files in Telescope
      show_hidden = true,

      -- Uncomment to manually control which directories are projects
      -- manual_mode = true,
    })

    -- Load the Telescope extension
    require("telescope").load_extension("projects")
  end,
}
