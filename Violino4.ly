


\version "2.26.0"

% ================================================================
%  PROJETO: Material Servos Cardoso (manuscrito -> LilyPond)
%
%  COMO ESTE ARQUIVO FUNCIONA (guia rápido)
%  ----------------------------------------------------------------
%  - Tudo que começa com % é COMENTÁRIO: o LilyPond ignora a linha
%    a partir do %. Serve só para anotações.
%  - Blocos entre %{ e %} também são comentários (várias linhas).
%  - Cada peça é um bloco \score { ... }. Para adicionar uma peça
%    nova, copie o MODELO que está no fim do arquivo.
%  - Marcas "% ?" = trecho que li com dúvida. Confira com o original.
%
%  NOTAS (nomes em inglês de nota do LilyPond)
%    c d e f g a b   = dó ré mi fá sol lá si
%    cis = dó#   ces = dób   (is = sustenido, es = bemol)
%    Número depois da nota = duração: 1 inteira, 2 mínima,
%    4 semínima, 8 colcheia, 16 semicolcheia, 4. = semínima pontuada
%    r = pausa    |  = barra de compasso (opcional, só confere)
%    ' sobe uma oitava, ,  desce uma oitava
%    <g d' g'> = acorde (notas juntas)
%
%  DOIS MODOS DE ESCREVER OITAVAS
%    \relative c'' { ... }  -> cada nota fica na oitava mais próxima
%                              da anterior (bom para escalas).
%    sem \relative         -> oitava absoluta: c' = dó central,
%                              c'' = dó acima, c = dó abaixo.
%
%  PARA GERAR O PDF
%    Compile este arquivo no LilyPond (Frescobaldi, LilyPond online,
%    etc.). Se aparecer erro, ele indica "linha:coluna". Vá até a
%    linha e procure chave } ou aspas " faltando.
% ================================================================

\defineBarLine "|.|:" #'("|." ".|:" "|.|:")

\header {
tagline = ##f
}

\paper {
indent = 0
short-indent = 0
scoreTitleMarkup = \markup {
\column {
\vspace #-1.5
\fill-line {
\null
\fontsize #4 \bold \fromproperty #'header:piece
\null
}
\fill-line {
\null
\italic \fromproperty #'header:composer
}
}
}
oddFooterMarkup = \markup {
\fill-line { \small "Rubens Silva 2026" }
}
evenFooterMarkup = \markup {
\fill-line { \small "Rubens Silva 2026" }
}
}

% ================================================================
%  PÁGINA 1  ->  Escalas e Arpejos – Lá   (Servos Cardoso)
%  Armadura: Lá maior (3 sustenidos). Como a armadura já tem
%  dó#, fá# e sol#, uso "c", "f", "g" (sem is) quando o manuscrito
%  pede dó, fá, sol NATURAIS. LilyPond coloca o bequadro sozinho.
% ================================================================
\score {
\header {
piece = "Escalas e Arpejos – Lá"
composer = "Servos Cardoso" }
\new Staff \relative c'' {
\key a \major
\time 4/4

a4^\markup \small "Pentacorde Maior"
b cis d | e d cis b |
\bar "||"
\once \override TextScript.self-alignment-X = #LEFT
a4^\markup \small "Pentacorde menor" b c d | e d c b |\bar "||" \break

a4^\markup \small "Maior"
b cis d | e fis gis a | gis fis e d | cis b a2 \bar "|." \break

a4^\markup \small "Menor Natural"
b c d | e f g a | g f e d | c b a2 \bar "|." \break

a4^\markup \small "Menor Melódico"
b c d | e fis gis a | g f e d | c b a2 \bar "|." \break

a4^\markup \small "Menor Harmônico"
b c d | e f gis a | g f e d | c b a2 \bar "|." \break

a4^\markup \small "Arpejos – i"
c e a | e c a2 \bar "||"

a4^\markup \small "I" cis e a | e cis a2 \bar "||" \break

a4^\markup \small "vi"
cis fis a | fis cis a2 \bar "||" \break

a4^\markup \small "IV"
d fis a | fis d a2 \bar "||"

a4^\markup \small "iv" d f a | f d a2 \bar "||" \break

% ? as alterações da 7ª diminuta estavam pouco legíveis
a4^\markup \small "7ª dim"
c es ges | a ges es c | a1 \bar "||"

a4^\markup \small "7ª dom" cis e g | a g e cis | d1 \bar "|."
}
\layout { }
%\midi { }
}

\pageBreak

% ================================================================
%  PÁGINA 2  ->  Relojinho, Chineizinho, Perseguição (S. Cardoso)
%  Aqui uso oitava ABSOLUTA (sem \relative), porque há saltos
%  grandes entre o sol grave (g) e as notas agudas (e'', a').
%  Pausa = r. Todos os "% ?" são pontos para conferir.
% ================================================================

% ---------- Reloginho ----------
\score {
\header {
piece = "Reloginho"
composer = "Servos Cardoso" }
<<
\new ChordNames {
\chordmode {
s2*5 | s8 | g2*3 | d2 | g2 | d2 | g2 |
d2 | g2 | d2 | g2*5 \bar "|."
}
}
\new Staff \relative c' {
\time 2/4
\clef treble
\key g \major

\repeat volta 2 {
g4^\markup \small "Pizz." e'' | g,,4 e'' | g,,4 e'' | g,,4 e'' | % ? oitava da nota aguda
}
g,,2 \bar "|." \break

\repeat volta 2 {
\partial 8 b''8^\markup \small "Arco" \bar ".|:" g4. b8 | g4. b8 | g2 | % ? compassos 1-4 muito incertos
a,8 b a fis | g2 |                   % ?
a8 b a fis | g2 |                   % ?
a8 b a fis | \break g8 d b' a |
fis8 d b' a | g4. b'8 \bar ":|."
}
g4. b8 | g4. b8 | g4 g | g2 \bar "|."
}
>>
\layout { }
%\midi { }
}

% ---------- Chineizinho ----------
\score {
\header {
piece = "Chineizinho"
composer = "Servos Cardoso" }
<<
\new ChordNames {
\chordmode {
s2*5 | g2*7:sus2 \bar "|."
}
}
\new Staff \relative c' {
\time 2/4
\clef treble

\repeat volta 2 {g8^\markup \small "Pizz."
d' a' d, | g,8 d' a' d, | g,8 d' a' d, | g,8 d' a' d, | } g,2 \fermata \bar "|.|:" \break
a'16^\markup \small "Arco"
b a8 d4 |
a16 b a8 g4 |
a16 b a8 d8 b | a8 b g4 \bar ":|."
a8 b g4 | a8 b g4 | g4 g\fermata \bar "|."
}
>>

\layout { }
%\midi { }
}

% ---------- Perseguição ----------
\score {
\header {
piece = "Perseguição"
composer = "Servos Cardoso" }
<<
\new ChordNames {
\chordmode {
s1*4 | \partial 4 s4 |
a1:m | a1:m | e1:7 | e1:7 |
a1:m | a1:m | a1:m | c1:m | a1:m |
f1:m | \partial 4 f4:maj9/g \bar "|."
}
}
\new Staff \relative c' {
\time 4/4
\clef treble

\repeat volta 2 {
a4^\markup \small "Pizz."
a' a,4 a' | a,4 a' a, a' \bar ":|."
}
\repeat volta 2 {
a,4^\markup \small "Arco" a' a, a' | a,4 a' a, a' |
}
\partial 4 <a,-> a' e'>4 \bar "|.|:" \break % ? acorde final

a8^\markup \small "Arco" bes a b c f e4 |
a,8 bes a b c f e4| e8 f e f e f e f | e8 f e f c d c b? |
a4 a' a, a' \bar ":|.|:" \break
a,8 bes a a a8 bes a a | a4 a' a, a' |
c,8 des c c c des c c | a4 a' a, a' \bar ":|."
\override Glissando.style = #'zigzag
f'4\glissando
\hideNotes
c'2\glissando
\unHideNotes
f,4
\revert Glissando.style
\bar ":|."
\partial 4 <g,,-> a' f'>4
\bar "|."
}
>>
\layout { }
%\midi { }
}

\pageBreak

% ================================================================
%  PÁGINA 3  ->  COLE AQUI  (Laranjinha Doce; Pentacordes)
%  Títulos lidos do manuscrito; confira.
% ================================================================

% ---------- Laranjada Doce ----------

#(define* (quebra-a-cada n #:optional (deslocamento 0))
(lambda (context)
(let ((ultimo -1))
(make-engraver
((stop-translation-timestep engraver)
(let ((pos (ly:context-property context 'measurePosition))
(num (ly:context-property context 'currentBarNumber))
(col (ly:context-property context 'currentCommandColumn)))
(if (and (ly:moment? pos)
(integer? num)
(ly:grob? col)
(zero? (ly:moment-main-numerator pos))
(> num 1)
(not (= num ultimo))
(zero? (modulo (- num 1 deslocamento) n)))
(begin
(set! ultimo num)
(ly:grob-set-property! col 'line-break-permission 'force)))))))))

musica =  \relative e'' {
\clef "treble" \numericTimeSignature\time 4/4 \key a \major
\pageBreak | % 1
\stemDown e16 [ \stemDown e16 \stemDown e16 \stemDown e16 ]
\stemDown e8 [ \stemDown e8 ] \stemDown cis4 \stemUp a4 | % 2
\stemDown e'16 [ \stemDown e16 \stemDown e16 \stemDown e16 ]
\stemDown e8 [ \stemDown e8 ] \stemDown d4 \stemDown b4 | % 3
\stemDown e16 [ \stemDown e16 \stemDown e16 \stemDown e16 ]
\stemDown e8 [ \stemDown e8 ] \stemDown d8 [ \stemDown cis8 ]
\stemDown b4
\stemDown e16 [ \stemDown e16 \stemDown e16 \stemDown e16 ]
\stemDown e8 [ \stemDown e8 ] \stemDown cis8 [ \stemDown b8 ]
\stemUp a4 \fermata \bar "||"
\key d \major \stemUp a16 [ \stemUp a16 \stemUp a16 \stemUp a16 ]
\stemUp a8 [ \stemUp a8 ] \stemUp fis4 \stemUp d4 | % 6
\stemUp a'16 [ \stemUp a16 \stemUp a16 \stemUp a16 ] \stemUp a8 [
\stemUp a8 ] \stemUp g4 \stemUp e4 | % 7
\stemUp a16 [ \stemUp a16 \stemUp a16 \stemUp a16 ] \stemUp a8 [
\stemUp a8 ] \stemUp g8 [ \stemUp fis8 ] \stemUp e4
\stemUp a16 [ \stemUp a16 \stemUp a16 \stemUp a16 ] \stemUp a8 [
\stemUp a8 ] \stemUp fis8 [ \stemUp e8 ] \stemUp d4 \fermata \bar
"||"
\key g \major \stemUp d16 [ \stemUp d16 \stemUp d16 \stemUp d16 ]
\stemUp d8 [ \stemUp d8 ] \stemUp b4 \stemUp g4 | \barNumberCheck
#10
\stemUp d'16 [ \stemUp d16 \stemUp d16 \stemUp d16 ] \stemUp d8 [
\stemUp d8 ] \stemUp c4 \stemUp a4 | % 11
\stemUp d16 [ \stemUp d16 \stemUp d16 \stemUp d16 ] \stemUp d8 [
\stemUp d8 ] \stemUp c8 [ \stemUp b8 ] \stemUp a4
\stemUp d16 [ \stemUp d16 \stemUp d16 \stemUp d16 ] \stemUp d8 [
\stemUp d8 ] \stemUp b8 [ \stemUp a8 ] \stemUp g4 \fermata \bar "||"
\key c \major \stemUp g16 [ \stemUp g16 \stemUp g16 \stemUp g16 ]
\stemUp g8 [ \stemUp g8 ] \stemUp b4 \stemUp g4 | % 14
\stemUp g16 [ \stemUp g16 \stemUp g16 \stemUp g16 ] \stemUp g8 [
\stemUp g8 ] \stemUp c4 \stemUp a4
\stemUp g16 [ \stemUp g16 \stemUp g16 \stemUp g16 ] \stemUp g8 [
\stemUp g8 ] \stemUp c8 [ \stemUp b8 ] \stemUp a4 | % 16
\stemUp g16 [ \stemUp g16 \stemUp g16 \stemUp g16 ] \stemUp g8 [
\stemUp g8 ] \stemUp b8 [ \stemUp a8 ] \stemUp g4 \fermata \bar "|."
}

\score {
\header {
piece = "Laranjada Doce"
composer = "" }

\new Staff \musica
\layout {
\context {
\Score
\consists #(quebra-a-cada 4)
\override NonMusicalPaperColumn.line-break-permission = ##f
}
}
}

\layout {}
% To create MIDI output, uncomment the following line:
%  \midi {\tempo 4 = 100 }


% PENTACORDES

#(define* (quebra-a-cada n #:optional (deslocamento 0))
(lambda (context)
(let ((ultimo -1))
(make-engraver
((stop-translation-timestep engraver)
(let ((pos (ly:context-property context 'measurePosition))
(num (ly:context-property context 'currentBarNumber))
(col (ly:context-property context 'currentCommandColumn)))
(if (and (ly:moment? pos)
(integer? num)
(ly:grob? col)
(zero? (ly:moment-main-numerator pos))
(> num 1)
(not (= num ultimo))
(zero? (modulo (- num 1 deslocamento) n)))
(begin
(set! ultimo num)
(ly:grob-set-property! col 'line-break-permission 'force)))))))))


PartPOneVoiceOne =  \relative e'' {
\repeat volta 2 {
\clef "treble" \numericTimeSignature\time 4/4 \key c \major
\pageBreak | % 1
\stemDown e2 \stemDown f2 | % 2
\stemDown g2 \stemDown a2 | % 3
\stemDown b2 \stemDown a2 | % 4
\stemDown g2 \stemDown f2 }
\repeat volta 2 {
| % 5
\stemUp a,2 \stemDown b2 | % 6
\stemDown c2 \stemDown d2 | % 7
\stemDown e2 \stemDown d2 | % 8
\stemDown c2 \stemDown b2 }
\repeat volta 2 {
| % 9
\stemUp d,2 \stemUp e2 | \barNumberCheck #10
\stemUp f2 \stemUp g2 | % 11
\stemUp a2 \stemUp g2 | % 12
\stemUp f2 \stemUp e2 }
\repeat volta 2 {
| % 13
\stemUp g,2 \stemUp a2 | % 14
\stemUp b2 \stemUp c2 | % 15
\stemUp d2 \stemUp c2 | % 16
\stemUp b2 \stemUp a2 }
}


% The score definition
\score {

\header {
piece = "Pentacordes"
composer = "" }


\new Staff
\context Staff <<
\mergeDifferentlyDottedOn
\mergeDifferentlyHeadedOn
\context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
>>

\layout {
\context {
\Score
\consists #(quebra-a-cada 4)
\override NonMusicalPaperColumn.line-break-permission = ##f
}
}
% To create MIDI output, uncomment the following lines:
% \midi { \tempo 4 = 100 }
}


% SPICATO

PartPOneVoiceOne =  \relative a' {
\clef "treble" \numericTimeSignature\time 4/4 \key a \major
\pageBreak | % 1
<a e'>1 :16 :16 \repeat volta 2 {
| % 2
\stemDown d2 \stemDown cis2 | % 3
\stemDown d2 \stemDown e2 }
}


% The score definition


\score {

\header {
piece = "Spicato"
composer = "" }

<<

\new Staff            
\context Staff << 
\mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
\context Voice = "PartPOneVoiceOne" {  \PartPOneVoiceOne }
>>

>>
\layout {}
% To create MIDI output, uncomment the following line:
%  \midi {\tempo 4 = 100 }
}


% ================================================================
%  PÁGINA 4  ->  COLE AQUI
%  (Brilha Brilha Estrelinha; Canon – J. Pachelbel;
%   Parabéns pra Você; Alecrim Dourado)
% ================================================================

% BRILHA BRILHA ESTRELINHA
\pageBreak

PartPOneVoiceOne =  \relative a' {
\clef "treble" \numericTimeSignature\time 4/4 \key a \major
\pageBreak | % 1
\stemUp a4 \downbow -\markup{ \bold\teeny {0} } \stemUp a4 \stemDown
e'4 -\markup{ \bold\teeny {0} } \stemDown e4 | % 2
\stemDown fis4 -\markup{ \bold\teeny {1} } \stemDown fis4 \stemDown
e2 -\markup{ \bold\teeny {0} } | \noBreak % 3
\stemDown d4 -\markup{ \bold\teeny {3} } \stemDown d4 \stemDown cis4
-\markup{ \bold\teeny {2} } \stemDown cis4 | % 4
\stemDown b4 -\markup{ \bold\teeny {1} } \stemDown b4 \stemUp a2
-\markup{ \bold\teeny {0} } -\markup{ \bold {Fine} } \bar "||"
\break | % 5
\stemDown e'4 -\markup{ \bold\teeny {4} } \stemDown e4 \stemDown d4
-\markup{ \bold\teeny {3} } \stemDown d4 | % 6
\stemDown cis4 -\markup{ \bold\teeny {2} } \stemDown cis4 \stemDown
b2 -\markup{ \bold\teeny {1} } | \noBreak % 7
\stemDown e4 -\markup{ \bold\teeny {4} } \stemDown e4 \stemDown d4
-\markup{ \bold\teeny {3} } \stemDown d4 | % 8
\stemDown cis4 -\markup{ \bold\teeny {2} } \stemDown cis4 \stemDown
b2 -\markup{ \bold\teeny {1} } -\markup{ \bold {D.C. al Fine} } \bar
"||"
}

PartPOneVoiceOneChords =  \chordmode {
| % 1
a4 s4 e4 s4 | % 2
d4 s4 a2 | % 3
d4 s4 a4 s4 | % 4
e4 s4 a2 \bar "||"
a4 s4 d4 s4 | % 6
a4 s4 e2 | % 7
a4 s4 d4 s4 | % 8
a4 s4 e2 \bar "||"
}


% The score definition
\score {


\header {
piece = "Brilha Brilha Estrelinha"
composer = "" }

<<

\context ChordNames = "PartPOneVoiceOneChords" { \PartPOneVoiceOneChords}
\new Staff
\context Staff << 
\mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
\context Voice = "PartPOneVoiceOne" {  \PartPOneVoiceOne }
>>
>>        
\layout {}
% To create MIDI output, uncomment the following line:
%  \midi {\tempo 4 = 100 }
}

% CANON

PartPOneVoiceOne =  \relative fis'' {
\repeat volta 2 {
\clef "treble" \numericTimeSignature\time 4/4 \key d \major
\pageBreak | % 1
\stemDown fis2 \downbow -\markup{ \bold\teeny {1} } \stemDown e2
\upbow -\markup{ \bold\teeny {0} } | % 2
\stemDown d2 -\markup{ \bold\teeny {3} } \stemDown cis2 | % 3
\stemDown b2 \stemUp a2 -\markup{ \bold\teeny {0} } | % 4
\stemDown b2 -\markup{ \bold\teeny {1} } \stemDown cis2
-\markup{ \bold\teeny {2} } \breathe | % 5
\break \stemDown d2 -\markup{ \bold\teeny {3} } \stemDown cis2 | % 6
\stemDown b2 \stemUp a2 | % 7
\stemUp g2 -\markup{ \bold\teeny {3} } \stemUp fis2 -\markup{
\bold\teeny {2} } | % 8
\stemUp g2 -\markup{ \bold\teeny {3} } \stemUp e2 -\markup{
\bold\teeny {1} } }
| % 9
d1 -\markup{ \bold\teeny {0} } \bar "|."
}
PartPOneVoiceOneChords =  \chordmode {
\repeat volta 2 {
| % 1
d2 a2 | % 2
b2:m fis2:m | % 3
g2 d2 | % 4
g2 a2 | % 5
d2 a2 | % 2
b2:m fis2:m | % 3
g2 d2 | % 4
g2 a2 | % 5
}
| % 9
d1 \bar "|."
}


% The score definition
\score {

\header {
piece = "Canon in D"
composer = "Johann Pachelbel" }

<<

\context ChordNames = "PartPOneVoiceOneChords" { \PartPOneVoiceOneChords}
\new Staff

\context Staff << 
\mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
\context Voice = "PartPOneVoiceOne" {  \PartPOneVoiceOne }
>>

>>
\layout {}
% To create MIDI output, uncomment the following line:
%  \midi {\tempo 4 = 100 }
}


% PARABÉNS PRA VOCÊ

PartPOneVoiceOne =  \relative a' {
\clef "treble" \time 3/4 \key d \major \partial 4 \stemUp a8
\downbow [ -\markup{ \bold\teeny {0} } \stemUp a8 ] -\markup{
\bold\teeny {1} } | % 2
\stemDown b4 -\markup{ \bold\teeny {1} } \stemUp a4 -\markup{
\bold\teeny {0} } \stemDown d4 -\markup{ \bold\teeny {3} } | % 3
\stemDown cis2 -\markup{ \bold\teeny {2} } \breathe \stemUp a8 \downbow [
-\markup{ \bold\teeny {0} } \stemUp a8 ] | % 4
\stemDown b4 -\markup{ \bold\teeny {1} } \stemUp a4 -\markup{
\bold\teeny {0} } \stemDown e'4 -\markup{ \bold\teeny {4} } | % 5
\stemDown d4 -\markup{ \bold\teeny {3} } \stemDown d4 \breathe \stemUp a8
\upbow [ -\markup{ \bold\teeny {0} } \stemUp a8 ] \break | % 6
\stemDown a'4 -\markup{ \bold\teeny {3} } \stemDown fis4 -\markup{
\bold\teeny {1} } \stemDown d4 -\markup{ \bold\teeny {3} } | % 7
\stemDown cis4 -\markup{ \bold\teeny {2} } \stemDown b4 -\markup{
\bold\teeny {1} } \breathe \stemDown g'8 \downbow [ -\markup{ \bold\teeny
{2} } \stemDown g8 ] | % 8
\stemDown fis4 -\markup{ \bold\teeny {1} } \stemDown d4 -\markup{
\bold\teeny {3} } \stemDown e4 -\markup{ \bold\teeny {4} } | % 9
\stemDown d4 -\markup{ \bold\teeny {3} } \stemDown d2 \bar "|."
}


% The score definition
\score {
\header {
piece = "Parabéns pra Você"
composer = ""
}

<<
\new ChordNames {
\chordmode {
\partial 4 s4 | d2. | a2. | a2. | d2. |
d2.:7 | g2. | d2 a4 | d2. \bar "|."
}
}

\new Staff
\context Staff <<
\mergeDifferentlyDottedOn
\mergeDifferentlyHeadedOn
\context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
>>
>>

\layout {}
% To create MIDI output, uncomment the following line:
%  \midi {\tempo 4 = 100 }
}


% ALECRIM DOURADO

PartPOneVoiceOne =  \relative e'' {
\repeat volta 2 {
\clef "treble" \time 2/4 \key a \major \pageBreak | % 1
\stemDown e4 \downbow -\markup{ \bold\teeny {4} } \stemDown d4
-\markup{ \bold\teeny {3} } | % 2
\stemDown cis4 -\markup{ \bold\teeny {2} } \stemDown cis8 [
\stemDown b8 ] -\markup{ \bold\teeny {1} } | % 3
\stemDown cis4 -\markup{ \bold\teeny {2} } \stemDown e4
-\markup{ \bold\teeny {4} } | % 4
\stemDown d8 [ -\markup{ \bold\teeny {3} } \stemDown d8 ]
\stemDown d8 [ \stemDown cis8 ] -\markup{ \bold\teeny {2} } | % 5
\stemDown d4 -\markup{ \bold\teeny {3} } \stemDown e4 -\markup{
\bold\teeny {4} } | % 6
\stemDown d8 [ -\markup{ \bold\teeny {3} } \stemDown d8 ]
\stemDown d8 [ \stemDown cis8 ] -\markup{ \bold\teeny {2} } | % 7
\stemDown d4 -\markup{ \bold\teeny {3} } \stemDown e4 -\markup{
\bold\teeny {4} } | % 8
\stemDown cis4 -\markup{ \bold\teeny {2} } \stemDown cis4 }
\break | % 9
\repeat volta 2 {
r8 \stemUp a8 \upbow -\markup{ \bold\teeny {0} } \stemUp b8 [
-\markup{ \bold\teeny {1} } \stemUp a8 ] -\markup{ \bold\teeny
{0} } | \barNumberCheck #10
\stemDown fis'4 -\markup{ \bold\teeny {1} } \stemDown fis8 [
\stemDown fis8 ] | % 11
\stemDown gis4 -\markup{ \bold\teeny {2} } \stemDown fis4
-\markup{ \bold\teeny {1} } | % 12
\stemDown e4 -\markup{ \bold\teeny {0} } \stemDown e8 [
\stemDown e8 ] | % 13
\stemDown fis4 -\markup{ \bold\teeny {1} } \stemDown e4
-\markup{ \bold\teeny {0} } | % 14
\stemDown d8 [ -\markup{ \bold\teeny {3} } \stemDown d8 ]
\stemDown d8 [ \stemDown d8 ] | % 15
\stemDown e4 -\markup{ \bold\teeny {4} } \stemDown d4 -\markup{
\bold\teeny {3} } | % 16
\stemDown cis2 -\markup{ \bold\teeny {2} } }
}


% The score definition
\score {

\header {
piece = "Alecrim Dourado"
composer = ""
}
<<
\new ChordNames {
\chordmode {
s2 | a2 | d2 | e2 | a2 |
s2 | d1 e1 | a2 | e2 | a2 \bar "|."
}
}


\new Staff

\context Staff << 
\mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
\context Voice = "PartPOneVoiceOne" {  \PartPOneVoiceOne }
>>
>>

\layout {}
% To create MIDI output, uncomment the following line:
%  \midi {\tempo 4 = 100 }
}


% MINHALMA

PartPOneVoiceOne =  \relative a' {
\clef "treble" \time 4/4 \key a \major \pageBreak | % 1
\stemUp a4 \stemUp a4 \stemDown e'4 \stemDown e4 | % 2
\stemDown fis4 \stemDown e8 [ \stemDown d8 ] \stemDown e4 -\markup{
\bold\teeny {4} } \stemUp a,4 | % 3
\stemDown d4 \stemDown cis4 \stemDown b4 \stemUp a4 | % 4
\stemDown cis4. \stemDown b8 \stemDown b2 \break | % 5
\stemUp a4 \stemUp a4 \stemDown e'4 \stemDown e4 | % 6
\stemDown fis4 \stemDown e8 [ \stemDown d8 ] \stemDown e4 -\markup{
\bold\teeny {4} } \stemUp a,4 | % 7
\stemDown d4 \stemDown cis4 \stemDown b4. \stemUp a8 | % 8
a1 \bar "|."
}


% The score definition
\score {

\header {
piece = "Aleluia minh'alma abrirei"
composer = ""
}


<<

\new Staff
<<
\set Staff.instrumentName = "P1"

\context Staff << 
\mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
\context Voice = "PartPOneVoiceOne" {  \PartPOneVoiceOne }
>>
>>

>>
\layout {}
% To create MIDI output, uncomment the following line:
%  \midi {\tempo 4 = 100 }
}



% ================================================================
%  PÁGINA 5  ->  COLE AQUI
%  (Concerto de Beethoven; Oh! Suzana; Mazinha do Céu)
% ================================================================

% CONCERTO DE BEETHOVEN

\pageBreak

PartPOneVoiceOne =  \relative fis' {
\clef "treble" \numericTimeSignature\time 4/4 \key d \major
\pageBreak | % 1
\stemUp fis4 -\markup{ \bold\teeny {2} } \stemUp g4 -\markup{
\bold\teeny {3} } \stemUp a4 -\markup{ \bold\teeny {0} }
\stemDown b8 [ -\markup{ \bold\teeny {1} } \stemDown cis8 ]
-\markup{ \bold\teeny {2} } | % 2
\stemDown d2 -\markup{ \bold\teeny {3} } \stemUp a2 -\markup{
\bold\teeny {0} } | % 3
\stemUp g4 -\markup{ \bold\teeny {3} } \stemUp fis4 -\markup{
\bold\teeny {2} } \stemUp e4 -\markup{ \bold\teeny {1} } \stemUp
fis8 [ -\markup{ \bold\teeny {2} } \stemUp d8 ] -\markup{
\bold\teeny {0} } | % 4
\stemUp e2 -\markup{ \bold\teeny {1} } \stemUp a,2 -\markup{
\bold\teeny {1} } | % 5
\stemUp fis'4 -\markup{ \bold\teeny {2} } \stemUp g4 -\markup{
\bold\teeny {3} } \stemUp a4 -\markup{ \bold\teeny {0} }
\stemDown b8 [ -\markup{ \bold\teeny {1} } \stemDown cis8 ]
-\markup{ \bold\teeny {2} } \break | % 6
\stemDown d2 -\markup{ \bold\teeny {3} } \stemUp a2 -\markup{
\bold\teeny {0} } | % 7
\stemDown b4 -\markup{ \bold\teeny {1} } \stemUp g4 -\markup{
\bold\teeny {3} } \stemUp e4 -\markup{ \bold\teeny {1} } \stemUp
a4 -\markup{ \bold\teeny {0} } | % 8
fis1 -\markup{ \bold\teeny {2} } | % 9
\stemDown b4 \stemUp g4 \stemUp e4 \stemUp a4 | \barNumberCheck #10
d,1 -\markup{ \bold\teeny {0} } \bar "|."
}


% The score definition
\score {

\header {
piece = "Concerto de Beethoven"
composer = ""
}

<<

\new Staff

\context Staff << 
\mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
\context Voice = "PartPOneVoiceOne" {  \PartPOneVoiceOne }
>>        
>>
\layout {}
% To create MIDI output, uncomment the following line:
%  \midi {\tempo 4 = 100 }
}


% Oh! Suzana

PartPOneVoiceOne =  \relative a' {
\clef "treble" \time 2/2 \key a \major \pageBreak % 1
\partial 4 \stemUp a8 \downbow [ -\markup{ \bold\teeny {0} } \stemUp b8 ]
-\markup{ \bold\teeny {1} } | % 2
\stemDown cis4 -\markup{ \bold\teeny {2} } \stemDown e4 -\markup{
\bold\teeny {0} } \stemDown e4. \stemDown fis8 -\markup{
\bold\teeny {1} } | % 3
\stemDown e4 -\markup{ \bold\teeny {0} } \stemDown cis4 -\markup{
\bold\teeny {2} } \stemUp a4. -\markup{ \bold\teeny {0} }
\stemDown b8 -\markup{ \bold\teeny {1} } | % 4
\stemDown cis4 -\markup{ \bold\teeny {2} } \stemDown cis4 \stemDown
b4 -\markup{ \bold\teeny {1} } \stemUp a4 -\markup{ \bold\teeny {0}
} | % 5
\stemDown b2. -\markup{ \bold\teeny {1} } \stemUp a8 \downbow [
\stemUp b8 ] | % 6
\stemDown cis4 \stemDown e4 \stemDown e4. \stemDown fis8 \break | % 7
\stemDown e4 \stemDown cis4 \stemUp a4. \stemDown b8 | % 8
\stemDown cis4 \stemDown cis4 \stemDown b4 -\markup{ \bold\teeny {1}
} \stemDown b4 | % 9
a1 -\markup{ \bold\teeny {0} } |
\stemDown d2 \downbow -\markup{ \bold\teeny {3} } \stemDown d2 | % 11
\stemDown fis4 -\markup{ \bold\teeny {1} } \stemDown fis2 \upbow
\stemDown fis4 \upbow | % 12
\stemDown e4 -\markup{ \bold\teeny {0} } \stemDown e4 \stemDown cis4
-\markup{ \bold\teeny {2} } \stemUp a4 -\markup{ \bold\teeny {0} }
\break | % 13
\stemDown b2. -\markup{ \bold\teeny {1} } \stemUp a8 \downbow [
-\markup{ \bold\teeny {0} } \stemUp b8 ] -\markup{ \bold\teeny {1} }
| % 14
\stemDown cis4 -\markup{ \bold\teeny {2} } \stemDown e4 -\markup{
\bold\teeny {0} } \stemDown e4. \stemDown fis8 -\markup{
\bold\teeny {1} } | % 15
\stemDown e4 -\markup{ \bold\teeny {0} } \stemDown cis4 -\markup{
\bold\teeny {2} } \stemUp a4. -\markup{ \bold\teeny {0} }
\stemDown b8 -\markup{ \bold\teeny {1} } | % 16
\stemDown cis4 -\markup{ \bold\teeny {2} } \stemDown cis4 \stemDown
b4 -\markup{ \bold\teeny {1} } \stemDown b4 | % 17
a1 -\markup{ \bold\teeny {0} } \bar "|."
}


% The score definition
\score {

\header {
piece = "Oh! Suzana"
composer = ""
}

<<

\new Staff
<<
\set Staff.instrumentName = ""

\context Staff << 
\mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
\context Voice = "PartPOneVoiceOne" {  \PartPOneVoiceOne }
>>
>>

>>
\layout {}
% To create MIDI output, uncomment the following line:
%  \midi {\tempo 4 = 100 }
}


% Mãezinha do Céu

PartPOneVoiceOne =  \relative a' {
\clef "treble" \time 4/4 \key d \major \pageBreak \partial 4 \stemUp a4
\upbow | % 2
\stemDown d2 -\markup{ \bold\teeny {3} } \stemDown d4 \stemDown e4
-\markup{ \bold\teeny {0} } | % 3
fis1 | % 4
\stemDown g4 -\markup{ \bold\teeny {2} } \stemDown fis4 \stemDown e4
\stemDown d4 -\markup{ \bold\teeny {3} } | % 5
\stemDown e2. -\markup{ \bold\teeny {4} } \breathe \stemUp a,4
\upbow | % 6
\stemDown cis2 \stemDown cis4 \stemDown d4 | % 7
\stemDown e2. -\markup{ \bold\teeny {0} } \stemDown g4 \break | % 8
\stemDown fis4 \stemDown e4 \stemDown d4 \stemDown cis4 | % 9
\stemDown d2. \breathe \stemUp a4 \upbow |
\stemDown d2 \stemDown d4 \stemDown e4 -\markup{ \bold\teeny {0} } | % 11
\stemDown fis2 -\markup{ \bold\teeny {1} } \stemDown fis2 | % 12
\stemDown g4 -\markup{ \bold\teeny {2} } \stemDown fis4 \stemDown e4
-\markup{ \bold\teeny {0} } \stemDown d4 | % 13
\stemDown g2. -\markup{ \bold\teeny {2} } \breathe \stemDown g4
\upbow | % 14
\stemDown g2 \stemDown e4 -\markup{ \bold\teeny {0} } \stemDown g4
\break | % 15
\stemDown fis2 \stemDown d4 -\markup{ \bold\teeny {3} } \stemDown
fis4 -\markup{ \bold\teeny {1} } | % 16
\stemDown e2 -\markup{ \bold\teeny {0} } \stemDown cis4 -\markup{
\bold\teeny {2} } \stemDown e4 -\markup{ \bold\teeny {0} } | % 17
\stemDown fis2. -\markup{ \bold\teeny {1} } \breathe \stemDown g4
\upbow -\markup{ \bold\teeny {2} } | % 18
\stemDown g2 \stemDown e4 -\markup{ \bold\teeny {0} } \stemDown g4
-\markup{ \bold\teeny {2} } | % 19
\stemDown fis2 -\markup{ \bold\teeny {1} } \stemDown d4 \stemDown
fis4 |
\stemDown e2 -\markup{ \bold\teeny {0} } \stemDown cis4 -\markup{
\bold\teeny {2} } \stemDown e4 -\markup{ \bold\teeny {4} } | % 21
\stemDown d2. -\markup{ \bold\teeny {3} } \bar "|."
}


% The score definition
\score {

\header {
piece = "Mãezinha do Céu"
composer = ""
}

<<

\new Staff
<<
\set Staff.instrumentName = ""

\context Staff << 
\mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
\context Voice = "PartPOneVoiceOne" {  \PartPOneVoiceOne }
>>
>>

>>
\layout {}
% To create MIDI output, uncomment the following line:
%  \midi {\tempo 4 = 100 }
}



% ================================================================
%  PÁGINA 6  ->  COLE AQUI
%  (Noite Feliz; Hallelujah; Glória de Natal)
% ================================================================


% ================================================================
%  PÁGINA 7  ->  COLE AQUI
%  (Povos Cantai; Sonda-me; Buscai Primeiro)
% ================================================================


% ================================================================
%  PÁGINA 8  ->  COLE AQUI
%  (A Thousand Years – Christina Perri; peça de Milton Nascimento
%   – título ilegível; outra peça com cifras Em/D/G)
% ================================================================


% ================================================================
%  PÁGINA 9  ->  COLE AQUI
%  (Clocks – Coldplay; Além do Arco-Íris; Believer – Imagine Dragons)
% ================================================================


% ================================================================
%  PÁGINA 10  ->  COLE AQUI
%  (Ave Maria – C. Gounod; Viva la Vida – Coldplay)
% ================================================================


% ================================================================
%  PÁGINA 11  ->  COLE AQUI
%  (All of Me – John Legend; Photograph – Ed Sheeran)
% ================================================================


% ================================================================
%  PÁGINA 12  ->  COLE AQUI
%  (cantigas com cifras C, G7, F; ritmos escritos sem alturas)
% ================================================================


%{
================================================================
MODELO PARA UMA PEÇA NOVA  (copie, tire os %{ e %} %e preencha)
%===============================================================

\pageBreak   % use só se quiser começar numa página nova

%\score {
%\header { piece = "Título da peça (Compositor)" }
%\new Staff {
%\key g \major        % armadura: g = Sol maior, d = Ré maior, etc.
%\time 4/4            % compasso
%\clef treble

%\mark \markup \small "Introdução"   % rótulo opcional acima da pauta
%g'4 a' b' c'' | d''2 d''2 |         % notas e ritmos
%\bar "||" \break                    % barra dupla e quebra de linha

%\repeat volta 2 {                   % ritornelo (|: ... :|)
%g'4 g' a' a' | b'2 r2 |
%}
%\bar "|."                           % barra final
%}
%\layout { }
%}

%CIFRAS (acordes escritos sobre a pauta): troque \new Staff { ... }
%por um conjunto de duas vozes:

%<<
%\new ChordNames { \chordmode { g1 | c1 | d1 | g1 } }
%\new Staff { ... as notas aqui ... }
%>>
%================================================================
%}







