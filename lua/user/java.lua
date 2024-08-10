-- lua/user/java.lua
local jdtls = require('lspconfig').jdtls
local cmp = require('cmp')

local home = os.getenv('HOME')
local workspace_path = home .. "/.local/share/eclipse/"
local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
local workspace_dir = workspace_path .. project_name

-- Java LSP configuration
jdtls.setup {
    cmd = {
        'java', '-Declipse.application=org.eclipse.jdt.ls.core.id1',
        '-Dosgi.bundles.defaultStartLevel=4', '-Declipse.product=org.eclipse.jdt.ls.core.product',
        '-Dlog.protocol=true', '-Dlog.level=ALL',
        '-Xms1g', '--add-modules=ALL-SYSTEM', '--add-opens', 'java.base/java.util=ALL-UNNAMED',
        '--add-opens', 'java.base/java.lang=ALL-UNNAMED',
        '-jar', home .. '/.local/share/eclipse/jdtls/plugins/org.eclipse.equinox.launcher_1.6.900.v20240613-2009.jar',
        '-configuration', home .. '/.local/share/eclipse/jdtls/config_linux',
        '-data', workspace_dir
    },
    root_dir = require('lspconfig').util.root_pattern(".git", "mvnw", "gradlew", "pom.xml", "build.gradle"),
    settings = {
        java = {
            signatureHelp = { enabled = true },
            contentProvider = { preferred = 'fernflower' },
            completion = {
                favoriteStaticMembers = {
                    "org.hamcrest.MatcherAssert.assertThat", "org.hamcrest.Matchers.*",
                    "org.hamcrest.CoreMatchers.*", "org.junit.jupiter.api.Assertions.*",
                    "java.util.Objects.requireNonNull", "java.util.Objects.requireNonNullElse",
                    "org.mockito.Mockito.*"
                }
            },
            sources = {
                organizeImports = {
                    starThreshold = 9999,
                    staticStarThreshold = 9999
                }
            }
        }
    },
    init_options = {
        bundles = {}
    },
    on_attach = function(client, bufnr)
        -- Custom keymaps and commands for Java LSP

        -- Setup nvim-cmp for Java
        cmp.setup.buffer({
            sources = {
                { name = 'nvim_lsp' },
                { name = 'buffer' },
                { name = 'path' },
                { name = 'luasnip' },
            },
        })
    end,
}

