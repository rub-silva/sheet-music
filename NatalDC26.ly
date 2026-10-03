\version "2.24.0"

\header {
  title = "Glória"
    subtitle = "Melodia Francesa"
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