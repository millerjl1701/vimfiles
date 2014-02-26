Keyboard Mappings
=================

This is a listing of the current keymappings in the vimrc.


Note: The current <leader> character = ,


### Function keys
<F1>  => <ESC>
<F5>  => :GundoToggle<CR>    => toggle the Gundo window

### Miscellaneous
<leader><space>  => :noh  => clear search highlighting
<leader>_d       => "=strftime("%Y-%m-%d")<CR>p   => insert current date
<leader>e        => :Error    => sysntastic errors window
<leader>i        => :set invlist<CR> => toggle invisible character display
<leader>N        => :NERDtree  => open NERDtree window
<leader>W        => :%s/\v\s+$//g<cr>  => remove trailing white spaces


### Scratch Buffer
<leader>s   => open/edit scratch buffer to store and edit text that will be discarded
               when you quit/exit vim. The contents of the scratch buffer are not saved
               or stored in a file.
<leader>S   => open/edit scratch buffer in split window


### vim-fugitive mappings
<leader>gs   => :Gstatus  => git status window
<leader>gb   => :Gblame   => git blame in verticle window


### vim-surround mappings
<leader>"   => cs'"  => change surrounding single quotes to double quotes
<leader>'   => cs"'  => change surrounding double quotes to single quotes
<leader>}   => yss}  => wrap the entire current line in braces {line contents}
<leader>{   => yss{  => wrap the entire current line in braces with space { line contents }


### Window management mappings
<leader>w   => new verticle window
<leader>wb  => new window
<crtl>h     => move to Nth window left of the current window
<ctrl>j     => move to Nth window above the current window
<ctrl>k     => move to Nth window below the current window
<ctrl>l     => move to Nth window right of the current window
