let s:slc={}
let s:slc.purple2 = ['c991e1', 141]
let s:slc.purple = ['906cff', 135]

let s:slc.lighter_gray= ['b2b2b2', 249]
let s:slc.light_gray = ['c6c6c6', 251]
let s:slc.dark_asphalt = ['565575', 236]

let s:slc.yellow = ['ffe9aa', 228]
let s:slc.orange  = ['ffb378', 215]

let s:slc.red = ['ff5458', 203]
let s:slc.light_red = ['ff8080', 204]

let s:slc.blue = ['91ddff', 159]
let s:slc.dark_blue = ['65b2ff', 75]

let s:slc.cyan = ['63f2f1', 121]
let s:slc.light_cyan = ['aaffe4', 122]

let s:slc.green = ['62d196', 119]
let s:slc.light_green = ['95ffa4', 120]

let s:slc.black = ['1e1c31', 237]
let s:slc.black2 = ['212121', 0]


let s:slc.white = ['f3f3f3', 237]

function! spaceline#colorscheme#challenger_deep#challenger_deep()
    call spaceline#spaceline#SpaceHL('HomeMode',s:slc,'black','red')
    if get(g:,'spaceline_seperate_style', 'arrow') == 'slant'
        call spaceline#spaceline#SpaceHL('homemoderight',s:slc,'red','black')
        call spaceline#spaceline#SpaceHL('FileNameRight',s:slc,'cyan','black')
        call spaceline#spaceline#SpaceHL('VimModeRight',s:slc,'cyan','black')
        call spaceline#spaceline#SpaceHL('FileSizeRight',s:slc,'cyan','black')
        call spaceline#spaceline#SpaceHL('GitLeft',s:slc,'cyan','black')
        call spaceline#spaceline#SpaceHL('Gitright',s:slc,'cyan','black')
    elseif get(g:,'spaceline_seperate_style','arrow') == 'slant-fade'
        call spaceline#spaceline#SpaceHL('homemoderight',s:slc,'red','black')
        call spaceline#spaceline#SpaceHL('FileNameRight',s:slc,'cyan','black')
        call spaceline#spaceline#SpaceHL('FileSizeRight',s:slc,'cyan','black')
        call spaceline#spaceline#SpaceHL('VimModeRight',s:slc,'black','black')
        call spaceline#spaceline#SpaceHL('GitLeft',s:slc,'cyan','black')
        call spaceline#spaceline#SpaceHL('Gitright',s:slc,'cyan','black')
    elseif get(g:,'spaceline_seperate_style', 'arrow') == 'arrow-fade'
        call spaceline#spaceline#SpaceHL('homemoderight',s:slc,'red','black')
        call spaceline#spaceline#SpaceHL('FileNameRight',s:slc,'black','cyan')
        call spaceline#spaceline#SpaceHL('FileSizeRight',s:slc,'cyan','black')
        call spaceline#spaceline#SpaceHL('VimModeRight',s:slc,'red','blue')
        call spaceline#spaceline#SpaceHL('GitLeft',s:slc,'black','cyan')
        call spaceline#spaceline#SpaceHL('Gitright',s:slc,'cyan','black')
    else
        call spaceline#spaceline#SpaceHL('homemoderight',s:slc,'black','red')
        call spaceline#spaceline#SpaceHL('FileNameRight',s:slc,'black','cyan')
        call spaceline#spaceline#SpaceHL('FileSizeRight',s:slc,'black','cyan')
        call spaceline#spaceline#SpaceHL('GitLeft',s:slc,'black','cyan')
        call spaceline#spaceline#SpaceHL('Gitright',s:slc,'black','cyan')
    endif

    call spaceline#spaceline#SpaceHL('FileName',s:slc,'purple2','black')
    call spaceline#spaceline#SpaceHL('Filesize',s:slc,'black','cyan')
    call spaceline#spaceline#SpaceHL('HeartSymbol',s:slc, 'orange','black')
    call spaceline#spaceline#SpaceHL('CocError',s:slc,'red','black')
    call spaceline#spaceline#SpaceHL('CocWarn',s:slc,'orange','black')
    call spaceline#spaceline#SpaceHL('GitInfo',s:slc,'black','cyan')
    call spaceline#spaceline#SpaceHL('CocBar',s:slc,'cyan','black')
    call spaceline#spaceline#SpaceHL('LineInfoLeft',s:slc,'purple','black')

    if get(g:,'spaceline_seperate_style', 'arrow') == 'arrow-fade'
        call spaceline#spaceline#SpaceHL('LineFormatRight',s:slc,'cyan','purple')
    else
        call spaceline#spaceline#SpaceHL('LineFormatRight',s:slc,'purple','cyan')
    endif

    call spaceline#spaceline#SpaceHL('StatusEncod',s:slc,'black','purple')
    call spaceline#spaceline#SpaceHL('StatusFileFormat',s:slc,'purple','purple')
    call spaceline#spaceline#SpaceHL('StatusLineinfo',s:slc,'black','cyan')
    call spaceline#spaceline#SpaceHL('EndSeperate',s:slc,'purple2','cyan')
    call spaceline#spaceline#SpaceHL('VimMode',s:slc,'cyan','black')
    call spaceline#spaceline#SpaceHL('emptySeperate1',s:slc,'cyan','black')
endfunction
