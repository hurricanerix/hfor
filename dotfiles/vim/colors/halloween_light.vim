" Vim color file
" Maintainer:	Richard Hawkins <rhawkins@duck.com>
" Version: 1.0.0
" Last Change:	2022-10-11

let g:colors_name = "halloween_light"

hi clear
syntax reset

let g:default_color='ctermfg=0 ctermbg=214'
let g:meta_color='ctermfg=208'
let g:misspelled_color='ctermfg=124 ctermbg=214 cterm=underline'
let g:focus1_color='ctermfg=55'
let g:focus2_color='ctermfg=22'
let g:focus3_color='ctermfg=28'
let g:focus4_color='ctermfg=34'
let g:special_color='ctermfg=126'
let g:callout_color='ctermfg=55 ctermbg=34'
 let g:status_color='ctermfg=55 ctermbg=34'
let g:statusnc_color='ctermfg=215 ctermbg=208'

execute 'hi Normal ' . g:default_color

"	*Comment	any comment
execute 'hi Comment ' . g:focus1_color

"	*Constant	any constant
"	 String		a string constant: "this is a string"
"	 Character	a character constant: 'c', '\n'
"	 Number		a number constant: 234, 0xff
"	 Boolean	a boolean constant: TRUE, false
"	 Float		a floating point constant: 2.3e10
execute 'hi Constant ' . g:focus4_color

"	*Identifier	any variable name
"	 Function	function name (also: methods for classes)
execute 'hi Identifier ' . g:focus2_color
execute 'hi Function ' . g:focus1_color

"	*Statement	any statement
"	 Conditional	if, then, else, endif, switch, etc.
"	 Repeat		for, do, while, etc.
"	 Label		case, default, etc.
"	 Operator	"sizeof", "+", "*", etc.
"	 Keyword	any other keyword
"	 Exception	try, catch, throw
execute 'hi Statement ' . g:focus2_color

"	*PreProc	generic Preprocessor
"	 Include	preprocessor #include
"	 Define		preprocessor #define
"	 Macro		same as Define
"	 PreCondit	preprocessor #if, #else, #endif, etc.
execute 'hi PreProc ' . g:default_color

"	*Type		int, long, char, etc.
"	 StorageClass	static, register, volatile, etc.
"	 Structure	struct, union, enum, etc.
"	 Typedef	A typedef
execute 'hi Type ' . g:focus3_color

"	*Special	any special symbol
"	 SpecialChar	special character in a constant
"	 Tag		you can use CTRL-] on this
"	 Delimiter	character that needs attention
"	 SpecialComment	special things inside a comment
"	 Debug		debugging statements
execute 'hi Special ' . g:special_color

"	*Underlined	text that stands out, HTML links

"	*Ignore		left blank, hidden  |hl-Ignore|

"	*Error		any erroneous construct
execute 'hi Error ' . g:default_color

"	*Todo		anything that needs extra attention; mostly the
"			keywords TODO FIXME and XXX
execute 'hi Todo ' . g:callout_color

" Extra
"ColorColumn	used for the columns set with 'colorcolumn'
"Conceal		placeholder characters substituted for concealed
"		text (see 'conceallevel')
"Cursor		the character under the cursor
"hi Cursor	ctermfg=black
"lCursor		the character under the cursor when |language-mapping|
"		is used (see 'guicursor')
"CursorIM	like Cursor, but used when in IME mode |CursorIM|
"CursorColumn	the screen column that the cursor is in when 'cursorcolumn' is
"		set
"CursorLine	the screen line that the cursor is in when 'cursorline' is
"		set
"Directory	directory names (and other special names in listings)
"DiffAdd		diff mode: Added line |diff.txt|
"DiffChange	diff mode: Changed line |diff.txt|
"DiffDelete	diff mode: Deleted line |diff.txt|
"DiffText	diff mode: Changed text within a changed line |diff.txt|
"EndOfBuffer	filler lines (~) after the last line in the buffer.
"		By default, this is highlighted like |hl-NonText|.
"ErrorMsg	error messages on the command line
"VertSplit	the column separating vertically split windows
"hi VertSplit	ctermfg=blue
"Folded		line used for closed folds
"FoldColumn	'foldcolumn'
"SignColumn	column where |signs| are displayed
execute 'hi SignColumn ' . g:meta_color
"IncSearch	'incsearch' highlighting; also used for the text replaced with
"		":s///c"
"LineNr		Line number for ":number" and ":#" commands, and when 'number'
"		or 'relativenumber' option is set.
execute 'hi LineNr ' . g:meta_color
"LineNrAbove	Line number for when the 'relativenumber'
"		option is set, above the cursor line.
"LineNrBelow	Line number for when the 'relativenumber'
"		option is set, below the cursor line.
"CursorLineNr	Like LineNr when 'cursorline' is set and 'cursorlineopt'
"		contains "number" or is "both", for the cursor line.
"CursorLineSign	Like SignColumn when 'cursorline' is set for the cursor line.
"CursorLineFold	Like FoldColumn when 'cursorline' is set for the cursor line.
"MatchParen	The character under the cursor or just before it, if it
"		is a paired bracket, and its match. |pi_paren.txt|
"
"ModeMsg	'showmode' message (e.g., "-- INSERT --")
"MoreMsg	|more-prompt|
"NonText	'@' at the end of the window, characters from 'showbreak'
"		and other characters that do not really exist in the text
"		(e.g., ">" displayed when a double-wide character doesn't
"		fit at the end of the line).
execute 'hi NonText ' . g:meta_color
"Normal		normal text
"Pmenu		Popup menu: normal item.
"PmenuSel	Popup menu: selected item.
"PmenuSbar	Popup menu: scrollbar.
"PmenuThumb	Popup menu: Thumb of the scrollbar.
"Question	|hit-enter| prompt and yes/no questions
"QuickFixLine	Current |quickfix| item in the quickfix window.
"Search		Last search pattern highlighting (see 'hlsearch').
"		Also used for similar items that need to stand out.
"SpecialKey	Meta and special keys listed with ":map", also for text used
"		to show unprintable characters in the text, 'listchars'.
"		Generally: text that is displayed differently from what it
"		really is.
execute 'hi SpecialKey ' . g:meta_color
"SpellBad	Word that is not recognized by the spellchecker. |spell|
"		This will be combined with the highlighting used otherwise.
execute 'hi SpellBad ' . g:misspelled_color
"SpellCap	Word that should start with a capital. |spell|
"		This will be combined with the highlighting used otherwise.
"SpellLocal	Word that is recognized by the spellchecker as one that is
"		used in another region. |spell|
"		This will be combined with the highlighting used otherwise.
"SpellRare	Word that is recognized by the spellchecker as one that is
"		hardly ever used. |spell|
"		This will be combined with the highlighting used otherwise.
"StatusLine	status line of current window
execute 'hi StatusLine ' . g:status_color
"StatusLineNC	status lines of not-current windows
"		Note: if this is equal to "StatusLine" Vim will use "^^^" in
"		the status line of the current window.
execute 'hi StatusLineNC ' . g:statusnc_color
"StatusLineTerm	status line of current window, if it is a |terminal| window.
"StatusLineTermNC   status lines of not-current windows that is a |terminal|
"		window.
"TabLine		tab pages line, not active tab page label
"TabLineFill	tab pages line, where there are no labels
"TabLineSel	tab pages line, active tab page label
"Terminal	|terminal| window (see |terminal-size-color|)
"Title		titles for output from ":set all", ":autocmd" etc.
"Visual		Visual mode selection
"VisualNOS	Visual mode selection when vim is "Not Owning the Selection".
"		Only X11 Gui's |gui-x11| and |xterm-clipboard| supports this.
"WarningMsg	warning messages
"WildMenu	current match in 'wildmenu' completion
"
"The 'statusline' syntax allows the use of 9 different highlights in the
"statusline and ruler (via 'rulerformat').  The names are User1 to User9.
"
"For the GUI you can use the following groups to set the colors for the menu,
"scrollbars and tooltips.  They don't have defaults.  This doesn't work for the
"Win32 GUI.  Only three highlight arguments have any effect here: font, guibg,
"and guifg.
"
"Menu		Current font, background and foreground colors of the menus.
"		Also used for the toolbar.
"		Applicable highlight arguments: font, guibg, guifg.
"
"		NOTE: For Motif and Athena the font argument actually
"		specifies a fontset at all times, no matter if 'guifontset' is
"		empty, and as such it is tied to the current |:language| when
"		set.
"
"Scrollbar	Current background and foreground of the main window's
"		scrollbars.
"		Applicable highlight arguments: guibg, guifg.
"
"Tooltip		Current font, background and foreground of the tooltips.
"		Applicable highlight arguments: font, guibg, guifg.
"
"		NOTE: For Motif and Athena the font argument actually
"		specifies a fontset at all times, no matter if 'guifontset' is
"		empty, and as such it is tied to the current |:language| when
"		set.
