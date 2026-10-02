\version "2.24.0"

\header {
  title = "Glória"
    subtitle = "Melodia Francesa"
    }

    chordsGloria = \chordmode {
        g1 | d2:7 g | g1 | d2:7 g \bar ":|."
          % Compassos 5 a 8
            g2. g4 | d2:7 g2 | g2. g4 | d2:7 g2 |
              % Compassos 9 a 12
                g2. c4 | c2 g2 | d1 | g2 d2:7 |
                  % Compassos 13 a 16
                    g2. c4 | c2 g2 | d1 | g2 d4:7 g4 |
                    }

                    melodyGloria = \relative c'' {
                      \clef treble
                        \key g \major
                          \time 4/4

                              b4 b b b8 d | d4. c8 b4 g | b4 b8 a b4 b8 d | d4. c8 b2 \bar ":|.:"
                                      
                                          d2 e8 d c b | c2 d8 c b a | b2 c8 b a g | a2 d,2 |
                                            
                                                g4 a b c8 c | b2 a \bar ":|." g ||
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