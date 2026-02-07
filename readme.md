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
<Leader>e	toggle explorer on left side
<leader>c   list vim commands

## visual mode

<			decrease indent
> 			increase indent

## git

<Leader>ga	open blame window
q			close blame window
<CR> 		open blame commit
<Leader>go	open file/folder in git repository
<Leader>gd	opens a new diff that compares against the current index	
<Leader>gD	close git diff
<Leader>gr	revert to the specific commit
<Leader>gR	revert the current file to the specific commit

## telescope

<Leader>ff	find files
<Leader>fg	live grep
<Leader>fh	help tags
<leader>fb  find buffers
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

## Avante

<leader>wf	file selector
<leader>aa	ask assistant
<leader>af	focus to assistant window
<leader>ac	apply the suggestion

### Sidebar

]p			next prompt
[p			previous prompt
A			apply all
a			apply cursor
r			retry user request
e			edit user request
<Tab>		switch windows
<S-Tab>		reverse switch windows
d			remove file
@			add file
q			close sidebar
<Leader>aa	show sidebar
<Leader>at	toggle sidebar visibility
<Leader>ar	refresh sidebar
<Leader>af	switch sidebar focus

### Suggestion

<Leader>a?	select model
<Leader>an	new ask
<Leader>ae	edit selected blocks
<Leader>aS	stop current AI request
<Leader>ah	select between chat histories
<M-l>		accept suggestion
<M-]>		next suggestion
<M-[>		previous suggestion
<C-]>		dismiss suggestion
<Leader>ad	toggle debug mode
<Leader>as	toggle suggestion display
<Leader>aR	toggle repomap

### Files

<Leader>ac	add current buffer to selected files
<Leader>aB	add all buffer files to selected files

### Diff

co			choose ours
ct			choose theirs
ca			choose all theirs
cb			choose both
cc			choose cursor
]x			move to next conflict
[x			move to previous conflict

### Confirm

<Ctrl>wf	focus confirm window
c			confirm code
r			confirm response
i			confirm input
