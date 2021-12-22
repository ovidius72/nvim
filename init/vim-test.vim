let test#strategy = 'vimux'
let g:ultest_use_pty = 1
let g:ultest_output_on_line = 0


let g:test#php#phpunit#executable = 'docker exec b6eb55 /var/www/app/vendor/bin/phpunit --configuration /var/www/app/phpunit.xml.dist'
let test#javascript#jest#options = "--color=always"


nmap <silent><leader>tn :TestNearest<CR>
nmap <silent><leader>ti :TestNearest -strategy=floaterm<CR>
nmap <silent><leader>tf :TestFile<CR>
nmap <silent><leader>ts :TestSuite<CR>
nmap <silent><leader>tl :TestLast<CR>
nmap <silent><leader>tv :TestVisit<CR>
nmap <silent><leader>to :UltestSummary<CR>
nmap <silent><leader>tu :Ultest<CR>
nmap <silent><leader>tj <Plug>(ultest-output-jump)
nmap <silent><leader>tN <Plug>(ultest-run-nearest)
nmap <silent><leader>tF <Plug>(ultest-run-file)
nmap <silent>[t <Plug>(ultest-prev-fail)
nmap <silent>]t <Plug>(ultest-next-fail)

augroup UltestRunner
    au!
    au BufWritePost * UltestNearest
augroup END
