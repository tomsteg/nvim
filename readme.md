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
| `n` | `<Leader>hR` | Gesamten Buffer zurücksetzen |
| `n` | `<Leader>hp` | Hunk-Vorschau |
| `n` | `<Leader>hb` | Vollständige Blame-Info für aktuelle Zeile |
| `n` | `<Leader>tb` | Inline-Blame umschalten |
| `n` | `<Leader>hd` | Diff gegen Index |
| `n` | `<Leader>hD` | Diff gegen letzten Commit |
| `n` | `<Leader>td` | Gelöschte Zeilen anzeigen umschalten |
| `o`, `x` | `ih` | Text-Objekt: inneren Hunk auswählen |

---

## Copilot

| Modus | Kürzel | Aktion |
|-------|--------|--------|
| `i` | `Tab` | Vorschlag akzeptieren |
| `i` | `<C-l>` | Vorschlag wortweise akzeptieren |

---

## CodeCompanion — KI-Assistent

| Modus | Kürzel | Aktion |
|-------|--------|--------|
| `n` | `<Leader>ac` | Chat öffnen/schließen |
| `n`, `v` | `<Leader>aa` | Actions-Menü öffnen |
| `n`, `v` | `<Leader>ai` | Inline-Edit |

**Chat-Buffer:**

| Modus | Kürzel | Aktion |
|-------|--------|--------|
| `n`, `i` | `<CR>` / `<C-CR>` | Nachricht senden (eigene Belegung, Standard: `<C-s>`) |
| `n`, `i` | `<C-c>` | Chat schließen |

**Inline-Modus** (nach einer Inline-Anfrage):

| Modus | Kürzel | Aktion |
|-------|--------|--------|
| `n` | `g2` | Änderung akzeptieren |
| `n` | `g3` | Änderung ablehnen |
| `n` | `g1` | Änderung immer akzeptieren (für diesen Buffer) |
| `n` | `gv` | Diff ansehen |

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

## Obsidian.nvim — Zettelkasten

| Modus | Kürzel | Aktion |
|-------|--------|--------|
| `n` | `<Leader>z` | Quick Switch (Notiz wechseln) |
| `n` | `<Leader>zf` | Notizen suchen |
| `n` | `<Leader>zg` | Notizen durchsuchen (Grep) |
| `n` | `<Leader>zd` | Heutige Tagesnotiz öffnen |
| `n` | `<Leader>zz` | Wiki-Link unter Cursor folgen |
| `n` | `gf` | Wiki-Link unter Cursor folgen |
| `n` | `<Leader>zn` | Neue Notiz erstellen |
| `n` | `<Leader>zc` | Daily Notes auflisten |
| `n` | `<Leader>zb` | Backlinks für aktuelle Notiz |
| `n` | `<Leader>zI` | Bild einfügen |
| `i` | `[[` | Wiki-Link einfügen |
| `n` | `<CR>` | Smart Action: Listenpunkt → Aufgabe → erledigt (obsidian.nvim) |

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

## Terminal

| Modus | Kürzel | Aktion |
|-------|--------|--------|
| `n` | `<Leader>t` | Terminal in vertikalem Split öffnen |
| `t` | `<Esc><Esc>` | Terminal: in den Normal-Modus wechseln |

---

## Datei-Operationen

| Modus | Kürzel | Aktion |
|-------|--------|--------|
| `n` | `<Leader>dF` | Aktuelle Datei löschen (mit Bestätigung) |
| `n` | `<Leader>p` | Datei formatieren (prettier) |

---

## Markdown — Aufgabendaten (Obsidian Tasks Format)

Datum wird ans Ende der aktuellen Zeile angehängt bzw. aktualisiert falls bereits vorhanden.
Überfällige Daten werden **rot**, heutige **gelb** hervorgehoben.

| Modus | Kürzel | Aktion |
|-------|--------|--------|
| `n` | `<Leader>d1` | Fälligkeitsdatum `📅` heute einfügen |
| `n` | `<Leader>d2` | Fälligkeitsdatum `📅` morgen einfügen |
| `n` | `<Leader>d3` | Fälligkeitsdatum `📅` in 7 Tagen einfügen |
| `n` | `<Leader>d4` | Fälligkeitsdatum `📅` per Kalender wählen |
| `n` | `<Leader>d5` | Erinnerungsdatum `⏰` heute einfügen |
| `n` | `<Leader>d6` | Erinnerungsdatum `⏰` per Kalender wählen |

---

## Tastaturkürzel-Hilfe

| Modus | Kürzel | Aktion |
|-------|--------|--------|
| `n` | `<Leader>?` | Tastaturkürzel (diese Liste) in Telescope anzeigen |

---

## Übersicht nach Leader-Gruppe

| Präfix | Bereich |
|--------|---------|
| `<Leader>a_` | Asciidoctor (PDF) + CodeCompanion (KI) |
| `<Leader>b_` | Buffer |
| `<Leader>c` | Befehle (Telescope) |
| `<Leader>e` | Datei-Explorer (NvimTree) |
| `<Leader>f_` | Dateien suchen (Telescope) |
| `<Leader>g_` | Git (Telescope: Branches, Commits, Status) |
| `<Leader>gg` | Lazygit |
| `<Leader>h` | Suchhervorhebung umschalten |
| `<Leader>h_` | Gitsigns Hunk-Aktionen |
| `<Leader>l_` | LSP (Referenzen, Symbole, Diagnosen) |
| `<Leader>t` | Terminal öffnen |
| `<Leader>t_` | Umschalten (Blame, gelöschte Zeilen) |
| `<Leader>d_` | Markdown: Aufgabendaten (📅 Fälligkeit, ⏰ Erinnerung) |
| `<Leader>z_` | Obsidian.nvim (Zettelkasten) |
