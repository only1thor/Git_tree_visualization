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
* `git checkout -b nytt-avsnitt`
  * > [Legg til branch i treet + flytt HEAD + label nytt-avsnitt]
* > rediger Docs.md - legg til en linje
* `git diff`
* `git add`
* `git commit`
  * > [Legg på id på noden]
* `git checkout main`
  * > [Flytt HEAD-label, flipp branch-labels]
* `git merge nytt-avsnitt`
  * > [Flytt HEAD og main-label opp til nytt-avsnitt-label, alle står]
* > Observer at merge-strategien er fast-forward
* `git log --graph --branches --oneline`
* `git branch`

### Branch & konflikt
* `git checkout -b endre-avsnitt-2`
  * > [Legg til branch i treet + flytt HEAD + label endre-avsnitt-2]
* rediger/skriv nytt avsnitt i doc.md
* `git add`
* `git commit`
  * > [Legg på id på noden]
* > Woops, glemte noe, burde fikse noe annet i main
* `git checkout main`
  * > [Flytt HEAD-label, flipp branch-labels]
* rediger samme avsnitt, legg på eller fjern evt. liste, samme sted som forrige branch
* `git add`
* `git commit`
  * > [Legg på id på noden]
* `git merge endre-avsnitt-2`
  * > [Flytt HEAD og main-label opp til ny merge-commit-node, treet mot]
* > Rydd opp i konflikt
* `git add`
    * Poengtere at git add = resolve conflict
* `git commit`
  * > [legge på commit id]
* `git log --graph --branches --oneline`


### Remote


### Annet
git diff / git diff --cached


### Andre Git verktøy
F.eks. Idea / GitCola / VSCode
- Stage enkeltlinjer for ryddige commits osv

### Github vs Git
Rundtur i grensesnittet, repo, historikk, pull requests, github actions




## Konsept notater: 

### Commit ID
Commit = content + author + date + log(committ melding) + **previous commit** 

Checksum er viktig. 

- every ID is unique
- every commit is unique
- commits never change




# MVP
## Med git treet
- git init|clone
- <lag fil med gedit>
- git add
- git commit
- git log
- git show
- <endre fil med gedit>
- git add
- git commit
- git log
- git show <hash>
- <lag github repo + sett opp remote>
- git push
- (git pull)
- git switch --create
- git push
- git PR på github.
- Approve + Merge
- git log
- git status
- git pull
- git log
- git status

## Happy case til hit. 
- rediger på github (på main)
- rediger lokalt på main. 
- git pull (skap konflikt.) (forklare at pull er fetch+merge)

## uten git treet 
- super basic merge konflikt håndtering. 

```
>>>>>>>>>>>>>>>>>>>>>master
santoeuhsanoteu
=================
hoesunthaoseunth
<<<<<<<<<<<<<<<<<branch
```

```
git add . 
git commit
```
