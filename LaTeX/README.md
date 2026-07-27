
## JACoW 3.01

2026-03-11

The `jacow` class is used for submissions to the proceedings of conferences on the »Joint Accelerator Conferences Website« (JACoW), an international collaboration that publishes the proceedings of accelerator conferences held around the world. 

See the JACoW website for more information <https://jacow.org/>

This package has been developed as a common »template« for papers destined for electronic production for Accelerator Conferences together with a »style guide« to show specific key features how to typeset units, isotopes and elements, and recommendations for good scientific writing.

## `jacow.cls`

* Authors (1996—2026)
  - John Jowett (CERN)
  - Michel Goossens (CERN)
  - Martin Comyn (TRIUMF)
  - John Poole (CERN)
  - Todd Satogata (BNL)
  - Ulrike Fischer (Troubleshooting TeX)
  - Marei Peischl (πTeX)
  - Zhichu Chen (SARI)
  - Volker RW Schaa (GSI)

* Version:    
  - 3.01 (maintenance release)
  
    The version number follows `<major>.<minor>.<patch>` the class file only uses `<major>.<minor>` and the BibLaTeX module (`jacow.?bx`) adds a patch number to the main version when it's patched.

* Date:       
  - 11 March 2026
  
* Copyright:  
  - 1996-2026 by JACoW, Geneva, Switzerland

* Homepage:   
  - <https://www.jacow.org>

* github:   
  - <https://github.com/JACoW-org/JACoW_Templates>

* License:    
  - LPPL 1.3c
  
* Status:     
  - Maintained

* Maintainer: 
  - Volker RW Schaa & Zhichu Chen
  
## A BRIEF DESCRIPTION OF THE PACKAGE

The package consists of three parts. 
1) The **Class File** with BibLaTeX bibliography and cite style. 
2) A basic **Template** file of one typeset page. This page uses all the key features of the class. 
3) And there is an extended **Style Guide**. This guide covers all aspects of typesetting for conference proceedings, such as referencing figures, tables, and equations, formatting units, isotopes, elements, and compounds. In addition it gives an overview of all types of reference formatting, covering conference proceedings, journal article, publications in periodicals, online resources, books, reference manuals. Special emphasis is placed on DOIs. The guide also has recommendations for good scientific writing.

### Class File
This package consists of the following files
   - **`jacow.cls`**               
     JACoW class file
   - **`jacow.bbx`**               
     JACoW's biblatex bibliography style
   - **`jacow.cbx`**               
     JACoW's biblatex cite style
   - **`jacow.dbx`**               
     JACoW's biblatex data model


### Template     

a short example listing the key features of the JACoW class 
   - **`jacow_latex_template.tex`**		   
     template source and PDF to demonstrate the use of basic functionality 
   - **`jacow_latex_template.pdf`**  
     PDF of the template file `jacow_latex_template.tex`
   - **`jacow_latex_template_bib.tex`**  
     same as above but with BibLaTeX
   - **`jacow_latex_template_bib.pdf`**   
	 PDF of the template `jacow_latex_template_bib.tex` using BibLaTeX
   - **`jacow_latex_template_bib.bib`**    
     bib file for use with `jacow_latex_template_bib.tex`
   - **`jacow_pagesize.png`**	   
     schematic of the JACoW page size (used in `jacow_latex_template.tex` and `jacow_latex_style_guide.tex`)
   - **`jacow_picture1.png`**   
     example picture for graphics inclusion
   - **`jacow_picture2.png`**   
     example picture for graphics inclusion
    
## JACoW LaTeX Style Guide
This guide covers all aspects of typesetting for conference proceedings with recommendations for good scientific writing, and much more…

   - **`jacow_latex_style_guide.tex`**   
     - `JACoW LATEX STYLE GUIDE (v.2026-02-19)`
    JACoW Style Guide and Appendix B source files (Appendix B had been included in the source file to prevent active links of DOIs got lost)
   - **`jacow_latex_style_guide.pdf`**   
     - PDF of `jacow_latex_style_guide.tex` together with following two Appendices (A, C)
   - **`jacow_latex_appendix_a.tex`**
     - `Appendix A: FORMATTING OF AUTHORS AND AFFILIATIONS`
     showing the different ways of author and affiliation formatting
   - **`jacow_latex_appendix_a.pdf`**
     - PDF of `jacow_latex_appendix_a.tex`, this PDF is included in the Main Style Guide
   - **`jacow_latex_appendix_c.pdf`**
     - `Appendix C: JOURNAL ABBREVIATIONS`
       contains a list of often used journal abbreviation according to ISO 4. This file is part of the `JACoW Word Style Guide` and is included in the Main Style Guide. There is no companion `tex` file
   - **`jacow_groupphoto_tm2025.jpg`**
     - Group picture of the last JACoW Team Meeting in Nov. 2025 at CERN. It is included in `jacow_latex_style_guide.tex` 

## License
This work may be distributed and/or modified under the
conditions of the LaTeX Project Public License, either
version 1.3c of this license or (at your option) any later
version. This version of this license is in
    <https://www.latex-project.org/lppl/lppl-1-3c.txt>
and the latest version of this license is in
    <https://www.latex-project.org/lppl.txt>
and version 1.3 or later is part of all distributions of
LaTeX version 2008-05-04 or later.


## Changelogs


### 3.01.1     :LOG:dbx:

-   add a new entry type \`@preprint' to the data model


### 3.01.1     :LOG:bbx:

-   \`@software' title goes back from \`SᴍᴀʟʟCᴀᴘs' to \`Upright Roman'
-   add a new entry driver: \`@preprint' whose mandatory fields are:
    
    -   author, title, eprinttype, eprint
    
    and optional fields:
    
    -   eprintclass, doi, url, date, pubstate


### 3.01.0     :LOG:bbx:

-   initial standalone BibLaTeX package separated from the class file
-   version numbering: \`major.minor.fix' where
    -   \`major.minor' follows the upstream \`jacow.cls'
    -   \`fix' starts from 0 and gets reset to 1 by the update of \`jacow.cls'


### v3.01     :LOG:cls:

-   added the accidently lost coloring of DOI links


### v3.00     :LOG:cls:milestone:

-   Zhichu's latest jacow.bbx and jacow.cbx introduced


### v2.99c     :LOG:cls:

-   define linkcolor to be the same as in JACoW's Word template RGB=(21.2,37.3,56.9)


### v2.99b     :LOG:cls:

-   authbkl package with JACoW settings introduced


### v2.99a     :LOG:cls:

-   missing \dblfloatsep and dbltextfloatse for twocolumn introduced


### v2.98q     :LOG:cls:

-   vertical spacing adapted to Word practice (leaving no space :-)
    -   \intextsep, \textfloatsep, \floatsep, \abovecaptionskip, \belowcaptionskip modified


### v2.98p     :LOG:cls:

-   the "et al." string in "ieeetran" version "1.4e 2025-03-15" shows up as "\textit{etal.}", this version corrects it to  "\textit{et al.}"


### v2.98o     :LOG:cls:

-   "ieeetran" style file has been changed in version "1.4c 2025-01-15" to typeset "et al." in an upright font. jacow.cls stays with the old definition


### v2.98n     :LOG:cls:

-   [utf8]inputenc moved from template to class so that it appears for pdfLaTeX before biblatex is loaded


### v2.98m     :LOG:cls:

-   change of sequence of graphics extension to be embedded for XeTeX (EPS came to early) this code part was removed from the template
-   modification of \textfloatsep/\intextsep back to a bigger minus value


### v2.98l     :LOG:cls:

-   code stolen from cite.sty, to mimic the behaviour of cite package in respect of spacing between numbers:  [1,␣3,␣7]  (␣: \multicitedelim)


### v2.98k     :LOG:cls:

-   fix introduced to remove period after URL which showed up with v2.98f


### v2.98j     :LOG:cls:

-   `shortjournal` introduced which has »Journal Name« abbreviated as to the official version used by publishers (e.g. <https://woodward.library.ubc.ca/woodward/research-help/journal-abbreviations/>)
-   field formatting unified/redefined for `article`, `periodical`, `inproceedings` (`volume`, `issue`, `number`, `journaltitle`, `shortjournal`, `maintitle`, `booktitle`)


### v2.98h     :LOG:cls:

-   @inproceedings: this version distinguishes between "eventdate" (conferences date) and "date/year/month" (publication date) for JACoW standard
    -   if "eventdate" is present, "date…" is ignored;
        …, venue [,eventdate | if defined] [,eid | if doi undefined] [,pages | if defined] [,date | if eventdate undefined]. [doi | if defined] …


### v2.98g     :LOG:cls:

-   \DeclareFieldFormat now included for booktitle


### v2.98f     :LOG:cls:

-   redefinition of @inproceedings
-   date macro only shows month and year now from "eventdate"/"date"
-   hyperref workaround for not correctly escaped colon
-   add a macro \doi to be used inside "thebibliography" environment


### v2.98e     :LOG:cls:

-   bug fix for BibLaTeX option (\AtBeginBibliography not recognized outside)
-   options for main font now set in \defaultfontfeatures
-   v. 2.98 ff. introduced bookmarks due to defaults of hyperref, this is now switch off


### v2.18     :LOG:cls:

-   remove changes of v2.17 for DOI links
-   changed tightness of floats in surrounding text


### v2.17     :LOG:cls:

-   first try for DOI links (but URL links should not get active links)
-   package hyperref added with link color & page view definitions


### v2.16     :LOG:cls:

-   subsubsection with small vertical distance


### v2.15     :LOG:cls:

-   all intermediate changes combined in this version (during 2022's conferences a number of changed class files were distributed carying parts of v2.10-.14)
-   check for \AddToNoCaseChangeList instead of \IfFormatAtLeastTF{2022/06/01}


### v2.14     :LOG:cls:

-   \`lineno\` with "minted" are not supported
-   place a "\\\\" rather than \par for linebreak in the definition of \placedoi to get the vertical spacing right


### v2.13     :LOG:cls:

-   placement of DOI changed: if it fits on the line OK, otherwise use a new line
-   period/fullstop placed in front of DOI


### v2.12     :LOG:cls:

-   the new changes to LaTeX3 (2022-06-01) break the old "\\@nonchangecase" command \AddToNoCaseChangeList{command} added


### v2.11     :LOG:cls:

-   remove the (empty) package textcase and substituted it by \let\MakeTextUppercase\MakeUppercase


### v2.10     :LOG:cls:

-   added Zhichu's switch between version of siunitx (older than 2021-05-17}.


### v2.9     :LOG:cls:

-   remove the math-micro option from siunitx as it was deprecated.


### v2.8     :LOG:cls:

-   removes the (non)stretchability \bibitemsep{0pt} from tests (oversight in v2.7)
-   introduced the page setting by geometry to JACoW paper size which wasn't working in earlier version of jacow.cls due to the necessary offset using "pt". With Zhichu Chen's suggestion of using "bp" instead of "pt", Ivan's JACoW utils does not complain anymore, and the /Mediabox is correctly shown in Acrobat and PitStop.
    
    -   paperheight  792.0 bp ≅ 794.97 pt [794.96208 pt]
    -   paperwidth   595.0 bp ≅ 597.23 pt [597.22530 pt]
    
    Currently I have not found where in a PDF it's defined whether (media/crop box) values are "pt" or "bp".


### v2.7     :LOG:cls:

-   added some biblatex macros to achieve closer JACoW reference formatting than standard ieeetran


### v2.6     :LOG:cls:

-   ifluatex/ifxetex dropped for iftex


### v2.5     :LOG:cls:

-   flushend dropped the option keeplastbox, therefore removed from jacow package option list
-   Option "binary-units" has been removed from siunitx release.
-   Option "detect-mode" has been deprecated in this (siunitx) release: v3.0.32
    -   Use "mode=match" as a replacement.
-   Option "detect-weight" has been deprecated in this (siunitx) release: v3.0.32
    -   Use "reset-text-series=false, text-series-to-math=true" as a replacement.
-   fixltx2e is not required with releases after 2015


### v2.4     :LOG:cls:

-   version 2.3 did not work for XeTeX/LuaTeX, therefore font change using \def\UrlFont and switching the fontencoding to T1 (suggested by Ulrike Fischer)
-   package amsmath included to provide


### v2.3     :LOG:cls:

-   font for ttfamily switched to newtxtt with option zerostyle=d (dotted 0)


### v2.2     :LOG:cls:

-   adapted to the changes of template version 2018-02
-   made this one official


### WAITING v2.1     :LOG:cls:


new options introduced
flushend: new: keeplastbox
siunitx:  new: binary-units=true
BibLaTeX: changed: style=ieee => bibstyle=ieee, citestyle=numeric-comp
          new: dashed=false
          removed: doi=false


### WAITING v2.00     :LOG:cls:milestone:


-   after using v1.96 during conferences where DOIs/URLs were present in bibliographic records, the following changes to Heine's version have been made:
    -   doi field allowed
    -   url field allowed


### v1.96     :LOG:cls:

-   modification of bilatex style information. Since the JACoW template Feb-2016 the bibliography requires the IEEEtran style. Heine provided an adapted version using the required values of the template:
    -   ieee biblatex style instead of numeric-compv
    -   doi field is cleared for all entries
    -   et al. is used when there are > 6 authors (maxnames=6). In that case, only the first author is mentioned (minnames=1)
    -   url field is cleared for articles and inproceedings
    -   giveninits=true reduces all given names to initials


### v1.95     :LOG:cls:

-   only change to the version 1.94 are the extended documentation and license statement (lppl1.3c) as preparation for publication on CTAN.


### v1.94     :LOG:cls:

-   the micro sign in UTF-8 prevents ASCII format of the cls file. Ulrike pointed out a hack in <http://tex.stackexchange.com/questions/172968/hide-notation-from-pdftex> which is now introduced.


### v1.93     :LOG:cls:

-   setting the bottom margin (19mm) without top solves the problem for different A4/Letter settings. This was already the default in v1.6. Pointed out by Plamen Hopchev. To accommodate the descenders the bottom margin has been set to 56pt now.


### v1.92     :LOG:cls:

-   settings for top margin have to be different in A4 and letter to accommodate JACoW's PitStop Action List. This was found after receiving Plamen Hopchev's email about margins and testing the workflow with cropping the bounding box which starts at the lower left edge and not at the top (see graphic JACpic<sub>mc</sub> in the template for measures).


### v1.91     :LOG:cls:

-   Ligatures=TeX switch introduced to accommodate


### v1.9     :LOG:cls:

-   fixed the pdfLaTeX warnings for the text/math-micro hack


### v1.8     :LOG:cls:

-   added setup for &micro; sign which disappears when using XeTeX or LuaTeX with unicode-math.


### v1.7     :LOG:cls:

-   small change to correct the text block inside JACoW's magic red borders for a4paper (aca4); top has been set 18.5mm (19mm is defined in the template but leaves descenders outside the lower y margin).
-   duplicate {boxit} removed


### v1.6     :LOG:cls:

This is a complectly rewritten version of JAC2003.cls which needs a current TeX-System to run.


### v1.5     :LOG:cls:

This is a modified version of JAC2003.cls to adjust space around section and subsection headers to be more consistent with JACoW Word templates.


### v1.4     :LOG:cls:milestone:

JAC2001.cls is a modified version of JAC2000.cls to produce indented first paragraphs after section, subsection and subsubsection headings.


### v0.1 to 1.3     :LOG:cls:milestone:

Special thanks to John Jowett and Michel Goossens from CERN and Martin Comyn at TRIUMF for their significant contributions to this class file over the period 1996 to 2000.

