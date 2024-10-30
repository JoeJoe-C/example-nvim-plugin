-- forces lua to import the modules again
package.loaded['dev'] = nil
package.loaded['greetings'] = nill
package.loaded['greetings.awesome-module'] = nill

-- set a keymap to refresh the file
vim.api.nvim_set_keymap('n', ',r', ':luafile dev/init.lua<cr>', {})

Greetings = require('greetings')

vim.api.nvim_set_keymap('n', ',w', ':lua Greetings.greet()<cr>', {})
