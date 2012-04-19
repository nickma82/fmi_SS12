\NeedsTeXFormat{LaTeX2e}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}

\ProcessOptions

\LoadClass{article}
\RequirePackage{a4wide}
\RequirePackage{german}

%%---------------------------- Voreinstellungen ------------------------------

\pagestyle{plain}
\parindent 0pt
\frenchspacing

\renewcommand{\labelenumi}{(\alph{enumi})}   % Teilaufgabe
\renewcommand{\labelenumii}{\roman{enumii})} % Teilunteraufgabe

%%--------------------------Makros---------------------------------------------

\newlength{\abslength}\setlength{\abslength}{2mm plus 1mm minus 1mm}
\newcommand{\abs}{\par\vspace{\abslength}}

\newcommand{\unterstrichen}[1]{\(\underline{\mbox{#1}}\)}

\newlength{\TUMBr}\settowidth{\TUMBr}{{\bf Technische Universit\"at Wien}}
\newcommand{\Kopf}[6]{
   {\bf
     \makebox[\TUMBr]{Technische Universit\"at Wien} \hfill #3\\
     \makebox[\TUMBr]{Fakult\"at f\"ur Informatik} \hfill #4\\
     \makebox[\TUMBr]{#1} \hfill #5\\
     \makebox[\TUMBr]{#2}\\
     \makebox[\TUMBr]{#6}
     }
   \abs}
\newcommand{\Viereck}[1]{%
   {\unitlength 1mm
     \begin{picture}(#1,8)
       \put(0,0){\framebox(#1,8){}}
     \end{picture}
     }}
\newcommand{\NameVornameMatrnummer}{%
   \raisebox{3mm}{Name:} \Viereck{40}\hfill
   \raisebox{3mm}{Vorname:} \Viereck{40}\hfill 
   \raisebox{3mm}{Matr.Nr:} \Viereck{30}\abs %%\par
   }

\newcommand{\Ueberschrift}{
   \begin{center}
     \large\bf\ Exercises on \Vorlesung
   \end{center}
   }

\newcommand{\Aufgabenblatt}[2]{\pagestyle{empty}
   \Kopf{\Prof}{\AssisA}{\Semester}{Aufgabenblatt #1}{#2}{\AssisB}\begin{center}\textbf{%
     \Large%
%   \sf%
     \ Praktikum\\[0.8ex]\Vorlesung}\end{center}\abs}

\newcommand{\Hinweisblatt}[2]{\pagestyle{empty}
   \Kopf{\Prof}{\AssisA}{\Semester}{Merkblatt #1}{#2}{\AssisB}\begin{center}\textbf{%
     \Large%
%   \sf%
     \ Praktikum\\[0.8ex]\Vorlesung}\end{center}\abs}

\newcommand{\Uebungsblatt}[2]{\pagestyle{empty}
   \renewcommand{\Loesung}{}
   \Kopf{\Prof}{\AssisA}{\Semester}{\"Ubungsblatt #1}{#2}{\AssisB}\Ueberschrift\abs}

\newcommand{\Testatblatt}[2]{\pagestyle{empty}
   \renewcommand{\Loesung}{}
   \Kopf{\Prof}{\AssisA}{\Semester}{Testatblatt #1}{#2}{\AssisB}\Ueberschrift\abs}

\newcommand{\Mitteilung}[2]{\pagestyle{empty}
   \Kopf{\Prof}{\AssisA
}{\AssisB
}{\Semester}{Mitteilung #1}{#2}\Ueberschrift\abs}

\newcommand{\Merkblatt}[2]{\pagestyle{empty}
   \Kopf{\Prof}{\AssisA}{\Semester}{Merkblatt #1}{#2}{\AssisB}\Ueberschrift\abs}

\newcommand{\Loesungsblatt}[2]{\thispagestyle{empty}
   \renewcommand{\Loesung}{\quad(\LoesungsText)}
   \Kopf{\Prof}{\AssisA}{\Semester}{L"osungsvorschl"age zu Blatt #1}{#2}{\AssisB}\Ueberschrift\abs}

\newcommand{\Klausur}[2]{\vspace*{-8mm}\thispagestyle{empty}
   \NameVornameMatrnummer
   \Kopf{\Prof}{\AssisA}{\Semester}{#1}{#2}{\AssisB}
   \begin{center}
     \Large\bf Semestralklausur zur Vorlesung \Vorlesung
   \end{center}\abs
   }
\newcommand{\DVP}[2]{\vspace*{-8mm}\thispagestyle{empty}
   \NameVornameMatrnummer
   \Kopf{\Prof}{\AssisA}{\Semester}{#1}{#2}{\AssisB}
   \begin{center}
       \Large\bf Diplomvorpr"ufungsklausur f"ur Informatiker 1.\ Teil\\
       \Large\bf\Vorlesung
   \end{center}\abs
   }

\newcounter{TAufgabennr}
\newcommand{\TAufgabe}[1][]{%
  \stepcounter{TAufgabennr}
  \subsubsection*{\unterstrichen{Aufgabe T--\arabic{TAufgabennr}:}\Loesung\hspace{1em}
    {\small \textmd{#1}}}}

\newcounter{PAufgabennr}
\newcommand{\PAufgabe}[1][]{%
  \stepcounter{PAufgabennr}
  \subsubsection*{\unterstrichen{Aufgabe P--\arabic{PAufgabennr}:}\Loesung\hspace{1em}
    {\small \textmd{#1}}}}

\newcounter{Aufgabennr}
\newcommand{\Aufgabe}[1][]{%
  \stepcounter{Aufgabennr}
  \subsubsection*{\unterstrichen{\AufgabenText\ \arabic{Aufgabennr}}\Loesung\hspace{1em}
    {\small \textmd{#1}}}}

\newcommand{\ZusatzAufgabe}[1][]{%
  \stepcounter{Aufgabennr}
% \subsubsection*{\unterstrichen{\ZusatzAufgabenText\ \arabic{Aufgabennr}}\Loesung\hspace{1em}
  \subsubsection*{\unterstrichen{\AufgabenText\ \arabic{Aufgabennr}}\quad\textbf{(Z)}\Loesung\hspace{1em}
    {\small \textmd{#1}}}}
\newcommand{\ZZusatzAufgabe}[1][]{%
  \stepcounter{Aufgabennr}
% \subsubsection*{\unterstrichen{\ZusatzAufgabenText\ \arabic{Aufgabennr}}\Loesung\hspace{1em}
  \subsubsection*{\unterstrichen{\AufgabenText\ \arabic{Aufgabennr}}\quad\textbf{(ZZ)}\Loesung\hspace{1em}
    {\small \textmd{#1}}}}

\newcommand\Hausaufgabe{{\bf\raisebox{1pt}(H\raisebox{1pt})}}
\newcommand\Programmieraufgabe{{\bf\raisebox{1pt}(P\raisebox{1pt})}}
%%\newcommand\Zusatzaufgabe{{\bf\raisebox{1pt}(Z\raisebox{1pt})}}
\newcommand\AufgabenText{Exercise}
\newcommand\ZusatzAufgabenText{Zusatzaufgabe}
\newcommand\LoesungsText{L"osungsvorschlag}

%% for internal use, see \Aufgabe and \Loesungsblatt
\newcommand\Loesung{}

%%------------------- spezielle Mathematik-Makros -----------------------
\def\MOD{\mathrel{{\rm mod}}}
\def\DIV{\mathrel{{\rm div}}}
\newcommand{\gdw}{\ \Leftrightarrow\ }
\newcommand{\folgt}{\ \Rightarrow\ }
\newcommand{\imp}{\rightarrow}
\newcommand{\eps}{\varepsilon}
\newcommand{\conc}{\raisebox{-3pt}{$\smallsmile$}}
\newcommand{\Alphabet}{{\cal A}}
\newcommand{\blank}{\mbox{\begin{picture}(12,4)
\put(1,0){\line(0,1){4}}
\put(1,0){\line(1,0){10}}
\put(11,0){\line(0,1){4}}
\end{picture}}}

