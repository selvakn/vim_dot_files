colorscheme wombat
set guifont=Monaco:h13.00
set guioptions-=T  "remove toolbar
set guioptions-=m  "remove menu

if has("gui_macvim")
  macmenu &File.New\ Tab key=<nop>
  map <D-t> :CommandT<CR>
endif
