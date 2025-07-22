%================================================================================
% blockbuilders.cls
%================================================================================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{blockbuilders}[2025/02/18 v1.0 Clase personalizada para proyectos]

%--------------------------------------------------------------------------------
% Basado en la clase article (a4, 12pt)
%--------------------------------------------------------------------------------
\LoadClass[a4paper,12pt]{article}

%--------------------------------------------------------------------------------
% Paquetes generales
%--------------------------------------------------------------------------------
\RequirePackage[utf8]{inputenc}% Para usar UTF-8
\RequirePackage[spanish]{babel}% configurar idioma español
\RequirePackage[T1]{fontenc}% Encodificación de fuentes
\RequirePackage{graphicx}% Insertar imágenes
\RequirePackage{geometry}% Control de márgenes
\RequirePackage{microtype}% Ajustes tipográficos
\RequirePackage{xcolor}% Manejo de colores
\RequirePackage{fancyhdr}% Encabezados y pies de página
\RequirePackage{enumitem}% Personalización de listas
\RequirePackage{titlesec}% Personalización de secciones
\RequirePackage{tikz}% Para dibujar iconos y bordes
\RequirePackage{contour}% Para contornos de texto
\RequirePackage{lipsum}% Texto de relleno Lorem Ipsum

%--------------------------------------------------------------------------------
% Definición de colores "abeja" en notación HEX
%--------------------------------------------------------------------------------
\definecolor{beeBlack}{HTML}{1D1D1D}    % Negro base
\definecolor{beeGrey}{HTML}{3A3A3A}     % Gris oscuro
\definecolor{beeYellow}{HTML}{FFC107}   % Amarillo corporativo
\definecolor{beeWhite}{HTML}{FFFFFF}    % Blanco puro

%--------------------------------------------------------------------------------
% Configuración del contorno
%--------------------------------------------------------------------------------
\contourlength{0.5pt} % Ajusta el grosor del contorno según sea necesario
\contournumber{64}    % Ajusta la cantidad de copias para un contorno suave

%--------------------------------------------------------------------------------
% Personalización de secciones y subtítulos con borde y contorno
%--------------------------------------------------------------------------------
\titleformat{\section}
  {\normalfont\Large\bfseries}
  {\tikz[baseline=(a.base)]\node[fill=beeBlack,text=beeYellow,inner sep=2pt,rounded corners](a){\contour{beeBlack}{\thesection}};}
  {1em}
  {\contour{beeBlack}{\color{beeYellow}}}

\titleformat{\subsection}
  {\normalfont\large\bfseries}
  {\tikz[baseline=(a.base)]\node[fill=beeBlack,text=beeYellow,inner sep=2pt,rounded corners](a){\contour{beeBlack}{\thesubsection}};}
  {1em}
  {\contour{beeBlack}{\color{beeYellow}}}

\titleformat{\subsubsection}
  {\normalfont\normalsize\bfseries}
  {\tikz[baseline=(a.base)]\node[fill=beeBlack,text=beeYellow,inner sep=2pt,rounded corners](a){\contour{beeBlack}{\thesubsubsection}};}
  {1em}
  {\contour{beeBlack}{\color{beeYellow}}}

%--------------------------------------------------------------------------------
% Personalización de listas (itemize y enumerate)
%--------------------------------------------------------------------------------
\setlist[itemize]{label=\textcolor{beeYellow}{\textbullet}}
\setlist[enumerate]{label=\textcolor{beeGrey}{\arabic*.}}

%--------------------------------------------------------------------------------
% Ajuste de márgenes (puede modificarse si se desea)
%--------------------------------------------------------------------------------
\geometry{margin=1in}

%--------------------------------------------------------------------------------
% Establecemos un estilo de pie/encabezado por defecto
%--------------------------------------------------------------------------------
\fancyhf{}              % Limpia encabezados y pies
\fancyfoot[C]{\thepage} % Número de página centrado en el pie
\fancyhead[C]{Blockbuilders Team} % Número de página centrado en el pie
\pagestyle{fancy}

%--------------------------------------------------------------------------------
% Carga opcional de archivos .sty con estilos o configuraciones específicas
%--------------------------------------------------------------------------------
% A continuación, incluimos un archivo .sty donde definiremos la portada.
\RequirePackage{estilos/portada}
\RequirePackage{estilos/contenidos}

%--------------------------------------------------------------------------------
% Fin de la clase
%--------------------------------------------------------------------------------
