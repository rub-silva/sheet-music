\version "2.24.0"

\header {
  title = "Sinfonia Exemplo"
    composer = "Seu Nome"
    }

    % 1. VARIÁVEIS COM A MÚSICA DE CADA INSTRUMENTO
    flautaMusica = \relative c'' {
      \global
        c4 d e f | g1 |
        }

        clarineteMusica = \relative c'' {
          \global
            % Clarinete em Sib lê em um tom, mas você pode escrever em som real 
              % e transpor no bloco de pauta se preferir.
                d4 e fis g | a1 |
                }

                trompaMusica = \relative c' {
                  \global
                    e4 f g a | b1 |
                    }

                    violinoIMusica = \relative c'' {
                      \global
                        c8 b a g f e d c | g'1 |
                        }

                        violonceloMusica = \relative c {
                          \global
                            \clef bass
                              c2 e | c1 |
                              }

                              % CONFIGURAÇÕES GLOBAIS (Tempo, fórmula de compasso e tom)
                              global = {
                                \key c \major
                                  \time 4/4
                                    \tempo "Allegro" 4 = 120
                                    }


                                    % 2. MONTAGEM DA GRADE (SCORE)
                                    \score {
                                      <<
                                          % --- FAMÍLIA DAS MADEIRAS ---
                                              \new StaffGroup = "Woodwinds" <<
                                                    \new Staff \with {
                                                            instrumentName = "Flauta"
                                                                    shortInstrumentName = "Fl."
                                                                          } { \flautaMusica }
                                                                                
                                                                                      \new Staff \with {
                                                                                              instrumentName = "Clarinete em Sib"
                                                                                                      shortInstrumentName = "Cl."
                                                                                                            } { \clarineteMusica }
                                                                                                                >>

                                                                                                                    % --- FAMÍLIA DOS METAIS ---
                                                                                                                        \new StaffGroup = "Brass" <<
                                                                                                                              \new Staff \with {
                                                                                                                                      instrumentName = "Trompa em Fá"
                                                                                                                                              shortInstrumentName = "Tr."
                                                                                                                                                    } { \trompaMusica }
                                                                                                                                                        >>

                                                                                                                                                            % --- FAMÍLIA DAS CORDAS ---
                                                                                                                                                                \new StaffGroup = "Strings" <<
                                                                                                                                                                      \new GrandStaff <<  % Agrupa os violinos com uma chave (brace)
                                                                                                                                                                              \new Staff \with {
                                                                                                                                                                                        instrumentName = "Violino I"
                                                                                                                                                                                                  shortInstrumentName = "Vln. I"
                                                                                                                                                                                                          } { \violinoIMusica }
                                                                                                                                                                                                                >>
                                                                                                                                                                                                                      
                                                                                                                                                                                                                            \new Staff \with {
                                                                                                                                                                                                                                    instrumentName = "Violoncelo"
                                                                                                                                                                                                                                            shortInstrumentName = "Vc."
                                                                                                                                                                                                                                                  } { \violonceloMusica }
                                                                                                                                                                                                                                                      >>
                                                                                                                                                                                                                                                        >>
                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                            \layout { 
                                                                                                                                                                                                                                                                % Ajusta o recuo da primeira linha para caber o nome longo dos instrumentos
                                                                                                                                                                                                                                                                    indent = 3.0\cm
                                                                                                                                                                                                                                                                        short-indent = 1.5\cm
                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                            \midi { }
                                                                                                                                                                                                                                                                            }
