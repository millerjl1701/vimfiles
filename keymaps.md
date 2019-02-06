Keyboard Mappings
=================

This is a listing of some keymappings in the vimrc.


Note: The current <leader> character = ,


### Function keys
    <F1>  => <ESC>
    <F5>  => CtrlP to purge the cache for the current directory to get new
              files, remove deleted files and apply new ignore options.

### Miscellaneous
    <leader><space>  => :noh                          => clear search highlighting
    <leader>_d       => insert current date in format %Y-%m-%d
    <leader>e        => :Errors                       => sysntastic errors window
    <leader>i        => :set invlist<CR>              => toggle invisible character display
    <leader>N        => :NERDtree                     => open NERDtree window
    <leader>T        => :Tabularize /=><CR>           => tabularize / lineup the => signs
    <leader>=        => :Tabularize /=<CR>            => tabularize / lineup the = signs
    <leader>v        => open vimrc in a new vsplit to edit and reload when done
    <leader>W        => :%s/\v\s+$//g<cr>             => remove trailing white spaces


### vim-surround mappings
    <leader>"   => cs'"  => change surrounding single quotes to double quotes
    <leader>'   => cs"'  => change surrounding double quotes to single quotes

    Cmd Maps: ds                      delete surroundings
              cs                      change surroundings
              ys                      takes a valid vim motion or text object and wraps it
              yss                     wraps the current line ignoring leading whitespace
              visual mode selection   S
                                        in linewise visual mode, surroundings placed on separate
                                            lines and indented
                                        in blockwise visual mode, each line is surrounded

    Targets for mappings:
              ) } ] >                 wrap with these symbols
              b B r a                 same as ) } ] > for the symbols
              ( { [ <                 wrap with these symbols and trim whitespace
              ' " `                   quote marks
              w W s                   word  WORD  sentence
              p                       paragraph

    Replacement Target                when using cs, change to this target
              ) } ] >                 wrap with these symbols
              b B r a                 same as ) } ] > for the symbols
              ( { [ <                 wrap with these symbols and trim whitespace
              ' " `                   quote marks


### vim-fugitive mappings
    <leader>gs   => :Gstatus  => git status window
    <leader>gb   => :Gblame   => git blame in verticle window


### Window management mappings
    <leader>w   => new verticle window
    <leader>wb  => new window
    <crtl>h     => move to Nth window left of the current window
    <ctrl>j     => move to Nth window above the current window
    <ctrl>k     => move to Nth window below the current window
    <ctrl>l     => move to Nth window right of the current window


### Scratch Buffer
    <leader>s   => open/edit scratch buffer to store and edit text that will be discarded
                   when you quit/exit vim. The contents of the scratch buffer are not saved
                   or stored in a file.
    <leader>S   => open/edit scratch buffer in split window


