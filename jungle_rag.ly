\version "2.18.2"

% Using A4 instead of letter allows this to fit on
% four pages instead of five.
% But if you want to change the size to letter,
% uncomment the following line:
%#(set-default-paper-size "letter") 

\header {
  title = "Jungle Rag"
  composer = "Matthew Dirks"
  copyright = "composed 2008, edited 2020"
}

\score {
  \relative c'' {
    \new PianoStaff
    <<
      \new Staff = "up" { % right hand staff
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
	bes16\p\segno des\< ees\> des\! r4 |
	\repeat unfold 2 {bes16 des\< ees\> des\! r4} |
	r4 <f\tenuto aes des f>\ff |
	<c' ees>8 aes16 <c ees>~ <c ees> aes <c ees>8 |
	<f, bes des f>2 |
	<ges bes des>8 <ges bes des>16 <ges bes des>~
	<ges bes des> <ges bes des> <ges bes des>8 |
	<f aes c>4 r4 | % Decrescendo supplied in LH part
	\clef bass
	<f, bes>8\mp <f bes>16 <f bes> r4 |
	% The following line is tweaked
	% slightly from the 2008 version:
	% changed bottom note from aes to f,
	% kept this bar in bass clef instead of treble
	<f des'>8\cresc <f des'>16 <f des'> r4 |
	<ges ees'>8 <ges ees'>16 <ges ees'> r4 |
	% Change from 2008 version: move f mark earlier
	<f aes c f>2\f | % end cresc. from three bars ago
	r2 \clef treble |
	\textLengthOn
	r4 r16 <bes' bes'>16 <bes bes'>8^"To Coda"
	<bes bes'> <bes bes'> <bes bes'>
	<bes bes'>16 <bes bes'> |
	r16 <bes bes'> <bes bes'>8 r4
	% Strain 1, second time
	\bar "||"
	bes,16\p des\< ees\> des\! r4 |
	\repeat unfold 2 {bes16 des\< ees\> des\! r4} |
	r4 <f\tenuto aes des f>\ff |
	<c' ees>8 aes16 <c ees>~ <c ees> aes <c ees>8 |
	<f, bes des f>2 |
	%<ges bes des>8 <ges bes des>16 <ges bes des>~
	%<ges bes des> <ges bes des> <ges bes des>8 |
	<ges bes des>16 <ges bes des>8 <ges bes des>16
	<ges bes des>8 <ges bes des>
	<f aes c>4 r4 |
	\clef bass
	<f, bes>8\mp <f bes>16 <f bes> r4 |
	<f des'>8\cresc <f des'>16 <f des'> r4 |
	<ges ees'>8 <ges ees'>16 <ges ees'> r4 |
	<f aes c f>2\f | % end cresc. from three bars ago
	r2 \clef treble |
	r4 r16 <bes' bes'>16 <bes bes'>8 |
	<bes bes'> <bes bes'> <bes bes'> <bes bes'>16 <bes bes'> |
	R2 % center rest
				% Strain 2, RH
	\repeat volta 2 {
	  des,8\staccato\mp bes16( a bes8)\staccato r8 |
	  ees\staccato bes16( a bes8)\staccato r8 |
	  f'16( ges f ees d8)\staccato bes8( |
	  a8. bes16 a16 bes a8 |
	  ees'8\marcato) r16 c16 des c des8 |
	  ees8\marcato r16 c16 des c des8 |
	  f8 r16 f16 ees8 a, |
	  bes4 r4 |
	  r8 <ees ges bes> r8 <ees ges bes> |
	  r8 <des f bes>16 <des f bes> <des f bes>8 r8 |
	  R2 | % center rest in measure
	  r8 <ees ges bes>16 <ees ges bes> <ees ges bes>8 r8 |
	  r8 <des f aes> r8 <des f aes> |
	  r8 <aes' des f>16 <aes des f> <aes des f>8 r8|
	  bes,16 c des ees f8 a |
	  bes r8 <bes des f bes> r8^"D.S. al Coda" |
	} % end repeat / end Strain 2
	
	% Coda / transition to trio
	\break
	s4 s8^"Coda" s8\coda | % Extra measure for spacing before coda
	<bes bes'>4\staccato  <aes aes'>\staccato |
	<ges ges'>\staccato <f f'>\tenuto \bar "||"

	% Trio, first time
	\key ees \minor
	ees8\mf ges16 f~ f ees f8 |
	bes8 ges16 f~ f4
	ees8 ges16 f~ f d ees8 |
	% voiceOne gets upstems, voiceTwo gets downstems
	<<{\voiceOne r8 <aes f'>16\f <aes f'> r16 <aes f'> r8}
	  \new Voice {\voiceTwo f2} >> | 
	\oneVoice % Need this, else voiceOne behavior remains (and looks ugly)
	bes8\mf aes16 ges~ ges8 bes |
	aes ges16 f~ f8 r8 |
	\clef bass
	ees,,16\mp\cresc ges a bes r4 \clef treble |
	ees'16 ges a bes aes ges f bes |
	aes8\mf ges f\cresc aes |
	ges f16 ges ees8 r8 |
	aes ges f16 ges r8 |
	bes2 |
	ces16(\f bes aes ces bes8)\marcato g16 aes |
	bes8\marcato ges16 f~ f4 |
	aes16( ges f aes ges8)\marcato d\marcato |

	<< {\voiceOne r8 <ges ees'> <ges ees'> r8}
	   \new Voice {\voiceTwo ees2} >> |
	\oneVoice

	% Four-bar vamp, RH (rests)
	\bar "||"
	R2\f R2 R2 R2 % center rests in measure

	% Fourth Strain, first time, RH
	\repeat unfold 2 {
	  <bes' bes'>8 r16 <bes bes'>16~ <bes bes'> f' des8
	} % end repeat
	bes16\mp ces des f r ees r8 |
	bes16 ces des f r4 |
	<bes, bes'>8\f r16 <bes bes'>16~ <bes bes'> f' des8 |
	<bes bes'> r16 <bes bes'>16~ <bes bes'>4 |
	bes16\mp bes' aes ges f8 d |
	ees4 r4 |
	<ees, ges>8\p r16 <ees ges>16~ <ees ges> f ees8 |
	<ees ges>8\staccato r16 <ees ges>16\staccato r4 |
	<ees ges bes>8\p r16 <ees ges bes>16~ <ees ges bes> aes ges8 |
	<ees ges bes>8\staccato r16 <ees ges bes>\staccato r4 |
	<ees aes des>8\p r16 <ees aes des>16~ <ees aes des> bes' aes8|
	<ees aes des>8\staccato r16 <ees aes des>\staccato r4
	<d ges d'>8\ff <d ges d'> <d ges d'>16 <d ges d'>8. |
	<ees ges ees'>8 r8
	
	
	% Fourth strain, second time
	% Change from 2008: added grace notes
	\acciaccatura a'16 bes8\mf \acciaccatura a!16 bes8 | % pickups
	\bar "||"
	\repeat unfold 2 {bes16 a bes f~ f8 aes}
	\ottava #1
	bes16 ces8 des16 f8 ees |
	bes16 ces des f r4 |
	\ottava #0
	bes,8 bes16 bes a8 a16 a |
	ges8 ges16 f~ f4 |
	ges16( f ees ges f8)\marcato d\marcato |
	ees8 r8 r4 |
	<ees, ges>8\p r16 <ees ges>16~ <ees ges> f ees8 |
	<ees ges>8\staccato\mp <ees ges>8\staccato\pp r4 |
	<ees ges bes>8\p r16 <ees ges bes>~ <ees ges bes> aes ges8 |
	<ees ges bes>\staccato\mp <ees ges bes>\staccato\pp r4 |
	<ees aes des>8\p r16 <ees aes des>~ <ees aes des> bes' aes8 |
	<ees aes des>\staccato\mp <ees aes des>\staccato\pp r4
	\ottava #1
	bes''16\p a bes r16 d8 bes |
	ees \ottava #0 r8 r8

	% Trio, second time
	ges,,16 f \bar "||"
	ees8\mf ges16 f~ f ees f8 |
	bes8 ges16 f~ f4 |
	ees8 ges16 f~ f d ees8 |
	<<{\voiceOne r8 <aes f'>16\f <aes f'> r16 <aes f'> r8}
	  \new Voice {\voiceTwo f2} >> | 
	\oneVoice
	bes8.\mf( aes16 ges8. bes16 |
	aes8\staccato) ges16 f~ f8 r8 \clef bass |
	ees,,16\mp ges a\cresc bes r4 \clef treble |
	ees'16 ges a bes aes ges f bes |
	aes8\mf ges f\cresc aes |
	ges8 f16 ges ees8 r8
	bes' ges f16 ges r8
	<bes des>2
	\acciaccatura ces16 ees8\marcato\f aes,16( bes ces8\marcato) g16( aes |
	bes8\marcato) ees,16( f ges8\tenuto f16 ges |
	aes ges f aes ges8\marcato) d\marcato
	<< {\voiceOne r8 <ges ees'> <ges ees'>}
	   \new Voice {\voiceTwo ees4.} >>
	\oneVoice
	s8 % compensate for pickup measure at beginning
	\bar "|."	
      } % end right hand staff
      

      % LEFT HAND
      \new Staff = "down" { % left hand staff
	\clef bass
	\key bes \minor
	%Four-plus-pickup bar intro
	\partial 8 r8 % pickup measure
	<ees,, ees'>\marcato <ees' ges bes> <ees ges bes> <des, des'>( |
	<ees ees'>\marcato) <bes bes'> <bes' des f> <bes des f> |
	<ees, ees'>16 r8. r4 |
	r8 <bes' des f> <bes, bes'> r8 | % double bar supplied by RH staff above

	% Strain 1, fist time, LH
	<bes bes'> <bes' des f> <bes des f> <bes, bes'>\marcato |
	<aes aes'> <bes' des f> <bes des f> <aes, aes'>\marcato |
	<ges ges'> <bes' des f> <bes des f> <ges, ges'>\marcato |
	<f f'>\marcato r8 <f f'>4\tenuto |
	<aes aes'>8 <ees'' aes c> <aes,, aes'> <ees'' aes c> |
	<des, des'>8 <des' des'>16 <c c'> r16 <bes bes'> r16 <aes aes'> |
	<ges ges'>8 <ges' bes des> <bes,, bes'> <ges'' bes des> |
	<f, f'>8\tenuto\>( <ees ees'>) <des des'>\tenuto( <c c'>\!) |
	<bes bes'>8\marcato r8 r8 <bes bes'>\marcato |
	<aes aes'>8\marcato r8 r8 <aes aes'>\marcato |
	<ges ges'>8\marcato r8 r8 <ges ges'>\marcato|
	%Fun cross-hands bit
	<<{\voiceOne % voiceOne = spacer rests
	   % Using spacer rests allows me to position
	   % the 8va a bit earlier than otherwise
	   % so it's clear that both of the treble Fs
	   % are 8va'd
	   s16 \ottava #1 s16 s8 s4 \ottava #0 } % end spacers
	  \new Voice {\voiceTwo % voiceTwo = treble notes, stems down
		      s8 %<f f'>8
		      \clef treble
		      f''''' f'4
		      \clef bass} % end voiceTwo
	  \new Voice {\voiceThree % voiceThree = bass Fs, stems up
		      <f,,,,,, f'>8 s8 s4} % end voiceThree
		    >> % end voiceTwo
	  \oneVoice
	| % bar check ends cross-hands bit

	\ottava #-1
	<bes bes'>8 <bes bes'> <aes aes'> <ges ges'>16 <f f'> |
	r16 <ees ees'> <bes bes'> r16 r16 <bes bes'> <bes bes'>8 |
	<bes bes'>4 <bes' des f bes> |
	<f f'>4 <bes, bes'> |
	\ottava #0

				% Strain 1, second time, LH
	<bes' bes'>8 <bes' des f> <bes des f> <bes, bes'>\marcato |
	<aes aes'> <bes' des f> <bes des f> <aes, aes'>\marcato |
	<ges ges'> <bes' des f> <bes des f> <ges, ges'>\marcato |
	<f f'>\marcato r8 <f f'>4\tenuto |
	<aes aes'>8 <ees'' aes c> <aes,, aes'> <ees'' aes c> |
	<des, des'>8. <des des'>16 <ees ees'>8 <f f'> |
	<ges ges'>8 <ges' bes des> <bes,, bes'> <ges'' bes des> |

	<f, f'>8\tenuto\>( <ees ees'>) <des des'>\tenuto( <c c'>\!) |
	<bes bes'>8\marcato r8 r8 <bes bes'>\marcato |
	<aes aes'>8\marcato r8 r8 <aes aes'>\marcato |
	<ges ges'>8\marcato r8 r8 <ges ges'>\marcato|
	%Fun cross-hands bit (repeated from above)
	<<{\voiceOne % voiceOne = spacer rests
	   % Using spacer rests allows me to position
	   % the 8va a bit earlier than otherwise
	   % so it's clear that both of the treble Fs
	   % are 8va'd
	   s16 \ottava #1 s16 s8 s4 \ottava #0 } % end spacers
	  \new Voice {\voiceTwo % voiceTwo = treble notes, stems down
		      s8 %<f f'>8
		      \clef treble
		      f''''' f'4
		      \clef bass} % end voiceTwo
	  \new Voice {\voiceThree % voiceThree = bass Fs, stems up
		      <f,,,,,, f'>8 s8 s4} % end voiceThree
		    >> % end voiceTwo
	  \oneVoice
	| % bar check ends cross-hands bit

	\ottava #-1
	<bes bes'>8 <f f'> <ees ees'> <f f'>16 <des des'>~ |
	<des des'>  <c c'>8 <bes bes'>16~ <bes bes'>
	<bes bes'> <bes bes'>8 |
	<bes bes'>4 <f' f'>8 <aes aes'>16 <bes bes'> |
	\ottava #0
	R2 | % center rest

				% Strain 2, LH
	<bes bes'>8 <bes' des f> r8 <bes des f> |
	<aes, aes'>8 <bes' des f> r8 <bes des f> |
	<bes, bes'>8 <aes' aes'>( <ges ges'>\staccato) <ees ees'>( |
	<d d'> <ees ees'> <d d'> <des des'> |
	<c c'> <ees ees'>\marcato) r4 |
	<ces ces'>8 <ees ees'>\marcato r4 |
	<bes bes'>8 <bes' des f> <aes aes'> <d, d'> |
	<bes bes'>8 <bes' des f>
	\dynamicUp
	<bes, bes'>16\< <aes aes'> <ges ges'> <f f'> |
	\ottava #-1
	<ees ees'>4\mf\< <ges ges'> |
	<bes bes'>4. <b b'>8\f |
	<bes bes'>8.\> <aes aes'>16 <ges ges'>8 <f f'> |
	<ees ees'>2\mf
	<des des'>4\mp <f f'>\cresc |
	<aes aes'>4. <a a'>8 
	<aes aes'>8 <ges ges'> <f f'> <a a'> |
	% The following measure corrects a typo from 2008:
	% final note should be octaved bes's, but 2008 has an aes
	% as the low note
	<bes bes'>\f <f f'> <bes, bes'> r8
	\ottava #0
	\dynamicNeutral

	
	% Coda / transition to trio, LH
	s2 %spacer measure
	\ottava #-1
	<bes bes'>4\staccato <bes' bes'>\staccato |
	<ces ces'>\staccato <des des'>\tenuto |
	\ottava #0
	% Trio LH, first time
	\key ees \minor
	<ees ees'>8\marcato <ees' ges bes>
	<ees ges bes> <des, des'>( |
	<ees ees'>\marcato) <bes bes'>
	<bes' des f> <bes des f> |
	<ees, ees'>\marcato <ees' ges bes>
	<ees ges bes> <ees, ees'> |
	<d d'> <aes' aes'>\marcato
	<f f'>\marcato <ees ees'>\marcato |
	<aes aes'>8 <aes' ces ees> <bes, bes'> <ees, ees'> |
	<fes fes'>8 <aes aes'> <a a'> <bes bes'> |
	r4 ees16 ges a bes |
	r2 |
	<aes, aes'>8 <aes' ces ees> <ees, ees'> <aes' ces ees> |
	<des, des'> <ces ces'> <bes bes'> <bes, bes'> |
	<ees ees'> <ges ges'> <bes bes'> <ces ces'> |
	<des des'> <bes bes'>16 <aes aes'>~ <aes aes'>4 |
	<aes aes'>8 <ges ges'> <fes fes'>\marcato r8 |
	<ees ees'>8 <bes' bes'>( <ces ces'> <bes bes'> |
	<aes aes'>16) r8. r8 <bes, bes'>8\marcato |
	<ees ees'>4. <des des'>8 |

	% LH: Four-bar vamp and fourth strain first time
	\repeat unfold 3 {
	<bes bes'>8 <bes'' des  f> <des,, des'> <bes'' des f> |
	<ees,, ees'> <bes'' des f> <f, f'> <bes' des f> | }
	<bes, bes'> <des des'> <aes' des f> <ees ees'> |
	<des des'> <ces ces'> <bes bes'> <ees, ees'> |
	<bes bes'>8 <bes'' des  f> <des,, des'> <bes'' des f> |
	<ees,, ees'> <bes'' des f> <f, f'> <bes' des f> |
	<ees,, ees'> <aes aes'> <ges ges'> <f f'> |
	<ees ees'> <ees' ges bes> <ees,, ees'> r8 |
	\repeat unfold 3 {
	<ees' ees'> <ees' ges bes> <bes, bes'> <ees' ges bes> |
	<ees, ees'>8\staccato r16 <ees, ees'>16 r4 | }
	< g' g'>8 <ges ges'> <f f'> <fes fes'> |
	r8 <ees, ees'> r4 |
	% Fourth strain, second time, LH
	<bes' bes'>8 <bes'' des  f> <des,, des'> <bes'' des f> |
	<ees,, ees'> <bes'' des f> <f, f'> <bes' des f> |
	<bes, bes'> <des des'> <aes' des f> <ees ees'> |
	<des des'> <ces ces'> <bes bes'> <ees, ees'> |
	<bes bes'>8 <bes'' des  f> <des,, des'> <bes'' des f> |
	<ges, ges'>8-"Careful! Different this time." <bes' des f> <f, f'> <bes' des f> |
	<ees,, ees'>8 r8 r4 |
	r8 <bes bes'> <ees, ees'> r8
	\repeat unfold 3 {
	<ees' ees'> <ees' ges bes> <bes, bes'> <ees' ges bes> |
	<ees, ees'>8\staccato <ees, ees'>\staccato r4 | }
	<d' d'>16 r16 r8 r4 |
	\ottava #-1
	r8 <bes, bes'> <ees ees'> r8
	\ottava #0

				% Trio, second time, LH
	<ees' ees'>8\marcato <ees' ges bes> <ees ges bes> <des, des'>( |
	<ees ees'>\marcato) <bes bes'> <bes' des f> <bes des f> |
	% Change from 2008: the <ees, ees'> octave
	% probably shouldn't be marcato
	<ees, ees'>8 <ees' ges bes> <ees ges bes> <ees, ees'> |
	<d d'> <aes' aes'>\marcato <f f'>\marcato <ees ees'>\marcato |
	<aes aes'> <aes' ces ees> <bes, bes'> <ees, ees'> |
	<fes fes'>\staccato <aes aes'>\marcato <a a'>\marcato <bes bes'>\marcato |
	r4 ees16 ges a bes |
	R2 |
	<aes, aes'>8 <aes' ces ees> <ees, ees'> <aes' ces ees> |
	<des, des'> <c c'> <ces ces'> <bes, bes'> |
	<ees ees'> <ges ges'> <bes bes'> <ces ces'> |
	<des des'>8 <bes bes'>16 <aes aes'>~ <aes aes'>4 |
	<ees ees'>8\marcato r8 <fes fes'>\marcato r8 |
	<f f'>\marcato <bes bes'>( <ces ces'\tenuto> <bes bes'> |
	<aes aes'>16) r8. r8 <bes, bes'>\marcato |
	<ees, ees'>4.
	%There should be a spacer rest here,
	% but putting it in creates an extra (empty) measure
	% so comment it out:
	s8  % Compensate for pickup measure at beginning of piece
	
	} % end left hand staff
    >>
  } % end relative
} % end score
