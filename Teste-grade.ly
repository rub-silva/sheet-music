\version "2.24.0"

\header {
title = "Teste do Rubão"
composer = "Rubão"
}

global = {
 \key f \major
 \time 3/4
 \tempo "Andante" 4 = 80
}

flautaMusica = \relative c'' {
   \global
   c4 d e f | g2 c | r1 |
}

clarineteMusica = \relative c'' {
  \global
   e4 f g a | b2 e | r1 |
}

trompaMusica = \relative c' {
  \global
   g4 a b c | d2 g, | r1 |
}

\score {
 \new StaffGroup = "Woodwinds" <<
  \new Staff \with {
  instrumentName = "Flauta"
  shortInstrumentName = "Fl."
  midiInstrument = "flute" 
} { \flautaMusica }