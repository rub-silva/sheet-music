\version "2.24.0"

\header {
copyright = "Rubens Silva 2026"
}

\markup {
\column {
\fill-line {
\fontsize #3
\bold "Glória"
}
\fill-line {
""
""
"Melodia Francesa"
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
\key g \major
\time 4/4

b4 b b b8 d | d4. c8 b4 g | b4 b8 a b4 b8 d | d4. c8 b2 \bar ":|.:" \break

d2 e8 d c b | c2 d8 c b a | b2 c8 b a g | a2 d,2 |

g4 a b c8 c | b2 a \bar ":|." g1 \bar "|."
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
"Franz Xaver Gruber"
}
}
}

chordsNoite = \chordmode {
c2.|s|s|s|g|s|c|s|
f|s|c|s|f|s|c|s|
g|s|c|s|c|g|c|s \bar "|."
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
