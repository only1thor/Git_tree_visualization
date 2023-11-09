# Git kurs

## Versjonskontroll
### Hva er versjonskontroll
<bilde av versjonskontroll med kopi 1 av kopi2>
[Dette er også versjonskontroll - men det finnes en bedre måte]
Hvordan kopi-systemet skalerer når man er flere

### Hvilke alternativer finnes
* Filbasert
* Google docs versjonshistorikk
* Confluence versjonshistorikk
* Git er det siste i en lang rekke versjonskontrollsystemer - bygd på erfaringer fra f.eks. Subversion (SVN)

### Hva er fordelene med Git
* Distribuert
  * Lokal historikk
* Branching
* Merging
* Ytelse
* Stor brukerbase
* Gratis
* Open source

## Demo(?)

### Git init
* Lag et nytt repo
  * `git init`
    * > [Introduser basen]
  * `ls -lha` (se etter .git)
* Lag en ny fil
  * `touch README.md Docs.md`
  * `git status`
    * fortell om stage, tracked/untracked
* `git add`
  * > [Første node, uten id]
* `git commit`
  * > [Legg på id på noden]
* `git log`
* `git log --graph`
  * > `git log --graph --branches --oneline`
* `git status`

### Branch & fast-forward merge
* git checkout -b nytt-avsnitt
  * > [Legg til branch i treet + flytt HEAD + label nytt-avsnitt]
* > rediger Docs.md - legg til en linje
* git add
* git commit
  * > [Legg på id på noden]
* git checkout main
  * > [Flytt HEAD-label]
* git merge nytt-avsnitt
  * > [Flytt HEAD og main-label opp til nytt-avsnitt-label, alle står]
* > Observer at merge-strategien er fast-forward
* > `git log --graph --branches --oneline`
* git branch

### Branch & konflikt

### Remote
