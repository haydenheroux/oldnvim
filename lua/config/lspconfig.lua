local lsp = require('lspconfig')
-- TODO: Capabilities
-- local capabilities = require('cmp_nvim_lsp').default_capabilities()

lsp.ccls.setup{}
lsp.gopls.setup{}
-- TODO: Java
lsp.tsserver.setup{}
lsp.jsonls.setup{}
-- TOOD: Kotlin
-- TODO: Install `ltex`
lsp.ltex.setup{}
lsp.sumneko_lua.setup{}
-- TODO: Markdown?
lsp.pyright.setup{}
-- TODO: R?
lsp.rust_analyzer.setup{}
-- TODO: Install `svelte`
lsp.svelte.setup{}
lsp.hls.setup{}
