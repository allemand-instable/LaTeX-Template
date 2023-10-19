# LaTeX Template

A simple LaTeX Template, with nice structure, and commands for ease of use

## compiling and watching using `latexmk` :

➤ efficient way to compile and watch for changes in your LaTeX files

If you use zsh (which I do) : [or just copy paste what's inside into your terminal]

```zsh
zsh compile.zsh
```

```zsh
zsh watch.zsh
```

if you use another shell (bash/...) you might have to adapt the script [chatGPT if you are hurry] to the targeted shell.

## project strcuture

```
📦LaTeX-Template
 ┣ 📂aux_files              ‹◀ latex compiling aux files (cache)
 ┣ 📂doc                    ‹◀ github README
 ┣ 📂out                    ‹◀ compiled files
 ┃ ┣ 📜documentation.pdf
 ┃ ┣ 📜rapport.pdf
 ┃ ┣ 📜tests.pdf
 ┣ 📂src                    ‹◀ actual project source code
 ┣ 📜.latexmkrc             ‹◀ compile settings
 ┣ 📜clear_aux.zsh
 ┣ 📜compile.zsh
 ┗ 📜watch.zsh
```

## documentation

The documentation can be accessed easily in a pdf format at the location :

```
📦LaTeX-Template
 ┣ 📂out                    ‹◀ compiled files
 ┃ ┣ 📜documentation.pdf        ← formatted custom commands and settings documentation
 ┃ ┣ 📜rapport.pdf
 ┃ ┣ 📜tests.pdf
```

If the user prefers in a markdown format : it can be found [here](./doc/doc.md) (📁 `doc/doc.md`)

## testing

```
📦LaTeX-Template
 ┣ 📂out                    ‹◀ compiled files
 ┃ ┣ 📜documentation.pdf
 ┃ ┣ 📜rapport.pdf
 ┃ ┣ 📜tests.pdf                ← testing commands and environments
```

## Packages (todo):
 <!-- TODO -->

The project `Latex-Template` relies on the following latex packages

| package      | used for                                         | `include/pacakges/` |
| ------------ | ------------------------------------------------ | ------------------- |
| inputenc     | utf-8 input                                      |                     |
| fontenc      |                                                  |                     |
| graphicx     |                                                  |                     |
| amsmath      | maths                                            |                     |
| amssymb      | maths                                            |                     |
| hyperref     | url links with custom text                       |                     |
| dsfont       | double stroke : better than `\mathbb`            |                     |
| babel        | french names for envs                            |                     |
| url          | ???                                              |                     |
| pgfplots     | latex curve graphs                               |                     |
| stmaryrd     | ???                                              |                     |
| mathtools    | convenient convergence arrows                    |                     |
| —            | —                                                | —                   |
| avant        | font                                             |                     |
| fontawesome5 | icons [`\info` / `\warn` ...]                    |                     |
| mfirstuc     | ???                                              |                     |
| float        | ???                                              |                     |
| multirow     | ???                                              |                     |
| awesomebox   | env with bar at the left [`\info` / `\warn` ...] |                     |
| minitoc      | table of content of the chapter                  |                     |
| minted       | code highlight                                   |                     |
| table        | tables                                           |                     |
| xcdraw       | ???                                              |                     |
| xcolor       | custom colors                                    |                     |
| array        | ???                                              |                     |
| booktabs     | ???                                              |                     |
| tabularx     | beautiful tables                                 |                     |
| algorithm2e  | algorithm environments                           |                     |
| footmisc     | ???                                              |                     |
| comment      | comment large blocks of code with env            |                     |
| tikz         |                                                  |                     |
| tikz-cd      |                                                  |                     |
| framed       | ???                                              |                     |
| multicol     | two-column documents                             |                     |
| changepage   | ???                                              |                     |


---

```zsh

```

```latex

```

```python

```
