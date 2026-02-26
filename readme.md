# Neovim Keyboard Shortcuts

**Leader-Taste: `<Space>`**

---

## Allgemein & Fenster-Navigation

| Modus | Kürzel | Aktion |
|-------|--------|--------|
| `n` | `<C-Space>` | WhichKey Leader-Menü öffnen |
| `n` | `<C-i>` | Vorwärts springen |
| alle | `<` | Gemappt auf `[` |
| alle | `>` | Gemappt auf `]` |
| `n` | `sv` | Vertikalen Split öffnen, in neues Fenster wechseln |
| `n` | `sh` | Horizontalen Split öffnen, in neues Fenster wechseln |
| `n` | `<Space>` | Zum nächsten Fenster wechseln (`<C-w>w`) |
| `n` | `<C-h>` | Zum linken Fenster |
| `n` | `<C-j>` | Zum unteren Fenster |
| `n` | `<C-k>` | Zum oberen Fenster |
| `n` | `<C-l>` | Zum rechten Fenster |
| `n` | `<C-w>+` | Fensterhöhe +5 |
| `n` | `<C-w>-` | Fensterhöhe -5 |

---

## Buffer & Suche

| Modus | Kürzel | Aktion |
|-------|--------|--------|
| `n` | `<Leader>bn` | Nächster Buffer |
| `n` | `<Leader>h` | Suchhervorhebung umschalten |
| `v` | `<` | Einrücken nach links (bleibt im Visual-Modus) |
| `v` | `>` | Einrücken nach rechts (bleibt im Visual-Modus) |

---

## Datei-Explorer — NvimTree

| Modus | Kürzel | Aktion |
|-------|--------|--------|
| `n` | `<Leader>e` | Datei-Explorer umschalten |

---

## Telescope — Dateien & Suche

| Modus | Kürzel | Aktion |
|-------|--------|--------|
| `n` | `<Leader>ff` | Dateien finden (inkl. versteckte) |
| `n` | `<Leader>fg` | Live Grep (Inhaltssuche) |
| `n` | `<Leader>fb` | Offene Buffer auflisten |
| `n` | `<Leader>fh` | Hilfe-Tags durchsuchen |
| `n` | `<Leader>fo` | Datei-Browser im aktuellen Verzeichnis |
| `n` | `<Leader>c` | Befehle durchsuchen & ausführen |
| `i` | `<Esc>` | Telescope-Picker schließen |

---

## Telescope — Git

| Modus | Kürzel | Aktion |
|-------|--------|--------|
| `n` | `<Leader>gf` | Git-getrackte Dateien durchsuchen |
| `n` | `<Leader>gb` | Git-Branches durchsuchen |
| `n` | `<Leader>gc` | Git-Commits durchsuchen |
| `n` | `<Leader>gs` | Git-Status anzeigen |

---

## Telescope — LSP

| Modus | Kürzel | Aktion |
|-------|--------|--------|
| `n` | `<Leader>lr` | Alle Referenzen anzeigen |
| `n` | `<Leader>ls` | Dokument-Symbole |
| `n` | `<Leader>ld` | Zur Definition springen |
| `n` | `<Leader>le` | Alle Diagnosen (projektweite) |
| `n` | `<Leader>lb` | Diagnosen für aktuellen Buffer |

---

## Git — Gitsigns (Hunk-Navigation)

| Modus | Kürzel | Aktion |
|-------|--------|--------|
| `n` | `]c` | Nächsten Hunk springen |
| `n` | `[c` | Vorherigen Hunk springen |
| `n`, `v` | `<Leader>hs` | Hunk stagen |
| `n`, `v` | `<Leader>hr` | Hunk zurücksetzen |
| `n` | `<Leader>hS` | Gesamten Buffer stagen |
| `n` | `<Leader>hu` | Gestagten Hunk rückgängig machen |
| `n` | `<Leader>hR` | Gesamten Buffer zurücksetzen |
| `n` | `<Leader>hp` | Hunk-Vorschau |
| `n` | `<Leader>hb` | Vollständige Blame-Info für aktuelle Zeile |
| `n` | `<Leader>tb` | Inline-Blame umschalten |
| `n` | `<Leader>hd` | Diff gegen Index |
| `n` | `<Leader>hD` | Diff gegen letzten Commit |
| `n` | `<Leader>td` | Gelöschte Zeilen anzeigen umschalten |
| `o`, `x` | `ih` | Text-Objekt: inneren Hunk auswählen |

---

## Git — git.nvim (Blame, Browse, PRs)

| Modus | Kürzel | Aktion |
|-------|--------|--------|
| `n` | `<Leader>ga` | Git-Blame-Fenster öffnen |
| `n` | `<Leader>go` | Datei/Ordner im Git-Repository (Browser) öffnen |
| `n` | `<Leader>gp` | Pull Request für aktuellen Branch öffnen |
| `n` | `<Leader>gn` | Neuen Pull Request erstellen |
| `n` | `<Leader>gd` | Git-Diff öffnen |
| `n` | `<Leader>gD` | Git-Diff schließen |
| `n` | `<Leader>gr` | Zu einem bestimmten Commit zurücksetzen |
| `n` | `<Leader>gR` | Aktuelle Datei zu einem bestimmten Commit zurücksetzen |
| `n` | `<Leader>gg` | Lazygit in schwebendem Terminal öffnen |
| Blame-Fenster | `q` | Blame-Fenster schließen |
| Blame-Fenster | `<CR>` | Blame-Commit öffnen |

---

## Copilot

| Modus | Kürzel | Aktion |
|-------|--------|--------|
| `i` | `Tab` | Vorschlag akzeptieren |
| `i` | `<C-l>` | Vorschlag wortweise akzeptieren |

---

## Completion — nvim-cmp

| Modus | Kürzel | Aktion |
|-------|--------|--------|
| `i` | `<C-d>` | Dokumentation nach oben scrollen |
| `i` | `<C-f>` | Dokumentation nach unten scrollen |
| `i` | `<C-Space>` | Vervollständigungsmenü öffnen |
| `i` | `<C-e>` | Vervollständigungsmenü schließen |
| `i` | `<CR>` | Ausgewählte Vervollständigung bestätigen |

---

## Asciidoctor

| Modus | Kürzel | Aktion |
|-------|--------|--------|
| `n` | `<Leader>ar` | PDF aus aktueller Datei generieren (`asciidoctor-pdf`) |
| `n` | `<Leader>ao` | Generiertes PDF in Safari öffnen |

---

## Telekasten — Zettelkasten

| Modus | Kürzel | Aktion |
|-------|--------|--------|
| `n` | `<Leader>z` | Telekasten-Panel öffnen (alle Befehle) |
| `n` | `<Leader>zf` | Notizen finden |
| `n` | `<Leader>zg` | Notizen durchsuchen (Grep) |
| `n` | `<Leader>zd` | Heutige Tagesnotiz öffnen |
| `n` | `<Leader>zz` | Wiki-Link unter Cursor folgen |
| `n` | `<Leader>zn` | Neue Notiz erstellen |
| `n` | `<Leader>zc` | Kalender anzeigen |
| `n` | `<Leader>zb` | Backlinks für aktuelle Notiz |
| `n` | `<Leader>zI` | Bild-Link einfügen |
| `i` | `[[` | Wiki-Link einfügen (Telekasten-Picker) |

---

## nvim-surround — Text einrahmen

| Modus | Kürzel | Aktion |
|-------|--------|--------|
| `n` | `ysiw*` | Wort mit `*` umschließen → `*Wort*` |
| `n` | `ysiw**` | Wort mit `**` umschließen → `**Wort**` |
| `n` | `yss"` | Gesamte Zeile mit `"` umschließen |
| `n` | `ds*` | Umgebende `*` entfernen |
| `n` | `cs*_` | `*` durch `_` ersetzen |
| `v` | `S*` | Markierten Text mit `*` umschließen |
| `v` | `S"` | Markierten Text mit `"` umschließen |

---

## Obsidian.nvim

| Modus | Kürzel | Aktion |
|-------|--------|--------|
| `n` | `gf` | Obsidian-Link folgen |

---

## Tastaturkürzel-Hilfe

| Modus | Kürzel | Aktion |
|-------|--------|--------|
| `n` | `<Leader>?` | Tastaturkürzel (diese Liste) in Telescope anzeigen |

---

## Übersicht nach Leader-Gruppe

| Präfix | Bereich |
|--------|---------|
| `<Leader>a_` | Asciidoctor (PDF) |
| `<Leader>b_` | Buffer |
| `<Leader>c` | Befehle (Telescope) |
| `<Leader>e` | Datei-Explorer (NvimTree) |
| `<Leader>f_` | Dateien suchen (Telescope) |
| `<Leader>g_` | Git (Blame, Diff, PR, Browse) |
| `<Leader>gg` | Lazygit |
| `<Leader>h` | Suchhervorhebung umschalten |
| `<Leader>h_` | Gitsigns Hunk-Aktionen |
| `<Leader>l_` | LSP (Referenzen, Symbole, Diagnosen) |
| `<Leader>t_` | Umschalten (Blame, gelöschte Zeilen) |
| `<Leader>z_` | Telekasten (Zettelkasten) |
