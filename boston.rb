def play_again
	puts "Want to play again? (y/n)"
	keep_playing = gets.chomp.to_s.downcase
	if keep_playing == "y" || keep_playing == "yes"
		translator
	elsif keep_playing == "n" || keep_playing == "no"
		quit
	else
		quit
	end
end

def quit
	exit
end

# This is the bulk of the fun! The translator function asks the user for input,
# runs it through a complex list of substitutions and also does some fun bonus
# stuff like awarding points for super Boston phrases or scolding users who mention
# "taboo" Boston topics. At the end it returns the translated phrase, plus any
# bonus message for beantown_points awarded.

def translator

	# Greet your user in the language of their people.
	puts ["SUP KID? ",
		 "What didja say? ",
		 "How ya doan? ",
		 "How ahrya?",
		 "How 'bout them Sox? ",
		 "How 'bout them Pats? "].sample

	# Get their response and lop off the carriage return, Massachusetts Left style.
	phrase = gets.chomp.to_s

	# Now we're going to award the user points based on density of Boston-specific
	# diction, aka their Beantown Points(tm).
	i = 0
	beantown_points = 0
	wicked_boston_words = ["bubblah",
		"wicked",
		"reveah",
		"the dot",
		"medfid",
		"broons",
		"barrel",
		"digga",
		"southie",
		"eastie",
		"rotary",
		"pissah",
		"jp",
		"fried",
		"directional",
		"beantown",
		"red sox",
		"common",
		"dunkin donuts",
		"patriots",
		"celtics",
		"green monster",
		"dirty watah",
		"packie"
	]

	searchable_phrase = phrase.downcase

	wicked_boston_words.each do |i|
		if searchable_phrase.include?(i)
			beantown_points += 1
		end
	end

	########################################################################################################
	# A-Z dictionary of specific gsubs for targeted replacement. This is about to get wicked awesome, bro! #
	########################################################################################################

	# A
	phrase.gsub!(/\bacross the rivah?\b/i, 'on the other side of the Charles River') # across the rivah (other side of the charles)
	phrase.gsub!(/\b(a)dvahtisin'?g?\b/i, '\1dvertising') # advahtisin'(g)
	phrase.gsub!(/\b(a)dvisah?\b/i, '\1dviser') # advisah
	phrase.gsub!(/\b(a)doah\b/i, '\1dore') # adoah
	phrase.gsub!(/(a)ftah/i, '\1fter') # aftah (aftahwahds, raftah, & other containing words)
	phrase.gsub!(/\bah(h)?(?=\s[a-z]+in('|g))?\b/i, 'are') # ah (usually "are" if a word ending in "ing is after")
	phrase.gsub!(/\b(the)? Ahbs\b/i, '\1 Arboretum') # the ahbs is a fun place to hang out
	phrase.gsub!(/\b(a)hm\b/i, '\1rm') # curt schilling's gotta good ahm
	phrase.gsub!(/(f|w|h|al|ch|fore)ahm(s?)/i, '\1arm\2') # ahm at the end of words
	phrase.gsub!(/\bahr\b/i, 'are') # ahr
	phrase.gsub!(/\bahrya\b/i, 'are you') # how ahrya?!
	phrase.gsub!(/\b(a)hnt\b/i, '\1unt') # ya ahnt is comin' to Christmas
	phrase.gsub!(/\ball set\b/i, 'all done') # all set with my dinnah, thank you
	phrase.gsub!(/\bAllston Christmas\b/i, 'The last weekend in August when all the students move out and leave their furniture behind in Allston') # Gonna need a biggah cah
	phrase.gsub!(/\b(a)mbassad(oah|ah)(s)/i, '\1ambassad\2\3') # ambassadoah/dah

	# B
	phrase.gsub!(/\b(b)ah\b/i, '\1ar') # bah (let's get a beeah at the bah)
	phrase.gsub!(/\b(cross|crow|de|dis|draw|handle|iso|sand|side)bah(s)\b/i, '\1bar\2') # "bah" (words ending in bah)
	phrase.gsub!(/\bbahnie\b/i, 'smart geek') # bahnie
	phrase.gsub!(/\bbang a left\b/i, 'take a left') # bang a left...but do it before the oncoming turns green!
	phrase.gsub!(/\b(b)ankin/i, 'hillside') # watch the game from the bankin
	phrase.gsub!(/\bbarrel/i, 'trash can') # throw that yankees jersey in the barrel
	phrase.gsub!(/\bbazo\b/i, 'drunk') # bazo on the weekendddd
	phrase.gsub!(/\bbeantown\b/i, 'Boston') # beantown
	phrase.gsub!(/\b(b)eeah(s)?\b/i, '\1eer') # lemme buy ya a beeah (sam adams please)
	phrase.gsub!(/\b(b)ettah\b/i, '\1etter') # bettah (than you)
	phrase.gsub!(/\bbig(-|\s)ball bowling?/i, '10-pin bowling') # big ball bowlin'
	phrase.gsub!(/\bBig Dig\b/i, 'the most expensive highway project in U.S. History') # the big dig, depress that central ahtery
	phrase.gsub!(/\bb(ill-)?ricka/i, 'Billerica') # Billerica
	phrase.gsub!(/\bboahded\b/i, 'dibs') # boahded
	phrase.gsub!(/\bbobos\b/i, 'boat shoes') # bobos
	phrase.gsub!(/\bBostonian\b/i, 'resident of Boston') # Bostonian
	phrase.gsub!(/\bbook(ed|in)? outta theah\b/i, 'took off') # bookin' it
	phrase.gsub!(/\b(b)r(a|u)h\b/i, '\1ro') # brah/bruh
	phrase.gsub!(/\bbrahmin\b/i, 'WASP-y type') # Brahmin
	phrase.gsub!(/\bbreakdown lane\b/i, 'highway shoulder') # breakdown lane at rush hoah, jeez
	phrase.gsub!(/\bBroons\b/i, 'Bruins') # Da Broons!
	phrase.gsub!(/\bbubblah\b/i, 'water fountain') # bubblah

	# C
	phrase.gsub!(/\b(c)ahds\b/i, '\1ards') # cahds
	phrase.gsub!(/\b(c|ced|chedd|sc|sidec|tramc|supahc|vic)ah(s)?\b/i, '\1ar\2') # cah(s) and 6 containing words that are most common.
	phrase.gsub!(/\b(c)alendah(s)?\b/i, '\1alendar\2') # calendah (the sawx got theyah openin' day on theah!)
	phrase.gsub!(/\bcalm ya liva(a|h)?/i, 'relax') # calm ya livah, I didn't eat ya dinnah
	phrase.gsub!(/\b(c)an't get\b/i, '\1an get') # can't get (no satifaction...but plenty of double negatives up for grabs, so)
	phrase.gsub!(/\bThe Cape\b/i, 'Cape Code, Massachusetts') # goin' to the Cape this summah
	phrase.gsub!(/\bcarriage\b/i, 'grocery cart') # carriage (for ya lobstahs and beeahs)
	phrase.gsub!(/\b(c)awna\b/i, '\1orner') # coolidge cawna
	phrase.gsub!(/\b(c)ella(h)\b?/i, 'basement') # go down cella
	phrase.gsub!(/\b(c)howdah\b/i, '\1howder') # chowdah (clam or lobstah, take ya pick at sullivan's!)
	phrase.gsub!(/\b(coffee|small|medium|lahge) regulah\b/i, 'coffee with cream and two sugars') # coffee, regulah
	phrase.gsub!(/\bCochihchewit\b/i, 'Cochituate') # Co-CHIH-chew-it
	phrase.gsub!(/\b(c)onsidah\b/i, '\1onsider') # considah
	phrase.gsub!(/\b(c)orridoah(s)\b/i, '\1orridor\2') # corridor
	phrase.gsub!(/\b(c)umbie(s|'s)/i, 'Cumberland Farms Mini-Mart') # cumbie's

	# D
	phrase.gsub!(/\b(Mon|Tues|Wed|Thurs|Fri|Sun)diz/i, '\1days') # plural days of the week, less Saturday which can have a couple pronunciations
	phrase.gsub!(/\b(d)ecoah\b/i, '\1ecor') # decoah (in ya apahtment!) -- most frequently used word ending in "cor"
	phrase.gsub!(/\bdecked\b/i, 'punched') # he got decked at the sox game
	phrase.gsub!(/\bdecked\sout\b/i, 'dressed up') # he's all decked out for his date!
	phrase.gsub!(/\b(d)idja\b/i, '\1id you') # didja
	phrase.gsub!(/\bdirty watah\b/i, 'the Charles River') # love that dirty watah
	phrase.gsub!(/\bdiggah?\b/i, 'fall') # fell on some ice and took a diggah
	phrase.gsub!(/\b(d|fl|ind|p|outd)oah\b/i, '\1oor') # oah words ending in oor
	phrase.gsub!(/\b(direc|doc)tah\b/i, '\1tor') # doctah/directah
	phrase.gsub!(/\bdirectional\b/i, 'turn signal') # put on ya directional before you take turn
	phrase.gsub!(/\bDot Ave\b/i, 'Dorchester Avenue') # Dot Ave
	phrase.gsub!(/\bDot Rat(s)?/i, 'resident\1 of Dorchester') # Dot Rats
	phrase.gsub!(/\bthe Dot\b/i, 'Dorchester') # the dot
	phrase.gsub!(/\bdunki(n'?s'?|n|es)(\sdonuts)?\b/i, 'Dunkin\' Donuts') # dunkies, dunkins, dunkin, dunkin's, & dunkin's!
	phrase.gsub!(/\bdrawring\b/i, 'drawing') # drawring

	# E
	phrase.gsub!(/\bEastie\b/i, 'East Boston') # Eastie
	phrase.gsub!(/\belastic(s)?\b/i, 'rubber band\1') # elastics
	phrase.gsub!(/(e)ntah\b/i, '\1nter') # entah (come in heah!)
	phrase.gsub!(/\b(e)ntiah\b/i, 'entire') # entiah (I've lived in Boston my entiah life)
	phrase.gsub!(/(n)?(e)vah\b/i, '\1\2ver') # evah (or forevahevah! or nevah. that too.)

	# F
	phrase.gsub!(/\bfahr\b/i, 'for') # fahr (ready fahr spring after this wintah!)
	phrase.gsub!(/\bfactah\b/i, 'factor') # factah
	phrase.gsub!(/\b(af|insof|ovahf|f)ah\b/i, '\1ar') # fah (neah, fah, wheahevah you ahhhhh)
	phrase.gsub!(/(f)ahkin'?/i, '\1*!king') # I mean, it's not very polite but you have to admit it is a distinctive part of a true Boston accent!
	phrase.gsub!(/(f)ahk?/i, '\1*!k') # I mean, it's not very polite but you have to admit it is a distinctive part of a true Boston accent!
	phrase.gsub!(/\b(airf|cahf|thoughroughf|welf|wahf|f)ayah\b/i, '\1are') # fayah (wahfayah, aihfayah)
	phrase.gsub!(/\bfawr\b/i, 'for') # fawr
	phrase.gsub!(/(af|bef|f)oah\b/i, '\1ore') # foah (fore & variants)
	phrase.gsub!(/\bfoddy\b/i, 'fourty') # foddy
	phrase.gsub!(/\bfrappe\b/i, 'a milkshake/malted (ice cream, milk, & syrup blended)') # frappe
	phrase.gsub!(/\b(frickin|friggin)'?(?!\z|\s)/i, 'freaking') # the G-rated version of Boston's favorite adjective
	phrase.gsub!(/\bfried\b/i, 'weird') # fried
	phrase.gsub!(/\bFudgicle\b/i, 'Fudgsicle') # a fudgsicle that lost the "s"

	# G
	phrase.gsub!(/\b(g)ahbidge\b/i, '\1arbage') # Wednesdiz is gahbidge day
	phrase.gsub!(/\b(gawrls|gahls|gawhls)/i, 'girls') # gawrls just wanna...learn to code and change the girl to dave ratio, actually.
	phrase.gsub!(/(g)awd\b/i, '\1od') # oh my gawd
	phrase.gsub!(/\b(g)ovahment\b/i, '\1overnment') # Govahment Centah! It's wheah Boston Cawllin' always is!
	phrase.gsub!(/\b(ci|beg|vul|sug|vine)gah(s)?\b/i, '\1gar\2') # gah --> sugah, cigah, etc.
	phrase.gsub!(/\b(g)oah\b/i, '\1ore') # goah (Melissa-Leigh Goah, like Al Goah, he invented the intahnet)
	phrase.gsub!(/\bg(o|a)tta\b/i, 'have to') # gotta
	phrase.gsub!(/\b(g)rammah\b/i, '\1rammar') # grammah
	phrase.gsub!(/\bgrindah?(s)?\b/i, 'sub\1') # grindahs
	phrase.gsub!(/\b(g)uitah\b/i, '\1uitar') # guitah (what's that game the kids ah playin? guitah hero?!)

	# H
	phrase.gsub!(/\b(Hahvahd|Havahd|Havid|Hahvid)/i, 'Harvard') # Let's go to Hahvid and sit outside the Widenah Library
	phrase.gsub!(/\b(hang|hook) a right\b/i, 'take a right') # hang/hook a right
	phrase.gsub!(/\bhamburg\b/i, 'ground beef') # my grammy's go to dinnah was hamburg thingies..aka ground beef patties with mustard cooked on one side of a hamburger bun (this is an actual true story from the writer of this program, haha)
	phrase.gsub!(/\b(heahd|heid)\b/i, 'heard') # ya nevah heahd about that?
	phrase.gsub!(/heah/i, 'here') # heah, wheah, theah (wait, who's on first?!) -- this matches on at least 300 english words containing "here"
	#hahbah (no taxation without representation, ya dig?) covered under "lahbah"
	phrase.gsub!(/\bHub\b/i, 'Boston') # the Hub

	# I
	phrase.gsub!(/\b(i)dear\b/i, '\1dea') # idear (so THAT'S where all those "r"'s went!')
	phrase.gsub!(/\b(i)ntahfeah\b/i, '\1nterfere') # doan wanna intahfeah, ya know?

	# J
	phrase.gsub!(/\b(a)?(j)ah\b/i, '\1\2ar') # jah and ajah, like jams and doahs, but not doahjahms. well, maybe.
	phrase.gsub!(/\bjimmies\b/i, 'chocolate sprinkles') # jimmies, just be careful asking for these in NJ
	phrase.gsub!(/\bJP\b/, 'Jamaica Plain') # JP, fastest gentrifying neighbahood

	# K
	phrase.gsub!(/\b(k)eggah?(s)\b/i, '\1eg party\2') # kegga, aka something you throw at ya new apahtment in college
	phrase.gsub!(/\b(k)inda\b/i, '\1ind of') #

	# L
	phrase.gsub!(/(chancel|council|sail|counsel|tai|pah|bache|co|sett)lah\b/i, '\1lor') # lah (words ending in lah are usually "ler", so this looks for the most common ones that should actually be "lor" first)
	phrase.gsub!(/([a-z])+ahbah\b/i, '\1abor') # lahbah (workin' hahd!) also covers hahbah (no taxation without representation, ya dig?!) and other bor words -- targeted rule so general rule doesn't make this "laber"
	phrase.gsub!(/\b(l)abradoah(s)\b/i, '\1abrador\2') # labradoah retrievah
	phrase.gsub!(/\bLe(ay|i)?stuh\b/i, 'Leicester') # Leicester
	phrase.gsub!(/\bLem(o|i)nstah\b/i, 'Leominster') # Leominster
	phrase.gsub!(/\bLight Dawns ovah? Mahblehead\b/i, 'Oh, DUH.') # light dawns ovah mahblehead
	phrase.gsub!(/\b(l)iquah\b/i, '\1iquor') # liquah stoah...aka a packie, tbh
	phrase.gsub!(/\blotta\b/i, 'lot of') # lotta

	# M
	phrase.gsub!(/(ah|gla|hu|ru|tre|tu)mah\b/i, 'mor') # words ending in mah, like rumah, humah (targeted gsub bc most are "mer")
	phrase.gsub!(/\b(m)ajah\b/i, '\1ajor') # majah league baseball
	phrase.gsub!(/\bmasshole\b/i, 'a proud jerk from Massachusetts') # massholes :)
	phrase.gsub!(/\b(m)ayah\b/i, '\1ayor') # Mayah Menino was the best mayah evah. (RIP)
	phrase.gsub!(/\b(Mehfuh|Meffid|Medfid)\b/i, 'Medford') # Meffid. Next to Somerville, home to Tufts
	phrase.gsub(/ministah\b/i, 'minister') # ministah (the religious kind, but also administer, etc)

	# N
	phrase.gsub!(/\b(nawht|naht)\b/, 'not') # naht/nawt
	phrase.gsub!(/\bnooyawka\b/i, 'New Yorker') # Nooyawka, just the kind of person you don't want to meet at Fenway
	phrase.gsub!(/(semi|so|lu)nah\b/i, '\1nar') # "nah" ending words that aren't "ner"...seminah, solah
	phrase.gsub!(/(na-ah|nuh-uh|nuh-ah)/i, 'no way') # nah-ah
	phrase.gsub!(/\bneighbahood\b/i, 'neighborhood') # neighbahood

	# O
	phrase.gsub!(/\b(o)ah\b/, '\1ur') # oah (this is ah (our) city!)
	phrase.gsub!(/(o)ffah/i, '\1ffer') # offah
	phrase.gsub!(/onna(-|\s)?conna/i, 'on account of') # onna-conna I gotta help my ma
	phrase.gsub!(/\bopen ai(r|h)\b/i, 'drive in movie') # open air (drive in movie theatre)
	phrase.gsub!(/(o)thah/i, '\1ther') # othah (and also containing words like anothah or brothah)
	phrase.gsub!(/(o)vah/i, '\1ver') # ovah (and also containing words like covah (at the bah!) rovah or ovahpass)
	phrase.gsub!(/(o)wah\b/i, '\1wer') # owah (all words ending in "ower", powah, flowah, etc)

	# P
	phrase.gsub!(/\bpackie\b/i, 'liquor store') # packie
	phrase.gsub!(/\bpeab('dee|dee|ody)\b/i, 'Peabody') # Peabody
	phrase.gsub!(/\b(p)lenny\b/i, '\1lenty') # plenny ah beahs in the fridge
	phrase.gsub!(/\bpissah?\b/i, 'cool') # wicked pissah
	phrase.gsub!(/\b(Ptown|P-Town|P Town)/i, 'Provincetown') # at the endah tha cape

	# Q
	phrase.gsub!(/\bquality\b/i, 'worthless') # sarcasm at its finest
	phrase.gsub!(/\bQuinzee\b/i, 'Quincy') # Quincy

	# R
	phrase.gsub!(/\b(r)adah?\b/i, '\1adar') # radah (cops runnin the radah around to cawnah)
	phrase.gsub!(/\brahya\b/i, 'rare') # rahya (wicked rahya steak)
	phrase.gsub!(/\b(r)apshah?\b/i, '\1apture') # rapsha (Jesus and/or Red Sox championship parades, either way)
	phrase.gsub!(/\b(r)awregg\b/i, '\1aw egg') # rawregg can give ya salmonella
	phrase.gsub!(/\b(r)eahview\b/i, '\1earview') # reahview (mirror)
	phrase.gsub!(/\b(r)emembah\b/i, '\1emember') # remembah (when govahment centah was open?)
	phrase.gsub!(/\breveah\b/i, 'Revere') # Reveah (as in, Paul. or the beach. or from, kid!)
	phrase.gsub!(/\brotary\b/i, 'traffic circle') # second left on tha rotary

	# S
	phrase.gsub!(/\bsangwich\b/i, 'sandwich') # sangwich
	phrase.gsub!(/\bsa(dda|ti|tih|ta|tah|tuh)d(ay|ee)\b/i, 'Saturday') # Satahday
	phrase.gsub!(/\bsat(a|i)hdiz\b/i, 'Saturdays') # Satahdays
	phrase.gsub!(/\bskeeve(s|d)/i, 'grossed out') # skeeved out by hair in food, lemme tell ya
	phrase.gsub!(/soah\b/i, 'sore') # wicked soah from gettin swole at the gym, bro
	phrase.gsub!(/\b(s)o do(an|n'?t) i\b/i, '\1o do I') # So do(a)n't I!
	phrase.gsub!(/\bsouthie\b/i, 'South Boston') # Southie
	phrase.gsub!(/\bspa\b/i, 'convenience store (family-owned, usually)') # spa (let's go get an italian ice!)
	phrase.gsub!(/\b(co|lode|mega|supah|)?stah\b/i, 'star') # stah (ben affleck/matt damon, need I say moah?)
	phrase.gsub!(/\bsuppah?\b/i, 'dinner') # suppah
	phrase.gsub!(/\bsweet caroline\b/i, 'Sweet Caroline (BUM BUM BUM)') # GOOD TIMES NEVER SEEMED SO GOOOODD

	# T
	phrase.gsub!(/\bthe T\b/i, 'subway') # after this winter, it's a wonder I didn't replace this one with "unusable death trap"
	# "theah" is covered under "h" in the heah substitution
	phrase.gsub!(/\btah\b/i, 'to') # tah (ready tah go!)
	phrase.gsub!(/\btawnic\b/i, 'tonic (soda)') # get a tawnic outta the fridge foh ya fahtah
	phrase.gsub!(/\btempasha(h)?\b/i, 'temperature') # David Epstein says the tempasha should go back up tomarrah.
	phrase.gsub!(/\b(t)ha\b/i, '\1he') # tha
	phrase.gsub!(/thah?\b/i, 'ther') # brothah, fathah, mothah, etc. (matches on 92 english words ending in "ther")
	phrase.gsub!(/\bthi(h)?d\b/i, 'third') # stealin' thihd
	phrase.gsub!(/\bthree deckah?\b/i, 'three story house') # usually three units
	phrase.gsub!(/(pic|ven|lec|cap|adven|sculp|frac|scrip|punc|conjec|rap)sha/i, '\1ture') # sha sound on end of certain "ture" ending words

	# U
	phrase.gsub!(/(u)ndah/i, '\1nder') # undah (including all the words it is a prefix of like undahweah, undahcovah, undahahm, plus bonus containing words like thunder)
	phrase.gsub!(/\b(u)ey\b/i, '\1-turn') # U-turn

	# V
	phrase.gsub!(/\b(v)endah(s)\b/i, '\1endor') # vendah(s) (fenway franks, anybody?)
	phrase.gsub!(/\bvin(yihd|yahd)\b/i, 'Martha\'s Vineyard') # mahtha's vinyihd
	phrase.gsub!(/\b(fahv|fehv|flav|sav|surviv)ah\b/i, '\1or') # "vah" words that are "vor"

	# W
	phrase.gsub!(/\b(w)atah\b/i, '\1ater') # watah (as in "love that dirty")
	phrase.gsub!(/\bwah\b/i, 'war') # wah
	phrase.gsub!(/\bWal(ltham|thumb)\b/i, 'Waltham') # home of Brandeis
	phrase.gsub!(/\bwanna go\?\b/i, 'let\'s fight outside') # wanna go?
	phrase.gsub!(/\b(w)e(eahd|eid|ahd|eihd)\b/i, '\1eird') # weeid
	# wheah is covered under "t"...theah/wheah (as in, dude wheah's my car...oh, under a snowbank where I left it in January 2015!)
	phrase.gsub!(/\bwhole nothah?\b/i, 'a complete replacement') # I gotta whole notha cah
	phrase.gsub!(/\bweah\b/i, 'were') # wheah weah ya?
	phrase.gsub!(/\b(w)eathah\b/i, '\1eather') # wetheah (some weah havin!)
	phrase.gsub!(/\bwicked\b/i, 'really') # wicked (wicked weeid kid)
	phrase.gsub!(/\bwuhst(u|a)h\b/i, 'Worcester') # Worcester

	# X

	# Y
	phrase.gsub!(/\b(y)a\b/i, '\1ou') # ya goin to the game?
	phrase.gsub!(/\b(y)ar(?=\s?i)/i, '\1eah ') # yarit's awesome -> yeah it's awesome
	phrase.gsub!(/\b(y)oah\b/i, '\1our') # yoah

	# Z

	# Last, we're gonna do some broad pickoffs for general sounds common to the Boston accent.
	# This will help translate commonly used words and broadly applicable use-cases. They are
	# a little dangerous without the targeted gsubs above, but with them in place as a filter for
	# uncommon/edge cases, you should get good results.

	phrase.gsub!(/atah(s)?\b/i, 'ator\1') # "atah" (words ending in "ator"...decoratah, delegatah)
	phrase.gsub!(/(a)wl(l)?/i, '\1l\2') # "awl" (going to the mawll, fawllin' down, cawll ya mothah etc)
	phrase.gsub!(/bah(s)?\b/i, 'ber\1') # "bah" (words ending in bah...bahbah). Works b/c only 30ish words in English end in ber, & targeted gsubs are used above for them.
	phrase.gsub!(/cah(s)?\b/i, 'cer\1') # "cah" (words ending in cer are more common than car or cor, targeted gsubs for the latter two are above)
	phrase.gsub!(/dah(s)?\b/i, 'der\1') # "dah" (words ending in dah...chowdah?).
	phrase.gsub!(/eah(s)?\b/i, 'ear\1') # "eah" (words ending in eah...yeah, cleah)
	phrase.gsub!(/fah(s)?\b/i, 'fer\1') # "fah" (words ending in fer...offah?).
	phrase.gsub!(/gah(s)?\b/i, 'ger\1') # "gah" (words ending in ger...swaggah?).
	phrase.gsub!(/ha(h)?(s)?\b/i, 'her\2') # "gah" (words ending in ger...swaggah?).
	phrase.gsub!(/iah(d)?/i, 'ire\1') # "iahd" (words ending in ire...tiahd, wiahd or ired...fiahd)
	phrase.gsub!(/in'(?=\z|\s)/i, 'ing') # "in'" (words ending in ing...bring back the g!).
	phrase.gsub!(/kah(s)?\b/i, 'ker\1') # "kah" (words ending in ker...smokah)
	phrase.gsub!(/lah(s)?\b/i, 'lar\1') # "lah" (words ending in lar...molah, pillah)
	phrase.gsub!(/mah(s)?\b/i, 'mer\1') # "mah" (words ending in mer...swimmah, homah)
	phrase.gsub!(/nah(s)?\b/i, 'ner\1') # "nah" (words ending in ner...gonah, runnah)
	phrase.gsub!(/layah(s)?\b/i, 'lare\1') # "layah" (words ending in lare..flayah, declayah)
	phrase.gsub!(/(o)ah(s)?/i, '\1re\2') # "oah" (stoah, moah)
	phrase.gsub!(/pah(s)?\b/i, 'per\1') # "pah" (words ending in "pah"...helpah, peppah, whispah, developah...which I am totally going to be after I win this contest and become...a launchah!)
	phrase.gsub!(/sah(s)?\b/i, 'ser\1') # "sah" (words ending in ser...think about ya usah in the browsah)
	phrase.gsub!(/tah(s)?\b/i, 'ter\1') # "tah" (words ending in ter...watah)
	phrase.gsub!(/uahd(s)?\b/i, 'ured\1') # "uahd" (words ending in ured...figuahd, injuahd)
	phrase.gsub!(/vah(s)?\b/i, 'ver\1') # "vah" (words ending in ver...ovah, rivah)
	phrase.gsub!(/wah(s)?\b/i, 'wer\1') # "wah" (words ending in wer...lawnmowah, towah)
	phrase.gsub!(/xah(s)?\b/i, 'xer\1') # "xah" (words ending in xer...boxah, mixah)
	phrase.gsub!(/yah(s)?\b/i, 'yer\1') # "yah" (words ending in yer...foyah, lawyah)
	phrase.gsub!(/zah(s)?\b/i, 'zer\1') # "zah" (words ending in zer...organizah, seltzah)

	phrase.gsub!(/aw/i, 'o') # this one is super broad...tawnic/gawd/etc
	phrase.gsub!(/ah(?!\b)+/, 'ar') # this one should always run last because it's so broad, but it will clean and cover a ton more cases than can be thought up individually


	# Finally, there is some stuff we just will NOT abide by in the Beantown Translation Machine.

	phrase.gsub!(/\b(A-Rod|Eli Manning|Peyton Manning|the Jets|Bill Buckner|snow|disabled train|severe delays in service|parking ban|commuter rail)\b/i, '[REDACTED]') # Redact it like the FBI releasing an embarrassing document, okay?
	phrase.gsub!(/\bYankees\b/i, 'Yankees (suck!)') # Yankees suck okay?
	phrase.gsub!(/\bJohnny Damon\b/i, 'He who shall not be named') # Looks like Jesus, talks like Judas, throws like...someone who can't throw because that's just rude to Mary.

	puts "They said: " + phrase

	# Special "How Boston Are YOU?" Beantown Points score for experts! Only shows up for users who earn at least two points.

	if beantown_points >= 15
		puts "How Boston Are YOU?: WICKED LEGIT! Ah you from Reveah, kid?! You're as Boston as baked beans and clam chowdah without tomatoes. Hit up that packie, it's time for a toast!"
	elsif beantown_points < 15 && beantown_points >= 10
		puts "How Boston Are YOU?: Solid work! You probably yell \"Yankees Suck\" at sporting events where the Yankees aren't even playing. You drink your watah from a bubblah. We salute you."
	elsif beantown_points < 10 && beantown_points >= 5
		puts "How Boston Are YOU?: Alright, now we're getting somewhere. This is pretty Boston, we'll admit. Just don't try to pahk ya cah in Hahvahd Yahd, or you'll get towed, alright?"
	elsif beantown_points >=2 && beantown_points < 5
		puts "How Boston are YOU?: Solid effort, but you need to hit the Pike and go back wheah ya came from, kid."
	end

	play_again

end # end of translator function

puts "Welcome to The Beantown Translation Machine, aka the Society for Lost and Lonely \"R\"'s, written by ML Gore, NH transplant and confirmed Dot Rat. When prompted, enter a Boston phrase."

translator
