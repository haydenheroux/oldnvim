local lsp = require('lspconfig')
local coq = require('coq')

lsp.ccls.setup{coq.lsp_ensure_capabilities()}
lsp.gopls.setup{coq.lsp_ensure_capabilities()}
-- TODO: Java
lsp.tsserver.setup{coq.lsp_ensure_capabilities()}
lsp.jsonls.setup{coq.lsp_ensure_capabilities()}
-- TOOD: Kotlin
-- TODO: Install `ltex`
lsp.ltex.setup{coq.lsp_ensure_capabilities()}
lsp.sumneko_lua.setup{coq.lsp_ensure_capabilities()}
-- TODO: Markdown?
lsp.pyright.setup{coq.lsp_ensure_capabilities()}
-- TODO: R?
lsp.rust_analyzer.setup{coq.lsp_ensure_capabilities()}
-- TODO: Install `svelte`
lsp.svelte.setup{coq.lsp_ensure_capabilities()}
lsp.hls.setup{coq.lsp_ensure_capabilities()}
