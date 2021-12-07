-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(
                         vim.lsp.protocol.make_client_capabilities())

-- Emmet

require'lspconfig.configs'.ls_emmet = {
  default_config = {
    cmd = {'ls_emmet', '--stdio'},
    filetypes = {
      'html', 'css', 'scss', 'javascript', 'javascriptreact'
    }, -- Add the languages you use, see language support
    root_dir = function(_)
      return vim.loop.cwd()
    end,
    settings = {}
  }
}
require'lspconfig.configs'.emmet_ls = {
  default_config = {
    cmd = {'emmet-ls', '--stdio'},
    filetypes = {
      'html', 'css', 'scss', 'javascript', 'javascriptreact'
    },
    root_dir = function(_)
      return vim.loop.cwd()
    end,
    settings = {}
  }
}

require'lspconfig'.html.setup {
  cmd = {"vscode-html-language-server", "--stdio"},
  filetypes = {"html"},
  init_options = {
    configurationSection = {"html", "css", "javascript"},
    embeddedLanguages = {css = true, javascript = true}
  },
  single_file_support = true
}

require'lspconfig'.jsonls.setup({
  settings = {
    json = {
      schemas = {
        {
          fileMatch = {"package.json"},
          url = "https://json.schemastore.org/package.json"
        }, {
          fileMatch = {"jsconfig*.json"},
          url = "https://json.schemastore.org/jsconfig.json"
        }, {
          fileMatch = {
            ".prettierrc", ".prettierrc.json", "prettier.config.json"
          },
          url = "https://json.schemastore.org/prettierrc.json"
        }

      }

    }
  }
})

require'lspconfig'.sqls.setup {
  settings = {
    sqls = {
      connections = {
        {
          driver = 'mysql',
          dataSourceName = 'root:root@tcp(127.0.0.1:13306)/world'
        }, {
          driver = 'postgresql',
          dataSourceName = 'host=localhost port=5432 user=shin password=Pbt12345 dbname=test sslmode=disable'
        }
      }
    }
  }
}

local system_name
if vim.fn.has("mac") == 1 then
  system_name = "macOS"
elseif vim.fn.has("unix") == 1 then
  system_name = "Linux"
elseif vim.fn.has('win32') == 1 then
  system_name = "Windows"
else
  print("Unsupported system for sumneko")
end

-- set the path to the sumneko installation; if you previously installed via the now deprecated :LspInstall, use
local sumneko_root_path =
    '/home/shin/.config/nvim/lua-language-server'
local sumneko_binary = sumneko_root_path .. "/bin/" .. system_name
                           .. "/lua-language-server"

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

local langservers = {
  'html', 'cssls', 'jsonls', 'ls_emmet', 'tsserver', 'sumneko_lua',
  'vuels', 'sqls', 'vimls'
}

for _, server in ipairs(langservers) do
  if server == 'sumneko_lua' then
    require'lspconfig'[server].setup {
      capabilities = capabilities,
      cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"},
      settings = {
        Lua = {
          runtime = {
            -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
            version = 'LuaJIT',
            -- Setup your lua path
            path = runtime_path
          },
          diagnostics = {
            -- Get the language server to recognize the `vim` global
            globals = {'vim'}
          },
          workspace = {
            -- Make the server aware of Neovim runtime files
            library = vim.api.nvim_get_runtime_file("", true),
            checkThirdParty = false
          },
          -- Do not send telemetry data containing a randomized but unique identifier
          telemetry = {enable = false}
        }
      }
    }
  else
    require'lspconfig'[server].setup {capabilities = capabilities}
  end
end

