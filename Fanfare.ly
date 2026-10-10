\version "2.26.0"
% automatically converted by musicxml2ly from -
\pointAndClickOff

%% additional definitions required by the score:
D = \tweak Stem.direction #DOWN \etc
U = \tweak Stem.direction #UP \etc


\header {
title =  "Fanfare Royale"
composer = "Major W. Jackson "
arranger = "arr. Oscar Coopes"
}

\layout {
\context {
\Staff
printKeyCancellation = ##f
}
\context {
\Score
autoBeaming = ##f
}
}
PartPOneVoiceOne = \relative f' {
\clef "treble" \numericTimeSignature \time 4/4 \key c \major \transposition
bes \tweak direction #UP \tempo \markup \normal-text \concat { \normal-text
\smaller { \fontsize #-2 \rhythm { 4 } \char ##x2009 = \char ##x2009 100 } }
\U f4 \tweak TupletBracket.stencil ##f \tuplet 3/2 {
\U a8 [ \U f8 \U a8 ] }
\D c4 \D f8. [ \D g16 ] | % 1
\D g2. \D f8. [ \D g16 ] | % 2
\D g4 \tweak TupletBracket.stencil ##f \tuplet 3/2 {
\D f8 [ \D g8 \D a8 ] }
\D g4 \tweak TupletBracket.stencil ##f \tuplet 3/2 {
\D a8 [ \D f8 \D a8 ] }
| % 3
\D g4 \tweak TupletBracket.stencil ##f \tuplet 3/2 {
\D c,8 [ \D c8 \D c8 ] }
\D c4 \D c4  | % 4 
\U f,4 \tweak TupletBracket.stencil ##f \tuplet 3/2 {
\U a8 [ \U f8 \U a8 ] }
\D c4 \D f8. [ \D g16 ] | % 5
\D g2. \D f8. [ \D g16 ] | % 6
\tweak TupletBracket.stencil ##f \tuplet 3/2 {
\D a8 [ \D g8 \D f8 ] }
\tweak TupletBracket.stencil ##f \tuplet 3/2 {
\D a8 [ \D g8 \D f8 ] }
\D c8 [ \D f16 \D a16 ] \D g8. [ \D f16 ] | % 7
f1 | % 8
\D g2 ~ \D g8 [ \D g16 \D g16 ] \D a8 [ \D f8 ]  | % 9

\barNumberCheck #10
\D g2 ~ \D g8 [ \D g16 \D g16 ] \D a8 [ \D f8 ] | % 10
\D g8 [ \D g16 \D g16 ] \D a8 [ \D f8 ] \D g8 [ \D g16 \D g16 ] \D a8 [ \D f8
] | % 11
\D g4 \D c,8. [ \D c16 ] \D c2 | % 12
\U f,4 \tweak TupletBracket.stencil ##f \tuplet 3/2 {
\U a8 [ \U f8 \U a8 ] }
\D c4 \D f8. [ \D g16 ] | % 13
\D g2. \D f8. [ \D g16 ]  | % 14
\tweak TupletBracket.stencil ##f \tuplet 3/2 {
\D a8 [ \D g8 \D f8 ] }
\tweak TupletBracket.stencil ##f \tuplet 3/2 {
\D a8 [ \D g8 \D f8 ] }
\D c8 [ \D f16 \D a16 ] \D g8. [ \D f16 ] | % 15
f1 \bar "|."
}

PartPTwoVoiceOne = \relative f' {
\clef "treble" \numericTimeSignature \time 4/4 \key c \major \transposition
bes \U f4 \tweak TupletBracket.stencil ##f \tuplet 3/2 {
\U a8 [ \U f8 \U a8 ] }
\D c4 \D f8. [ \D g16 ] | % 1
\D g2. \D f8. [ \D g16 ] | % 2
\D g4 \tweak TupletBracket.stencil ##f \tuplet 3/2 {
\D f8 [ \D g8 \D a8 ] }
\D g4 \tweak TupletBracket.stencil ##f \tuplet 3/2 {
\D a8 [ \D f8 \D a8 ] }
| % 3
\D g4 \tweak TupletBracket.stencil ##f \tuplet 3/2 {
\D c,8 [ \D c8 \D c8 ] }
\D c4 \D c4 | % 4
\U f,4 \tweak TupletBracket.stencil ##f \tuplet 3/2 {
\U a8 [ \U f8 \U a8 ] }
\D c4 \D f8. [ \D g16 ]  | % 5
\D g2. \D f8. [ \D g16 ] | % 6
\tweak TupletBracket.stencil ##f \tuplet 3/2 {
\D a8 [ \D g8 \D f8 ] }
\tweak TupletBracket.stencil ##f \tuplet 3/2 {
\D a8 [ \D g8 \D f8 ] }
\D c8 [ \D f16 \D a16 ] \D g8. [ \D c,16 ] | % 7
c1 | % 8
\D e4 \tweak TupletBracket.stencil ##f \tuplet 3/2 {
\D e8 [ \D f8 \D g8 ] }
\D g4 \D f4  | % 9

\barNumberCheck #10
\D e4 \tweak TupletBracket.stencil ##f \tuplet 3/2 {
\D e8 [ \D f8 \D g8 ] }
\D c4 \D a4 | % 10
\D c,8 [ \D c16 \D c16 ] \D c8 [ \D c8 ] \D c8 [ \D c16 \D c16 ] \D c8 [ \D c8
] | % 11
\D c4 \U g8. [ \U g16 ] \U g2 | % 12
\U f4 \tweak TupletBracket.stencil ##f \tuplet 3/2 {
\U a8 [ \U f8 \U a8 ] }
\D c4 \D f8. [ \D g16 ] | % 13
\D g2. \D f8. [ \D g16 ]  | % 14
\tweak TupletBracket.stencil ##f \tuplet 3/2 {
\D a8 [ \D g8 \D f8 ] }
\tweak TupletBracket.stencil ##f \tuplet 3/2 {
\D a8 [ \D g8 \D f8 ] }
\D c8 [ \D f16 \D a16 ] \D g8. [ \D c,16 ] | % 15
c1 \bar "|."
}

PartPThreeVoiceOne = \relative f' {
\clef "treble" \numericTimeSignature \time 4/4 \key c \major \transposition
bes \U f4 \tweak TupletBracket.stencil ##f \tuplet 3/2 {
\U a8 [ \U f8 \U a8 ] }
\D c4 \D c8. [ \D c16 ] | % 1
\D c2. \D c8. [ \D c16 ] | % 2
\D c4 \tweak TupletBracket.stencil ##f \tuplet 3/2 {
\D c8 [ \D c8 \D c8 ] }
\D c4 \tweak TupletBracket.stencil ##f \tuplet 3/2 {
\D c8 [ \D c8 \D c8 ] }
| % 3
\D c4 \tweak TupletBracket.stencil ##f \tuplet 3/2 {
\D c8 [ \D c8 \D c8 ] }
\D c4 \D c4 | % 4
\U f,4 \tweak TupletBracket.stencil ##f \tuplet 3/2 {
\U a8 [ \U f8 \U a8 ] }
\D c4 \D c8. [ \D c16 ]  | % 5
\D c2. \D c8. [ \D c16 ] | % 6
\tweak TupletBracket.stencil ##f \tuplet 3/2 {
\D c8 [ \D c8 \D c8 ] }
\tweak TupletBracket.stencil ##f \tuplet 3/2 {
\D c8 [ \D c8 \D c8 ] }
\D c8 [ \D c8 ] \D c8. [ \D a16 ] | % 7
a1 | % 8
\D c2 ~ \D c8 [ \D c16 \D c16 ] \D c8 [ \D c8 ]  | % 9

\barNumberCheck #10
\D c2 ~ \D c8 [ \D c16 \D c16 ] \D c8 [ \D c8 ] | % 10
\U g8 [ \U g16 \U g16 ] \U a8 [ \U f8 ] \U g8 [ \U g16 \U g16 ] \U a8 [ \U f8
] | % 11
\U g4 \U c,8. [ \U c16 ] \U c2 | % 12
\U f4 \tweak TupletBracket.stencil ##f \tuplet 3/2 {
\U a8 [ \U f8 \U a8 ] }
\D c4 \D c8. [ \D c16 ] | % 13
\D c2. \D c8. [ \D c16 ]  | % 14
\tweak TupletBracket.stencil ##f \tuplet 3/2 {
\D c8 [ \D c8 \D c8 ] }
\tweak TupletBracket.stencil ##f \tuplet 3/2 {
\D c8 [ \D c8 \D c8 ] }
\D c8 [ \D c8 ] \D c8. [ \D a16 ] | % 15
a1 \bar "|."
}

PartPFourVoiceOne = \relative es {
\clef "bass" \numericTimeSignature \time 4/4 \key bes \major R1 | % 1
R1 | % 2
R1 | % 3
R1 | % 4
\D es4 \tweak TupletBracket.stencil ##f \tuplet 3/2 {
\D g8 [ \D es8 \D g8 ] }
\D bes4 \D es8. [ \D f16 ]  | % 5
\D f2. \D es8. [ \D f16 ] | % 6
\tweak TupletBracket.stencil ##f \tuplet 3/2 {
\D g8 [ \D f8 \D es8 ] }
\tweak TupletBracket.stencil ##f \tuplet 3/2 {
\D g8 [ \D f8 \D es8 ] }
\D bes8 [ \D es16 \D g16 ] \D f8. [ \D bes,16 ] | % 7
g1 | % 8
r4 \D bes8. [ \D bes16 ] \D bes4 \D es4  | % 9

\barNumberCheck #10
r4 \D bes8. [ \D bes16 ] \D bes4 \D es4 | % 10
\D bes4 \D bes4 \D bes4 \D es4 | % 11
\D bes4 \D bes8. [ \D bes16 ] \D bes4 \D bes4 | % 12
\D g2 \D f4 \D es4 | % 13
\D d2. \D g8. [ \D g16 ]  | % 14
\tweak TupletBracket.stencil ##f \tuplet 3/2 {
\D g8 [ \D g8 \D g8 ] }
\tweak TupletBracket.stencil ##f \tuplet 3/2 {
\D g8 [ \D g8 \D g8 ] }
\D g8 [ \D g8 ] \D f8. [ \D g16 ] | % 15
g1 \bar "|."
}

PartPFiveVoiceOne = \relative es {
\clef "bass" \numericTimeSignature \time 4/4 \key bes \major R1 | % 1
R1 | % 2
R1 | % 3
R1 | % 4
\D es4 \tweak TupletBracket.stencil ##f \tuplet 3/2 {
\D g8 [ \D es8 \D g8 ] }
\D bes4 \D bes8. [ \D bes16 ]  | % 5
\D bes2. \D bes8. [ \D bes16 ] | % 6
\tweak TupletBracket.stencil ##f \tuplet 3/2 {
\D bes8 [ \D bes8 \D bes8 ] }
\tweak TupletBracket.stencil ##f \tuplet 3/2 {
\D bes8 [ \D bes8 \D bes8 ] }
\D bes8 [ \D bes8 ] \D bes8. [ \D g16 ] | % 7
es1 | % 8
r4 \D f8. [ \D f16 ] \D f4 \U bes,4  | % 9

\barNumberCheck #10
r4 \D f'8. [ \D f16 ] \D f4 \U bes,4 | % 10
\D d4 \D es4 \D f4 \D g4 | % 11
\D f4 \D f8. [ \D f16 ] \D f4 \D f4 | % 12
\D es2 \D f4 \D g4 | % 13
\D bes2. \D es,8. [ \D es16 ]  | % 14
\tweak TupletBracket.stencil ##f \tuplet 3/2 {
\D es8 [ \D es8 \D es8 ] }
\tweak TupletBracket.stencil ##f \tuplet 3/2 {
\D es8 [ \D es8 \D es8 ] }
\D es8 [ \D es8 ] \D bes'8. [ \D bes16 ] | % 15
es,1 \bar "|."
}


% The score definition
\score {
<<
\new StaffGroup \with {
systemStartDelimiter = #'SystemStartSquare
} <<
\new StaffGroup <<
\new Staff = "P1" <<
\set Staff.instrumentName = "B♭ Trumpet 1"
\set Staff.shortInstrumentName = "B♭ Tpt. 1"
\context Staff <<
\override Staff.BarLine.allow-span-bar = ##f
\mergeDifferentlyDottedOn
\mergeDifferentlyHeadedOn
\context Voice = "PartPOneVoiceOne" {
\PartPOneVoiceOne
}
>>
>>
\new Staff = "P2" <<
\set Staff.instrumentName = "B♭ Trumpet 2"
\set Staff.shortInstrumentName = "B♭ Tpt. 2"
\context Staff <<
\override Staff.BarLine.allow-span-bar = ##f
\mergeDifferentlyDottedOn
\mergeDifferentlyHeadedOn
\context Voice = "PartPTwoVoiceOne" {
\PartPTwoVoiceOne
}
>>
>>
\new Staff = "P3" <<
\set Staff.instrumentName = "B♭ Trumpet 3"
\set Staff.shortInstrumentName = "B♭ Tpt. 3"
\context Staff <<
\override Staff.BarLine.allow-span-bar = ##f
\mergeDifferentlyDottedOn
\mergeDifferentlyHeadedOn
\context Voice = "PartPThreeVoiceOne" {
\PartPThreeVoiceOne
}
>>
>>
\new Staff = "P4" <<
\set Staff.instrumentName = "Euphonium 1"
\set Staff.shortInstrumentName = "Euph 1"
\context Staff <<
\override Staff.BarLine.allow-span-bar = ##f
\mergeDifferentlyDottedOn
\mergeDifferentlyHeadedOn
\context Voice = "PartPFourVoiceOne" {
\PartPFourVoiceOne
}
>>
>>
\new Staff = "P5" <<
\set Staff.instrumentName = "Euphonium 2"
\set Staff.shortInstrumentName = "Euph 2"
\context Staff <<
\override Staff.BarLine.allow-span-bar = ##f
\mergeDifferentlyDottedOn
\mergeDifferentlyHeadedOn
\context Voice = "PartPFiveVoiceOne" {
\PartPFiveVoiceOne
}
>>
>>
>>
>>
>>
\layout {}
% To create MIDI output, uncomment the following line:
% \midi { \tempo 4 = 100 }
}



