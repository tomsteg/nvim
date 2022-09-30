# important keymaps

## normal mode

sv			split vertical
sh			split horizontal
<space>		cycle windows
C-h			goto left window
C-j			goto right window
C-k			goto top window
C-l 		goto bottom window
C-Up		horizontal increase window
C-Down		horizontal decrease window
C-Left		vertical decrease window
C-Right		vertical increase window
<Leader>h	toggle highlightsearch
<Leader>el	toggle explorer on left side

## visual mode

<			decrease indent
> 			increase indent

## git

<Leader>ga	open blame window
q			close blame window
<CR> 		open bleme commit
<Leader>go	open file/folder in git repository
<Leader>gd	opens a new diff that compares against the current index	
<Leader>gD	close git diff
<Leader>gr	revert to the specific commit
<Leader>gR	revert the current file to the specific commit

## telescope

<Leader>ff	find files
<Leader>fg	live grep
<Leader>fh	help tags
<Leader>gf	git files
<Leader>gb	git branches
<Leader>gc	git commits
<Leader>gs	git status

<Leader>lr	lsp references
<Leader>ls	lsp symbols
<Leader>ld	lsp definitions
<Leader>le	lsp diagnostics

## Completion

<C-d>		Scroll docs -4
<C-f>		Scroll docs 4
<C-Space>	Complete
<C-e>		Close
<CR>		Confirm

## Packer

-- You must run this or `PackerSync` whenever you make changes to your plugin configuration
-- Regenerate compiled loader file
:PackerCompile

-- Remove any disabled or unused plugins
:PackerClean

-- Clean, then install missing plugins
:PackerInstall

-- Clean, then update and install plugins
-- supports the `--preview` flag as an optional first argument to preview updates
:PackerUpdate

-- Perform `PackerUpdate` and then `PackerCompile`
-- supports the `--preview` flag as an optional first argument to preview updates
:PackerSync

-- Loads opt plugin immediately
:PackerLoad completion-nvim ale
