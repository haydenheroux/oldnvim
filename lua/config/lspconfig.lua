local lsp = require('lspconfig')
local coq = require('coq')

lsp.ccls.setup{coq.lsp_ensure_capabilities()}
lsp.gopls.setup{coq.lsp_ensure_capabilities()}
-- TODO: Java
lsp.tsserver.setup{coq.lsp_ensure_capabilities()}
lsp.jsonls.setup{coq.lsp_ensure_capabilities()}
-- TOOD: Kotlin
lsp.ltex.setup{coq.lsp_ensure_capabilities()}
-- TODO: Lua
-- TODO: Markdown?
-- TODO: R?
lsp.rust_analyzer.setup{coq.lsp_ensure_capabilities()}
lsp.svelte.setup{coq.lsp_ensure_capabilities()}
