set mouse=a

if exists('g:GuiLoaded')
	GuiTabline 0
	GuiPopupmenu 0
	"GuiLinespace 6
	"GuiFont! Cascadia\ Code:h11
	GuiFont! OperatorMono\ Nerd\ Font:h12
    GuiScrollBar 0

endif

if exists('g:fvim_loaded')
    " good old 'set guifont' compatibility with HiDPI hints...
    if g:fvim_os == 'windows' || g:fvim_render_scale > 1.0
      set guifont=Cascadia\ Code:h16
      FVimFontAntialias v:true
      FVimFontLigature v:true
      FVimFontLineHeight '+3.0'
      FVimFontSubpixel v:true
      FVimUIPopupMenu v:false
    else
      set guifont=OperatorMono\ Nerd\ Font:h16
    endif
      
endif

