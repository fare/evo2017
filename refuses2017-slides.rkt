#lang at-exp racket @; -*-
#|
Computing, from Creationism to Evolutionism

Slides for presentation at SDR 2017 in Brussels, 2017-04-04

To compile it, use:
  racket refuses2017-slides.rkt > refuses2017-slides.html

This document is available under the bugroff license.
  http://www.oocities.org/soho/cafe/5947/bugroff.html
|#

(require scribble/html)
(require net/url)

;; http://docs.racket-lang.org/scribble/extra-style.html

;; Reveal and new html stuff
(define/provide-elements/not-empty section video) ; more tags here
(define-values [get-slides slide]
  (let ([slides '()])
    (values (λ () (reverse slides))
            (λ stuff (set! slides (cons (apply section stuff) slides))))))

;; Quick helpers
(define-syntax-rule (defcodes lang ...)
  (begin (define (lang . text) (pre (code class: 'lang text)))
         ...))
(defcodes scheme javascript haskell)

(define (pic-url name url)
  (let ((file (string-append "resources/pic/" name)))
    (unless (file-exists? file)
      (define out (open-output-file file #:exists 'truncate))
      (call/input-url (string->url url)
                      get-pure-port
                      (λ (in) (copy-port in out)))
      (close-output-port out))
    file))

(define (reveal-url . text)
  ;; (cons "http://cdn.jsdelivr.net/reveal.js/3.0.0/" text)
  (cons "resources/reveal/" text))

(define (L . x) (div align: 'left))
(define (C . x) (div align: 'center x))
(define (CB . x) (C (b x)))

(define (url x) (a href: x (tt x)))
(define (comment . x) '())

(define (image name url . size)
  (img src: (pic-url name url) alt: name height: (if (empty? size) "75%" size)))

@slide{
 @h1{Computing, from Creationism to Evolutionism}
 @CB{Logogonies and Anthropodicies}
 @p{}
 @p{François-René Rideau, @em{TUNES Project}}
 @p{Salon des Refusés, 2017-04-04}
 @p{}
 @url{http://github.com/fare/evo2017}
}

@slide{
 @h1{Introduction}
 @image["intro.jpg" "http://i.prs.to/sm/ft/orig/mds-IMC1426_2.jpg"]
 @comment{Transition:
Let's start with a quick introduction
}}

@slide{
 @h1{Stories}
 @image["stories.jpg" "https://www.readingrainbow.com/wp-content/uploads/princess-bride-grandfather.jpg"] @;{Reading session from Princess Bride}
 @comment{Who here likes stories?}
 @comment{Transition:
And what are the most thrilling stories?
}}

;; Optional: collage of film posters & book covers

@slide{
 @h1{Origin Stories}
 @image["Spiderman.jpg" "http://vignette2.wikia.nocookie.net/toonami/images/5/52/Spider-Man.jpg/revision/latest?cb=20131016205454"]
 @comment{Transition:
But an epic has only one origin.
So when it starts getting boring, what do you do?
}}

@slide{
 @h1{Reboots}
 @image["Amazing_Spiderman.jpg" "http://2.bp.blogspot.com/-F__DShDtSRA/UIRl5umYquI/AAAAAAAAELE/ciyVegn8MS8/s1600/The-Amazing-Spider-Man.jpg"]
 @comment{Transition:
And so, what is the grandest of all Origin Stories?
}}

@slide{
 @h1{The Origin of the World}
 @image["Creation_Man.jpg" "http://imgc.artprintimages.com/img/print/michelangelo-buonarroti-creation-of-adam-detail_a-g-8492988-0.jpg?w=947&h=633"]
 @;; "http://vignette1.wikia.nocookie.net/powerlisting/images/2/28/God-creation.jpg/revision/latest?cb=20120927140355"
 @C{a.k.a. Cosmogony}
 @comment{Transition:
Now inseparable from Cosmogony, there is
}}

@slide{
 @h1{Theodicy}
 @image["Theodicy.jpg" "https://upload.wikimedia.org/wikipedia/commons/d/d0/Th%C3%A9odic%C3%A9e_title_page.jpeg"]
 @comment{Transition:
Anyone knows what Theodicy is?
}}

@slide{
 @h1{Trial of God}
 @image["god_sprinkling_assholes.jpg" "http://i.imgur.com/pN0bf.jpg"]
 @comment{God put on trial, to explain why there is evil in this world.}
 @comment{Transition:
Now, I'm here at all to tell you anything about Cosmogony or Theodicy.
I don't have much to add to these age old debates,
and that's not what you've paid good money to hear, either.
and what I'm here to tell you is
}}

;;@slide[data-background: @pic-url["napoleon.jpg" "https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/El_tres_de_mayo_de_1808_en_Madrid_(2008).jpg/1280px-El_tres_de_mayo_de_1808_en_Madrid_(2008).jpg"] data-background-size: "100%"]
@slide{
 @h1{Logogony and Anthropodicy}
 @image["napoleon.jpg" "https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/El_tres_de_mayo_de_1808_en_Madrid_(2008).jpg/1280px-El_tres_de_mayo_de_1808_en_Madrid_(2008).jpg" "60%"]
 @CB{The word @q{impossible} is not in my dictionary — Napoleon}
 @comment{Don't go a-googling for a dictionary, I made up these words.}
 @comment{Transition:
A logogony is:
}}

@slide{
 @h1{Logogony: Story of Origins of Software}
 @image["evolution_man_computer.jpg" "http://www.funbodytherapy.com/wp-content/uploads/2015/03/evolution-of-man-to-computer.jpg"]
 @;; @image["Creation_Machine" "https://cdn.searchenginejournal.com/wp-content/uploads/2015/07/shutterstock_28130593-1.jpg"]
 @comment{Transition:
and of course an Anthropodicy is:
}}

@slide{
 @h1{Anthropodicy: the Trial of Man}
 @image["drunk_programmer.jpg" "https://qph.ec.quoracdn.net/main-qimg-b13f488f613ed61dedabfe75d81aab4a"]
 @comment{
The Trial of Man, to explain why there are software defects.
}
 @comment{Transition:
As you see, my stories are
}}

@slide{
 @h1{Not about God(s) creating Man}
 @image["aztec_human_sacrifice.jpg" "http://www.freedomfeens.com/blog/wp-content/uploads/2013/09/image3.jpg"]
 @comment{Transition:
They are about
}}

@slide{
 @h1{About Man (Men) creating Software}
 @image["pitr_root_god.gif" "http://www.userfriendly.org/cartoons/archives/98nov/uf000041.gif"] @;; http://ars.userfriendly.org/cartoons/?id=19981111
 @comment{Transition:
Plus, this is a Computer Science (haha) conference,
and I wouldn't want to offend any of you for your deepest beliefs,
one way, or the other.

And to illustrate how the cases are NOT always analogous,
}}

@slide{
 @h1{Does Man Exist?}
 @image["caza_stargazing_robot.jpg" "http://25.media.tumblr.com/tumblr_ls25q7vE0I1qc82mfo1_500.jpg"]
 @comment{
There is usually no question whether there is a Man.
Or is there?
}
 @comment{Transition:
And so without further ado, our first and simplest Logogony...
}}

@slide{
 @h1{Simplest Logogony}
 @;@image["hello_world.jpg" "https://i.ytimg.com/vi/iyc-DDv0cQY/hqdefault.jpg"]
 @C{Software exists because...}
 @comment{
}
 @comment{Transition:
What is the simplest logogony you can come up with?
Come on!
[Too complex!]
}}

@slide{
 @h1{Man wrote it!}
 @;;@image["smashing_head.gif" "http://www.millsworks.net/blog/wp-content/uploads/2009/04/writing_process.gif"]
 @;;@image["brian_kernighan.jpg" "http://www.the9gag.com/images/pictuers/brian_kernighan_coinventor_of_c_programming_language.jpg"]
 @;; @image["engelbart_keyboard" "http://www.loper-os.org/wp-content/mw/motd_ui.jpg"]
 @image["Ada_Lovelace.jpg" "https://upload.wikimedia.org/wikipedia/commons/a/a4/Ada_Lovelace_portrait.jpg"]
 @comment{
Or woman, anyway.
}
 @comment{Transition:
I call this logogony
}}

@slide{
 @h1{Instant Creationism}
 @image["Creation_Machine.jpg" "https://cdn.searchenginejournal.com/wp-content/uploads/2015/07/shutterstock_28130593-1.jpg"]
 @;;@image["instant_noodles" https://notallowedto.com/wp-content/uploads/2015/06/instant-noodles.jpg"]
 @comment{
Fiat Lux, et Lux Fit.
Don't laugh!

Not only do many people believe in this programming paradigm,
it's verily what is taught to all first year students in all universities:
Think hard, write a 15 line program that does X, and you'll get an A.
Or fail, and you're not a real programmer.
And this logogony adequately describes their situation indeed!
}
 @comment{Transition:
Now in this logogony, the only programming tool you ever need is...?
}}

@slide{
 @h1{Only Tool: Pen and Paper}
 @image["quill.jpg" "https://fruttidiboscoblog.files.wordpress.com/2016/11/scrivere.jpg?w=700&h=340&crop=1"]
 @comment{
Dijkstra would be proud.
}
 @comment{Transition:
Of course, small detail, you also need...
}}

@slide{
 @h1{Also (detail): A switchboard}
 @image["ENIAC_switchboard.gif" "http://www.hp9825.com/assets/images/ENIAC.gif"]
 @comment{
a switchboard, but it's not for the programmers, only for the small hands who operate machine.
}
 @comment{Transition:
But now for the
}}

@slide{
 @h1{Simplest Anthropodicy}
 @C{There are software defects because of...}
 @comment{
If software is simply written by the perfect all-knowing programmer,
why are there defects?
}
 @comment{Transition:
What is the simplest story you can find?
One that is indeed taught to every beginning programmer?
One that verily gives its common name to the notion?
}}

@slide{
 @h1{Bugs!}
 @image["first_bug.jpg" "http://rur-ple.sourceforge.net/images/first_bug.jpg"]
 @comment{
Yes, BUGS!
In other words, MONSTERS.
Small or big, they lurk on the prowl,
ever ready to attack your programs, corrupt their meaning, kill their processes.
}
 @comment{Transition:
And of course, behind all these bugs, there is...
}}

@slide{
 @h1{The Devil}
 @image["mephisto_grande_vadrouille.jpg" "http://www.fufuworld.com/data/contents/common/photos/vadrouille/grande-vadrouille-010-mephisto-devil.jpg"]
 @;; Better, but to crop: http://nimotozor99.free.fr/photos/octobre%202009/bodoin-dieuvousgarde.JPG"]
 @comment{
The devil.
The simplest explanation for bugs is just
the loyal (or disloyal) opposition to the Perfect Programmer-God.
Whether it's a separate entity, a second personality of God, or the absence of God,
it doesn't matter much at this point.
What matters is, bugs denote the presence of this Evil Force.
}
 @comment{Transition:
And to fight the Devil you have...
}}

@slide{
 @h1{Real Tools!}
 @image["Punchcard.jpg" "https://homepage.divms.uiowa.edu/~jones/cards/collection/chicago.jpg"]
 @comment{
Punchcards, Blinkenlights and Parity bits.
Adhesive tape to fix the punchcards.
This way you can double and triple check that the Programmer-God's intent
is not being tampered with by the Devil.
}
 @comment{Transition:
We have also...
}}

@slide{
 @h1{The first programming language!}
 @image["assembler.jpg" "https://images-na.ssl-images-amazon.com/images/I/51QGNrm3cKL._SX352_BO1,204,203,200_.jpg"]
 @comment{
Assembly code! Because you don't want to recompute all those addresses and jump offsets by hand
when the devil makes you insert or delete some code.
}
 @comment{Transition:
Which leads to the main point of this talk:
}}

@slide{
 @CB{Better Stories = Better Tools}
 @comment{
Every time you improve your stories on how software happens,
you'll get an improved set of tools to make this software happen.
}
 @comment{Transition:
And one way we can always improve on a story is...
}}

@slide{
 @h1{The Devil Mixin}
 @pre{trait WithDevil extends Logogony}
 @comment{
Spice it up with some opposition.
Understand better what forces the programmer is facing.

And that's our first meta-tool.
}
 @comment{Transition:
But of course every story has its limits
}}

@slide{
 @h1{The limits of Instant Creationism}
 @;;; TODO: Nietzsche with his head open and Athena springing forth?
 @;; @image["Nietzsche_God_is_Dead.jpg" "http://www.nedmartin.org/v3/amused/_img/nietzsche-is-dead.jpg"]
 @image["athena_fully_armed.jpg" "https://s-media-cache-ak0.pinimg.com/originals/7b/f5/be/7bf5becc11fccb7eed16afd185b4a314.jpg"]
 @comment{
Instant Creationism adequately explains tiny programs,
but non-trivial programs just do not spring fully armed from the head of Man-piter.
}
 @comment{Transition:
Now we're ready for our second simplest logogony:
}}

@slide{
 @h1{Layered Creation}
 @p{On day 1, Man separated requirements from bugs.}
 @p{On day 2, Man divided the program into routines.}
 @p{...}
 @p{On day 7, Man rested as the demo ran flawlessly.}
 @comment{
In a more refined logogony, Man still has an essentially perfect idea of the Program,
but imperfections of the Machine require creation in multiple, neatly organized layers:
}
 @comment{Transition:
And this logogony leads to new conceptual tools:
}}
@slide{
 @h1{Flow Charts}
 @image["Flow_chart.png" "https://imgs.xkcd.com/comics/flow_charts.png"]
 @comment{
Flow charts
}}
@slide{
 @h1{Top-Down Design}
 @image["waterfall_process.jpg" "https://embeddedsystemsvvce.files.wordpress.com/2013/02/waterfall-copy1.jpg"]
 @comment{
Top-Down Design, the Waterfall Process
}}

@slide{
 @h1{Algorithms: Divide and Conquer}
 @image["Quicksort_in_FORTRAN.png" "http://cdn-ak.f.st-hatena.com/images/fotolife/f/fortran66/20120504/20120504023430.png"]
 @comment{
divide-and-conquer algorithms
}
 @comment{Transition:
And of course, in terms of programming languages,
}}
@slide{
 @h1{FORTRAN}
 @; TODO: A FORTRAN program with the Y2K bug
 @image["FORTRAN.jpg" "http://www-03.ibm.com/ibm/history/ibm100/images/icp/P207404P85828E07/us__en_us__ibm100__fortran__board_game__620x350.jpg"]
 @comment{
FORTRAN as a layer on top of Assembly.
}
 @comment{Transition:
Unhappily, the Devil is at work at each of the steps of our nice Waterfall process, and so...
}}

@slide{
 @h1{Layered Creation with a Devil}
 @image["iterative_waterfall.jpg" "https://www.ibm.com/developerworks/rational/library/content/04March/3070/3070_fig1.jpg"]
 @comment{
We must Rinse, Lather and Repeat the steps in the Waterfall process, until we get it right.
}
 @comment{Transition:
In other words, we have
}}

@slide{
 @h1{Iterated Creation}
 @image["debian_release_timeline.png" "https://upload.wikimedia.org/wikipedia/en/timeline/2b2aef2723eb88baaa5e89bb59f2890c.png"]
 @comment{
Many releases from prototype to alpha, beta, and hopefully stable versions.
And yet still patch releases afterwards. (Be worried when the releases stop.)
}
 @comment{Transition:
Each version is limited in resources and has to make tough choices and compromises that...
}}

@slide{
 @h1{Fossils}
 @image["fossils.gif" "http://science.halleyhosting.com/sci/soph/CIM/geology/layers2.gif"]
 @comment{
leave behind a layer of code fossils that you may discover when you dig in the source code.

Code constantly has to deal with backward compatibility, path dependance, choices from the past.
@;; Like, why do some style guides recommend 80 character limit per line or less.
}
 @comment{Transition:
There is thus yet another way to look at this logogony...
}}

@slide{
 @h1{Intelligent Design}
 @;;@image[Mythical Man Month picture of an IBM team ? Or of Dijkstra ?}
 @image["dijkstra.jpg" "http://cs-exhibitions.uni-klu.ac.at/fileadmin/template/pictures/Dijkstra_con.jpeg"]
 @;; https://medium.com/the-almanac/we-started-a-software-book-club-cea1b04c934
 @comment{
In the logogony of Intelligent Design,
Man cannot create entire software systems in one act,
if only because of the sheer amount of work required.
Instead Man creates software in many steps,
starting from foundations, building layers upon layers,
bootstrapping complex structures from simpler ones,
shaping tools and tool-making infrastructures,
replacing parts with better ones as the need and opportunity arises,
building scaffolding that is destroyed later possibly leaving fossils along the way
— all according to a carefully designed master plan.
}
 @comment{Transition:
This logogony is very popular among software professionals,
maybe even prevalent at least in recruiting circles, because
}}
@slide{
 @h1{Ego Boost}
 @;; Some genius programmer picture?
 @;; http://knowyourmeme.com/memes/strutting-leo
 @image["di_caprio_strut.jpg" "http://i0.kym-cdn.com/photos/images/original/000/070/279/leostrutoriginal.jpg"]
 @;; 
 @comment{
It's flattering.
It puts professional developers in a category above the beginner and the amateur:
they understand the difficulty of the task,
of which they remain the intelligent masters.
}
 @comment{Transition:
And this logogony brings a great number of tools:
}}

@slide{
 @h1{Structured Programming}
 @image["ALGOL.jpg" "https://upload.wikimedia.org/wikipedia/en/thumb/3/35/Algol68RevisedReportCover.jpg/220px-Algol68RevisedReportCover.jpg"]
 @comment{
ALGOL and its descendents
Algebraic data structures
}
 @comment{Transition:
And it's not just about structure in programs, but structure around programs:
}}

@slide{
 @h1{Programming Infrastructure}
 @image["Plumbing.jpg" "http://azoony.com/hattrips/nasa/b2-facility/support-plumbing.jpg"]
 @comment{
operating systems
compilers
compiler compilers
build systems
modelling tools
hierarchically layered systems
the *iterated* waterfall process
release cycles
}
 @comment{Transition:
And these are all great tools to have.

And so now is time for our next story mixin:
}}

@slide{
 @h1{Polytheism}
 @;;@image[Surgical team? }
 @;; http://www-03.ibm.com/ibm/history/ibm100/us/en/icons/fortran/"
 @image["fortran_team.jpg" "http://www-03.ibm.com/ibm/history/ibm100/images/icp/N847674I31813W60/us__en_us__ibm100__fortran__25_reunion__620x350.jpg"]
 @comment{
Or maybe polyanthropism more accurate there
There is not a One Man or one Woman writing software, but many of them, collaborating.
In the Intelligent Design paradigm, they will be organized hierarchically.
But really the mixin is applicable to all logogonies.
In some variants, the multiple Authors could be facets of the same Author,
who changes through time, or has some multiple personality disorder.
But in any cases, different kinds of authorship can be clearly distinguished.
}
 @comment{Transition:
XXX
}}

@slide{
 @h1{Polyanthropistic Tools}
 @image["File_hierarchy.gif" "http://www.roma1.infn.it/SIC/_OLD_documentazione/unix/migr/digital-unix-doc/DOCUMENTATION/HTML/AA-PS2RD-TET1_html/zk-0851U.gif"]
 @comment{
Files, directories.
Timesharing
Comments, documentation
Communication protocols
}
 @comment{Transition:
Of course you can combine the polytheism mixin with the devil mixin
}}

@slide{
 @h1{Polytheism + Devil = Titanomachy}
 @;; http://www.chiark.greenend.org.uk/~douglasr/ftp/titanomachy/v0.1/titanomachy-rules.html
 @;; http://magickalgraphics.com/Graphics/Occult/Gods/god18.jpg
 @;; https://www.linkedin.com/pulse/20140526231345-105475546-sneakers-a-1992-movie-made-for-today
 @image["sneakers.jpg" "https://media.licdn.com/mpr/mpr/p/1/005/063/2b2/3b25602.jpg"] @; https://www.linkedin.com/pulse/20140526231345-105475546-sneakers-a-1992-movie-made-for-today
 @comment{
Clash of olympians and titans, of norse gods and giants.
Remind us that religious wars are not just between Emacs and VI
And there again, the devil can be an opposition team (pictured)
or it can be a split personality, a bad tendency, etc.
}
 @comment{Transition:
In any case, this leads to new tools:
}}

@slide{
 @h1{Access Control}
 @image["Enter_Password.png" "http://assistly-production.s3.amazonaws.com/13393/portal_attachments/49128/Screen%20Shot%202012-05-22%20at%2011.46.27%20AM_original.png?AWSAccessKeyId=AKIAJNSFWOZ6ZS23BMKQ&Expires=1491369066&Signature=SRL75mXGq%2BsTmhDg2FyUAMr1ycU%3D&response-content-disposition=filename%3D%22Screen%20Shot%202012-05-22%20at%2011.46.27%20AM.png%22&response-content-type=image%2Fpng"]
 @comment{
Access control,
but also code review,
backups,
cryptography,
or just errata to documentation
and pages intentionally left blank
}
 @comment{Transition:
And yet, even after we factor these all out,
we find that code sucks,
that the best development teams reach their limits.
Not only do programmers introduce bugs,
they pursue altogether nonsensical goals
they use absurd methods.

It is preposterous to assume programmers are intelligent, really,
which leads us to our next logogony,
}}

@slide{
 @h1{Unintelligent Design}
 @;; @image["dunces" "http://www.groveatlantic.com/?title=A%20Confederacy%20of%20Dunces"]
 @;; https://rforcats.net/assets/img/programmer.png
 @image["puppy_coding.png" "https://cdn-images-1.medium.com/max/600/1*snTXFElFuQLSFDnvZKJ6IA.png"]
 @;; @image["Elephant_23" "http://www.theshrubbery.com/udn/elephant.gif"]
 @;; @url{http://www.theshrubbery.com/udn/}
 @comment{
The programmer-God may have good or bad intent,
he also has "bounded rationality" (to put it mildly).
}
 @comment{Transition:
And recognizing that, while it depresses the programmer's ego,
leads to new tools:
}}

@slide{
 @h1{Prosthetic Devices}
 @image["puppy_glasses.jpg" "https://hackbrightacademy.com/content/uploads/2016/01/puppy-coding.jpg"]
 @comment{
prosthetic devices for our human limitations, like glasses.
tools that help us cope with our limitations and deficiencies.

meaningful error messages
syntax checkers, highlighters, formatters, editors
types as error-finding or error-correcting codes, not just as design guides
interactive help and manuals
development environments

with polytheism, organizationally:
dividing code into modules small enough to fit a brainful,
and what more with interfaces much smaller than their contents
to keep these interfaces small, polymorphism, both parametric and ad hoc

with devil:
testing
contracts
tripwires, security through obscurity -- happily, the devil is often an idiot, too.
}
 @comment{Transition:
While these are all essential tools,
}}

@slide{
 @h1{Idiot Proofing}
 @image["idiot_proof.png" "http://cdn.someecards.com/someecards/usercards/1340137958320_250077.png"]
 @comment{
In the end, they are never sufficient.
}
 @comment{Transition:
But we can recognize a pattern:
}}

@slide{
 @CB{Better tools comes from Humility}
 @comment{
Each of my stories takes the Programmer one notch down from his pedestal.
But it's precisely acknowledging Man's limitations that leads to improving our development tools.
}
 @comment{Transition:
And one of the limitations I'm addressing is
}}
@slide{
 @h1{Hypocrisy}
 @image["pinocchio.jpg" "https://cdn2.tnwcdn.com/wp-content/blogs.dir/1/files/2013/12/Pinocchio_Lying.jpg"]
 @comment{
Programmers advertize themselves as intelligent designers.
We lie to themselves and each others.
But the tools we use demonstrate that deep down we understand we're unintelligent.
What we do speaks louder than what we say.
And if we take our actions more seriously and our propaganda less seriously,
we can probably improve on all our tooling.
}
 @comment{Transition:
But how far do we programmers have to humiliate ourselves before we see the naked truth
about the origins of Software?
Before I answer this question, I need to introduce a change of point of view...
}}

@slide{
 @h1{Lamarkism}
 @image["Larmakism.jpg" "http://etics.esl.eng.it/wiki/images/f/f2/Sw_relase_id.jpg"]
 @comment{
Lamarkism at its core offers no explanation as to how software does or doesn't happen.
Instead it takes the focus away from the state of the code to *changes* to the code.
With this change of focus, we ask different questions:
not how software happens, but how software changes happen.
}
 @comment{Transition:
And with it come new tools:
}}

@slide{
 @h1{Tools from Lamarkism}
 @;; https://xkcd.com/1597/
 @image["version_control.png" "https://imgs.xkcd.com/comics/git_2x.png"]
 @comment{
diff, patch, version control.

with polytheism: DVCS

with devil: code review for pull requests
}
 @comment{Transition:
But there are other applications to thinking differently about change
}}

@slide{
 @h1{Incrementality}
 @image["elephant.png" "http://www.joshuanhook.com/wp-content/uploads/2015/10/how_do_you_eat_an_elephant.png"]
 @comment{
Incremental builds
Functional Reactive Programming
Code differentiation
Data structure derivatives
Feature planning
Security patches
}
 @comment{Transition:
And once you start asking why some *changes* are successful and others are not,
you enter the realm of
}}

@slide{
 @h1{Evolutionism}
 @image["evolution.png" "https://i.kinja-img.com/gawker-media/image/upload/s--B_M7EaKb--/c_scale,f_auto,fl_progressive,q_80,w_800/18lu0b9r5g4j0png.png"]
 @comment{
Evolutionism
Obviously, as Men write changes,
they find that some are "better" and others are "worse".
And so they keep the better ones and winnow the worse ones.
}
 @comment{Transition:
This naive theory of evolution is called
}}

@slide{
 @h1{Supernatural Selection}
 @image["selection.jpg" "http://mig-laptopy.pl/wp-content/uploads/2014/09/jakiego-laptopa-kupic.jpg"]
 @comment{
Supernatural Selection
In this logogony, the programmer is still a superior god.
But he admits defeat as to finding all the perfect answers.
Instead, he has the perfect way to *judge* answers.
He can design the perfect fitness function.
}
 @comment{Transition:
This new logogony immediately brings new tools:

}}

@slide{
 @h1{Tools from Supernatural Selection}
 @image["norbert_wiener.jpg" "http://dazedimg.dazedgroup.netdna-cdn.com/786/azure/dazed-prod/1060/8/1068945.JPG"]
 @comment{
Formal specs to describe the perfect goals that the imperfect software must fulfill.
Heuristic search strategies to explore spaces too large to exhaust.
The two combined,
ever more Declarative programming, where you specify WHAT to compute not HOW to compute it.
Taking code from one phase to the next, metaprogramming.

Organizationally, prototyping to make more mistakes faster.
Developer communities to spread the good code and ideas.
Conferences, journals

Security: scanning

In terms of ideas, this has led to the "First Wave of Cybernetics".
}
 @comment{Transition:
But of course, soon enough, Programmers find that in general
they aren't intelligent enough to design fitness functions,
and so our next logogony is:
}}

@slide{
 @h1{Teleological Evolution}
 @image["teleological.jpg" "http://scienceblogs.com/pharyngula/wp-content/blogs.dir/470/files/2012/04/i-b525b4f3029d08b192b58a93749ea850-chick1.jpg"]
 @comment{
Teleological Evolution is unintelligent design for fitness functions.
Programmers may have an overall intelligent coherent purpose,
but their knowledge of even that is partial.
Intuition and luck matter on the path to progress.
}
 @comment{Transition:
And soon we reach better tools
}}

@slide{
 @h1{Tools from Teleological Evolution}
 @image["genetic_clocks.jpg" "https://i.ytimg.com/vi/mcAq9bmCeR0/hqdefault.jpg"]
 @comment{
Genetic Algorithms
Supervised learning neural network
Probabilistically Approximately Correct learning methods

Weakly structured computations
Data mining from large databases.
randomized algorithms

we accept that security is an arms races
probabilistic proofs rather than formal proofs

organizationally, aiming for "good enough"
user communities, not just developers
reliance on distributed knowledge
}
 @comment{Transition:
But this is still not enough
}}

@slide{
 @h1{Still not Humble Enough}
 @image["humiliation.jpg" "https://cdn.shopify.com/s/files/1/0535/6917/products/humiliationdemotivator.jpeg?v=1403276016"] @; http://demotivators.despair.com/demotivational/humiliationdemotivator.jpg
 @comment{
Recognizes that software development is bigger than human cognition can fathom,
but still has faith in the ultimate power of human reason and collective action.
It is still ultimately Man's conscious intent that drives the evolution of Software.
}
 @comment{Transition:
Only when we let go of this pretension do we reach actual Software Darwinism, or
}}

@slide{
 @h1{Natural Selection}
 @CB{A tautology is a statement that is tautological}
 @comment{
Survival of the fittest does not suppose an external criterion
as to which software change will survive.

Instead survival is its own tautological fitness function, cold and merciless.
those software changes that survive and propagate, survive and propagate
those software changes that fail to survive and propagate, fail to survive and propagate

It has no attachment to any other evaluation.
No scientific adherence to anything but itself.

Still, statistically, if some classes of changes improve their own odds at surviving and propagating
more than others, they will indeed tend to survive and propagate more than others,
until they occupy their niche.
Conversely, changes that have a comparatively negative impact
on their own survival in their surrounding context will tend to disappear from that context.
}
 @comment{Transition:
This changes the question
}}

@slide{
 @h1{Cui bono?}
 @image["selfish_meme.png" "https://pics.onsizzle.com/selfish-rt-excusethepuns-selfish-2596637.png"]
 @comment{
The question is not "is this change good for the humans?"
The question is "is this change good for its own propagation?"

Horribly bad software changes may survive if they can seduce programmers into keeping them.
Technically great software changes may forever disappear.
Junk code and incidental complexity can accumulate over long periods.

Some parasitic changes can even be lethal to their host,
yet propagate from host to host before (or after) their effect is felt.
Some changes may drive programmers into idiots who will propagate them to their own detriment.
At other times, parasitic relationships can be tamed into symbiosis.
}
 @comment{Transition:
Through all this, the picture for the programmer is bleak
}}

@slide{
 @h1{A Pawn in Software Evolution}
 @image["pawn.jpg" "http://www.officepolitics.com/images/pawn.jpg"]
 @comment{
This freewheeling software evolution makes a mockery of Manly Intervention.
An Intelligent Man as well as a Madman is but a pawn in evolution.
Man is an entity above Software;
he is just a different kind of bundle of self-reproducing software traits,
competing to exploit the limited resources of the universe.
}
 @comment{Transition:
Certainly, as compared to other bundles of self-reproducing software traits,
Men are unique and different.
}}

@slide{
 @h1{Tools from Natural Selection}
 @image["all_individuals.jpg" "https://s-media-cache-ak0.pinimg.com/564x/8d/90/77/8d9077ed3273c3bea9bb2131dfda316e.jpg"]
 @comment{
Of course you're unique and different, just like everyone else!

That won't save you in this robot-eats-robot world
If you do whatever the hell will make some of your traits survive and propagate,
they will survive and propagate.
If you don't, they won't, and they will be forgotten and replaced by others.
}
 @comment{Transition:
And this takes us back to that first question we had
}}

@slide{
 @h1{Does Man Exist?}
 @image["caza_stargazing_robot.jpg" "http://25.media.tumblr.com/tumblr_ls25q7vE0I1qc82mfo1_500.jpg"]
 @comment{
Of course there IS a Man.
But Man is no God.
And whatever God does or doesn't exist, He is not Man.
And He doesn't care to write sacred software --- not that runs on any of Man's computers, at least.
For Him, Software Evolution is spectator sports at best.
He doesn't control it or actively guide it.
The Man who thinks he is a God in control of Software is deluded.
He is just a competitor amongst others.

And THAT, my dear colleagues is real Software Darwinism,
it's what we really mean when we talk of Evolution.
}
 @comment{Transition:
But there are some upsides
}}

@slide{
 @h1{Darwinistic Tools}
 @image["game_of_life_glider_gun.jpg" "http://www.edshare.soton.ac.uk/948/5/intro/glidergun.jpg"]
 @comment{
There are a few actual software techniques that come with Darwinism:
Artificial Life
Unsupervised learning with competitive survival of models as their main fitness function
The Third Wave of Cybernetics

In security, understanding that the opposing forces are natural and human,
subject to learning, retaliation, networks of friends, etc.
}
 @comment{Transition:
But mostly, darwinism brings us
}}

@slide{
 @h1{Darwinistic Meta-Tools}
 @image["Understanding.jpg" "http://www.afraidtoask.com/media/understand2.jpg"]
 @comment{
Meta-Tools. Understanding of the world. Wisdom.

Our new perspective on software survival
can make us more skeptical of fads
as mental parasites that will prey on us.
We develop better models and heuristics to decide what software to accept or reject.

We can avoid wasting time in evolutionarily unstable organizations;
or can sometimes devise small software tweaks that modify large evolutionary equilibria.

We understand Systemantics, whereby the only large systems
were born small and evolved and grew in a way that
they were kept working at every step.

We can relate the spread of ideas to demographics. Memetics to genetics.
Paradigm shifts to passing generations of programmers
who fork and merge traditions.

We understand that hardware, software and wetware live in fragile ecosystems
that we need to take care of.

We realize that software changes compete on a market driven by economic cost and benefit,
of which technical costs and benefits are but one particular factor,
though it is what we obsess on as programmers.
}
 @comment{Transition:
You may have noticed that all these conclusions are rather negative and depressing
}}

@slide{
 @h1{No Silver Bullet}
 @image["no_silver_bullet.png" "http://ag.alltech.com/sites/default/files/styles/flexslider_full/public/antibiotic-free-challenges.png?itok=3eyjJzZO"]
 @comment{
Darwinism reminds us that there is no silver bullet.
No magic way to win after win we can enjoy life and be lazy.
Because it is an arms race, and we will have to compete against others who use the same silver bullet.
But precisely, this understanding if we use it can remove the wool from our eyes;
it can help us dispel illusions and see through fake solutions
on which we can avoid wasting our limited resources.

In particular, there are also no magic authorities.
No expert you can blindly follow.
The next revolution may start with some amateurs' successful experiment.
Life is the ultimate judge---accept no substitute, and respect its sanction.
}
 @comment{Transition:
Now, some of you may say that Darwinism is a huge downer.
That what it brings is a soulless marketplace.

I disagree:
There is a soul in the marketplace, and that soul is...
}}

@slide{
 @h1{Evolution is an Inside Job}
 @image["YOU.jpg" "http://media.proprofs.com/images/QM/user_images/1755210/2269462890.jpg"]
 @comment{
Evolution only appears soulless if you take
the hypothetical point of view of that laissez-faire god above the universe.
Face it: YOU are no god,
YOU are not outside the world, and
YOU are not above it.
Whatever God may be, He is not YOU.

You are but one of us earthworms trying to make the best of our conditions
(or not trying, and sinking into irrelevance).
You are INSIDE the universe.

You cannot just let nature decide,
you are part of the nature that will decide.
Whichever genes and memes you carry may or may not survive--—it is largely
up to your actions whether they will succeed or fail.
You are either in the experimental set
of changes that may or may not work out well,
or you are in the control set
of the obsolete that will surely be replaced.
Such is the view from @em{Inside Evolution}.
}
 @comment{Transition:
Once you accept that,
}}

@slide{
 @h1{Tools for Evolution Insider}
 @image["Star_Trek_Entreprise.jpg" "http://onceuponageek.com/images/enterprise-tos.jpg"]
 @comment{
You have limited resources.
Invest them wisely.
Understand the difference between consumption and investment,
between asset and liability.
Seize opportunities. Understand opportunity costs (Economics 101).
Ultimately, the exclusive resource you possess is yourself. Invest in yourself.

Organizationally:
Be more productive with division of labour and specialization of tasks.
Seek the most win-win games, avoid win-lose and lose-lose interactions.
Develop cooperation tools social as well as technical.
Incentives matter.
Organizations and contracts must have a good incentive structure.

Security:
learn to recognize parasites and avoid them.

Your are the entrepreneur of your own life.

Once you embrace responsibility for your own soul,
the universe is not soulless anymore
}
 @comment{Transition:
And so to conclude
}}

@slide{
 @h1{Stories Evolve!}
 @CB{Better Stories = Better Tools}
 @p{}
 @CB{Better Tools = More Humility}
 @p{}
 @CB{A tautology = A tautology}
 @p{}
 @CB{The Soul = YOU}
 @comment{
Thank you!
}
 @comment{Transition:
Any questions?
}}


(output-xml
 @html{
   @head{
     @link[rel: 'stylesheet href: "resources/my.css"]
     @link[rel: 'stylesheet href: @reveal-url{css/reveal.css}]
     @link[rel: 'stylesheet href: @reveal-url{css/theme/black.css}]
     @link[rel: 'stylesheet href: @reveal-url{lib/css/zenburn.css}]
     @link[rel: 'stylesheet href: "resources/my.css"]
   }
   @body{
     @div[class: 'reveal]{@div[class: 'slides]{@get-slides}}
     @script[src: @reveal-url{lib/js/head.min.js}]
     @script[src: @reveal-url{js/reveal.min.js}]
     @script/inline{
       Reveal.initialize({dependencies: [
         {src: "@reveal-url{plugin/highlight/highlight.js}",
          async: true, callback: () => hljs.initHighlightingOnLoad()}]});
     }}})
