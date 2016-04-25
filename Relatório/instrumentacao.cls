\ProvidesClass{instrumentacao}[2014/08/16 Example LaTeX class]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax
\LoadClass[14pt]{extreport}

\RequirePackage[T1]{fontenc}
\RequirePackage[brazil]{babel}
\RequirePackage[utf8]{inputenc}
\RequirePackage{graphicx}
\RequirePackage{todonotes}
\RequirePackage{float}
\RequirePackage{cite}
\RequirePackage{url}
\RequirePackage{hyperref}
\RequirePackage{cleveref}
\RequirePackage[all]{hypcap}
\RequirePackage{titlesec}
\RequirePackage{titling}
\RequirePackage[none]{hyphenat}
\RequirePackage{changepage}
\RequirePackage{indentfirst}
\RequirePackage[margin=1.75cm]{geometry}
\RequirePackage{fancyhdr}

\RequirePackage{array}
\RequirePackage{amsmath,amssymb}
\RequirePackage{mathtools}
\RequirePackage{multirow}
\RequirePackage{multicol}

% desativado porque ler TNR é muito ruim! lembrar de desativar antes de imprimir
\RequirePackage{mathptmx}

\RequirePackage{grffile}
\RequirePackage{pdfpages}
\RequirePackage{pbox}

\fontsize{20pt}{0pt}\selectfont

%% TEMPLATE ARGUMENTS
\newcommand{\institute}[1]{%
	\renewcommand{\theinstitute}[0]{#1}
}
\newcommand{\theinstitute}[0]{}

\newcommand{\emails}[1]{%
	\renewcommand{\theemails}[0]{#1}
}
\newcommand{\theemails}[0]{}

\newcommand{\resume}[1]{%
	\renewcommand{\theresume}[0]{#1}
}
\newcommand{\theresume}[0]{}

\renewcommand{\abstract}[1]{%
	\renewcommand{\theabstract}[0]{#1}
}
\newcommand{\theabstract}[0]{}

\newcommand{\keywords}[1]{%
	\renewcommand{\thekeywords}[0]{#1}
}
\newcommand{\thekeywords}[0]{}

\newcommand{\startdate}[1]{%
	\renewcommand{\thestartdate}[0]{#1}
}
\newcommand{\thestartdate}[0]{}

\newcommand{\finishdate}[1]{%
	\renewcommand{\thefinishdate}[0]{#1}
}
\newcommand{\thefinishdate}[0]{}

\newcommand{\headertext}[1]{%
	\renewcommand{\theheadertext}[0]{#1}
}
\newcommand{\theheadertext}[0]{}


% Attachments
\newcommand{\includenotebook}[3]{
	\includepdf[pages={1},pagecommand={
		\pagestyle{fancy}
		\subsection{#2}
		\label{att:#3}
	}]{#1}
	\includepdf[pages={2-},pagecommand={
		\pagestyle{fancy}
	}]{#1}
}

\newcommand{\includenotebooksingle}[3]{
	\includepdf[pages={1}, pagecommand={
		\pagestyle{fancy}
		\subsection{#2}
		\label{att:#3}
	}]{#1}
}

% CUSTOM COMMANDS
\newcommand{\emailaddress}[2]{\href{mailto:#2}{#2} (#1)}

% CONFIGURATION
\pagestyle{fancy}
\fancyhead[RE,LO]{\textit{\theheadertext} \ \textbf{\the\year}}
\fancyhead[LE,RO]{\thepage}
\fancyfoot[CE,CO]{}
\fancyfoot[LE,RO]{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

\setlength{\parindent}{0.5cm}

\titleclass{\chapter}{straight}
\titlespacing*{\chapter}{0pt}{1em}{1em}
\titleformat{\chapter}[block]
  {\raggedright \bfseries}
  {\thetitle.}
  {0.5em}
  {}
\titleclass{\section}{straight}
\titleformat{\section}[block]
  {\raggedright \itshape}
  {\thetitle.}
  {1em}
  {}
\titleformat{\subsection}[hang]
  {\itshape}
  {\thesubsection.}
  {0.5em}
  {}

\renewcommand{\maketitle}{%
\let\endtitlepage\relax
\begin{titlepage}
\begin{flushleft}
\textit{Instrumentação A, \the\year, UFRGS, DELET}
{\noindent
\begin{flushright}
{\raggedright \Huge
	Instrumentação A
	\vspace{1em}
}
\end{flushright}

{\textit \noindent
	Relatório
	\vspace{1em}
}

{\LARGE \textbf
	\thetitle
	\vspace{1em}
}

{
	\theauthor
	\vspace{1em}
}

\begin{adjustwidth}{0.5cm}{}
{ \noindent
	\theinstitute
	\vspace{1em}
}
\end{adjustwidth}

{
	E-Mails: \theemails
	\vspace{1em}
}

{
	\textit{Data Início: \thestartdate; Data Final: \thefinishdate}
	\vspace{1em}
}
}

\hrule \vspace{1em}

\end{flushleft}

\begin{adjustwidth}{1cm}{}
\noindent
\textbf{Resumo}: \theresume
\vspace{1.5em}

\noindent\textbf{Abstract}: \theabstract
\vspace{1.5em}

\noindent\textbf{Palavras Chaves}: \thekeywords

\vspace{1em} \hrule
\end{adjustwidth}
\end{titlepage}
}
