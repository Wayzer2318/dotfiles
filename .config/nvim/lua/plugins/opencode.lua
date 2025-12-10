return {
  "NickvanDyke/opencode.nvim",
  dependencies = {
    { "folke/snacks.nvim", opts = { input = {}, picker = {}, terminal = {} } },
  },
  config = function()
    vim.g.opencode_opts = {
      -- Ta configuration, si nécessaire.
    }
    vim.o.autoread = true

    -- Raccourcis modifiés avec <Space> comme préfixe
    vim.keymap.set({ "n", "x" }, "<Space>aa", function()
      require("opencode").ask("@this: ", { submit = true })
    end, { desc = "Ask opencode" })
    vim.keymap.set({ "n", "x" }, "<Space>ax", function()
      require("opencode").select()
    end, { desc = "Execute opencode action…" })
    vim.keymap.set({ "n", "x" }, "<Space>ag", function()
      require("opencode").prompt("@this")
    end, { desc = "Add to opencode" })
    vim.keymap.set({ "n", "t" }, "<Space>at", function()
      require("opencode").toggle()
    end, { desc = "Toggle opencode" })
    vim.keymap.set("n", "<S-C-u>", function()
      require("opencode").command("session.half.page.up")
    end, { desc = "opencode half page up" })
    vim.keymap.set("n", "<S-C-d>", function()
      require("opencode").command("session.half.page.down")
    end, { desc = "opencode half page down" })

    -- Les raccourcis "+" et "-" sont optionnels, tu peux les supprimer si tu ne les utilises pas.
    vim.keymap.set("n", "+", "<Space>a", { desc = "Increment", noremap = true })
    vim.keymap.set("n", "-", "<Space>x", { desc = "Decrement", noremap = true })
  end,
}
