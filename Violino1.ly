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
}
oddFooterMarkup = \markup {
\fill-line { \small "Rubens Silva 2026" }
}
evenFooterMarkup = \markup {
\fill-line { \small "Rubens Silva 2026" }
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
\layout { }
}

% ---------- Chineizinho ----------
\score {
\header { 
piece = "Chineizinho"
composer = "Servos Cardoso" }
\new Staff {
\time 3/4
\clef treble

\mark \markup \small "Pizz."
g8 d' b'4 r | g8 d' b'4 r | g8 d' b'4 r | g8 d' b'4 r | % ? alturas aproximadas
\bar "||"
g2. \bar "||" \break % ? nota final

\mark \markup \small "Arco"
\repeat volta 2 {
\tuplet 3/2 { g'8 a' g' } d''4 g' |
\tuplet 3/2 { g'8 a' g' } d''4 g' |
\tuplet 3/2 { g'8 a' g' } d''4 b'8 g' | % ?
\tuplet 3/2 { g'8 a' g' } g'4 g' |      % ?
}
g'8 a' g'4 r | g'8 a' g'4 r | g'4 g' r\fermata \bar "|." % ? final
}
\layout { }
}

% ---------- Perseguição ----------
\score {
\header { piece = "Perseguição (S. Cardoso)" }
\new Staff {
\time 2/4
\clef treble

\mark \markup \small "Pizz."
\repeat volta 2 {
g4 a' | g4 a' | g4 a' | g4 a' | % ?
}
\repeat volta 2 {
g4 a' | g4 a' | g4 a' | g4 a' | % ? "Arco" escrito acima deste trecho
}
<g d' g'>2 \bar "||" \break % ? acorde final

\mark \markup \small "Arco"
% TRECHO CROMÁTICO (colcheias com bemóis e bequadros): ilegível
% na digitalização. R2*16 = 16 compassos de pausa (placeholder).
% Quando tiver foto melhor, apague a linha abaixo e escreva as notas.
R2*16
\bar "|."
}
\layout { }
}

\pageBreak

% ================================================================
%  PÁGINA 3  ->  COLE AQUI  (Laranjinha Doce; Pentacordes)
%  Títulos lidos do manuscrito; confira.
% ================================================================


% ================================================================
%  PÁGINA 4  ->  COLE AQUI
%  (Brilha Brilha Estrelinha; Canon – J. Pachelbel;
%   Parabéns pra Você; Alecrim Dourado)
% ================================================================


% ================================================================
%  PÁGINA 5  ->  COLE AQUI
%  (Concerto de Beethoven; Oh! Suzana; Mazinha do Céu)
% ================================================================


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

\score {
\header { piece = "Título da peça (Compositor)" }
\new Staff {
\key g \major        % armadura: g = Sol maior, d = Ré maior, etc.
\time 4/4            % compasso
\clef treble

\mark \markup \small "Introdução"   % rótulo opcional acima da pauta
g'4 a' b' c'' | d''2 d''2 |         % notas e ritmos
\bar "||" \break                    % barra dupla e quebra de linha

\repeat volta 2 {                   % ritornelo (|: ... :|)
g'4 g' a' a' | b'2 r2 |
}
\bar "|."                           % barra final
}
\layout { }
}

%CIFRAS (acordes escritos sobre a pauta): troque \new Staff { ... }
%por um conjunto de duas vozes:

%<<
\new ChordNames { \chordmode { g1 | c1 | d1 | g1 } }
%\new Staff { ... as notas aqui ... }
%>>
%================================================================
%}

