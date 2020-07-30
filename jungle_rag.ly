\version "2.18.2"

\header {
  title = "Jungle Rag"
  composer = "Matthew Dirks"
  copyright = "2008"
}

\score {
  \relative c'' {
    \new PianoStaff
    <<
      \new Staff = "up" {
	\clef treble
	\key bes \minor
	\time 2/4
				% Four-plus-pickup bar intro
	\partial 8 ges16\mf f | % pickup measure
	ees8 ges16 f~ f ees f8 |
	bes8 ges16 f~ f4 |
	ees16 es8 ees16 des8 ces |
	bes4 r4 \bar "||"
	% Strain 1, first time
	bes16\p des\< ees\> des\! r4
      } % end treble clef
    >>
  } % end relative
} % end score