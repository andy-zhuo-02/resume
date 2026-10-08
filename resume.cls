\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2026/10/08 Academic resume]
\LoadClass[10pt]{article}
\RequirePackage{fontspec}
\setmainfont[Path=fonts/HarmonyOS/,BoldFont=HarmonyOS_Sans_Bold.ttf,ItalicFont=HarmonyOS_Sans_Regular.ttf,ItalicFeatures={FakeSlant=0.2}]{HarmonyOS_Sans_Regular.ttf}
\setsansfont[Path=fonts/HarmonyOS/,BoldFont=HarmonyOS_Sans_Bold.ttf]{HarmonyOS_Sans_Regular.ttf}
\RequirePackage[a4paper,left=1.8cm,right=1.8cm,top=1.45cm,bottom=1.45cm,nohead]{geometry}
\RequirePackage{xcolor}
\definecolor{accent}{HTML}{8C0000}
\definecolor{ink}{HTML}{303438}
\definecolor{muted}{HTML}{737980}
\definecolor{hairline}{HTML}{DDD5D5}
\definecolor{photoFill}{HTML}{FAF5F4}
\RequirePackage{graphicx}
\RequirePackage{hyperref}
\hypersetup{colorlinks=true,urlcolor=ink,linkcolor=ink,pdfborder={0 0 0},pdftitle={卓安 | 个人学术履历},pdfauthor={卓安}}
\RequirePackage{titlesec}
\RequirePackage{enumitem}
\RequirePackage{tabularx}
\RequirePackage{needspace}
\setlength{\parindent}{0pt}
\setlength{\parskip}{0pt}
\AtBeginDocument{\fontsize{10}{14}\selectfont\color{ink}}
\setlist[itemize]{leftmargin=1.2em,label=\textcolor{muted}{\textbullet},topsep=3pt,itemsep=2pt,parsep=0pt,partopsep=0pt}
\titleformat{\section}{\fontsize{12}{15}\selectfont\bfseries\color{accent}}{}{0pt}{}[\vspace{1pt}\color{hairline}{\titlerule[0.4pt]}]
\titlespacing*{\section}{0pt}{10pt}{7pt}
% Flexible title column keeps dates aligned without pushing long titles outside the page.
\newcommand{\datedsubsection}[2]{\noindent\begin{tabularx}{\linewidth}{@{}X r@{}}{\fontsize{10.5}{14}\selectfont #1} & {\fontsize{9}{12}\selectfont\color{muted}#2}\end{tabularx}\par}
\newcommand{\meta}[1]{{\fontsize{9}{12.5}\selectfont\color{muted}#1\par}}
\newcommand{\entrygap}{\vspace{7pt}}
\newcommand{\publicationtitle}[1]{\Needspace{7\baselineskip}{\fontsize{10}{13.5}\selectfont\bfseries #1\par}\vspace{2pt}}
\newcommand{\authors}[1]{{\fontsize{8.7}{11.5}\selectfont\color{muted}#1\par}\vspace{2pt}}
\newcommand{\role}[2]{\meta{#1\quad #2}}
\newcommand{\name}[1]{{\fontsize{30}{34}\selectfont\bfseries\color{accent}#1\par}}
\newcommand{\resumephoto}[1]{\IfFileExists{#1}{\includegraphics[width=2.025cm,height=2.7cm,keepaspectratio]{#1}}{\begingroup\setlength{\fboxsep}{0pt}\fcolorbox{hairline}{photoFill}{\parbox[c][2.7cm][c]{2.025cm}{\centering\small\color{muted}个人照片}}\endgroup}}
\pagestyle{empty}
