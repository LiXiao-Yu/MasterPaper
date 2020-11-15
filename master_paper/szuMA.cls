\NeedsTeXFormat{LaTeX2e}[2007/10/19]
\ProvidesClass{szuMA}
[2017/05/015 v0.1 Thesis Template for SZU Postgraduate]

\LoadClass[cs4size,12pt,a4paper,fntef,UTF8]{ctexart}[2017/6/15]

\RequirePackage{amsmath,amsthm,amsfonts,amssymb,bm,times,fancyhdr}
\RequirePackage{epigraph, titlesec, textcomp}
\RequirePackage{caption,titletoc}
\DeclareCaptionFont{wuhao}{\zihao{5}}
\newcommand{\xiaowu}{\zihao{-5}}
\captionsetup{labelfont=bf,font=wuhao}
\renewcommand{\thefigure}{\arabic{figure}}	%图表的计数方式
\renewcommand{\thetable}{\arabic{table}}
%\renewcommand\bibname{\fangsong\zihao{-3}{\textbf{参~~考~~文~~献}}}
\renewcommand{\contentsname}{\songti\zihao{2}{\textbf{目~~~~录}}}
\renewcommand\refname{\fangsong\zihao{-3}{\textbf{参~~考~~文~~献}}}
%上标方式
\makeatletter
\def\@cite#1#2{\textsuperscript{[{#1\if@tempswa , #2\fi}]}}
\makeatother
%\renewcommand\refname{your bibliography title}
\def\coverCataNum#1{#1}
\def\author#1{#1}
\newcommand{\coverUDC}[1][~]{#1}
\newcommand{\coverSchoolCode}[1][~]{#1}
\newcommand{\coverSecret}[1][~]{#1}
\newcommand{\major}[1][~]{#1}
\newcommand{\instrument}[1][~]{#1}
\newcommand{\tutor}[1][~]{#1}
\newcommand{\titleCN}[1][~]{~~#1~~}
\newcommand{\titleEN}[1][~]{#1}
\newcommand{\bareDate}{\makebox[40mm][s]{\hspace{\stretch{2}}年\hspace{\stretch{1}}月\hspace{\stretch{1}}日}}
\newcommand{\newContects}{section}



\setmainfont{Times New Roman}

%\setCJKmainfont{STSong}	
\setCJKmainfont{SimSun} %全文字体
\renewcommand{\headrulewidth}{1pt}
%\addtolength{\headwidth}{0.16\textwidth}
%\fancypagestyle{plain}{\renewcommand{\headrulewidth}{300pt}\fancyhf{}}


\setcounter{tocdepth}{3}	%设置目录树显示深度
%\titlecontents{section}[0em]{\normalsize\bfseries\protect\addvspace{15pt}}{\brlap[\baselineskip]}{}{\sectionname{}\thecontentslabel \enspace\titlerule\contentspage}%
%调整目录显示规则
\titlecontents{section}[0em]{\zihao{4}}{\thecontentslabel\hspace{1em}}{}{\titlerule*{$\cdot$}\contentspage}%
\titlecontents{subsection}[2em]{\zihao{4}}{\thecontentslabel\hspace{1em}}{}{\titlerule*{$\cdot$}\contentspage}
\titlecontents{subsubsection}[4em]{\zihao{4}}{\thecontentslabel\hspace{1em}}{}{\titlerule*{$\cdot$}\contentspage}
%\titlecontents{subsubsection}[2em]{\zihao{4}}{\contentslabel{0em}}{}{\titlerule*{$\cdot$}\contentspage}
\titlecontents{figure}[0em]{\zihao{4}}{图~\thecontentslabel\hspace{1em}}{}{\titlerule*{$\cdot$}\contentspage}
\titlecontents{table}[0em]{\zihao{4}}{表~\thecontentslabel\hspace{1em}}{}{\titlerule*{$\cdot$}\contentspage}
%目录样式
\let\savedtableofcontents\tableofcontents
\renewcommand{\tableofcontents}{%
	\pagestyle{empty}
	\savedtableofcontents
	\newpage
	\pagenumbering{arabic}
	\pagestyle{fancy}
	\fancyhead{}
	\fancyhead[OC]{\songti\zihao{5}{\titleCN}}
	\fancyfoot[C]{\thepage}
	\setcounter{page}{1}
}
%参考文献样式
\let\savedbibliographystyle\bibliographystyle
\renewcommand{\bibliographystyle}[1]{
	\newpage
	\songti\zihao{5}{\savedbibliographystyle{#1}}
	\addcontentsline{toc}{\newContects}{参考文献}
}
%	\phantomchapter % 让加入的目录带超链接
%中文摘要
\newenvironment{abstractCN}{
	\newpage
	\vspace*{-32pt}
	\thispagestyle{fancy}
	\fancyhead[OC]{\songti\zihao{5}{\titleCN}}
	\pagenumbering{Roman}
	\addcontentsline{toc}{\newContects}{摘要} % 在目录中显示摘要
	%\vspace{1\baselineskip}	
	\begin{center}  	
		\songti\zihao{2}{\textbf{摘~~~~要}}
	\end{center}
	\vspace{2\baselineskip}
	\songti\zihao{-4}
}{}
%中文关键词
\newenvironment{keywordCN}{
	\vspace{2\baselineskip}	%空两行
	\songti\zihao{-4}
	\textbf{关键词：}}{\newpage}
%英文摘要
\newenvironment{abstractEN}{
	\newpage
    \vspace*{-15pt}
	\thispagestyle{fancy}
	\fancyhead[OC]{\songti\zihao{5}{\titleEN}}
	\addcontentsline{toc}{\newContects}{Abstract} % 在目录中显示摘要
	%\vspace{1\baselineskip}	
	\begin{center}
		\setmainfont{Lucida Console}{\zihao{2}{Abstract}}	%Lucida Console
	\end{center}
	\vspace{2\baselineskip}
	\songti\zihao{-4}
}{}
%英文关键词
\newenvironment{keywordEN}{
	\vspace{2\baselineskip}	%空两行
	\songti\zihao{-4}
    \thispagestyle{fancy}
	\textbf{Key word: }}
{\newpage}
%定义附录环境
\newenvironment{szuAppendix}[1]{
	\newpage
	\addcontentsline{toc}{\newContects}{#1} % 在目录中显示附录
	\vspace{1\baselineskip}	
	\begin{center}
		\fangsong\zihao{-3}{\textbf{#1}}	%Lucida Console
	\end{center}
	\vspace{1\baselineskip}
	\songti\zihao{5}
	
}{}

%\renewcommand\thesection{\arabic{section}}
%\renewcommand\thesubsection{\thesection.\arabic{subsection}}
%\renewcommand\thesubsubsection{\thesection.\thesubsection.\arabic{subsubsection}}
%重定义标题显示规则
\CTEXsetup[name={第~,~章},number={\arabic{section}}]{section}
\CTEXsetup[format+={\heiti\zihao{-3}}]{section}


%\CTEXsetup[nameformat+={\songti\bf\zihao{4}},titleformat+={\songti\bfseries\zihao{4}}]{section}
%\CTEXsetup[beforeskip={-23pt},afterskip={20pt plus 2pt minus 2pt}]{chapter}

\CTEXsetup[name={,},number={\thesubsection}]{subsection}
\CTEXsetup[format+={\songti\bf\zihao{4}}]{subsection}
%\CTEXsetup[beforeskip={-23pt},afterskip={20pt plus 2pt minus 2pt}]{subsection}

\CTEXsetup[name={,},number={\thesubsubsection}]{subsubsection}
\CTEXsetup[format+={\songti\bfseries\zihao{-4}}]{subsubsection}


\endinput
