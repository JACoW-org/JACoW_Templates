%% v2.15
%% This file has been developed as a common template for papers
%% destined for electronic production for Accelerator Conferences
%%
%% See the JACoW website for more information
%%
%%       http://jacow.org/
%%
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either
%% version 1.3c of this license or (at your option) any later
%% version. This version of this license is in
%%    http://www.latex-project.org/lppl/lppl-1-3c.txt
%% and the latest version of this license is in
%%    http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of
%% LaTeX version 2005/12/01 or later.
%%
%% This work has the LPPL maintenance status "maintained".
%%
%% This Current Maintainer of this work is Volker RW Schaa.
%%
%% This work consists of the following files
%%    jacow.cls               this class file
%%    JACoW_LaTeX_A4.tex      A4/letter templates to demonstrate the
%%    JACoW_LaTeX_Letter.tex  .. use and explain the various parameters
%%                            .. and settings for a submission to
%%                            .. a JACoW conference proceedings
%%    JACoW_LaTeX_A4.pdf      template in format A4 and European
%%                            settings (citation and hyphenation)
%%    JACoW_LaTeX_Letter.pdf  template in format letter and American
%%                            setting (citation and hyphenation)
%%    annexes-A4.tex          Annexes A-C which are included in "JACoW_LaTeX_A4.tex"
%%    annexes-Letter.tex      Annexes A-C which are included in "JACoW_LaTeX_Letter.tex"
%%
%%    JACpic_mc.pdf           a graphic showing the JACoW page format
%%    JACpic2.jpg             a graphic for a full width figure and
%%                            multiline caption
%%    jacow-collaboration.tex  an example title page showing the
%%    jacow-collaboration.pdf  JACoW Colloaboration, the responsible
%%                             editors for the various platform
%%                            dependent templates (LaTeX, Word on PC and
%%                            Mac, ODF). The PDF is included in the template
%%
%
%  v0.1 to 1.3 : JAC2000.cls
%  Special thanks to John Jowett and Michel Goossens from CERN and
%  Martin Comyn at TRIUMF for their significant contributions to
%  this class file over the period 1996 to 2000.
%                                                 John Poole
%                                                 March 2000
%  v1.4 : JAC2001.cls
%  JAC2001.cls is a modified version of JAC2000.cls to produce indented
%  first paragraphs after section, subsection and subsubsection headings.
%                                                 Martin Comyn  April 2001
%
%  v1.5 : JAC2003.cls
%  This is a modified version of JAC2003.cls to adjust space around
%  section and subsection headers to be more consistent with JACoW Word
%  templates.                                     Todd Satogata  March 2011
%
% v 1.6 : jacow.cls
% This is a complectly rewritten version of JAC2003.cls which needs a current
% TeX-System to run.
%                                                 Ulrike Fischer, November 2013
%
% v 1.7
% - small change to correct the text block inside JACoW's magic red borders for
%   a4paper (aca4); top has been set 18.5mm (19mm is defined in the template but
%   leaves descenders outside the lower y margin).
% - duplicate {boxit} removed
%                                                 Volker RW Schaa, 14 April 2014
%
% v1.8
% - added setup for \micro sign which disappears when using XeTeX or LuaTeX
%   with unicode-math.                             Ulrike Fischer, 21 April 2014
%
% v1.9
% - fixed the pdfLaTeX warnings for the text/math-micro hack
%                                                  Ulrike Fischer, 22 April 2014
%
% v1.91
% - Ligatures=TeX switch introduced to accommodate
%                                                  Ulrike Fischer, 22 April 2014
%
% v1.92
% - settings for top margin have to be different in A4 and letter to accommodate
%   JACoW's PitStop Action List. This was found after receiving Plamen Hopchev's
%   email about margins and testing the workflow with cropping the bounding box
%   which starts at the lower left edge and not at the top (see graphic JACpic_mc
%   in the template for measures).
%                                                 Volker RW Schaa, 29 April 2014
% v1.93
% - setting the bottom margin (19mm) without top solves the problem for different
%   A4/Letter settings. This was already the default in v1.6. Pointed out by
%   Plamen Hopchev. To accommodate the descenders the bottom margin has been set
%   to 56pt now.
%                                                   Volker RW Schaa, 01 May 2014
%
% v1.94
% - the micro sign in UTF-8 prevents ASCII format of the cls file. Ulrike pointed
%   out a hack in http://tex.stackexchange.com/questions/172968/hide-notation-from-pdftex
%   which is now introduced.
%                                                   Volker RW Schaa, 02 May 2014
%
% v1.95
% - only change to the version 1.94 are the extended documentation and license
%   statement (lppl1.3c) as preparation for publication on CTAN.
%                                                   Volker RW Schaa, 02 May 2014
%
% v1.96
% - modification of bibatex style information. Since the JACoW template Feb-2016
%   the bibliography requires the IEEEtran style. Heine provided an adapted
%   version using the required values of the template:
%   + ieee biblatex style instead of numeric-compv
%   + doi field is cleared for all entries
%   + et al. is used when there are > 6 authors (maxnames=6). In that case,
%     only the first author is mentioned (minnames=1)
%   + url field is cleared for articles and inproceedings
%   + giveninits=true reduces all given names to initials
%                                            Heine Dølrath Thomsen, 30 June 2016
%
% v2.00
% - after using v1.96 during conferences where DOIs/URLs were present in biblio-
%   graphic records, the following changes to Heine's version have been made:
%   + doi field allowed
%   + url field allowed
%                                                 Volker RW Schaa, 02 May 2014
% v2.1 new options introduced
% flushend: new: keeplastbox
% siunitx:  new: binary-units=true
% BibLaTeX: changed: style=ieee => bibstyle=ieee, citestyle=numeric-comp
%           new: dashed=false
%           removed: doi=false
%                                                 Volker RW Schaa, 02 May 2014
%
% v2.2
% - adapted to the changes of template version 2018-02
% - made this one official
%                                                  Volker RW Schaa, 23 Feb 2018
%
% v2.3
% - font for tt switched to newtxtt with option zerostyle=d (dotted 0)
%                                                  Volker RW Schaa, 15 Jan 2019
%
% v2.4
% - version 2.3 did not work for XeTeX/LuaTeX, therefore font change using
%   \def\UrlFont and switching the fontencoding to T1 (suggested by Ulrike Fischer)
% - package amsmath included to provide
%                                                  Volker RW Schaa, 01 Apr 2019
%% v2.5
% - flushend dropped the option keeplastbox, therefore removed from jacow package
%   option list
% - Option "binary-units" has been removed from siunitx release.
% - Option "detect-mode" has been deprecated in this (siunitx) release: v3.0.32
%        Use "mode=match" as a replacement.
% - Option "detect-weight" has been deprecated in this (siunitx) release: v3.0.32
%        Use "reset-text-series=false, text-series-to-math=true" as a replacement.
% - fixltx2e is not required with releases after 2015
%                                                  Volker RW Schaa, 14 Oct 2021
%% v2.6
% - ifluatex/ifxetex dropped for iftex
%                                                  Volker RW Schaa, 11 Nov 2021
%
%% v2.7
% - added some biblatex macros to achieve closer JACoW reference formatting
%   than standard ieeetran
%                                                  Volker RW Schaa, 02 Feb 2022
%% v2.8
% - removes the (non)stretchability \bibitemsep{0pt} from tests (oversight in v2.7)
% - introduced the page setting by geometry to JACoW paper size which wasn't
%   working in earlier version of jacow.cls due to the necessary offset using "pt".
%   With Zhichu Chen's suggestion of using "bp" instead of "pt", Ivan's JACoW utils
%   does not complain anymore, and the /Mediabox is correctly shown in Acrobat and
%   PitStop.
%        paperheight  792.0 bp ≅ 794.97 pt [794.96208 pt]
%        paperwidth   595.0 bp ≅ 597.23 pt [597.22530 pt]
%   Currently I have not found where in a PDF it's defined
%   whether (media/crop box) values are "pt" or "bp".
%                                       Zhichu Chen, Volker RW Schaa, 10 Jun 2022
%
%% v2.9
% - remove the math-micro option from siunitx as it was deprecated.
%                                                    Volker RW Schaa, 12 Jun 2022
%
%% v2.10
% - added Zhichu's switch between version of siunitx (older than 2021-05-17}.
%                                       Zhichu Chen, Volker RW Schaa, 15 Jun 2022
%
%% v2.11
% - remove the (empty) package textcase and substituted it by
%   \let\MakeTextUppercase\MakeUppercase
%                                                    Volker RW Schaa, 17 Jul 2022
%% v2.12
% - the new changes to LaTeX3 (2022-06-01) break the old "\@nonchangecase" command
%	\AddToNoCaseChangeList{command} added
%                                     Ulrike Fischer, Volker RW Schaa, 04 Aug 2022
%
%% v2.13
% - placement of DOI changed: if it fits on the line OK, otherwise use a new line
% - period/fullstop placed in front of DOI
%                                                        Zhichu Chen, 05 Aug 2022
%
%% v2.14
% - `lineno` with "minted" are not supported
% - place a "\\" rather than \par for linebreak in the definition of \placedoi to
%   ǵet the vertical spacing right
%                                                        Zhichu Chen, 06 Aug 2022
%% v2.15
% - all intermediate changes combined in this version
% - check for \AddToNoCaseChangeList instead of \IfFormatAtLeastTF{2022/06/01}
%
%                                       Zhichu Chen, Volker RW Schaa, 09 Aug 2022
%
\def\fileversion{2.15}
\def\filedate{2022/08/09}
\def\docdate {2022/08/09}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{jacow}[\filedate\space v\fileversion]

\typeout{------------------------------------------------------------------------}
\typeout{LaTeX2e Class file for Accelerator Conference publication for LaTeX2e users}
\typeout{ }
\typeout{Use the boxit option to draw a box on page showing the correct margins}
\typeout{ }
\typeout{Itemize, Enumerate and Description environments are compact versions}
\typeout{------------------------------------------------------------------------}
\typeout{ }

\newif\ifjacowbiblatex
\newif\ifjacowrefpage

\DeclareOption{acus}{%
   \PassOptionsToPackage{paper=letterpaper}{geometry}
   \typeout{Setup for US LETTER PAPER}}

\DeclareOption{letterpaper}{%
   \PassOptionsToPackage{paper=letterpaper}{geometry}
   \typeout{Setup for US LETTER PAPER}}

\DeclareOption{a4paper}{%
    \PassOptionsToPackage{paper=a4paper}{geometry}
    \typeout{Setup for A4 PAPER}}

\DeclareOption{aca4}{%
    \PassOptionsToPackage{paper=a4paper}{geometry}
    \typeout{Setup for A4 PAPER}}

\DeclareOption{boxit}{\PassOptionsToPackage{showframe}{geometry}}

\DeclareOption{biblatex}{\jacowbiblatextrue}

\DeclareOption{refpage}{\jacowrefpagetrue}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}

\ExecuteOptions{aca4}
\ProcessOptions

\RequirePackage{fix-cm}
\LoadClass[10pt,twocolumn]{article}
\RequirePackage[]{flushend} %% modified 2.5
%
% a lot of authors love to use `minted` to typeset codes which also loads `lineno`
% `flushend` does not balance when `lineno` is also loaded,
% let's pretend it's already loaded
% this will break linebreaks (not as serious as it sounds) for `minted` but we don't care
\@namedef{ver@lineno.sty}{9999/12/31}
\@namedef{opt@lineno.sty}{}
% Tools:
\RequirePackage{etoolbox}
\RequirePackage{iftex}
%
% Ulrike's suggestion to the UPPERCASING problem after LaTeX update 2022-06-01 
% or is it even 2022-06-30 ?? => check of 2022-06-01 changed to definition of
% \AddToNoCaseChangeList which came obviously later 
%
%\providecommand\IfFormatAtLeastTF{\@ifl@t@r\fmtversion}
%\IfFormatAtLeastTF{2022/06/01}%
\ifx\AddToNoCaseChangeList\@undefined
% old
	%Add thanks to the list of "\@nonchangecase"-commands from textcase:
	\RequirePackage{textcase}
	\def\@uclcnotmath#1#2#3#4{\begingroup
		  #1%
		  \def\({$}\let\)\(%
		  \def\NoCaseChange##1{\noexpand\NoCaseChange{\noexpand##1}}%
		  \@nonchangecase\label
		  \@nonchangecase\ref
		  \@nonchangecase\ensuremath
		  \@nonchangecase\thanks %new
		  \@nonchangecase\si %new
		  \def\SI##1##2{\NoCaseChange{\SI{##1}{##2}}} % ugly patch
		  \def\cite##1##{\toks@{\noexpand\cite##1}\@citex}%
		  \def\@citex##1{\NoCaseChange{\the\toks@{##1}}}%
		  \def\reserved@a##1##2{\let#2\reserved@a}%
		  \expandafter\reserved@a\@uclclist\reserved@b{\reserved@b\@gobble}%
		  \protected@edef\reserved@a{\endgroup
			  \noexpand\@skipmath#3#4$\valign$}%
		  \reserved@a}
\else
	\let\MakeTextUppercase\MakeUppercase
	\AddToNoCaseChangeList{\thanks}
	\AddToNoCaseChangeList{\label}
	\AddToNoCaseChangeList{\ref}
	\AddToNoCaseChangeList{\ensuremath}
	\AddToNoCaseChangeList{\si}
	\AddToNoCaseChangeList{\SI}
	\AddToNoCaseChangeList{\qty}
	\AddToNoCaseChangeList{\unit}
\fi
% Option "binary-units" has been removed from (siunitx)
% Option "detect-mode" has been deprecated in this (siunitx) release: v3.0.32
%        Use "mode=match" as a replacement.
% Option "detect-weight" has been deprecated in this (siunitx) release: v3.0.32
%        Use "reset-text-series=false, text-series-to-math=true" as a replacement.
%
%\RequirePackage[mode=match, reset-text-series=false, text-series-to-math=true]{siunitx}
\RequirePackage{siunitx}
\@ifpackagelater{siunitx}{2021-05-17}%
  {\PackageInfo{siunitx}{%
  Package newer than 2021-05-17,\MessageBreak
  loading current settings.}%
   \sisetup{mode=match, reset-text-series=false, text-series-to-math=true}}% copied from jacow.cls version 2.7
  {\PackageInfo{siunitx}{%
  Package older than 2021-05-17,\MessageBreak
  loading old settings.}%
   \sisetup{detect-mode,detect-weight, binary-units=true}}%                % copied from jacow.cls version 2.4

\RequirePackage{graphicx}
\RequirePackage{booktabs}
\RequirePackage[figureposition=bottom,tableposition=top,skip=5pt]{caption}
\RequirePackage{xcolor}
\RequirePackage{amsmath}
\AtEndPreamble{\RequirePackage[autostyle]{csquotes}}

%
% Page layout:
%
% Zhichu's suggestion of using "bp instead of "pt"
\RequirePackage[%
		twocolumn,
		columnsep  	= 5mm,
		left        = 20mm,
		bottom      = 56pt,
		paperwidth 	= 595bp,  %% paperwidth   597.23 pt = 595.0 bp  {597.22530 pt]
		textwidth  	= 170mm,
		paperheight = 792bp,  %% paperheight  794.97 pt ≅ 792.0 bp  [794.96208 pt]
		textheight  = 9.5in,
		nomarginpar,
		heightrounded,
		noheadfoot,
		centering]
		{geometry}

\columnseprule 0pt
\usepackage[hang]{footmisc}
\setlength{\footnotemargin}{.6em}


\pagestyle{empty}

\RequirePackage{url}
%
% redefine the default Typewriter Font to newtxtt with dotted zeros (v2.3)
%
\RequirePackage[zerostyle=d]{newtxtt}
\newcommand\urlZDtxt{\fontencoding{T1}\fontfamily{newtxtt}\selectfont}
\def\UrlFont{\urlZDtxt}

\ifboolexpr{bool{xetex} or bool{luatex}}
 {}
 { \catcode`\^^^=9
 }

\ifboolexpr{bool{xetex} or bool{luatex}}
 { \let\ori@vdots\vdots
   \RequirePackage{unicode-math}
   \AtBeginDocument{\let\vdots\ori@vdots}
   \setmainfont[Ligatures=TeX]{TeX Gyre Termes}
   \setmathfont{TeX Gyre Termes Math}
%   \sisetup{
%     math-micro = \text{^^^^03bc},
%     text-micro = ^^^^03bc
%      }
 }
 {
  % Fonts: Times clones
  \RequirePackage{textcomp}
  \RequirePackage[T1]{fontenc}
  \RequirePackage{lmodern}
  \RequirePackage{tgtermes}
  \RequirePackage{newtxmath}
  \input{glyphtounicode}
  \pdfgentounicode=1
%  \RequirePackage{cmap}
 }

\RequirePackage{microtype}

%Lists

\RequirePackage{enumitem}
\newenvironment{Enumerate}{\begin{enumerate}[nosep]}{\end{enumerate}}
\newenvironment{Itemize}{\begin{itemize}[nosep]}{\end{itemize}}
\newenvironment{Description}{\begin{description}[nosep]}{\end{description}}


%Floatparameter:
\renewcommand{\topfraction}{.95}
\renewcommand{\bottomfraction}{.95}
\renewcommand{\textfraction}{0.1}
\renewcommand{\floatpagefraction}{0.8}


%headings:
% section: Uppercase only for text
\renewcommand{\section}
   {%
    \@startsection{section}{1}{0mm}
       {2.0ex plus 0.8ex minus .1ex}{1.0ex plus .2ex}
       {\normalfont\large\bfseries\mathversion{bold}\centering\MakeTextUppercase}%
   }%

\renewcommand\subsection
  {%
   \@startsection{subsection}{2}{\z@}
    {1.4ex plus .8ex minus .17ex}{0.8ex plus .17ex}
    {\normalfont\large\itshape}%
   }

\renewcommand\subsubsection
 {%
  \@startsection{subsubsection}{3}{\parindent}
  {2.5ex plus .7ex minus .17ex}{-1em}
  {\normalfont\normalsize\bfseries}%
 }

\renewcommand\paragraph
 {%
  \@startsection{paragraph}{4}{\z@}
  {2.5ex plus .7ex minus .17ex}{-1em}
  {\normalfont\normalsize\itshape}%
 }

\renewcommand\subparagraph
 {%
  \@startsection{subparagraph}{4}{\parindent}
  {2.25ex plus .7ex minus .17ex}{-1em}
  {\normalfont\normalsize\bfseries}%
 }

\setcounter{secnumdepth}{0}

% This definition of \maketitle taken from article.sty, and has been
% somewhat modified.

\def\maketitle{\par
 \begingroup
   \def\thefootnote{\fnsymbol{footnote}}
   \def\@makefnmark{\hbox
       to 5pt{$^{\@thefnmark}$\hss}}
   \twocolumn[\@maketitle]
   \@thanks
 \endgroup
 \enlargethispage{\jac@copyrightspace}%
 \setcounter{footnote}{0}
 \let\maketitle\relax
 \let\@maketitle\relax
 \gdef\@thanks{}\gdef\@author{}\gdef\@title{}\let\thanks\relax}

\newlength{\titleblockheight}       % so user can change it if need be
\setlength{\titleblockheight}{3.5cm}

\newlength\titleblockstartskip
\setlength\titleblockstartskip{3pt}


\newlength\titleblockmiddleskip
\setlength\titleblockmiddleskip{1em}

\newlength\titleblockendskip
\setlength\titleblockendskip{1em}


\def\@maketitle{%
  \vskip \titleblockstartskip \centering
  {\Large\bfseries \MakeTextUppercase{\@title} \par}
  \vskip \titleblockmiddleskip               % Vertical space after title.
  {\large\begin{tabular}[t]{@{}c@{}}\@author \end{tabular}\par}
  \vskip \titleblockendskip}


% The \copyrightspace command is used to produce a blank space in the first
% column where a copyright notice may go.  It works by producing
% with \enlargethispage and is inserted by \maketitle.
% The command should be issued in the preamble.

\newcommand\jac@copyrightspace{0pt}
\newcommand\copyrightspace[1][1cm]{\renewcommand\jac@copyrightspace{-#1}}

\ifboolexpr{bool{@titlepage}}
{\renewenvironment{abstract}
 {\list{}{%
    \setlength{\leftmargin}{\dimexpr\textwidth/2-0.75\columnwidth}%
    \setlength{\rightmargin}{\dimexpr-0.75\columnwidth-\columnsep}%
    \setlength{\listparindent}{\parindent}%
    \setlength{\itemsep}{\parskip}%
    \setlength{\itemindent}{\z@}%
    \setlength{\topsep}{\z@}%
    \setlength{\parsep}{\parskip}%
    \setlength{\partopsep}{\z@}%
    \let\makelabel\@gobble
    \setlength{\labelwidth}{\z@}%
    \advance\@listdepth\m@ne   }%
   \item\relax\subsection*{Abstract}}
 {\endlist\clearpage}
}
{%
 \renewenvironment{abstract}
  {\subsection*{Abstract}}
  {\par}
}

\newbox\doi@box
\newskip\lastlinewidth
\newskip\doiavailablewidth
\newcount \saveprevgraf
\def\placedoi#1{\mbox{}%
\lastlinewidth=\z@
\ifhmode
  \predisplaypenalty10000\relax \postdisplaypenalty10000\relax
  \abovedisplayskip-\baselineskip
  \belowdisplayskip-\baselineskip
  \abovedisplayshortskip\abovedisplayskip
  \belowdisplayshortskip\belowdisplayskip
  $$
      \global \lastlinewidth=\dimexpr \predisplaysize -2em \relax
  $$
\saveprevgraf\prevgraf
\advance\saveprevgraf by -3
\advance\saveprevgraf by -1
\prevgraf\saveprevgraf
\fi
\noindent\kern\dimexpr\lastlinewidth -\leftmargin\relax
\doiavailablewidth=\dimexpr \hsize-\lastlinewidth \relax
\setbox\doi@box=\hbox{#1}%
\ifdim\doiavailablewidth<\wd\doi@box
\\
\fi
\unhbox\doi@box
}

\ifboolexpr{bool{jacowbiblatex}}
%2.00 {\RequirePackage[style=ieee,sorting=none,giveninits=true,doi=false,maxnames=6,minnames=1]{biblatex}
%2.1 {\RequirePackage[style=ieee,sorting=none,giveninits=true,maxnames=6,minnames=1]{biblatex}
%2.2
  {\RequirePackage[bibstyle=ieee,citestyle=numeric-comp,dashed=false,sorting=none,giveninits=true,maxnames=6,minnames=1]{biblatex}
  \renewbibmacro*{url+urldate}{%
    \iffieldundef{url}
     {}
     {\printfield{url}%
      \nopunct}}%
  \DeclareFieldFormat{url}{\url{#1}}
  \DeclareFieldFormat{eprint}{#1}
%% when to activate this? Paper format acus/letter
%  \DefineBibliographyExtras{american}{\stdpunctuation} % mod
  % Drop urls for article and inproceedings entries
%2.7
% check https://tex.stackexchange.com/questions/6743/biblatex-changing-the-order-of-entries
%       https://tex.stackexchange.com/questions/12806/guidelines-for-customizing-biblatex-styles/13076#13076
%       https://tex.stackexchange.com/questions/10203/biblatex-putting-thin-spaces-between-initials
%       https://tex.stackexchange.com/questions/560346/how-to-suppress-annotation-field-from-bbl-file-in-biblatex
%       https://tex.stackexchange.com/questions/496995/advanced-introduction-to-biblatex-coding-guidelines-for-database
%-------------------------------------
%
% if BibLaTeX is used
%
% modify macros so the formatted output corresponds to JACoW's idea of IEEEtran
    % set vertical distance between items
   	\setlength\bibitemsep{3pt plus 1.5pt minus 0.5pt}
    % remove stretchability from biblatex URLs/DOIs
 	\toks0\expandafter{\biburlsetup}\edef\biburlsetup{\the\toks0 \Urlmuskip =0mu\relax}
 	% Removing period after DOI
 	\renewcommand*{\finentrypunct}{\ifboolexpr{togl {bbx:doi} and not test {\iffieldundef{doi}}}{}{\addperiod}}
  	% format doi: as part of the link using the same font
  	\DeclareFieldFormat{doi}{%
 	  \ifhyperref
 	    {\href{https://doi.org/#1}{\nolinkurl{#1}}}
 	    {\placedoi{\nolinkurl{doi:#1}}}%
 	}
	%
	% make sure that there is no break between initial and lastname
	% and thinspaces between muliple initials
	%
	\renewcommand*\bibnamedelimd{~}
	\renewcommand\bibinitdelim{\addnbthinspace}
	%
 	% format venue, event, date without round brackets
    % https://tex.stackexchange.com/questions/446732/biblatex-field-venueeventdate-without-round-brackets
 	\renewbibmacro*{event+venue+date}{%
 	    \printfield{eventtitle}%
 	    \newunit
 	    \printfield{eventtitleaddon}%
 	    \newunit
 	    \printfield{venue}%
 	    \setunit*{\addcomma\space}%
 	    \printeventdate%
 	    \newunit%
 	}
  	\DeclareFieldFormat{eid}{%
  	    {paper #1}%
  	}
 	%
 	\renewbibmacro*{volume+number+eid}{%
 	  \printfield{volume}%
 	  \newunit
 	  \printfield{number}%
 	  \newunit
 	  \printfield{eid}%
 	}
 	%
 	% Clean up the bibtex rather than editing it for extensive JACoW BibTeX records
 	%
 	\AtEveryBibitem{%
 	 \clearlist{address}
 	 \clearfield{date}
 	 \clearfield{eprint}
 	 \clearfield{isbn}
 	 \clearfield{issn}
 	 %
 	 % use/print "note" if "booktitle" is not given: example "data for this conference"
     %
 	 \iffieldundef{booktitle}{}{\clearfield{note}}
 	 \clearlist{location}
 	 \clearfield{month}
 	 \clearfield{series}
 	 \ifentrytype{book}{}{% Remove publisher and editor except for books
 	  \clearlist{publisher}
 	  \clearname{editor}
 	 }
 	}
	%
	% print url if no doi
	%
 	\renewbibmacro*{doi+eprint+url}{%
 	    \addperiod\printfield{doi}%
 	    \newunit\newblock%
 	    \iftoggle{bbx:eprint}{%
 	        \usebibmacro{eprint}%
 	    }{}%
 	    \newunit\newblock%
 	    \iffieldundef{doi}{%
 	        \usebibmacro{url+urldate}}%
 	        {}%
 	}
 	% format ISSN like URLs
  	\DeclareFieldFormat{issn}{%
  	    {\texttt{ISSN:#1}}%
  	}
 	% format ISSN like URLs
  	\DeclareFieldFormat{issn}{%
  	    {\texttt{ISSN:#1}}%
  	}
  %
%  \setlength\bibitemsep{0pt}
  \setlength\bibparsep{0pt}
  \setlength\biblabelsep{5pt}
  \ifjacowrefpage\preto\blx@bibliography{\clearpage}\fi
  \AtBeginBibliography{\small\clubpenalty4000\widowpenalty4000}%
 } % end if biblatex
 %
 {\RequirePackage{cite}
  % Redefine to use smaller fonts
  \def\thebibliography#1{\setlength{\itemsep}{0pt}\setlength{\parsep}{0pt}%
  \ifjacowrefpage\clearpage\fi
  \section*{REFERENCES\@mkboth
  {REFERENCES}{REFERENCES}}\small\list
  {[\arabic{enumi}]}{\settowidth\labelwidth{[#1]}\leftmargin\labelwidth
    \advance\leftmargin\labelsep
    \usecounter{enumi}}
    \def\newblock{\hskip .11em plus .33em minus .07em}
    \sloppy\clubpenalty4000\widowpenalty4000
    \sfcode`\.=1000\relax}
   \let\endthebibliography=\endlist
  }


%\sloppy
\clubpenalty10000\widowpenalty10000
\flushbottom
%-----------------------------------------------------------------------

%avoid bug of fixltx2e:
%http://www.latex-project.org/cgi-bin/ltxbugs2html?pr=latex/4023
%\RequirePackage{fixltx2e}%
\def\@outputdblcol{%
  \if@firstcolumn
    \global\@firstcolumnfalse
    \global\setbox\@leftcolumn\copy\@outputbox
    \splitmaxdepth\maxdimen
    \vbadness\maxdimen
    \setbox\@outputbox\vbox{\unvbox\@outputbox\unskip}%new
    \setbox\@outputbox\vsplit\@outputbox to\maxdimen
    \toks@\expandafter{\topmark}%
    \xdef\@firstcoltopmark{\the\toks@}%
    \toks@\expandafter{\splitfirstmark}%
    \xdef\@firstcolfirstmark{\the\toks@}%
    \ifx\@firstcolfirstmark\@empty
      \global\let\@setmarks\relax
    \else
      \gdef\@setmarks{%
        \let\firstmark\@firstcolfirstmark
        \let\topmark\@firstcoltopmark}%
    \fi
  \else
    \global\@firstcolumntrue
    \setbox\@outputbox\vbox{%
     \hb@xt@\textwidth{%
        \hb@xt@\columnwidth{\box\@leftcolumn \hss}%
        \hfil
        \vrule \@width\columnseprule
        \hfil
       \hb@xt@\columnwidth{\box\@outputbox \hss}}}%
  \@combinedblfloats
    \@setmarks
    \@outputpage
    \begingroup
      \@dblfloatplacement
      \@startdblcolumn
      \@whilesw\if@fcolmade \fi{\@outputpage\@startdblcolumn}%
    \endgroup
  \fi}

\endinput
