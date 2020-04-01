map <leader>pt :NERDTreeToggle<CR>
map <leader>pf :NERDTreeFocus<CR>
map <leader>pn :NERDTreeFind<CR>

let g:NERDTreeGitStatusNodeColorization = 1
let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

" let g:NERDTreeColorMapCustom = {
"     \ "Modified"  : "#528AB3",  
"     \ "Staged"    : "#538B54",  
"     \ "Untracked" : "#BE5849",  
"     \ "Dirty"     : "#299999",  
"     \ "Clean"     : "#87939A"   
"     \ }

let g:NERDTreeColorMapCustom = {
    \ "Modified"  : ["#528AB3", "NONE", "NONE", "NONE"],  
    \ "Staged"    : ["#538B54", "NONE", "NONE", "NONE"],  
    \ "Untracked" : ["#BE5849", "NONE", "NONE", "NONE"],  
    \ "Dirty"     : ["#299999", "NONE", "NONE", "NONE"],  
    \ "Clean"     : ["#87939A", "NONE", "NONE", "NONE"]   
    \ }

if(has_key(g:which_key_map, "p"))
  let g:which_key_map["p"]["f"] = 'NerdTree Focus'
  let g:which_key_map["p"]["n"] = 'NerdTree Focus'
  let g:which_key_map["p"]["t"] = 'NerdTree Toggle'
endif
