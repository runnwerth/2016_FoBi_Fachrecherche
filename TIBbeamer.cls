\ProvidesClass{TIBbeamer}

% General settings

\PassOptionsToPackage{english}{babel}
\PassOptionsToPackage{table}{xcolor}
% \PassOptionsToPackage{bookmarks,colorlinks}{hyperref}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
\ProcessOptions\relax
\LoadClass{beamer}
\RequirePackage[T1]{fontenc}
\RequirePackage{babel}
\RequirePackage{graphicx}
\RequirePackage{tabularx}
\RequirePackage{tikz}
\RequirePackage[scaled]{helvet}

% Colour settings

\definecolor{TIB_red}{RGB}{240, 50, 5}
\definecolor{TIB_gray}{RGB}{85, 85, 85}

\setbeamercolor*{alerted text}{fg=TIB_red, bg=white}
\setbeamercolor*{caption}{fg=TIB_gray, bg=white}
\setbeamercolor*{caption name}{fg=TIB_gray, bg=white}
\setbeamercolor*{description item}{fg=TIB_gray, bg=white}
\setbeamercolor*{footline}{fg=TIB_gray, bg=white}
\setbeamercolor*{frametitle}{fg=TIB_red, bg=white}
\setbeamercolor*{item}{fg=TIB_gray, bg=white}
\setbeamercolor*{normal text}{fg=TIB_gray, bg=white}
\setbeamercolor*{section in toc}{fg=TIB_gray, bg=white} % Why don't you work? Link colour must be adapted
\setbeamercolor*{subsection in toc}{fg=TIB_gray, bg=white} % Why don't you work? Link colour must be adapted
\setbeamercolor*{separation line}{fg=TIB_gray, bg=white}
\setbeamercolor*{structure}{fg=TIB_gray, bg=white} % might be redundant to item list et al.
\setbeamercolor*{subitem}{fg=TIB_gray, bg=white}
\setbeamercolor*{subsubitem}{fg=TIB_gray, bg=white}
\setbeamercolor*{title}{fg=TIB_red, bg=white}

% Font settings

\setbeamerfont*{author}{size=\normalsize, series=\bfseries}
\setbeamerfont*{frametitle}{size=\large, series=\bfseries}
\setbeamerfont*{subtitle}{size=\Large, series=\bfseries}
\setbeamerfont*{title}{size=\huge, series=\bfseries}

% Inner theme

\setbeamertemplate{itemize items}[square]
\setbeamertemplate{section in toc}[sections numbered]
\setbeamertemplate{headline}{}
\setbeamertemplate{navigation symbols}{}

% Outer theme

% Title page
\defbeamertemplate*{title page}{TIB}
{
	\thispagestyle{empty}

	{% Logo
		\begin{tikzpicture}[remember picture,overlay]
		\node[anchor=north west, xshift=0.7cm, yshift=-0.7cm] at (current page.north west)
		{
			% English version
			%\includegraphics[width=0.4\linewidth]{TIB_Markenzusatz_EN_1C}
			% German version
			\includegraphics[width=0.5\linewidth]{TIB_Logo_Markenzusatz_60mm_RGB}
		};
		\end{tikzpicture}
	
		\begin{tikzpicture}[remember picture,overlay]
		\node[anchor=north west, xshift=-3.3cm, yshift=-0.35cm] at (current page.north east)
		{
			\includegraphics[width=0.25\linewidth]{TIB_Wort_Bildmarke_RGB}
		};
		\end{tikzpicture}
	 }
	
	{ % Title
		\usebeamerfont{title}
		\usebeamercolor[fg]{title}

		\begin{tikzpicture}[remember picture,overlay]
		\node[anchor=west, xshift=1cm] at (current page.west)
		{
			\begin{beamercolorbox}{}
				\inserttitle 
			\end{beamercolorbox}
		};
		\end{tikzpicture}
	}
	
	{ % Author
		\usebeamerfont{author}
		\usebeamercolor{normal text}

		\begin{tikzpicture}[remember picture,overlay]
		\node[anchor=west, xshift=1cm, yshift=-2.5cm] at (current page.west)
		{
			\begin{beamercolorbox}{}
				\insertauthor
			\end{beamercolorbox}
		};
		\end{tikzpicture}
	}

	{ % Date
		\usebeamerfont{author}
		\usebeamercolor{normal text}

		\begin{tikzpicture}[remember picture,overlay]
		\node[anchor=west, xshift=1cm, yshift=-3.5cm] at (current page.west)
		{
			\begin{beamercolorbox}{}
				\insertdate
			\end{beamercolorbox}
		};
		\end{tikzpicture}
	}

	{ % Footline with CC license
		\begin{tikzpicture}[remember picture,overlay]
		\node[anchor=west, xshift=1cm, yshift=-4 cm] at (current page.west)
		{
			\begin{beamercolorbox}{}
				\flushright
				\includegraphics[width=0.1\linewidth]{CC-by-sa_icon-svg}
			\end{beamercolorbox}
		};
		\end{tikzpicture}
	}
}

% Frame title
\defbeamertemplate*{frametitle}{TIB}
{
	\usebeamerfont*{frametitle}
	\usebeamercolor[fg]{frametitle}

	\begin{tikzpicture}[remember picture,overlay]
	\node[anchor=north west, xshift=0.7cm, yshift=-0.7cm] at (current page.north west)
	{
		\begin{beamercolorbox}[wd=8cm]{}
			\insertframetitle
		\end{beamercolorbox}
	};
	\end{tikzpicture}

	\begin{tikzpicture}[remember picture, overlay]
	\node[anchor=north west, xshift=-2.75cm, yshift=-0.35cm] at (current page.north east)
	{
		\includegraphics[width=0.2\linewidth, height=\paperheight, keepaspectratio]{TIB_Wort_Bildmarke_RGB}
	};
	\end{tikzpicture}
}

% Frame title continuations
\defbeamertemplate*{frametitle continuation}{TIB}{\insertcontinuationcountroman}

% Section frame
\setbeamertemplate{section page}
{
	\begin{tikzpicture}[remember picture, overlay]
	\node[anchor=north west, xshift=-2.75cm, yshift=-0.35cm] at (current page.north east)
	{
		\includegraphics[width=0.2\linewidth, height=\paperheight, keepaspectratio]{TIB_Wort_Bildmarke_RGB}
	};
	\end{tikzpicture}

    \begin{centering}
    \begin{beamercolorbox}[sep=12pt,center]{part title}
    \usebeamerfont{section title}\insertsection\par
    \end{beamercolorbox}
    \end{centering}
}

% Footer
\addtobeamertemplate{footnote}{}{\vspace{2ex}}

\newcommand{\TIB@footline}{\insertsectionnumber.~\insertsection \hfill \insertframenumber/\inserttotalframenumber}

\defbeamertemplate*{footline}{TIB}
{
	\begin{beamercolorbox}[leftskip=15pt,rightskip=15pt,ht=2.5ex,dp=1ex]{footline}
  	\usebeamerfont{footline}\TIB@footline\par
  	\vspace{2ex}
  	\end{beamercolorbox}	
}

