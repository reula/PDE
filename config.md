<!--
Add here global page variables to use throughout your website.
-->
+++
author = "Oscar Reula, Pablo Montes and Joaquin Pelle"
mintoclevel = 2

# uncomment and adjust the following line if the expected base URL of your website is something like [www.thebase.com/yourproject/]
# please do read the docs on deployment to avoid common issues: https://franklinjl.org/workflow/deploy/#deploying_your_website
# prepath = "yourproject"

# Add here files or directories that should be ignored by Franklin, otherwise
# these files might be copied and, if markdown, processed by Franklin which
# you might not want. Indicate directories by ending the name with a `/`.
# Base files such as LICENSE.md and README.md are ignored by default.
ignore = ["node_modules/", "franklin", "franklin.pub"]

# RSS (the website_{title, descr, url} must be defined to get RSS)
generate_rss = true
website_title = "PDE Course"
website_descr = "Course Notes on Partial Differential Equations: Analytical and Numerical Methods"
website_url   = "https://oreula.github.io/PDE/"
prepath = "PDE"
weave = false
+++

<!--
Add here global latex commands to use throughout your pages.
-->
\newcommand{\R}{\mathbb R}
\newcommand{\scal}[1]{\langle #1 \rangle}

\newcommand{\rnc}{\renewcommand}

\newcommand{\ii}{\'\i{}}
\newcommand{\a}{\'a}
\newcommand{\e}{\'e}
\newcommand{\o}{\'o}
\newcommand{\u}{\'u}

\newcommand{\alf}{\mbox{$\alpha$}}
\newcommand{\fit}{\mbox{$\varphi (t)$}}
\newcommand{\fito}{\mbox{$\varphi(t_0)$}}
\newcommand{\fin}{\mbox{$\varphi_n$}}
\newcommand{\gat}{\mbox{$\gamma (t)$}}
\newcommand{\gato}{\mbox{$\gamma(t_0)$}}
\newcommand{\gap}{\mbox{$\gamma$}}
\newcommand{\lap}{\mbox{$\lambda$}}
\newcommand{\lam}{\mbox{$\lambda$}}
\newcommand{\eps}{\mbox{$\varepsilon$}}
\newcommand{\del}{\mbox{$\delta$}}

\newcommand{\fip}{\mbox{$\varphi$}}
\newcommand{\fii}[1]{\mbox{$\varphi{#1}$}}
\newcommand{\gay}[2]{\gamma_{#1}(#2)}
\newcommand{\tita}{\mbox{$\theta$}}
\newcommand{\ro}{\mbox{ $\rho$}}
\newcommand{\muu}{\mbox{ $\mu$}}
\newcommand{\Omeg}{\mbox{ $\Omega$}}
\newcommand{\tauu}{\mbox{ $\tau$}}
\newcommand{\psii}{\mbox{ $\psi$}}

\newcommand{\napprox}{\mbox{ $\approx \!\!\!\!\! / $}}

\newcommand{\underbar}[1]{\underline{\sbox\tw@{#1}\dp\tw@\z@\box\tw@}}

\newcommand{\ti}{\tilde}
\newcommand{\ifi}{\infty}
\newcommand{\dip}{\displaystyle}
\newcommand{\espa}{\vskip \baselineskip}
\newcommand{\espc}{\vskip 1in}

\newcommand{\hs}{\hspace{15mm}}
\newcommand{\noi}{\noindent}
\newcommand{\su}{\subset}
\newcommand{\ve}[1]{\mbox{\boldmath ${#1}$}}
\newcommand{\yaya}[1]{\underbar{#1}}

\rnc{\r}[1]{~\ref{#1}}
\newcommand{\ron}[1]{ (\ref{#1})}
\newcommand{\rtw}[2]{ (\ref{#1},\ref{#2})}
\newcommand{\rth}[3]{ (\ref{#1},\ref{#2},\ref{#3})}
\newcommand{\rfo}[4]{ (\ref{#1},\ref{#2},\ref{#3},\ref{#4})}

\newcommand{\beq}{\begin{equation}}
\newcommand{\eeq}{\end{equation}}
\newcommand{\barr}{\begin{array}}
\newcommand{\earr}{\end{array}}
\newcommand{\beqarr}{\begin{eqnarray}}
\newcommand{\eeqarr}{\end{eqnarray}}

\newcommand{\newcounter}[1]{
    \expandafter\newcommand\csname the#1\endcsname{0}
    \expandafter\newcommand\csname stepcounter#1\endcsname{
        \expandafter\advance\csname the#1\endcsname by 1
    }
    \expandafter\newcommand\csname value#1\endcsname{
        \csname the#1\endcsname
    }
}

\newcommand{\newtheorem}[2]{
    \newcounter{#2}
    \expandafter\newcommand\csname the#2name\endcsname{#1}
    \expandafter\newenvironment{#2}{
        \csname stepcounter#2\endcsname
        \noindent\textbf{\csname the#2name\endcsname\ \csname value#2\endcsname.} \itshape
    }{
        \normalfont
    }
}

\newtheorem{teo}{Teorema}[chapter]
\newtheorem{cor}{Corolario}[chapter]
\newtheorem{lem}{Lema}[chapter]
\newtheorem{pro}{Problema}[chapter]

\newcommand{\bteo}{\begin{teo}}
\newcommand{\eteo}{\end{teo}}
\newcommand{\bcor}{\begin{cor}}
\newcommand{\ecor}{\end{cor}}
\newcommand{\blem}{\begin{lem}}
\newcommand{\elem}{\end{lem}}
\newcommand{\ejem}{\espa \noi \underbar{Ejemplo}}
\newcommand{\ejer}{\espa\noi \underbar{Ejercicio}}
\newcommand{\pru}{\espa\noi \underbar{Prueba}}
\newcommand{\defi}{\espa\noi \underbar{Definici\'on}}
\newcommand{\epru}{$\;\;\spadesuit{}$}
\newcommand{\bpru}{\noi \underbar{Prueba}: }
\newcommand{\recu}[1]{\begin{center} \fbox{\parbox{11.cm}{\noi \small #1} }\end{center}}
\newcommand{\recubib}[1]{\begin{center} \vspace{0.5cm}\fbox{\parbox{11.cm}{{{\bf Notas bibliogr\'aficas:} {\noi \small #1}}}}\end{center}}
%\newcommand{\recubib}[1]{\vspace{1cm}\fbox{\parbox{15cm}{{{\bf Notas bibliogr\'aficas:} {\noi \small #1}}}}}
\newcommand{\bpro}{\begin{pro}}
\newcommand{\epro}{\end{pro}}
\newcommand{\Pro}{\noi \underbar{Problema}}
\newcommand{\ePro}{\vskip \baselineskip}


\newcommand{\derp}[2]{\frac{\partial #1}{\partial #2}}
\newcommand{\dersp}[2]{\frac{\partial^2 #1}{\partial #2^2}}
\newcommand{\derssp}[3]{\frac{\partial^2 #1}{\partial #2 \partial #3}}
\newcommand{\derc}[2]{\frac{d #1}{d #2}}
\newcommand{\dersc}[2]{\frac{d^2 #1}{d #2^2}}
\newcommand{\der}[1]{\frac{d}{d #1}}
\newcommand{\lapl}[1]{\dersp{#1}{x}+\dersp{#1}{y}+\dersp{#1}{z}}
\newcommand{\pa}{\partial}

\newcommand{\nro}{$^{\mbox{o}}$}

\newcommand{\vA}{\mbox{$\ve A$}}
\newcommand{\vB}{\mbox{$\ve B$}}
\newcommand{\vL}{\mbox{$\ve L$}}

\newcommand{\xto}{\ve X_{t_0}^t}
\newcommand{\xot}{\ve X_t^{t_0}}
\newcommand{\xoti}{\ve X_{\tilde t}^{t_0}}
\newcommand{\x}{\mbox{$\ve X$}}
\newcommand{\cif}{\mbox{$C_0^{\ifi}(\re)$}}


\newcommand{\sr}[2]{\mbox{$\stackrel{#1}{#2}$}}
\newcommand{\fn}{\footnote}
\newcommand{\lme}{\lefteqn}
<!-- \newcommand{\nn}{\nonumber \\} -->
\newcommand{\fr}[2]{\mbox{$\frac{#1}{#2}$}}
\newcommand{\rpi}{\right|}
\newcommand{\lpi}{\left|}
\newcommand{\rp}{\right)}
\newcommand{\rdot}{\right.}
\newcommand{\ldot}{\left.}
\newcommand{\rb}{\right\}}
\newcommand{\lb}{\left\{}
\newcommand{\rc}{\right]}
\newcommand{\lc}{\left[}
\newcommand{\lp}{\left(}
\newcommand{\bb}{\bibitem}

\newcommand{\ex}{\mbox{$\exists$}}
\newcommand{\Ra}{\mbox{$\Rightarrow$}}
\newcommand{\Sii}{\mbox{$\Leftrightarrow$}}
\newcommand{\sii}{\mbox{$\leftrightarrow$}}
\newcommand{\fig}[2]{\begin{figure}\vspace{#1}\caption{#2}\end{figure}}
\newcommand{\mb}{\mbox}
\newcommand{\mt}{\mapsto}

\newcommand{\cL}{\mbox{$\cal L$}}
\newcommand{\cD}{\mbox{$\cal D$}}
\newcommand{\cP}{\mbox{$\cal P$}}
\newcommand{\cJ}{\mbox{$\cal J$}}
\newcommand{\scri}{\mbox{ {$\cal J$}}}
\newcommand{\cT}{\mbox{$\cal T$}}
\newcommand{\cC}{\mbox{$\cal C$}}
\newcommand{\cF}{\mbox{$\cal F$}}
\newcommand{\cS}{\mbox{$\cal S$}}


\newcommand{\LR}{\mbox{$L^2(\ren)$}}
\newcommand{\cifrn}{\mbox{$C^{\infty}(\ren)$}}
\newcommand{\cifo}{\mbox{$C^{\infty}_0$}}