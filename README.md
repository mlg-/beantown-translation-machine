                                _.--._
                 .-"|~~"-.  ../" __.-`\boo..
                /.  |    /\dHHb-" {*} _\.-'Hboo._
               |  `.|  ,'  |HHHb*_-""`oHb.?HHHHHHbo.
               |_.-' ,'.--.|HP_r"  | dP ?I_HHHHHHHHHb.
                \_.-' f `./^'  |@_/ `=' dR.`^HHHHHHHHHb.
              ,dHPo.__|.-'    ;-"--`-  d','    `?HHHHHHHb.
             dHHHHHHP' \\[]==--\`--.'   /.        `?HHHHHHb
            dHHHHHHP   _`;,    r`;.,-;./`-,__,      ?HHHHHHb
           |HHHHHH|   |-//|    |_.'`._||      \      |HHHHHH|
          |HHHHHH|    `.;-(,.   ,'  ,' |       |      |HHHHHH|
          |HHHHHH|       `-/  )-/`.,'   |   /|  |     |HHHHHH|
         |HHHHHH|          `./-/  |*}   .\ / /  |      |HHHHHH|
         |HHHHHH|            /*}/ ^ ""{*}|  |  |       |HHHHHH|
         |HHHHHH|          ,' ^|       ^ |   \  \      |HHHHHH|
         |HHHHHH|        ,'*}  | {*}  {*} \  |..|      |HHHHHH|
          |HHHHHH|       `r;  /.  ^   _;---; `.  \    |HHHHHH|
          |HHHHHH|        \ \|{*}_,--'    /    /"'`-._|HHHHHH|
           |HHHHHH|        \ V\,'        |    ( ,'| |||HHHHH|
            ?HHHHHHb        | _          /     \\ `|;ddHHHHP
             ?HHHHHHb.       \  "-r..    |       |  LdHHHHP
              `?HHHHHHbo.    |   |      /      ,o(  fdHHP'
                `?HHHHHH|["r_\__.|     |   _.odHH\ jdHP'
                  `?HHHH`||__   ``    ,;oodHHHHHPj \P'
                    `^HHH|LL|HHoo;-r-'HHHHHHHHHHPf /
                       `^|  |HHHH\ |HHHHHHHHHHH^'( (
                         |__|P--"; |HHHHHH^'      \|
                         (    `-'_||""            ||
                         `--..--'`""              `'  
(CELTICS LOGO SOURCE: [http://www.flipmytext.com/ascii/nbalogos.php](http://www.flipmytext.com/ascii/nbalogos.php))

=============================================================================

=============================== READ ME =====================================

=============================================================================

The Beantown Translation Machine, aka The Society for Lost and Lonely "R"'s. 

Brought to you by MLG :)

ABOUT

&lt;-------&gt;

This little ruby program won its author a scholarship contest to attend Launch Academy in Summer 2015. It is meant as a gentle joke at the expense of the Boston accent (and is entirely satirical in nature!). It takes a phrase written more or less phonetically in a Boston accent (I biased towards a Southie/Dot flavor since that is what I know best) and tries to translate it into "plain English." It also does some fun stuff to award points to wicked awesome phrases that are extra Bostonian in nature. 

To run it, download boston.rb to a local directory, cd to it, and then run "ruby boston.rb".

FOR BEST RESULTS

&lt;--------&gt;

- Use "ah" to represent the dropped r at the end of a word or in certain other contexts in a non-rhotic accent.

- Use "awl" to represent the sound in words like "cawll yoah mothah".

- Use an apostrophe where a "g" might go at the end of a word, i.e. workin', eatin'.

- Use "oah" for words like stoah and moah.

- Be careful not to use too many "h"'s in place of an "r", or about forgetting double letters in a word's usual spelling even when omitting "r"'s.

SAMPLE TEXT FOR KICKS AND GIGGLES

&lt;--------&gt;

Here are two samples I came up with while writing and testing my program. Feel free to try them out!

First we went to pahk oah cahs in Hahvahd Yahd, which isn't really a thing because theah's naht a lotta pahkin' in Cambridge. So we figuahd we would go get some chowdah across the river (the Chahles, ya know, the dirty watah), but the Mayah was havin' some kinda parade so it was wicked crowded everywheah we tried to get some seating.

Ya gatta do yoah taxes, kid. It's already April. I can't wait fawr the Sawx to staht the season, it's my favorite time of yeah! Othah than Satahdiz when we go visit my mothah on Dot Ave. She always makes my favorite dinnah and we watch the Sawx versus the Yankees. It's a lotta fun and we always have so many people ovah theah that we don't have to throw anythin' out in tha barrel aftahwahd. Lots of fiahworks, and beeahs by the Chahles, and fun stuff comin' this summah too, best time to live around heah. And best paht is, no snow!


SCOPE & ACKNOWLEDGMENTS

&lt;--------&gt;

This program is able to handle to _some_ degree all of the aspects of the Boston accent from the Universal Hub [pronunciation](http://www.universalhub.com/glossary/pronunciation.html), [vocabulary](http://www.universalhub.com/glossary/a-b), and [place names](http://www.universalhub.com/glossary/wickedpn.html) glossaries (not including post comments, since they were inconsistent/uncurated). Some vocabulary that I had never, ever heard I ran by either my confirmed lifetime Dot Rat partner or another lifetime Boston-dweller. This means the vocab covered in my program is probably skewed to mostly cover younger Bostonian's colloquialisms, rather than some really old school ones from the Baby Boomers, etc. Thanks to Ben and Dom for their help.

The program is inexact and may make English spelling errors. Wherever possible, it tries to know the difference between an "ah" sound that is from an "er" vs an "ar/e" ending word and many other similar examples, but without using [phonetic transcription](http://en.wikipedia.org/wiki/Phonetic_transcription) (which would have made this program nearly impossible for a layperson to use), it's an art rather than a science. It uses context and biases to most common use cases to try and get it right!

I utilized some linguistics texts to understand the specifics of non-rhotic accents. One that was particularly helpful was [Investigations in Sociohistorical Linguistics by Peter Trudgill](http://www.cambridge.org/us/academic/subjects/languages-linguistics/sociolinguistics/investigations-sociohistorical-linguistics-stories-colonisation-and-contact). I used an [online Scrabble dictionary](http://www.morewords.com) to figure out the prevalence of certain words/spellings.

I wrote all the code myself, using [rubular](http://rubular.com/) to write/test my regexes, the [ruby docs](http://ruby-docs.org) to look up syntax for things I wanted to do (loops, array literals), and [this site](http://www.tutorialspoint.com/ruby/ruby_regular_expressions.htm) as an in-depth reference for regexes in ruby. I was aided intangibly by my background in literature/poetry and my work in publishing.

To test it, I transcribed audio recordings of a couple of friends, used the [International Dialects archive](http://www.dialectsarchive.com/massachusetts) to transcribe some examples, transcribed from recordings of Boston city meetings like [this great example](https://www.youtube.com/watch?v=RbK4cL3QSc0), and also some videos of [Marty Walsh](http://www.myfoxboston.com/story/27800960/schedule-released-for-first-9-olympic-community-meetings) giving speeches.

WHY I WANT TO GO TO LAUNCH ACADEMY

&lt;--------&gt;

I first tried Ruby at RailsBridge Boston in winter 2013, after my friend Julissa Jansen (since a Launch Academy grad) posted about it on a social media account. I was curious since I knew that an app I was helping through beta at work was written in Ruby on Rails. I had a great time at RailsBridge, both at that initial session and the one that followed. Julissa had a great experience at Launch Academy that she has generously answered my questions about on several occasions, and I first wrote in to ask about scholarship money sometime that winter, but Bill Rowell wasn't aware of anything that was available at the time.

Since then, I've worked to learn various programming topics on my own, especially front end technology like HTML/CSS/Javascript through self-study and affordable classes put on by the Women's Coding Collective and Girl Develop It. I was able to do a little bit of front end coding (and the ocassional back end bug fix) at work and in volunteer projects for friends, but had trouble progressing with back-end topics in real-world use cases at work, which is one of the reasons I want to take time to *really* learn the ropes at Launch Academy. I have learned how to hack things together and now I want to fill in the gaps in my knowledge and strengthen my fundamentals.

I'm ultimately applying because I am hooked on coding and want to fully commit to changing my career path to this one after over a year of dabbling. When I saw the scholarship offer it felt like a dream come true! I've been toying with the idea of trying to do Launch Academy since that winter in 2013, and this was the push I needed to commit and apply. I want to take advantage of Launch Academy's supportive learning environment, awesome peer connections, and flipped-classroom learning approach to power-boost my efforts and make a full career transition. 

Finally, an important motivation for me is my desire to increase the number of women (particularly ones who code full time) in tech careers. My background as an academic in literature and gender studies informs how I see the challenges that face tech companies regarding diversity, and I embrace and want to "be the change I wish to see" for this issue. I also really believe in "Each One Teach One," and I've already used what I know to volunteer for Hour of Code at Somerville High School this year. I know that as I continue to learn that I will pay forward that gift to others who want to learn, especially women and girls. As a Launch Academy grad, I would not only be grateful for the experience, but also be someone in the Boston tech community who represents you well and uses her skills to teach and help others, too. Thanks for considering me!
