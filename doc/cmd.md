

# Mathematics Commands Documentation

## Overview

This section covers commands associated with symbols and other elements for mathematics or mathematical environments, organized in a table format for clarity.

## Commands and Descriptions

| Command             | Description                                                       | Location            | Example                                            |
| ------------------- | ----------------------------------------------------------------- | ------------------- | -------------------------------------------------- |
| `\P`                | Represents probability                                            | `proba_lettres.tex` | `$\P$`                                             |
| `\IE`               | Denotes expectation                                               | `proba_lettres.tex` | `$\IE$`                                            |
| `\V`                | Symbolizes variance                                               | `proba_lettres.tex` | `$\V$`                                             |
| `\Q`                | Represents the set of rational numbers                            | `proba_lettres.tex` | `$\Q$`                                             |
| `\IR`               | Denotes the set of real numbers                                   | `proba_lettres.tex` | `$\IR$`                                            |
| `\IH`               | Symbolizes Hilbert space                                          | `proba_lettres.tex` | `$\IH$`                                            |
| `\indep`            | Symbol for independence                                           | `proba.tex`         | `$\indep$`                                         |
| `\samelaw`          | Indicates that a variable follows the law of another              | `proba.tex`         | `$X \samelaw Z/\sigma$`                            |
| `\proba`            | Probability of an event                                           | `proba.tex`         | `$\proba{\lvert X \rvert > \varepsilon}$`          |
| `\probaloi`         | Probability of an event according to a specific law               | `proba.tex`         | `$\probaloi{X                                      | Y}{2X^2 - 7Y < \eta}$` |
| `\variance`         | Variance of a variable                                            | `proba.tex`         | `$\variance{\widehat X}$`                          |
| `\esperance`        | Expectation of a variable                                         | `proba.tex`         | `$\esperance{\widehat \theta}$`                    |
| `\esperanceloi`     | Expectation of a variable according to a specific law             | `proba.tex`         | `$\esperanceloi{Y                                  | X}{Y - X}$`            |
| `\esperancesachant` | Conditional expectation of a variable given another               | `proba.tex`         | `$\esperancesachant{X}{Y}$`                        |
| `\esploisach`       | Conditional expectation of a variable according to a specific law | `proba.tex`         | `$\esploisach{Z}{ ZU \times \log(\sigma)Z ^2}{U}$` |
| `\orthonorm`        | Symbol for orthonormal                                            | `property.tex`      | `$u \, \orthonorm \, \calF$`                       |
# CMD_MATHS-2.TEX Context

| Command                  | Location        | Short Description                                                             | Example                                       |
| ------------------------ | --------------- | ----------------------------------------------------------------------------- | --------------------------------------------- |
| `\cvl`                   | convergence.tex | convergence en loi                                                            | `$u_n \cvl{n}{+\infty} \ell$`                 |
| `\cvp`                   | convergence.tex | convergence en probabilité                                                    | `$u_n \cvp{n}{+\infty} \ell$`                 |
| `\cvps`                  | convergence.tex | convergence presque sûre                                                      | `$u_n \cvps{n}{+\infty} \ell$`                |
| `\cvL`                   | convergence.tex | convergence $\mathds L^p$                                                     | `$u_n \cvL{p}{n}{+\infty} \ell$`              |
| `\cvetr`                 | convergence.tex | convergence étroite                                                           | `$u_n \cvetr{n}{+\infty} \ell$`               |
| `\cvnorme`               | convergence.tex | convergence en norme                                                          | `$u_n \cvnorme{n}{+\infty} \ell$`             |
| `\cvpp`                  | convergence.tex | convergence presque partout                                                   | `$u_n \cvpp{n}{+\infty} \ell$`                |
| `\tend`                  | convergence.tex | tend vers [limite] quand [qté] tend vers [cible]                              | `$u_n \tend{n}{+\infty} \ell$`                |
| `\tendset`               | convergence.tex | tend vers dans un ensemble                                                    | `$u_n \tendset{n}{+\infty}{\mathcal F} \ell$` |
| `\intervaleint`          | ensembles.tex   | intervalle entier                                                             | `$\intervaleint{p}{q}$`                       |
| `\R`                     | ensembles.tex   | espace $\mathds R^p$                                                          | `$\R{p}$`                                     |
| `\classespace`           | ensembles.tex   | espace des fonctions de classe $k$ sur un ensemble $E$                        | `$\classespace{k}{E}$`                        |
| `\continuborne`          | ensembles.tex   | espace des fonctions continues et bornées sur un ensemble $E$ dans $F$        | `$\continuborne{E}{F}$`                       |
| `\continusupportcompact` |                 | espace des fonctions continues à support compact sur un ensemble $E$ dans $F$ | `$\continusupportcompact{E}{F}$`              |

# CMD_MATHS-3.TEX Context

| Command                                       | Location      | Short Description                                                          | Example                                             |
| --------------------------------------------- | ------------- | -------------------------------------------------------------------------- | --------------------------------------------------- |
| `\mesurable`                                  | ensembles.tex | espace des fonctions mesurables sur un ensemble $E$ dans $F$               | `$\mesurable{E}{F}$`                                |
| `\etageepositive`                             | ensembles.tex | espace des fonctions etagées positives sur un ensemble $E$ dans $F$        | `$\etageepositive{E}{F}$`                           |
| `\VA`                                         | ensembles.tex | espace des variables aléatoires à valeur dans $E$                          | `$\VA{E}$`                                          |
| `\matrixspace`                                | ensembles.tex | espace des matrices carrées de taille $p \times p$ à coefficients dans $E$ | `$\matrixspace{p}{E}$`                              |
| `\orthonormal`                                | ensembles.tex | symbole orthonormal                                                        | `$\orthonormal$`                                    |
| `\orthonormalselon`                           | ensembles.tex | symbole orthonormal selon un produit scalaire                              | `$\orthonormalselon{\mathds L^2}$`                  |
| `\grandR`                                     | ensembles.tex | symbole de l'ensemble des réels                                            | `$\grandR$`                                         |
| *Other letters*                               |               | autres lettres disponibles                                                 |                                                     |
| `\calR`                                       | ensembles.tex | symbole de l'ensemble des entiers naturels                                 | `$\calR$`                                           |
| *Other letters*                               |               | autres lettres disponibles                                                 |                                                     |
| `\Rplus` / `\Rmoins`                          | ensembles.tex | symbole de l'ensemble des réels positifs / négatifs                        | `$\Rplus$` / `$\Rmoins$`                            |
| `\Rplusetoile` / `\Rmoinsetoile` / `\Retoile` | ensembles.tex | symbole de l'ensemble des réels positifs / négatifs non nuls               | `$\Rplusetoile$` / `$\Rmoinsetoile$` / `$\Retoile$` |

# CMD_MATHS-4.TEX Context

| Command             | Location                    | Short Description                               | Example                           |
| ------------------- | --------------------------- | ----------------------------------------------- | --------------------------------- |
| `\indicatrice`      | fonctions_et_operateurs.tex | indicatrice d'un ensemble                       | `$\indicatrice{A}$`               |
| `\norme`            | fonctions_et_operateurs.tex | norme d'un élément                              | `$\norme{p}{x}$`                  |
| `\dist`             | fonctions_et_operateurs.tex | distance issue d'une norme entre deux vecteurs  | `$\dist{x}{y}$`                   |
| `\distnorme`        | fonctions_et_operateurs.tex | distance issue d'une norme entre deux vecteurs  | `$\distnorme{\infty}{x}{y}$`      |
| `\prodscal(*)`      | fonctions_et_operateurs.tex | produit scalaire entre deux vecteurs            | `$\prodscal{x}{y}$`               |
| `\prodscalselon(*)` | fonctions_et_operateurs.tex | produit scalaire [spécifié] entre deux vecteurs | `$\prodscalselon{x}{y}{\infty}$`  |
| `\argmax(\limits)`  | fonctions_et_operateurs.tex | argmax                                          | `$\argmax\limits_{x \in E} f(x)$` |
| `\argmin(\limits)`  | fonctions_et_operateurs.tex | argmin                                          | `$\argmin\limits_{x \in E} f(x)$` |
| `\inverse`          | fonctions_et_operateurs.tex | inverse d'un élément                            | `$\inverse{A}$`                   |
| `\isdef`            | fonctions_et_operateurs.tex | est défini comme                                | `$A \isdef B$`                    |
| `\comm`             | fonctions_et_operateurs.tex | commutant d'un ensemble d'opérateurs            | `$\comm{A}$`                      |
| `\rg`               | fonctions_et_operateurs.tex | rang d'un élément                               | `$\rg{A}$`                        |
| `\im`               | fonctions_et_operateurs.tex | image d'un élément                              | `$\im{A}$`                        |
| `\pgcd`             | fonctions_et_operateurs.tex | pgcd                                            | `$\pgcd{p}{q}$`                   |
| `\positive`         | fonctions_et_operateurs.tex | partie positive d'un élément                    | `$\positive{x^3 - x^2}$`          |

| Command             | File                        | Description                                           | Example                                                    |
| ------------------- | --------------------------- | ----------------------------------------------------- | ---------------------------------------------------------- |
| `\func`             | fonctions_et_operateurs.tex | définition d'une fonction                             | $f: \func{E}{F}{x}{f(x)}$                                  |
| `\opnorm`           | fonctions_et_operateurs.tex | norme opérateur d'un endomorphisme / norme "3 barres" | $\opnorm{A}$                                               |
|                     |                             |                                                       |                                                            |
| ---                 | ---                         | ---                                                   | ---                                                        |
| `\petitop(*)`       | limites.tex                 | petit o en probabilité                                | $\petitop{n^{- \frac 1 5}}$ / $\petitop*{n^{- \frac 1 5}}$ |
| `\grandop(*)`       | limites.tex                 | grand O en probabilité                                | $\grandop{n^{- \frac 1 5}}$ / $\grandop*{n^{- \frac 1 5}}$ |
| ---                 | ---                         | ---                                                   | ---                                                        |
| `\statrang`         | suites.tex                  | $k^e$ valeur ordonnée (ordre croissant)               | $\statrang Y n k$                                          |
| `\suiteensemble`    | suites.tex                  | suite à valeur dans $E$                               | $\suiteensemble E$                                         |
| `\suite`            | suites.tex                  | suite "u n"                                           | $\suite u n$                                               |
| `\soussuite`        | suites.tex                  | sous suite indexée par $k$                            | $\soussuite u k$                                           |
| `\famille`          | suites.tex                  | famille d'objets indexée sur un ensemble $I$          | $\famille {\mathds X}{i}$                                  |
| `\suitecomposition` | suites.tex                  | suite d'images d'une suite $x_k$ par la fonction $f$  | $\suitecomposition f x k$                                  |
| `\suitestatrang`    | suites.tex                  | ???                                                   | $\suitestatrang X \eta k$                                  |
| `\famfinie`         | suites.tex                  | ensemble fini d'éléments de $[\cdot]$ à $[\cdot]$     | $\famfinie x 1 n$                                          |
| `\fromto`           | suites.tex                  | de $[\cdot]$ à $[\cdot]$                              | $\fromto X 1 p$                                            |
| `\ordered`          | suites.tex                  | élément ordonné (ici $k^e$)                           | $\ordered X k$                                             |

| Command     | File         | Description                                                           | Example                    |
| ----------- | ------------ | --------------------------------------------------------------------- | -------------------------- |
| `\leb`      | integral.tex | Intégrale de Lebesgue (symbol différenciel)                           | $\leb$                     |
| `\lebesgue` | integral.tex | Intégrale de Lebesgue $\oplus$ ensemble                               | $\lebesgue {\mathds X}$    |
| `\lebint`   | integral.tex | Intégrale de Lebesgue $\oplus$ de $a$ à $b$                           | $\lebint a b$              |
| `\lebm`     | integral.tex | Intégrale de Lebesgue (ensemble $\oplus$ intégrande $\oplus$ mesure ) | $\lebm {\mathds X} f \mu$  |
| `\boch`     | integral.tex | Intégrale de Bochner (symbol différenciel)                            | $\boch$                    |
| `\bochner`  | integral.tex | Intégrale de Bochner $\oplus$ ensemble                                | $\bochner {\mathds X}$     |
| `\bochint`  | integral.tex | Intégrale de Bochner $\oplus$ de $a$ à $b$                            | $\bochint a b$             |
| `\bochm`    | integral.tex | Intégrale de Bochner (ensemble $\oplus$ intégrande $\oplus$ mesure )  | $\bochm {\mathds X} f \mu$ |
| `\riem`     | integral.tex | Intégrale de Riemann (symbol différenciel)                            | $\riem$                    |
| `\riemann`  | integral.tex | Intégrale de Riemann $\oplus$ ensemble                                | $\riemann {\mathds X}$     |
| `\riemint`  | integral.tex | Intégrale de Riemann $\oplus$ de $a$ à $b$                            | $\riemint a b$             |
| `\riemm`    | integral.tex | Intégrale de Riemann (ensemble $\oplus$ intégrande $\oplus$ mesure )  | $\riemm {\mathds X} f \mu$ |
| `\pet`      | integral.tex | Intégrale de Pettis (symbol différenciel)                             | $\pet$                     |
| `\pettis`   | integral.tex | Intégrale de Pettis $\oplus$ ensemble                                 | $\pettis {\mathds X}$      |
| `\petint`   | integral.tex | Intégrale de Pettis $\oplus$ de $a$ à $b$                             | $\petint a b$              |
| `\petm`     | integral.tex | Intégrale de Pettis (ensemble $\oplus$ intégrande $\oplus$ mesure )   | $\petm {\mathds X} f \mu$  |

# Custom Colors Definition

Custom colors that can be used in other commands such as `\tcolorize[color]{text}` or within math environments with `$\colorize[color]{\somemath}$`.

| color name                  | color                                                  |
| --------------------------- | ------------------------------------------------------ |
| `flatuicolors_blue`         | <span style="background-color: #2980b9">#2980b9</span> |
| `flatuicolors_green`        | <span style="background-color: #16a085">#16a085</span> |
| `flatuicolors_greenish`     | <span style="background-color: #10ac84">#10ac84</span> |
| `flatuicolors_purple`       | <span style="background-color: #574b90">#574b90</span> |
| `flatuicolors_purple_light` | <span style="background-color: #786fa6">#786fa6</span> |
| `flatuicolors_purple_dark`  | <span style="background-color: #2c2c54">#2c2c54</span> |
| `flatuicolors_rose`         | <span style="background-color: #c44569">#c44569</span> |
| `flatuicolors_orange_light` | <span style="background-color: #f19066">#f19066</span> |
| `flatuicolors_red_light`    | <span style="background-color: #e66767">#e66767</span> |
| `flatuicolors_biscay`       | <span style="background-color: #303952">#303952</span> |
| `flatuicolors_corn_flower`  | <span style="background-color: #546de5">#546de5</span> |
| `flatuicolors_imperial`     | <span style="background-color: #222f3e">#222f3e</span> |
| `flatuicolors_aqua`         | <span style="background-color: #01a3a4">#01a3a4</span> |
| `flatuicolors_blue_light`   | <span style="background-color: #0abde3">#0abde3</span> |
| `flatuicolors_blue_deep`    | <span style="background-color: #54a0ff">#54a0ff</span> |
| `flatuicolors_blue_devil`   | <span style="background-color: #227093">#227093</span> |
| `flatuicolors_magenta`      | <span style="background-color: #f368e0">#f368e0</span> |
| `flatuicolors_orange`       | <span style="background-color: #ff9f43">#ff9f43</span> |
| `flatuicolors_yellow`       | <span style="background-color: #ffb142">#ffb142</span> |
| `flatuicolors_tomato`       | <span style="background-color: #eb2f06">#eb2f06</span> |
| `flatuicolors_light_gray`   | <span style="background-color: #bdc3c7">#bdc3c7</span> |

# CMD_GRAPHICS-1.TEX CONTEXT

## Commands/Graphics

Displays an environment delimited with a blue line on the left, with an Info Icon located at the left of the line.

| Command     | Location       | Color                                                                                     | Symbol                                          |
| ----------- | -------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------- |
| `\info`     | awesomebox.tex | <span style="background-color: #3498db; color: #ffffff;">flatuicolors_blue</span>         | ![Info Circle](#faInfoCircle)                   |
| `\chk`      | awesomebox.tex | <span style="background-color: #2ecc71; color: #ffffff;">flatuicolors_green</span>        | ![Check Circle](#faCheckCircle)                 |
| `\brain`    | awesomebox.tex | <span style="background-color: #a29bfe; color: #ffffff;">flatuicolors_purple_light</span> | ![Brain](#faBrain)                              |
| `\warn`     | awesomebox.tex | <span style="background-color: #f39c12; color: #ffffff;">flatuicolors_orange_light</span> | ![Exclamation Triangle](#faExclamationTriangle) |
| `\nope`     | awesomebox.tex | <span style="background-color: #e74c3c; color: #ffffff;">flatuicolors_red_light</span>    | ![Times Circle](#faTimesCircle)                 |
| `\cogs`     | awesomebox.tex | <span style="background-color: #273c75; color: #ffffff;">flatuicolors_imperial</span>     | ![Cogs](#faCogs)                                |
| `\citer`    | awesomebox.tex | <span style="background-color: #3498db; color: #ffffff;">flatuicolors_corn_flower</span>  | ![Quote Right](#faQuoteRight)                   |
| `\avion`    | awesomebox.tex | <span style="background-color: #8e44ad; color: #ffffff;">flatuicolors_purple_dark</span>  | ![Fighter Jet](#faFighterJet)                   |
| `\question` | awesomebox.tex | <span style="background-color: #00cec9; color: #ffffff;">flatuicolors_aqua</span>         | ![Question Circle](#faQuestionCircle)           |
| `\idee`     | awesomebox.tex | <span style="background-color: #f1c40f; color: #ffffff;">flatuicolors_yellow</span>       | ![Lightbulb](#faLightbulb)                      |
| `\book`     | awesomebox.tex | <span style="background-color: #f39c12; color: #ffffff;">flatuicolors_orange_light</span> | ![Book](#faBook)                                |
| `\flask`    | awesomebox.tex | <span style="background-color: #2c3e50; color: #ffffff;">flatuicolors_blue_devil</span>   | ![Flask](#faFlask)                              |

Note: Replace `#faInfoCircle`, `#faCheckCircle`, etc., with the actual path to the symbol images or use FontAwesome icons directly if supported.

# CMD_GRAPHICS-2.TEX CONTEXT

## Commands/Graphics Overview

Displays an environment delimited with a blue line on the left, with an Info Icon located at the left of the line.

## Commands Table

| Command        | Location     | Short Description                            | Example                                                                                |
| -------------- | ------------ | -------------------------------------------- | -------------------------------------------------------------------------------------- |
| `\blackboxed`  | blackbox.tex | black rect. box                              | `\blackboxed{custom text}`                                                             |
| `\greenboxed`  | blackbox.tex | green rect. box                              | `\greenboxed{custom text}`                                                             |
| `\blueboxed`   | blackbox.tex | blue rect. box                               | `\blueboxed{custom text}`                                                              |
| `\purpleboxed` | blackbox.tex | purple rect. box                             | `\purpleboxed{custom text}`                                                            |
| `\orangeboxed` | blackbox.tex | orange rect. box                             | `\orangeboxed{custom text}`                                                            |
| `\redboxed`    | blackbox.tex | red rect. box                                | `\redboxed{custom text}`                                                               |
| `\aquaboxed`   | blackbox.tex | aqua rect. box                               | `\aquaboxed{custom text}`                                                              |
| `\icon`        | blackbox.tex | fontawesome icon with text                   | `\icon{Github}{10}{GitHub}`                                                            |
| `\circled`     | circled.tex  | circled text                                 | `\circled{1}`                                                                          |
| `\tcolorize`   | colorize.tex | colored text                                 | `\tcolorize[flatuicolors_green]{custom text}`                                          |
| `\colorize`    | colorize.tex | colored math input (within math environment) | `$\colorize[flatuicolors_rose]{\lambda \cdot \vec a \in \mathcal H \oplus \mathds T}$` |

Note: The examples provided use LaTeX commands and environments. The actual rendering of these commands will depend on the LaTeX package and environment setup.