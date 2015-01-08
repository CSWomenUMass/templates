% Agenda style file
% Author: Emma Tosch, University of Massachusetts Amherst
% Copyright: (C) 2014 University of Massachusetts Amherst
% Documentation: see agenda_text.tex for example usage.

% License:
%
% This program is free software; you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation; either version 2, or (at your option)
% any later version.
%
% This program is distributed in the hope that it will be useful, but
% WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
% General Public License for more details.
%
% You should have received a copy of the GNU General Public License
% along with this program; if not, write to the Free Software
% Foundation, 
% Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307, USA.

\LoadClass[onesided]{report}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{agenda}[2014/01/08 CSWomen agenda class]
\RequirePackage{titlesec}
\RequirePackage{fullpage}
\RequirePackage{xcolor}
\RequirePackage[top=1in, bottom=1in, left=1.5in, right=1in,
  marginparwidth=1.5in]{geometry}
\reversemarginpar
\thispagestyle{empty}

\def\groupvar {}
\def\objectivevar {}
\def\invitedvar {}
\def \headerwidth {5in}

\newcommand{\group}[1]{
  \def \groupvar { #1 }
}

\newcommand{\objective}[1]{
  \def \objectivevar { #1 }
}

\newcommand{\invited}[1]{
  % TODO(etosch): make this variadic, where each arg is an individual.
  \def \invitedvar { #1 }
}

\newcommand{\agendaheader}{
  % Getting margin notes to align correctly is annoying; separating
  % with a light grey line for now.
  \section*{\sc \groupvar Meeting Agenda} 
  \begin{table}[h]
    \begin{tabular}{l p{\headerwidth}}
      {\sc Date:} & \today{} \\
      {\sc Objective:} & \objectivevar \\
      {\sc Invited:} & \invitedvar \\
      \hline
    \end{tabular}
  \end{table}
}


\newenvironment{agendaitem}[2]{%%
  \vspace{0pt}\hspace{0pt} %%
  \marginpar[\raggedleft{\sc #1 mins}] %%
  \noindent{\bf #2} %%
  \par
}{\vspace{0.2in}}

\newcommand{\actionitem}[1]{
  {\color{red}{\bf #1}}
}
