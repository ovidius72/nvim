lua require('jumpwire').setup({ config = { language = {
                  \['spec.ts'] = {
                  \  implementation = { type = 'fileExtension', data = 'ts'},
                  \  markup = { type = 'fileExtension', data = 'html'},
                  \  style = { type = 'fileExtension', data = 'css'}
                  \},
                  \['ts'] = {
                  \  test = { type = 'fileExtension', data = 'spec.ts'},
                  \  markup = { type = 'fileExtension', data = 'html'},
                  \  style = { type = 'fileExtension', data = 'css'},
                  \},
                  \['html'] = {
                  \  implementation = { type = 'fileExtension', data = 'ts'},
                  \  test = { type = 'fileExtension', data = 'spec.ts'},
                  \  style = { type = 'fileExtension', data = 'css'}
                  \},
                  \['css'] = {
                  \  implementation = { type = 'fileExtension', data = 'ts'},
                  \  test = { type = 'fileExtension', data = 'spec.ts'},
                  \  markup = { type = 'fileExtension', data = 'html'},
                  \},
                  \ }}})

noremap <leader>jt :lua require('jumpwire').jump('test')<CR>
noremap <leader>ji :lua require('jumpwire').jump('implementation')<CR>
noremap <leader>jm :lua require('jumpwire').jump('markup')<CR>
noremap <leader>js :lua require('jumpwire').jump('style')<CR>
