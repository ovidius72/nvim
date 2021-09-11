let test#strategy = 'vimux'
let g:ultest_use_pty = 1


let g:test#php#phpunit#executable = 'docker exec -it $(docker ps -n=-1 -q --filter name=php_maiare --format="{{.ID}}") /var/www/app/vendor/bin/phpunit --configuration /var/www/app/phpunit.xml.dist'
let g:test#php#phpunit#options = '--colors=always'


nmap <silent><leader>tn :TestNearest<CR>
nmap <silent><leader>ti :TestNearest -strategy=floaterm<CR>
nmap <silent><leader>tf :TestFile<CR>
nmap <silent><leader>ts :TestSuite<CR>
nmap <silent><leader>tl :TestLast<CR>
nmap <silent><leader>tv :TestVisit<CR>
