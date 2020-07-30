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
	\partial 8 ges16 f | % pickup measure
      } % end treble clef
    >>
  } % end relative
} % end score