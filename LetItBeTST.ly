\version "2.26.0"

\header {
title = "Título"
composer = "Compositor"
}

global = {
\key c \major
\time 4/4
}

% Clave de sol 1
solUm = \relative c'' {
\global
a'4 g8 f e4 d8 c | b4 d e2 |

}

% Clave de sol 2
solDois = \relative c'' {
\global
f4 e8 d c4 b8 a | g4 b c2 |
}

% Clave de sol 3
solTres = \relative c' {
\global
R1 | r2 r4. g'16 g |
g8 g16 a~ a8 e g g c16 d8. | e16 e8 e16~ e8 d d c c4 |
e16 e8. f8 e16 e~ e8 d r8 e16 d | d8 c~ c2 r8. g16 |
g16 g8. a8 c16 g~ g8 g c16 d8. | d16 e8. e8 d16 d~ d c8 c16~ c4 |
e16 e8. f8 e16 e~ e8 d r e16 d | d16 c8.~ c2 e16 d8 c16~ |
c4
}

% Clave de sol 4
solQuatro = \relative c' {
\global
R1*2 
}

% Clave de fá
fa = \relative c {
\global
\clef bass
R1*2
}

\score {
<<
\new Staff \with { instrumentName = "Sol 1" midiInstrument = "acoustic grand" } \solUm
\new Staff \with { instrumentName = "Sol 2" midiInstrument = "acoustic grand" } \solDois
\new Staff \with { instrumentName = "Sol 3" midiInstrument = "acoustic grand" } \solTres
\new Staff \with { instrumentName = "Sol 4" midiInstrument = "acoustic grand" } \solQuatro
\new Staff \with { instrumentName = "Fá" midiInstrument = "acoustic grand" } \fa
>>
\layout { }
\midi { \tempo 4 = 66 }
}

