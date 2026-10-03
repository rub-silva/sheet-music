\version "2.26.0"

\header {
copyright = "Rubens Silva 2026"
}

% MÚSICA 1: GLÓRIA

\markup {
\column {
\fill-line {
\fontsize #3
\bold "Glória"
}
\fill-line {
""
""
\italic "Melodia Francesa"
}
}
}

chordsGloria = \chordmode {
g1 | d2:7 g | g1 | d2:7 g \bar ":|.:"
g1 | c | g | d:7 |
g1 | d:7 \bar ":|." g \bar "|."
}

melodyGloria = \relative c'' {
\clef treble
\transpose g a' {
\key g \major
\time 4/4

b4 b b b8 d | d4. c8 b4 g | b4 b8 a b4 b8 d | d4. c8 b2 \bar ":|.:" \break
d2 e8 d c b | c2 d8 c b a | b2 c8 b a g | a2 d2 |
g4 a b c8 c | b2 a \bar ":|." g1 \bar "|."
}
}
\score {
<<
\new ChordNames {
\chordsGloria
}
\new Staff {
\melodyGloria
}
>>
\layout { }
\midi { }
}


% MÚSICA 2: JINGLE BELLS

\markup {
\vspace #2
\column {
\fill-line {
\fontsize #3
\bold "Jingle Bells"
}
\fill-line {
""
""
\italic "J. Pierpont"
}
}
}

chordsJingle = \chordmode {
\partial 8 s8 | c1 | s2 f2 | s2 g2 |
s2 c2 | s1 | s2 f2 | s2 g2 |
s2 c2 | s1 | s1 | d2:m c2 |
g1 | c1 | s1 | d2:m c2 |
g2 c2 \bar ":|."
}

melodyJingle = \relative c'' {
\clef treble
\key c \major
\time 4/4

\partial 8 g16 g \bar ".|:" |
g8 e' d c g4. g16 g | g8 e' d c a4. a16 a | \break
a8 f' e d b4. g'8 | a8 g f d e4. g,16 g | g8 e' d c g4. g16 g | g8 e' d c a4. a16 a | \break
a8 f' e d g g g g | a8 g f d c4 g'4 | e8 e e4 e8 e e4 | e8 g c,8. d16 e2 | \break
f8 f f8. f16 f8 e e8. e16 | e8 d d e d4 g | e8 e e4 e8 e e4 | e8 g c,8. d16 e2 | \break
f8 f f8. f16 f8 e e8. e16 | g8 g f d c4. g16 g \bar ":|."
}

\score {
<<
\new ChordNames {
\chordsJingle
}
\new Staff {
\melodyJingle
}
>>
\layout { }
\midi { }
}


% MÚSICA 3: NOITE FELIZ

\markup {
\vspace #2
\column {
\fill-line {
\fontsize #3
\bold "Noite Feliz"
}
\fill-line {
""
""
\italic "Franz Xaver Gruber"
}
}
}

chordsNoite = \chordmode {
c2. | s2. | s2. | s2. |
g2. | s2. | c2. | s2. |
f2. | s2. | c2. | s2. |
f2. | s2. | c2. | s2. |
g2. | s2. | c2. | s2. |
c2. | g2. | c2. | s2. \bar "|."
}

melodyNoiteFeliz = \relative c' {
\clef treble
\key c \major
\time 3/4

g'4. a8 g4 |
e2. |
g4. a8 g4 |
e2. |

d'2 d4 |
b2. |
c2 c4 |
g2. |

\break

a2 a4 |
c4. b8 a4 |
g4. a8 g4 |
e2. |

a2 a4 |
c4. b8 a4 |
g4. a8 g4 |
e2. |

\break

d'2 d4 |
f4. d8 b4 |
c2. |
e2. |

c4. g8 e4 |
g4. f8 d4 |
c2. ~ |
c \bar "|."
}

\score {
<<
\new ChordNames {
\chordsNoite
}
\new Staff {
\melodyNoiteFeliz
}
>>
\layout { }
\midi { }
}
