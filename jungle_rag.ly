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
	bes16\p des\< ees\> des\! r4 |
	\repeat unfold 2 {bes16 des\< ees\> des\! r4} |
	r4 <f\tenuto\ff aes des f> |
	<c' ees>8 aes16 <c ees>~ <c ees> aes <c ees>8 |
	<f, bes des f>2 |
	<ges bes des>8 <ges bes des>16 <ges bes des>~
	<ges bes des> <ges bes des> <ges bes des>8 |
	<f aes c>4\> r4\! |
	\clef bass
	<f, bes>8\mp <f bes>16 <f bes> r4 |
	% The following line is tweaked
	% slightly from the 2008 version:
	% changed bottom note from aes to f,
	% kept this bar in bass clef instead of treble
	<f des'>8\cresc <f des'>16 <f des'> r4 \clef treble |
	<ges ees'>8 <ges ees'>16 <ges ees'> r4 |
	% Change from 2008 version: move f mark earlier
	<f aes c f>2\f | % end cresc. from three bars ago
	r2 |
	\textLengthOn
	r4 r16 <bes' bes'>16 <bes bes'>8^"To Coda"
	<bes bes'> <bes bes'> <bes bes'>
	<bes bes'>16 <bes bes'> |
	r16 <bes bes'> <bes bes'>8 r4
	% Strain 1, second time
	\bar "||"
	bes,16\p des\< ees\> des\! r4 |
	\repeat unfold 2 {bes16 des\< ees\> des\! r4} |
	r4 <f\tenuto\ff aes des f> |
	<c' ees>8 aes16 <c ees>~ <c ees> aes <c ees>8 |
	<f, bes des f>2 |
	<ges bes des>8 <ges bes des>16 <ges bes des>~
	<ges bes des> <ges bes des> <ges bes des>8 |
	<f aes c>4\> r4\! |
	\clef bass
	<f, bes>8\mp <f bes>16 <f bes> r4 |
	<f des'>8\cresc <f des'>16 <f des'> r4 \clef treble |
	<ges ees'>8 <ges ees'>16 <ges ees'> r4 |
	<f aes c f>2\f | % end cresc. from three bars ago
	r2 |
	r4 r16 <bes' bes'>16 <bes bes'>8 |
	<bes bes'> <bes bes'> <bes bes'> <bes bes'>16 <bes bes'> |
	r2
				% Strain 2
	\repeat volta 2 {
	  des,8\staccato\mp bes16( a bes8)\staccato r8 |
	  ees\staccato bes16( a bes8)\staccato r8 |
	  f'16( ges f ees d8)\staccato bes8( |
	  a8. bes16 a16 bes a8 |
	  ees'8\marcato) r16 c16 des c des8 |
	  ees8\marcato r16 c16 des c des8 |
	  f8 r16 f16 ees8 a, |
	  bes4 r4\< |
	  r8\mf <ees ges bes>\< r8 <ees ges bes> |
	  r8 <des f bes>16 <des f bes> <des f bes>8 r8\f |
	  r2\> |
	  r8\mf <ees ges bes>16 <ees ges bes> <ees ges bes>8 r8 |
	  }
	 % end repeat / end Strain 2
      } % end treble clef
    >>
  } % end relative
} % end score