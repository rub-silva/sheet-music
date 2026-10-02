\version "2.24.0"

\header {
  title = "Sinfonia Exemplo"
    subtitle = "Demonstração de Grade de Orquestra com MIDI"
      composer = "Seu Nome"
      }

      % CONFIGURAÇÃO GLOBAL DE TAMANHO
      % Reduz o tamanho padrão das pautas para caber melhor na folha de orquestra
      #(set-global-staff-size 16)


      % ==========================================
      % 1. CONFIGURAÇÕES GLOBAIS E VARIÁVEIS DE MÚSICA
      % ==========================================

      global = {
        \key c \major
          \time 4/4
            \tempo "Allegro" 4 = 120
            }

            flautaMusica = \relative c'' {
              \global
                c4 d e f | g2 c | r1 |
                }

                clarineteMusica = \relative c'' {
                  \global
                    % Nota: Escrito em som real. No bloco Score abaixo, faremos a transposição automática.
                      e4 f g a | b2 e | r1 |
                      }

                      trompaMusica = \relative c' {
                        \global
                          g4 a b c | d2 g, | r1 |
                          }

                          tubaMusica = \relative c {
                            \global
                              \clef bass
                                c4 b a g | f2 g | r1 |
                                }

                                timpaniMusica = \relative c {
                                  \global
                                    \clef bass
                                      c4 r g r | c2 g | r1 |
                                      }

                                      violinoIMusica = \relative c'' {
                                        \global
                                          c8 b a g f e d c | g'2 c, | r1 |
                                          }

                                          violinoIIMusica = \relative c'' {
                                            \global
                                              g4 f e d | e2 e | r1 |
                                              }

                                              violonceloMusica = \relative c {
                                                \global
                                                  \clef bass
                                                    c2 e | g c, | r1 |
                                                    }


                                                    % ==========================================
                                                    % 2. MONTAGEM DA GRADE ORQUESTRAL (SCORE)
                                                    % ==========================================

                                                    \score {
                                                      <<
                                                          % --- FAMÍLIA DAS MADEIRAS ---
                                                              \new StaffGroup = "Woodwinds" <<
                                                                    \new Staff \with {
                                                                            instrumentName = "Flauta"
                                                                                    shortInstrumentName = "Fl."
                                                                                            midiInstrument = "flute"
                                                                                                  } { \flautaMusica }
                                                                                                        
                                                                                                              \new Staff \with {
                                                                                                                      instrumentName = "Clarinete em Sib"
                                                                                                                              shortInstrumentName = "Cl."
                                                                                                                                      midiInstrument = "clarinet"
                                                                                                                                            } { 
                                                                                                                                                    % Transpõe de som real para a leitura correta do Clarinete em Sib
                                                                                                                                                            \transpose bes c' \clarineteMusica 
                                                                                                                                                                  }
                                                                                                                                                                      >>

                                                                                                                                                                          % --- FAMÍLIA DOS METAIS ---
                                                                                                                                                                              \new StaffGroup = "Brass" <<
                                                                                                                                                                                    \new Staff \with {
                                                                                                                                                                                            instrumentName = "Trompa em Fá"
                                                                                                                                                                                                    shortInstrumentName = "Tr."
                                                                                                                                                                                                            midiInstrument = "french horn"
                                                                                                                                                                                                                  } { 
                                                                                                                                                                                                                          % Transpõe de som real para a leitura correta da Trompa em Fá
                                                                                                                                                                                                                                  \transpose f c' \trompaMusica 
                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                              
                                                                                                                                                                                                                                                    \new Staff \with {
                                                                                                                                                                                                                                                            instrumentName = "Tuba"
                                                                                                                                                                                                                                                                    shortInstrumentName = "Tb."
                                                                                                                                                                                                                                                                            midiInstrument = "tuba"
                                                                                                                                                                                                                                                                                  } { \tubaMusica }
                                                                                                                                                                                                                                                                                      >>

                                                                                                                                                                                                                                                                                          % --- PERCUSSÃO ---
                                                                                                                                                                                                                                                                                              \new StaffGroup = "Percussion" <<
                                                                                                                                                                                                                                                                                                    \new Staff \with {
                                                                                                                                                                                                                                                                                                            instrumentName = "Tímpanos"
                                                                                                                                                                                                                                                                                                                    shortInstrumentName = "Timp."
                                                                                                                                                                                                                                                                                                                            midiInstrument = "timpani"
                                                                                                                                                                                                                                                                                                                                  } { \timpaniMusica }
                                                                                                                                                                                                                                                                                                                                      >>

                                                                                                                                                                                                                                                                                                                                          % --- FAMÍLIA DAS CORDAS ---
                                                                                                                                                                                                                                                                                                                                              \new StaffGroup = "Strings" <<
                                                                                                                                                                                                                                                                                                                                                    \new GrandStaff <<  % Agrupa os violinos com uma chave (brace) esquerda
                                                                                                                                                                                                                                                                                                                                                            \new Staff \with {
                                                                                                                                                                                                                                                                                                                                                                      instrumentName = "Violino I"
                                                                                                                                                                                                                                                                                                                                                                                shortInstrumentName = "Vln. I"
                                                                                                                                                                                                                                                                                                                                                                                          midiInstrument = "violin"
                                                                                                                                                                                                                                                                                                                                                                                                  } { \violinoIMusica }
                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                  \new Staff \with {
                                                                                                                                                                                                                                                                                                                                                                                                                            instrumentName = "Violino II"
                                                                                                                                                                                                                                                                                                                                                                                                                                      shortInstrumentName = "Vln. II"
                                                                                                                                                                                                                                                                                                                                                                                                                                                midiInstrument = "violin"
                                                                                                                                                                                                                                                                                                                                                                                                                                                        } { \violinoIIMusica }
                                                                                                                                                                                                                                                                                                                                                                                                                                                              >>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                          \new Staff \with {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  instrumentName = "Violoncelo"
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          shortInstrumentName = "Vc."
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  midiInstrument = "cello"
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        } { \violonceloMusica }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            >>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              >>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  % GERAÇÃO DA PARTE VISUAL (PDF)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    \layout { 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        indent = 3.0\cm        % Espaço para o nome longo na primeira página
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            short-indent = 1.5\cm  % Espaço para o nome curto nas páginas seguintes
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    % Oculta pautas vazias automaticamente se um instrumento não tocar no sistema
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        \context {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              \Staff \RemoveEmptyStaves
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        % GERAÇÃO DO ÁUDIO (MIDI)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          \midi { }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          }