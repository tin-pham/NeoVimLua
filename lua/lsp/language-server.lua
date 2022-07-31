local mason = require('mason')
local mason_lspconfig = require('mason-lspconfig')

local lspconfig = require("lspconfig")
local servers = {"jsonls", "sumneko_lua", "emmet_ls", "tsserver", "cssls", "html"}
mason.setup({
  ui = {
    icons = {package_installed = "✓", package_pending = "➜", package_uninstalled = "✗"},
    keymaps = {
      -- Keymap to expand a package
      toggle_package_expand = "<CR>",
      -- Keymap to install the package under the current cursor position
      install_package = "i",
      -- Keymap to reinstall/update the package under the current cursor position
      update_package = "u",
      -- Keymap to check for new version for the package under the current cursor position
      check_package_version = "c",
      -- Keymap to update all installed packages
      update_all_packages = "U",
      -- Keymap to check which installed packages are outdated
      check_outdated_packages = "C",
      -- Keymap to uninstall a package
      uninstall_package = "X",
      -- Keymap to cancel a package installation
      cancel_installation = "<C-c>",
      -- Keymap to apply language filter
      apply_language_filter = "<C-f>"
    }
  }
})
mason_lspconfig.setup({ensure_installed = servers})

for _, server in pairs(servers) do
  local opts = {
    on_attach = require("lsp.diagnostic_signs").on_attach,
    capabilities = require("lsp.diagnostic_signs").capabilities
  }
  local has_custom_opts, server_custom_opts = pcall(require, "lsp.settings." .. server)
  if has_custom_opts then opts = vim.tbl_deep_extend("force", opts, server_custom_opts) end
  lspconfig[server].setup(opts)
end
