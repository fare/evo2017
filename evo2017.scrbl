#lang scribble/sigplan @nocopyright
@;-*- Scheme -*-

@(require scribble/base
          scriblib/autobib scriblib/footnote
          scribble/decode scribble/core
          scribble/manual-struct scribble/decode-struct
          scribble/html-properties scribble/tag
          (only-in scribble/core style)
          "utils.rkt" "bibliography.scrbl")

@authorinfo["François-René Rideau" "TUNES Project" "fare@tunes.org"]
@; http://fare.tunes.org/
@; http://meta.ph/or/

@; This document is available under the bugroff license.
@; http://www.geocities.com/SoHo/Cafe/5947/bugroff.html

@title{From Software Creationism to Software Evolutionism
@; @(linebreak) @smaller{The Programmer's Story: From Über-God to Underdog}
}

@conferenceinfo["Salon des Refusés 2017" "2017-04-04, Brussels, Belgium"] @copyrightyear{2017} @; ACCEPTED!

@abstract{
  The lives we live are woven around the stories we tell.
  This is true of programmers as of all humans.
  Now the greatest of all stories are @emph{origin stories}.
  In a first part, I will examine the origin stories of software,
  from simple tales of software creation
  to elaborate theories of software evolution.
  As I do, I will relate these stories to the tools they explain
  and the technological realities we bring about by following them.
  In a second part, I will conclude by reflecting on storytelling,
  on the progression of the above stories, and on what lies beyond.
  Stories are fun! And they subtly inform us. Let me tell you a good story...
}

@keywords{
  Creationism,
  Evolutionism,
  Software Engineering,
  Tools,
  Storytelling,
  Logogony,
  Anthropodicy
}


@section{Introduction and Disclaimer}

@subsection{Logogonies and Anthropodicies}

If you have to structure software along informal design patterns
rather than formal abstractions, you have @emph{run out of language}
(to quote Rich Hickey).
But if you cannot recognize and discuss informal patterns
in the structure of software @emph{development},
you have not yet entered the realm of language
with respect to software engineering.

Now the most powerful patterns about how humans behave are @emph{stories}:
they explain the behavior of a protagonist in terms of purposes and challenges,
with causes and consequences for success and failure.
Human brains are attuned to stories, whether implicit or explicit,
and humans are wont to cast themselves into roles defined by stories.
Furthermore, the most powerful stories are
@emph{cosmogonies} and @emph{theodicies}:
a @bydef{cosmogony} tells the origin of the existence of the Universe,
and the role of God (or Gods) in this origin;
a @bydef{theodicy} is a trial of those Gods,
to explain the existence of Evil. @; @~cite[Leibnitz-1710]

This essay explores the most powerful stories about Software,
@emph{logogonies} and @emph{anthropodicies}:
a @bydef{logogony} tells the origin of the existence of Software,
and the role of Man (or Men) in this origin;
an @bydef{anthropodicy} is a trial of Man,
to explain the existence of Bugs.

@subsection{Claims and Non-Claims}

This essay should by no means be construed as either
insulting or vindicating anyone's religious or irreligious beliefs
regarding cosmogonies.
Indeed this essay makes no claim regarding the origins of Man
--- it only discusses the origins of Software!
This essay does not even make any specific claim as to
which story best explains the origins of which software
--- it only tries to make each logogony understood,
as well as its implications.
Each reader can take it from there.
If the presented story arc does promote
a thesis about the origins of software,
in the end it is that, as far as the emergence of software goes,
@emph{Man is no God} --- which should hardly offend anyone.

Still, this essay does make a claim:
that @emph{stories matter} ---
that you should examine the stories you live by,
be careful which you choose to accept or to reject,
and constantly refine them. For they will shape you.
So yes, question my beliefs; and question your own ---
that is the point, whichever your or my beliefs are.

@subsection{From Über-God to Underdog, and Beyond}

In the next two parts of this essay, I explore a gamut of
increasingly elaborate logogonies, and accompanying anthropodicies ---
stories about how software, and accompanying bugs, come into existence.
First, creationist stories; then, evolutionist stories.
To each story, we associate tools that humans use while writing software,
that each fit into the narrative yet not the previous ones.

In a second part of this essay, I step back from the stories themselves,
and discuss stories as a tool:
what we can tell about them, how they shape our behavior.
I then conclude with some remarks about what to expect from future stories.

@longonly{@subsection{History}}

@longonly{
This essay is based on a speech originally given at ENS in October 2005
(see @hyperlink["http://fare.livejournal.com/95576.html"]{the original announcement}).
It was subsequently redacted, extended, polished and revised many times,
used as the basis for speeches given at
e@hyperlink["https://webmail.iro.umontreal.ca/pipermail/mslug/2009-January/000348.html"]{MSLUG} in January 2009 and
@hyperlink["https://www.meetup.com/LispNYC/events/171997342/"]{LispNYC}
in October 2014.
}

@longonly{
It all started as was once asked to summarize the main @hyperlink["http://tunes.org/"]{TUNES} concept in a few words.
My reply was that the central idea behind TUNES is
the evolutionary paradigm for programming.
What is this evolutionary paradigm?
The opposite of the creationist paradigm. (Duh!)
Now, what is...?
Wait, let us examine paradigms for the appearance of software on earth:
start from the initial naive paradigm of software
@hyperlink["http://www.catb.org/jargon/html/C/creationism.html"]{creationism}
and watch how it has evolved since.
}

@section{Software Creationism}

@subsection{The Simplest Logogony}

How does software come into existence?
Is it not obvious?
If you ask a layman or a newbie,
his explanation might be as follows:

@story{At first the machine was uninitialized and blank;
then Man said: ``Let Software be such'' --- and so Software was.}

This simplest of stories is @emph{Software Creationism}:
it casts the programmer as a God Almighty outside and above the machine;
the software is His creation, His proxy, embodied in the machine.

This belief not only comes naturally to non-programmers
when confronted with the apparition of software;
it was also historically the first logogony assumed;
and it is still the tacit logogony underlying
most undergraduate computer science education:
in exercises and tests, assignments and projects,
students are expected to produce
a perfect solution to a perfect specification,
from what is defined arbitrarily as ``scratch'',
whether on paper or on a restricted test machine.
Their code is evaluated once by the teacher;
it must stand alone and neither rely on any code by anyone else
nor contribute to such.

No programming tools are necessary in this logogony;
just pen and paper to write the perfect program,
and a switchboard to insert the program into the machine.
A perfect Programmer-God does not need tools:
He transmits His perfect ideas to the machine directly in its memory
in binary (or base ten, etc.).
Programming the machine is best done directly in the machine's language,
for optimum representation of the God's perfect idea.

Indeed, that is not how software is written these days ---
which only shows that this naive logogony has long lost its dominance.

@subsection{The Simplest Anthropodicy}

Software creation by a superior God is a beautiful story;
however, anyone who ever endeavors to program soon realizes
that programs seldom run perfectly at the first try, or even the second.
Bad things happen:
bugs, tyops, mismanipulations, cosmic rays, malfunctions, errors,
even outright mistakes.

If the Programmer-God is perfect (at least once trained)
--- then whence do Bugs come?

Sophisticated philosophers will claim that
while a perfect Programmer has a perfect program in mind,
its rendition onto an imperfect finite machine
is necessarily limited in form by physical constraints
--- a mere shadow of its platonic ideal.

But most people readily rush to the simplest explanation: @emph{the Devil}.
A devil modifies software in a way counter to God's intent.
Whether this Devil is an opposing force outside God,
a personality defect within God,
or a necessary artefact of the laws of Nature that God created
--- is unclear and might not really matter.
What clearly matters is that bad things
are symptoms of the presence of an Evil force.

@subsection{The Birth of Tools}

To fight the Devil,
the Programmer-God invents tools:
blinkenlights and punched cards (and adhesive tape) are used
so the Programmer-God may monitor as well as write the code.
Thus programs can be double checked, fixed, retried, stored,
despite any failures introduced by the Devil.
Programs must be read as well as written, decoded as well as coded,
and thus are born programming languages ---
starting with Assembly,
to recompute label addresses and jump offsets when code is modified.
Software development practices are developed,
to be followed religiously.

From a better (or less bad) theory of programming,
we thus get better (or less bad) tools ---
these tools improve programming
by coping with its identified imperfections.
This will continue to be true as we improve
our logogonies.

Interestingly, any time we find a new and hopefully better logogony,
we will always be able consider a variant of it
where some dark forces conspire to undo or corrupt
what the creative forces strive to achieve.
Thus, the idea of such opposing forces is a universal ``mixin''
for logogonies, the @emph{devil mixin}
--- our first storytelling meta-tool.

@subsection{Layered Creation}

While naive software creationism can adequately explain small programs,
the theory quickly reaches its limits:
large working programs just do not
@hyperlink["https://en.wikipedia.org/wiki/Athena"
	]{spring fully armed from the head of Man}.
In a more refined logogony,
Man still has an essentially perfect idea of the Program,
but imperfections of the Machine require creation
in multiple, neatly organized @emph{layers}:

@story{On the first day, Man separated requirements from bugs.
On the second day, Man divided the program into routines...
@; On the third day, Man wrote the program's kernel.
@; On the fourth day, Man coded the application.
@; On the fifth day, Man completed the front-end.
@; On the sixth day, Man gave the application to the customer.
On the seventh day, Man rested as the demo ran flawlessly.}

This logogony leads to new conceptual tools:
top-down design, software architecture in nice layers,
flow-charts, the waterfall process.
With it come divide-and-conquer algorithms.
In terms of languages, it layers a FORmula TRANslator on top of Assembly.

@subsection{Iterated Creation}

Now, as an anthropodicy, the @emph{devil mixin} applies to
this story of Layered Creation of Software:
at each of the steps, the Devil may cause mistakes.
This leads to a slightly modified approach to layereed creation:
iterating the waterfall process,
until the code is stable enough,
then start a new layer of work.

@story{At first, Man wrote a single-file prototype.
Afterwards, Man worked on an alpha version, then a beta.
Eventually, Man released v1, v2, v3...
At last Man produced a stable version ---
although, He keeps issuing patch releases.
(Be worried when He stops)}

Each version is limited in resources and has to make
tough choices and compromises that leave behind a layer of code @emph{fossils}
that you discover when you dig in the source code.

This suggests a new logogony, in which
Man cannot create entire software systems in one act,
if only because of the sheer amount of work required.
Instead Man creates software in many steps,
starting from foundations, building layers upon layers,
bootstrapping complex structures from simpler ones,
shaping tools and tool-making infrastructures,
replacing parts with better ones as the need and opportunity arises,
building scaffolding that is destroyed later
possibly leaving fossils along the way
--- all according to a carefully designed master plan.

In other words, @emph{Iterated Creation} is but another name for...

@subsection{Intelligent Design}

@emph{Intelligent Design} is the most common logogony among software engineers,
indeed implied by their very claimed title---because it flatters them:
it recognizes enough of the difficulty of programming to set professionals
above students and amateurs who can only write small programs;
yet it affirms that professionals tame big complex software issues
through the systematic endeavor of their Manly brainiac powers.
They are intelligent and in control.

With this logogony are elaborated such tools and concepts as
algebraic data structures and algorithms,
operating systems, source code, compilers, compiler-compilers, build systems,
modelling tools, hierarchically layered systems,
the iterated waterfall process, release cycles,
and all kinds of neat engineering practices.

Now of course, this logogony can be enhanced with the devil mixin,
at which point new tools are engineered to counter
the chaos introduced by the Devil:
error messages, loggers, tracers and single-steppers to help locate bugs;
line-editors to modify the Program;
acceptance testing to validate It.

@subsection{Polytheism}

Another useful mixin for logogonies is @emph{the polytheism mixin}.
In this story modifier, there is not one Man,
with one Master Intent and consequent actions,
but a lot of Men (including Women),
each having Their part in creating the Software,
each with Their own intent and actions.

In some variants, it may be that these many Men are but
facets of a same unique Man, who takes multiple roles
to address the multi-faceted endeavor of Software design;
or it may be that Man's intent changes with time,
or that Man is moody and has tantrums.

Man's ways are impenetrable to Software,
but enhanced theories of what Man is lead to the introduction of new tools.
To address multiple programming Men, files are invented;
as Men and Their work get organized in hierarchies,
so are files hierarchically organized in (sub)directories.
Source code comments and formal documentation serve to convey
intent and content between Men.
Machines are time-shared, operating systems grow to manage multiple users,
and eventually multiple users at the same time,
each running multiple processes.
Communication protocols are developed to exchange data
between machines, between machines and Men, between Men.

The devil mixin can also be combined with the polytheism mixin.
Each Man could have his Devil --- failures in his personality traits.
The Devil could be chaos in way that Men try to work with each other.
The Devil may be a Man himself --- a malicious programmer.
Each of these explanations for errors in Man's Design
leads to new techniques to address the identified sources of error.
Better management techniques are developed;
programmers review each other's code;
user accounts are protected by passwords;
resources have usage restrictions;
files are backed up;
redundancy checks are added to communication;
errata complete documentation,
and pages are intentionally left blank to prepare for them.

@subsection{Limits to Intelligence}

Intelligent Design was a much improved logogony compared to its predecessors;
but sooner or later, it too reaches limits
in its ability to describe reality accurately:
the design of most software is just really @emph{bad}.
Whether you consider the end result or the process to get there,
you find that it shines neither by its efficiency nor by its elegance.
Not only are most prototypes no good at all,
most software projects are cancelled before they are shipped,
or scratched shortly thereafter --- for good reason.
A lot of work is wasted without any positive result to show for it.
It is not rare that good ideas were discarded in favor of bad ideas.
Even when things work, it is often for the wrong reasons;
and pieces of code that survive are used in ways they were not intended.

The issue is not that errors creep in
that corrupt the implementation of a perfect idea;
the issue is that the idea was far from perfect to begin with.
As far as creator gods go, Programmers are only so bright.
Men have ``bounded rationality''.
In plain words, we are plain stupid.
Thus, the next stepping stone on the way
towards better logogonies is:
@hyperlink["http://www.theshrubbery.com/udn/"]{Unintelligent design}.

@subsection{Unintelligent Design}

The Programmer-God may have an intent, but
He is a blind idiot who does not quite know
what it is he wants or how to achieve it.
He not only makes gross mistakes,
he goes on wild goose chases that lead nowhere,
and sets impossible goals while ignoring obvious truths.

Tools to help Him design programs will thus include
helpful messages from his compilers for error diagnostic and recovery.
Their role is not to tell an intelligent programmer
``the devil crept in while you were not looking,
just have a look here, you can obviously see him and chase him'',
it is to tell the unintelligent programmer
``what you did was stupid, here is the explanation why'',
for it would be hard for his limited intellect to figure it out all by himself.
Syntax checking, type checking and various kinds of advanced semantic checking
are invented to catch the more or less obvious errors
and converge more quickly towards what the programmer would mean
if only he were capable of forming coherent intent.

Interactive help, manuals and hints constantly remind Man
of things that He should know better.
Integrated development environments help Man play with the code
and get faster answers as to whether or not his ideas make sense.
Software interfaces are made idiot-proof
by making languages more abstract and completing them with
ample compile-time and run-time checking.
Work is divided into ``modules'',
so that what limited intelligence there is can be focused in module implementation,
whereas using modules through their public interfaces requires much less intelligence;
complexity is thus managed away from stupid users.
Good design ensures all choices that Man makes
can be taken based on a shallow limited view of the world,
the only kind that fits the programmer Man's tiny brain.
There is no shortage of imaginable tools and prosthetic devices
to help Man cope with his mental disabilities;
and these tools are themselves limited
mainly by the inability of their own Manly programmers.

When a devil adds machine malfunction to operator dysfunction,
testing becomes something to take seriously and systematically.
When multiple gods are involved, the many resulting processes
running at the same time must be protected from each other;
the software is divided in many parts,
that are tested separately;
and contracts for what happens at their interface
are attemptedly defined and enforced.
Because the programmer gods cannot be trusted to remember all
the issues with the software, some software must be used to
systematically track those bugs and issues.
When some of the programming Men are malicious,
you are glad they are idiots, too,
and you bury them under the weight and complexity of security features
that will catch each of the more obvious malicious types of behavior.

@subsection{Progress through Humility}

One trend can already be observed in all these stories:
they each chip away at the supposed greatest of Man,
identify more of His imperfections;
yet, acknowledging these imperfections is precisely what enables
the invention of tools to cope with these imperfections,
which themselves enable the creation of greater software.
Greater humility is what makes progress possible.

Also note that the tools tell the story,
even when we do not make the story explicit.
Why do you use a typechecker? Because you make type errors.
What if you do not use a typechecker.
You still make type errors and pay the price.
Whatever stories you tell others to impress them,
or tell yourself to boost your own ego,
the tools you choose to use (or fail to use)
tell a more honest story about yourself.

But how far does Man have to humiliate Himself
before a truthful story emerges about the origins of Software?
If Software is not the @emph{Triumph of the Will} of Man,
then what really is the driving Force behind Software?
Before we can give answers to these question,
we have to change our point of view...

@subsection{Lamarckism}

Whether software is designed by intelligent or stupid Men,
or by something else altogether,
we may importantly understand that software @emph{changes}
to adapt to new circumstances:
new goals, new programmers, new customers, new insight, new technologies, etc.
And so we come to focus on the nature of this change through time,
rather than just on its product at a given moment.
Such is @emph{Software Lamarckism}.

Filesystems may remember many versions of the files they hold,
each with a different version number.
Software releases are numbered too.
Because many Men may be working at a time,
a piece of software may exist along many different versions;
moreover, these versions are not in a strict linear order,
but may come in branches that sometimes diverge from each other,
and sometimes merge back together.
"Ports" from one language to another, and
"inspiration" from one project to the next,
are other ways that information is copied from one Software project to another.

To understand the differences introduced,
whether they are intelligent, stupid or malicious and what to do of them,
new tools compute differences between files.
To merge the intelligent changes and the fixes to the stupid and malicious ones
along the many different branches, tools are created
to apply computed differences to branched files.
Revision control and change management is born,
and continuous backup remembers all previous versions of tracked files.

Lamarckism is not a complete theory of why and how change happens,
but it introduces a useful focus on change.
It is a Great Mixin that can be applied to all the previous logogonies,
a starting point for more elaborate theories that
will explain the development of software in the terms of
this incremental process of change.

@section{Software Evolutionism}

@subsection{Supernatural Selection}

Unintelligent Design,
while acknowledging Man's stupidity at writing software in the small,
still posits His grand design for building software in the large.
How is this position defensible?

Lamarckism, by shifting the spotlight towards the change process,
leads to asking why and how programmers lacking complete understanding
choose to keep or change some or some other parts of the software.
The immediate answer is that as Men write,
they stumble upon good or bad features
that they winnow by propagating the good
and by eliminating the bad.
The software writing process is thus some kind of artificial selection,
under the careful, intelligent guidance of the Programmer-God.
God impresses upon the process a definite direction,
Progress, and otherwise lets software evolve organically in this divine order.
Judging software being much easier than writing software, it is defensible
for Man to be good at the former even though he is bad at the latter.
This logogony is @emph{Supernatural Selection}.

With this logogony, new tools are selected into prominence.
Prototyping tools help Man flesh out as many ideas as possible
as quickly as possible, so he may select the correct ones.
Formal specifications help define @emph{what} software should be doing,
without worry about @emph{how} it will be doing it.
Heuristic search algorithms use intelligently designed strategies
to systematically explore spaces of potential solutions
too large to be explored by the programmer themselves.
The combination of these two approaches leads to @emph{declarative programming},
whereby Man focuses on intent,
and delegates implementation to the machine.

From one evaluation phase to the next, programs are transformed
through systematic metaprograms.
To prevent the devil from corrupting software,
formal proofs are developed that perfectly exclude undesired behavior.
To coordinate multiple Men,
software modules separate interface from implementation,
allowing for experimentation and adaptation separately in each part;
rational developer communities are created,
conferences are given, journals are published.

This whole approach has also been called the @emph{First Wave of Cybernetics}.
It combines an understanding of the natural dynamics of software
with a faith in the ultimate power of
an intelligent and purposeful Programmer-God,
culminating with expert systems using explicit knowledge representation
in an attempt to solve complex real-world problems.

@subsection{Teleological Evolution}

The logogony of Supernatural Selection obviously suffers
from the same shortcoming as did the theory of Intelligent Design before it,
in that it supposes that the Programmer-God (or at least some of them)
are supremely intelligent as regards judging the quality of software change.
This shortcoming is obvious once the logogonies
are articulated as clear theories,
rather than adopted without a thought by mimetism or what seems to work.
An immediate improvement over that logogony is thus
to stop believing in Men as supremely intelligent Programmer-Gods.
Men may guide the evolution of software,
but their contribution to the process
is hardly an overall intelligent coherent purpose;
rather it is through a number of interventions based
on partial knowledge, intuition, randomness,
towards a progress that can be felt but not defined.
Such is the theory of @emph{Teleological Evolution}.

With the transition from intelligent guidance to unintelligent guidance,
we are led to the appearance of new tools,
that roughly correspond to the @emph{Second Wave of Cybernetics}.
Genetic Algorithms, supervised learning through neural networks,
probabilistically approximately correct learning methods
enable mining information from large databases
without any explicitly designed knowledge representation.
Weakly structured computations enable data manipulation
despite limited understanding.
At a smaller scale, programmers are satisfied with randomized algorithms
that have good enough performance in practice
despite having dreadful worst case guarantees.
To protect from the Devil, checksums and probabilistic proofs
can be more useful than unattainable formal proofs.
To synchronize multiple Programmer-Gods, user communities come to prominence:
users, though less proficient than developers, are those who possess
the most direct distributed knowledge of what makes the software useful or not.

The logogony of Teleological Evolution loosens
the strictures of Design or of Supernatural Selection,
and opens the space for practical software solutions
to problems beyond the full grasp of programmers.
While it reckons the importance of reasonable endeavor,
this importance is also de-emphasized;
indeed, even reason can be seen as but a fast-track
internal process of random production and selection
inside the programmer's mind, as guided by his godly intuition.
In the end, Teleological Evolution embraces
an unfathomable mystical intuition
as the ultimate divine source of creation.

@subsection{Natural Selection}

As far as logogonies go,
the notion of evolution under manly guidance
was an improvement over that of direct design by purposeful Men,
which was itself an improvement over the notion of direct creation.
But in each case, this was only pushing back one level
the assumption of a driving intent external to the world.
Real evolutionary theory does away with this assumption.
Survival of the fittest does not suppose
an external criterion of fitness to which living creatures are submitted;
rather, survival itself is the only criterion for survival,
tautological and merciless.
Survival is its own purpose:
those programs that survive---survive;
those that do not---do not.
Changes that improve the odds
that their host software should survive and propagate,
thereby statistically tend to propagate themselves
and colonize their respective niches.
Changes that decrease the odds
that their host software should survive and propagate,
thereby statistically fail to propagate themselves
and eventually disappear.
Changes that best fit a niche and not others---survive in that niche
and not others.
How software changes help fit a niche decides whether the changes survive and spread,
not whether Man explicitly and correctly anticipated and intended those changes
to be successful in particular ways.
Some changes are no benefit to the host, yet are not detrimental enough in the short run
to be worth the cost of getting rid of them;
they accumulate as "junk DNA" and are passively reproduced,
until their weight becomes an issue.
Some changes are detrimental (sometimes lethal) to the hosts that adopt them,
but though they are eventually weeded out of each host (who may or may not survive),
these parasitic changes survive by spreading to other hosts while the host lives
(or sometimes after they die).

The cumulative result of this natural selection is an evolutionary process
that favors bundles of traits that tend towards their own reproduction.
This freewheeling evolution necessitates no godly intervention,
neither by an intelligent conscience, nor by madmen.
More remarkably, programmers are no gods above it,
and their actions are no such interventions.
Programmers are but machines like others, bundles of self-reproducing traits
competing to exploit the resources of the universe.
As compared to other machines in this programming universe,
certainly programmers are unique and different
--- everyone is unique and different;
that does not exempt them from the laws of natural selection.
Programmers are machines among others, trying to survive in a wild
machine-eats-machine world;
their actions are their attempts to survive and reproduce
by gaining an edge in the race
for ever more efficient acquisition and use of reproductive programming resources.
Their failure means their code stops being used and is forgotten.
If God exists, then he is not Man; and ever since Man created Software,
God has just been relaxing, sitting back and enjoying the show.
Software Evolution is not directly controlled by Man and not actively guided by God,
it is God's Spectator Sport, and Man is a competitor among others.
Such is the logogony of @emph{Natural Selection}.

@subsection{Software Darwinism}

Natural Selection, unlike Supernatural Selection or Teleological Evolution,
is what (software) darwinists mean when they speak of (software) ``evolution''.

With this perspective on software development,
we gain new mental models for development processes.
We think of software in terms of self-sustaining systems,
that evolve and compete based on their ability to survive and spread.
We understand that the hosts and actors of this memetic competition
are humans as well as machines, or even more so.
We may then notice that systems are never born big,
and that the only big systems that work are those
that were born small and evolved and grew in a way that
they were kept working at every step @~cite[Systemantics].
We relate the spread of ideas to the demographics
whereby generations of humans and machines pass on
their forking and mingling traditions---relating memetics to genetics.
We understand that pieces of hardware, software and wetware
survive as part of ecosystems,
with cycles of development and use by various humans,
where economic and legal aspects have their importance
as well as technical and managerial aspects.
We realize that these systems compete on a market
ultimately driven by economic costs,
of which technical aspects are but one part,
often not the most decisive one,
though they are what the technicians obsess about.

Models such as above mostly serve to filter out doomed business models
and self-defeating attitudes
when the model can explain how they go against reality.
But they also lead to a few positive tools that actually help.
A @emph{Third Wave of Cybernetics} attempts to re-create artificial life
and life-like phenomena through the emergence of behavior
from many software agents.
Unsupervised learning and tournament competitions yield results
unreachable by supervised learning and explicit fitness functions.
Understanding that the forces opposing creation act not through supernatural
means but through the action of malicious or misguided humans,
we achieve security through a mix of computer cryptography,
growing networks of human trust, retaliating against bad behavior,
and educating new people.

Software Darwinism provides a big picture
that puts haughty programmers down from their godly pedestal
and back into the muddy real world.
It does not offer direct solutions to design problems so much
as it dispels our illusions about fake solutions
and unearned authorities.
No one is a god, above the others,
to predict what will work and dictate what to do;
our experts' dreams are often but vain obsessions,
whereas some rare amateurs' successful experiment may start a revolution.
Life is the ultimate judge---accept no substitute, and respect its sanction.

@subsection{Evolution is an Inside Job}

Natural Selection may appear to look down on the world
as a soulless marketplace.
But it will only appear soulless if you imagine yourself in the seat
of that laissez-faire God above the world.
Face it: you are no god, you are not outside the world and above it.
There @emph{might} be a God (or Gods),
who might or might not be intervening in this world---but
you have to come to the realization that
@emph{you} are definitely neither Him nor any of Them.
You are one of us earthworms, trying to make the best out of what you have
(or not trying, and thus probably failing
and promptly disappearing into irrelevance).
Evolution is not something for you to enjoy watching from above,
it is something you are part of, like it or not.
You cannot just let nature decide,
you are part of the nature that will decide.
Whichever genes and memes you carry may or may not survive--—it is largely
up to your actions whether they will succeed or fail.
You are either in the experimental set
of changes that may or may not work out well,
or you are in the control set
of the obsolete that will surely be replaced.
Such is the view from @emph{Inside Evolution}.

The tools that matter are those that are available to you.
Your resources are limited, and you should invest them wisely.
Which tools will make you most productive personally?
Opportunities are there to be seized;
if not by you now, by someone else later.
On the other hand, it may be too soon to invest in some ideas,
and too late to invest in others; timing is key.
Specialization will help, and can be a long-term investment
that provides compound interests.
As for cooperation with other non-gods,
you can only go so far with your own efforts,
and success lies in being able to leverage the efforts of other people.
Which tools allow you to reuse as much as possible of these people's efforts?
Tools can be technical, or can be social.
Not just software libraries, but software communities,
software market niches, software business contracts.
Of course, you always need some kind of exclusive resource
to ensure a revenue stream;
your combined proficiency, trustworthiness and time
are ultimately the only such resource you have,
and ample enough to live well if you can market it,
though it will probably not make you super rich.
On the devil side,
intellectual frauds will try to have you adopt their bad ideas,
and other scammers will try to divert your resources in their favor;
you must learn to avoid them.

Evolution as an Inside Job restores the soul
in the marketplace for software: yours.
You are the entrepreneur of your own life.

@subsection{Social Evolution}

As you fully grasp the fact that all actors are individuals,
not just yourself,
you start taking into account incentive structures.
Incentive structures will put you and your associates in a position
to productively cooperate at your full potential,
or to work at only a fraction of it;
so carefully watch both your legal and business arrangements.

With a systematic view of incentives,
you stress the importance of contracts and accountability
as a way to structure human interaction,
re-uniting liberty of means and responsibility for results
in complex software arrangements.
For instance service-level agreements will allow to robustly build
larger, more complex structures than direct command chains.
You may recognize the value of free markets
as a way to organize people and to evaluate ideas,
rewarding those able to invest their resources
in the good ones rather than the bad ones.
You may celebrate startup companies
as light innovation structures with highly motivated personnel.

You may also consider long-term effects of licensing issues
on development ecosystems.
For instance, proprietary software has a definite short-term advantage
over free software
in capitalization, focus, coherence ---
and in the ability to use the latter when the latter cannot use the former.
But in the long run, proprietary software destroys incentive from anyone
who does not fully trust the software owner;
and that trust can last but until the eventual catastrophe
inevitable in any centralized management.
All proprietary software has a suspended death sentence.
Only free software can be immortal and has a chance
at maintaining long-term ecosystems that keep evolving
long after any particular strain of momentarily superior proprietary software
has come and gone.

Thinking in terms of social evolution,
of arms races from positive feedback,
equilibria from negative feedback,
invariants from limited resources,
variants from energy sources and entropy sinks,
can make you see what is invisible to those ignorant of the perspective.

@section{Stories Programmers Tell}

@subsection{Stories Evolve!}

From naive Instant Creationism to the darwinist view from Inside Evolution,
we can observe a @emph{story arc} in these logogonies themselves:
Man is taken down from his pedestal as an Über-God above the machine,
until he becomes an underdog competing
as part of processes that vastly surpass him,
at the same level as machines.
Yet, each time Man's image is humbled, Man himself is elevated,
as tools are then invented to address his identified weaknesses
--- until he is one with the machines that augment him ever closer to godhood.

The @emph{evolution} of these stories
can indeed be seen as an elaboration,
whereby each step replaces an overly simplistic story that @emph{assumes} power
with a more accurate one that @emph{creates} power.
This @emph{teleological evolution} towards more darwinistic stories
being more accurate and more empowering
could be a divine truth about our universe;
or it could be merely a claim by the author of this essay,
the validity of which could be less than universal;
yet, even without being universal, its relevance to your own life
could make it adaptive for you (for ``us''?) to take it seriously.

In any case, we just stepped back from what the stories say
to talking about the stories themselves.
We @emph{went meta} on the stories.
Whereupon the topic of our story is storytelling.

@subsection{Stories Matter}

Now, the tools previously described already exist;
they have been created, engineered or selected,
or they have emerged,
without any of these logogonies being explicitly stated,
much less used as conscious guides.
Do these stories have any relevance,
or are they but nice-sounding post-hoc rationalizations?
Even if relevant, do not they come too late to help invent those tools?

Daniel Dennett wrote: ``There is no such thing as philosophy-free science;
there is only science whose philosophical baggage
is taken on board without examination.''
In software programming as in any other human endeavor,
not stating your assumptions
will not save you from the consequences
of following them when they are erroneous---not anymore than
putting your head in the sand will save you from predators you cannot see.
The overarching stories you follow---or paradigms, as they are commonly called---
embody the assumptions you implicitly make, often without a conscious decision;
they determine the horizon of phenomena you can comprehend.
What exists beyond these stories, you cannot see.
And each step in the evolution of these stories adds relevant phenomena
to which you were previously blind, of which you were a helpless victim,
that you can now see and master.

Diagnosing how a ``series of unfortunate events'' is no accident
but the necessary consequence of some previously invisible phenomenon
is a necessary first step to properly addressing an issue.
``Failing to plan is planning to fail.''
If you assume an inadequately simplistic paradigm,
you will keep attacking your problem with inadequate tools
because you cannot even see how better tools apply to your case.
You will waste significant human resources
at unrewarding repetitive tasks at which humans are unreliable
compared to the cheaper machines that you could have used;
despite these sacrifices, or rather because of them, you will keep failing,
until competing people using better paradigms drive you out.

@subsection{Stories as Tools}

The stories we live by are seldom told in so many words---precisely
because uttering them would make the ``plot holes'' in the stories
uncomfortably obvious:
in addition to the pain of living a bad story
then comes the shame of being the story's sucker.
So these stories remain implicit,
official lies that go unsaid but are well internalized
as the logical justification for the processes followed and the tools used.
They are @emph{Games People Play} @~cite[Games-People-Play].

However, once you realize the stories are themselves subject to change,
then making them explicit, uncovering their plot holes
and feeling their discomfort can become the means, opportunity and motivation
for quitting (or wholly avoiding) a bad game and finding a better one.
@emph{Going meta} about stories is then a tool for the group therapy
of dysfunctional software development teams,
of dysfunctional software ecosystems---as well as
for other dysfunctional human behaviors.
Leaving stories implicit imprisons us;
making stories explicit liberates us.

@subsection{The Proper Role of Stories}

A story may be good by itself---if it brings original insight;
it may be bad by itself---if it is logically inconsistent;
but most stories are only good or bad in context---as
useful or misleading ways to describe a situation.

If your problem is so simple that
you grok it all and can write down a software solution in one breath,
by all means, do it!
Do not follow a 12-step plan to software development
to be rinsed and lathered along 30 iterations.
If on the other hand you cannot fully understand the problem you are tackling,
if designing a solution is too hard for structured methods,
then keep escalating the methods you use until you hopefully solve your problem.
Generating random programs until a solution is found should be a last resort.
Yet given proper biases in generation, cleverness in detection, and raw power,
this resort might be made affordable,
and find solutions where other methods fail.

Thus, when more elaborate stories are invented,
older, simpler stories do not die out:
they each find their niche of validity,
where the cost of improving on them
is higher that the return on the improvement;
meanwhile, new stories cover new ground more so than claim known territory.
Interestingly, as stories inspire tools that increase man's reach,
the domain of validity of older stories is expanded rather than narrowed.
Modern languages and IDEs indeed make it possible to instantly create
or systematically engineer programs that would previously have been
monumental endeavors---if they could have been imagined at all.

The question therefore is not to find a one-size-fits-all story,
but to identify the story that best fits the situation at hand,
which will make you most effective if you play the games it suggests.

@subsection{Leveraging Stories}

Programmers could automate away a lot of the issues they face today
if only they graduated from the paradigm of (Un)Intelligent Design
to that of Supernatural Selection or better:
just giving up on having humans write software directly,
and instead adopting more declarative and generative programming approaches
could deal with better results and fewer efforts with
(de)serialization, persistence, schemas and schema upgrades,
replication, performance autotuning, representation selection, or
maintenance coherence between multiple data representations,
code layers, specifications, documentation and test files,
etc.
What is more, if they adopted the Inside View of Evolution,
they would have a healthier approach to negotiating
what the software should or should not be doing in the first place.

As the profession matures, software libraries and programming practices
will spread that can be anticipated in terms of
examining which logogony underlies some unsatisfactory practice,
and imagining how a more elaborate logogony could enhance it.

For instance,
unintelligent design brings us manual tests;
lamarckism makes testing incremental;
supernatural selection inspires generator-driven property checks;
teleological evolution suggests whitebox fuzz testing;
natural selection suggests bug bounties;
and the inside view suggests paying attention to how management
creates incentives towards better or worse code.

Intelligent design suggests type declarations;
unintelligent design, type-checkers;
lamarkism, type-based refactoring and schema versioning;
supernatural selection, generic types and type inference;
teleological evolution, automated learning of probabilistic type schemas
for data extraction or activity monitoring;
natural selection, learning with competing models and
automated translation between type hierarchies;
inside evolution, taking human factors, responsibilities and incentives into account
in the modular design of class hierarchies and type systems.

The explicit application of logogonies to any particular topic
immediately suggests a fertile research program to analyze existing practices
and create new ones based on more elaborate logogonies.

@subsection{Beyond These Logogonies}

Your software activities are unlikely to follow the "perfect" logogony;
but that does not mean that
the story bringing the most tragic dysfunction in your life is your logogony.
There are many stories about Software and about Man,
that define your current behavior, the roles you play.
If you work in a team (and you do), stories also define the way
this team is organized, sets its goals and its means,
the way each of its members sets their goals and means,
the way people interact with each others inside and outside the team, etc.
And the one story that you get most wrong,
that is causing you the greatest pain or waste in your life,
that you could benefit most from fixing...
is for you to discover, examine, and replace.
Logogonies were just the most spectacular way of illustrating the notion
of stories and games we play;
they are by no means the only interesting stories,
or the stories most relevant to whichever important issue you are dealing with at the moment.
So, make the stories of your life explicit,
identify those you are living, and rewrite them, better!

One the other hand, if progress in how software is developed can be related
to stories about software development, a question naturally arises:
what are the next logogonies?
Is the above ``view from Inside Evolution''
the be-all and end-all of programming paradigms?
Is there nothing left but incremental refinement of existing concepts and tools?
Or are there paradigms as radically advanced compared to software darwinism
as software darwinism is compared its predecessors?
Can one identify and adopt this paradigm early on,
and thus get an edge over competition?

@section{Stories Future}

@subsection{Present Optimism}

The simplest view about logogonies is that
there will be no new ones, at least none that works.
Our understanding of software development is mature;
though there may be myriads of minor details to get right,
the big picture is complete.
This is @emph{Present Optimism}:
the ``end of history'' was reached,
from there it is smooth sailing and/or decline.

Of course, assuming the big picture about software
will ever contain but finite understandable information,
there @emph{will} be a point when there is no room left
for further paradigm improvements.
Therefore Present Optimism will @emph{some day} be true,
about logogonies as about many things.

On the other hand, considering how new the field of software development is
and how fast it has changed in just the last few years,
it seems premature to declare that we fully understand
how software is developed and will never find new deep insights.
If our understanding of software development were to remain stagnant
for, say, five to ten years,
and all developers were to settle towards a finite set
of well understood unchanging methods, then
we could assert with much more confidence
that indeed we have reached the acme of software development.
But this has not nearly happened yet,
and the case for Present Optimism is rather slim.

@subsection{The Singularity}

A different kind of optimism, and a common idea regarding
future logogonies has always been that
computers will somehow surpass men in intelligence
and take over the menial task of programming:
they will be genies, who will grant your every software wishes,
the details of which they can anticipate better than you can specify.
This is Extreme Future Optimism, or @emph{Singularitarianism}:
the theory that soon(er or later),
we will reach a Technological Millenium, or @emph{Singularity},
when all our worries are taken away.

However, this Millenarianism is based on a misunderstanding,
that is best dispelled by contrasting its equal and opposite misunderstanding:
Millenarian Luddism, the claim that technology unless stopped
will bring a bleak future where humans are reduced to misery
as machines take all their jobs away.
Hopefully the errors will cancel each other in a collision
from which light will emerge.

@subsection{No Escape from Evolution}

Computers have replaced humans in many ways,
and will keep replacing them in more ways.
Computerized tools that replace humans while programming
are the heart of our story so far.
But automation does not destroy human jobs,
it only displaces jobs towards new areas not covered by tools.
Successful tools provide more satisfactions than before while reducing efforts.
@hyperlink["http://www.econlib.org/library/Bastiat/basHar11.html"
        ]{More for less---progress.}
The human resources previously expended toward those satisfactions
are not destroyed but @hyperlink["http://www.econlib.org/library/Bastiat/basSoph8.html"]{liberated};
they are made available,
to be redirected to new useful endeavours
that could not previously be afforded,
together with the increased riches with which to pay them.
@;(That is the insight behind the badly formulated Say's Law.)
@; Better expounded by Bastiat in "Producer and Consumer", Harmonies ch. 11
Furthermore,
the @hyperlink["http://www.econlib.org/library/Topics/Details/comparativeadvantage.html"
	]{@emph{law of comparative advantage}} ensures that
@emph{even at absolute disadvantage}, the tasks relatively better done
by meatware than by software will remain a domain of human activity.

Of course, nobody prevents from using or sponsoring
a human-intensive way of programming
that declares some forms of machine assitance taboo.
There will always be a cottage industry of ``brain made'' software
just like there now is a cottage industry of ``hand made'' pottery
(still using tools, just neolithic ones).
But just like automation in other industries increased productivity
and made mankind vastly wealthier,
so will automation in programming increase productivity
and serve mankind---it already does
through all the software development tools previously mentioned.
And with further progress, programming in today's hip tools
will become as obsolete as programming in COBOL or Assembly has become:
a wasted effort, and guaranteed ultimate failure,
for the Luddites who refuse automation.

The laws of Economics still apply. Which includes the laws of Evolution.
Indeed, the ideas behind Evolution were discovered
by historians as applied to economics,
long before they were ever applied to biology---or software.

@subsection{Sentient Agency}

Machines can turn feats into chores, chores into menial tasks,
menial tasks into assumable commodities.
But they can neither create nor destroy
the desire for ever more, ever greater satisfactions,
the ability to adapt and work towards these satisfaction,
and the individual accountability for the results:
in other words, human drive, spirit and agency.
As our past worries are cared for,
we focus on loftier worries.
Ultimately, only human parents create human jobs,
and only illness and death destroy them;
the rest is a matter of organizing existing human resources.
The fear of Artificial Intelligence and claim of Human Supremacy
is a lifeformist stance wrapped in the usual protectionist fallacies,
and its narrowmindedness should inspire
the same spite as racist or nationalist arguments before it.

Conversely, blind faith in Artificial Intelligence
is but another millenarian superstition---people dreaming of
being saved from having to live their own lives.
This blind faith is a cop-out, in that it wishes away
the very nature of life and its intrinsic challenges.
Even if ``intelligent'' machines were to replace humans
in the activity of programming,
said machines will not be able cop-out of having a logogony:
software issues will have to be addressed,
the buck will have to stop at @emph{someone}.
And that someone is necessarily a sentient agents,
whether electronical or biological, equally constrained by the laws of
@hyperlink["https://mises.org/library/human-action-purposeful-action"
	]{``Human'' Action}, i.e. purposeful action:
the competition for scarce resources,
the power of incentives,
the benefits of cooperation,
the law of supply and demand,
the importance of property rights, etc.,
and ultimately, @emph{evolution},
will apply to them as to they apply to us.

However brighter or gloomier than today
a future with artificial intelligences will be,
bridging the gap between today and that future,
if possible, will not be achieved by hand-waving.
It will require a paradigm shift that the cop-out
precisely aims at blanking out.

The legitimate cop-out is not to assume knowledge but to admit ignorance:
``my previous investigations did not lead
to any firm conclusion to this question,
and I do not have enough combined care for the matter
and trust in the remaining unexplored venues
to afford further investigation.''
@; But are we reduced to this ignorance?
@; Are there not things we know or can guess about the directions
@; that the future may take?

@section{Open Conclusion}

@subsection{Educated Guesses}

The future promises many revolutions in how software will be written:
between ``artificial intelligence'' and cyber-security arms races,
mind-defying heuristics and automated formal methods,
tomorrow's technology is likely to obsolete today's programming practices
as hopelessly primitive and insecure.
Can we make more precise predictions?
@emph{It is difficult to make predictions, especially about the future}
(Karl Kristian Steincke).
If one could provide an accurate functional description
of what the future would bring,
then this future would already be there,
by the simple execution of this description as a plan.
But we can make educated guesses. Here are mine...

@subsection{Bootstrapping Intelligence}

Activities involving human intelligence have already started being replaced
by computer automation.
All of the programming tools we mentionned above
are indeed forms of this replacement.
The purpose of computers is to @emph{automate that which can be automated}.
This applies to all human activities, including ``intellectual'' activities.
In particular this applies to software development itself.

One may hope that applying intelligence automation techniques
at improving themselves may be self-catalytic:
cumulative progress in machine intelligence
leads to ever more progress in machine intelligence;
bias towards systems that mutate better and faster
leads to systems with even stronger bias toward mutating better and faster;
pressure for higher value and lower costs
leads to more valuable, cheaper automation
that itself increases this pressure.
Intelligence at writing machine learning software may be
the most general kind of intelligence computers may have;
and series of meta-level mutations
can quickly bootstrap such intelligence
in a positive feedback loop,
until a phase transition is reached.

It is not immediately relevant
whether a ``Singularity'' is ever reached whereby mankind is transcended,
or whether mankind is as elaborate as intelligence gets,
whether artificially intelligent autonomous agents ever emerge,
or the only agents ever are humans and machines remain their props.
That is not for any of us to decide, only to observe; maybe participate.
Now, any progress we make is quantum,
made of irreducible bits of information that take us closer to this goal,
whether by big strides or tiny steps;
and the amount of progress to reach whatever ``intelligence'' machines can embody
is finite;
therefore, if humans keep at it, they'll reach their destination eventually,
whether in decades, centuries, millenia or stranger aeons.
What matters is that some road will be taken,
and that those who stay behind will become irrelevant;
what matters is that inasmuch as there is an inflexion point
where we'll reach quickly diminishing returns on investment in machine intelligence,
this point seems to be well ahead of us;
what matters is that we are within the part of the curve that accelerates.

Now is a time that you, personally, can have an impact.
To maximize it, you may ask questions such as:
What tools can you develop today
that will best increase automation intelligence in the long run?
Which generally applicable software methods
are not currently applied to improving software development itself?
What kind of architecture makes it easier to combine such methods
and apply them to the improvement of software development itself?
What essential aspects of more intelligent software
are currently left unresearched?

@subsection{As we grope for the future...}

All of us each have to make choices.
I can see many opportunities:
in architecting software that combines
induction (machine learning) and deduction (algorithms);
in recognizing that interaction with computers is @emph{dialogue not command},
between unequals that have specific comparative advantages;
in understanding of how the social organization of programmers
and the architectural organization of programs are related
via the feedback and incentive structures they induce.

But in the end, with this and other articles,
my choice will have been to try to reach out a happy few programmers
to open their minds to improving how they may think about programming,
and becoming assumed entrepreneurs of their own software life;
that they may control the internal evolution of their identity to adapt to the world,
rather than be the unconscious victims of an external evolution they cannot fathom
--- and creating software ecosystems that @emph{reflect}
this ability to improve oneself from within.

@XXX{
@section[#:style (make-style #f '(unnumbered))]{TO BE COMPLETED...}

@subsection{From Deduction to Induction}

One of the main features of digital computer software as we know it
is that it behaves, combines, and can be understood
according to rigorous formal semantics
in perfectly well-defined deductive logics,
suitable for engineering, design and scientific discussion.
In other words, it is algorithmic.

Now, intelligence requires dealing with
fluid concepts, creative solutions, inductive reasoning
under misunderstood external pressures with incomplete information.
There is never a definitive theory within which to deduce,
and communication never follows a fixed semantics;
theories evolve and paradigms shift.
In other words, it is essentially non-algorithmic.

Not only do we currently utterly lack understanding
of higher-level cognitive processes;
we have just found a good reason why
any direct attempt at engineering
an algorithm implementing such processes is bound to fail.
On the other hand, Solomonoff solved the problem of induction in theory
all the while philosophers were claiming it was unsolvable.

The theoretical ideal of induction is that
given a framework to perceive the world in terms of sensory events,
we may consider all algorithmic descriptions of the series events,
and assign to them probabilities exponentially decreasing
with the length of such description.
The approach naturally combines Occam's razor
(always favor the simplest explanation)
and Bayesian reasoning
(in how posterior to prior probability distributions are related).

To apply this theory, we must realize its practical constraints.
First, no algorithm can induce perfectly because
the probability distribution itself is not computable;
but we can approximate the perfect case arbitrarily less badly
and we know how to measure progress in the processing of real-life data.
Second, induction is not context-independent,
but depends on learning from previous experience
to improve the system's assumptions regarding the surrounding world;
the accumulated persistent knowledge is to be interned in terms of
concurrent networks of explanations, recognized patterns, etc.
Third, the proper way to build an inductive system as well as to use it,
is to interact with the system;
interactions can bind meaning
where large bodies cannot absent prior such binding.

This suggests key elements missing from existing computer architectures:
maintenance of a probabilistic model of the world;
interfacing specialized algorithmic knowledge modules with such a model;
integration of new data as perception from prior assumptions;
accumulation and growth of model data across continuous user interactions;
identification and tracking of intensional concepts that evolve with the model;
user interactions as a conversation with an inductive agent.

None of these elements may be novel in isolation;
but by and large they have remained on the periphery of computer systems;
they have not been integrated to the core of computing systems.
Only highly specialized software uses any single of these techniques,
in a way that makes a combination expensive and unlikely.
The challenge is as much in architecting an overall system
that combines these aspects as in the completion of the individual components.


@subsection{Dialogue, Not Command}

An interesting paradigm shift can already be lifted from the above approach:
as computer intelligence emerges to complement human intelligence,
programming is better seen as a two-way conversation between man and machine
than as a unidirectional command-and-obey relationship.

In a way, all existing interactive tools, from monitoring indicators
to status-displaying prompts to error messages to online help to shells
to editors and other environments,
recognize that when software development is concerned,
information goes both ways.
On the other hand, we have already established
(in `No Escape From Evolution`_)
that humans will always have something to contribute to machines,
though the informational content may dwindle.
In between the current paradigm of command with feedback
and a possible future paradigm of pure emotional transmission,
there is a whole world of meaningful two-way communication
that is not explored yet.

There may soon come a day when we build software
in a dialogue with computer development systems that maintain
a persistent inductive model of the target system
by integrating the information we offer,
offering back elements of information it judges relevant,
and asking for clarifications where it thinks are required.
It will never be a dialogue between equals,
with human and machine being interchangeable;
actually, no dialogue whatsoever is possible between equals;
a dialogue exists precisely because those who partake
are each different and specialized.
But it will be a dialogue where the machine may produce significant
conjectures and refutations, trials and errors, filling of ambiguous blanks,
resulting in non-trivial code
that has to be persisted together with the ``source'' code or as part of it,
least the program cannot work and development is seriously set back.

Now, our trust in the target software system ultimately resides
in deductively provable propositions about its behavior,
whereas the probabilistic heuristics of inductive systems
make it impossible to fully trust the stability of their behavior.
Moreover, inductive models used by advanced interactive systems
can hardly be shared between different systems
with even slightly different architectures or past knowledge,
and even when you can import data,
you have all the reasons not to trust it@note{
   Even assuming the internal representation of knowledge of the target system
   matches that of the source system,
   which is a precondition for directly importing any of its knowledge,
   and assuming moreover that you have a model for merging data
   into the existing target system as opposed to merely cloning the source system,
   you still might not want to do it.
   You may not trust the conclusions of the other system's past interactions,
   as it implies trusting both the trustworthiness of all past inputs
   and the relevance of all past outputs.

   For trust reasons, you might as well want to replay recorded interactions.
   Such an action replay is a general mechanism
   that requires no shared representation of knowledge.
   Moreover, when replaying recorded interactions,
   you will want to filter and recalibrate these recordings
   based on a reevaluation of trustworthiness and relevance of these interactions.
   You may not want the target system to trust the source system's teacher
   as much (or as little) as the source system did;
   and the questions and answers that the source system issued
   may not seem relevant to the target system,
   whereas the target system may have interrogations
   not elucidated by those interactions.
   So unless you are very trusting,
   you probably want to see the recording as a story to be taken with a pinch of salt,
   it being understood that it happened between two other entities,
   and not as memory that is blended in as if it had happened
   to the target system itself.

   In other words, the best way to transfer knowledge to an inductive system
   is to have it take the same courses as the initial system;
   and while courses based on recordings of interactions with similar learning systems
   may be much better than recordings of courses without student interaction,
   it still does not replace interaction with a tutor,
   though a specialized tutor may remain much more expensive,
   unless it is itself automated — which is another typical a bootstrap problem.
}.
Thus, even when we have inductive systems
that can autonomously develop software,
we will not use extracts of internal inductive models
but deductive algorithms as an external @emph{lingua franca}
for humans and machines to transmit software and discuss about it.

At the same time, efficiency in communication and learning means
that the common language to develop software will allow
to independently specify bits of information
about arbitrarily abstract or concrete concepts
relating to the program being developed or its development process.
In other words, the language will be declarative
rather than imperative, functional, logical or object-oriented;
instead of having any single fixed execution semantics,
it will allow new concepts and abstractions, new definitional contexts,
and new semantics to be expressed, defined and developed
from existing ones.
Sentences explaining such definitions will be declarative metaprograms
algorithmically reducing new concepts to old ones;
but the inductive model may also have a lot of
partial fuzzy interrelated concepts that escape
any single well-founded definition.
Just as in human minds, inductive systems will have more internal state
than can be expressed with words;
not only will they make absurd mistakes and erroneous conjectures,
they will have nonsensical dreams, obsessions about impossible schemes,
humorous puns, poetic inspirations, intellectual challenges,
and a vast base of ineffable unconscious active memories;
the John McCarthy quip will apply to them that
``Language is froth on the surface of thought''.

As inductive systems grow in complexity, and
as it becomes harder to trust that an adversary did not intrude into the system
to filter communication or bias the induction,
even if you trust that the system itself has not gone crazy or adversarial,
we may eventually need to reason and communicate using
not just provable deductive algorithms,
but also verifiably trustworthy bootstrapping paths
from trusted sources to a working target system,
with some good randomized heuristics to manage trust
in said ultimately trusted sources.
Having conversations about paths to bootstrap the knowledge of other machines
in a way that humans can trust
also implies that the conversing machines have some concept of
the state of knowledge of the machines and humans concerned,
sometimes including themselves.

Bootstrapping paths from simple machine executable semantics
to complex systems through metaprograms of increasing declarativeness
will thus be a tool for building actual physical systems
as well as for building learned inductive models.
They are also a paradigm for humans to build and explain systems
even without much machine intelligence being involved.


@subsection{Internal Evolution}

The last intuition I want to share about the future of programming,
independent from the development of induction or of declarative languages,
is that evolutionary change will happen with or without you,
and that your best chances of success are when it happens within you.

Considering any organism, agent, cohesive group
or otherwise evolving project with an identity, etc.
amongst a set of many similar such organisms, etc.,
competing for control over the same scarce resources,
we may usefully distinguish between External Evolution and Internal Evolution.

External Evolution is what happens between projects:
some projects' identifying patterns survive, reproduce, continue;
other patterns fail to reproduce and go extinct
as their carrying projects die out.
Any given project involved in such External Evolution has only one chance:
its identifying pattern is set at the birth of the project
and either wins or fails with respect to its contemporary competitors.
For instance, sexual reproduction is External Evolution as far as
an individual human's genetic identity is concerned:
either you pass on your specific genes, or you do not.

Internal Evolution is what happens within a given project.
The project's working patterns survive or die out,
while the project stays alive,
and as they are selected for their survival qualities,
they help the project itself survive, and spawn new projects.
A project involving such Internal Evolution multiplies its chances of survival:
it adapts to the world by adopting better working patterns.
But Internal Evolution not only allows for a faster feedback loop,
it also enables many simultaneous incremental changes
that are not exclusive of each other,
and bundled in smaller package-deals.
For instance, the human immune system involves
Internal Evolution of lymphocytes;
and of course, human intellect involves
Internal Evolution of ideas and other memes.

In short, with External Evolution, you statically pick an identity,
and you see if you survive or die.
With Internal Evolution, you dynamically adopt ideas,
some ideas survive, some do not, but you survive and get stronger either way.
You need to beware of course of ideas that will survive at your expense
— but at least you do not have to stake all of yourself in one bet.
If you keep those ideas that work and reject those that do not,
if you preserve the integrity of those things
you really identify with
yet avoid staking as part of
@hyperlink["http://www.paulgraham.com/identity.html"]{your identity}
ideas that are not essential to your survival,
then you can benefit tremendously from Internal Evolution.

Interestingly enough, amongst the most significant evolutionary adaptations,
those that changed the Game of evolution,
many consisted in internalizing evolutionary forces,
making them work towards promoting the adaptation.
Cell membranes, DNA-coded replication, multi-cell organisms,
sexual reproduction, nervous systems, language, moral agency, the Internet...
in each case, the adaptation allowed a new kind of faster change
to happen amongst lines of adopters,
and leaving behind those who do not adopt it.
Once they appeared, if you did not have @emph{it}, you were out of The Big Game.

Similarly, in the specific realm of programming,
higher-order typed programming languages,
execution platforms with garbage collection,
the ability to leverage a huge number of standardized libraries,
Open Source development, are adaptations you better have adopted.
In the future, you may need to adopt infrastructure
that manages, evolves and combines metaprograms,
and dynamically switches program representation,
allowing changes that would be non-local
with a statically fixed source representation;
or you may need to embrace inductive systems,
or something else I cannot fathom.

Whatever happens, as evolution keeps accelerating,
many new adaptations will appear during your own programming career,
quite possibly including a few game-changing ones.
Hopefully, you can see the change happening and embrace it.
Otherwise: goodbye, it was nice meeting you.


@subsection{The Fast Lane}

To maximize the impact of your work, to remain relevant,
or simply to stay alive, you'll want to adopt a few best practices
to deal with the change around you.
If you do, you'll soon enough find
that you are moving in the Fast Lane,
where change happens.

The general piece of advice from which the rest follows is:
gear your system to emphasize Internal Evolution.
That is, maximize the domain of phenomena to which you adapt,
minimize the domain of phenomena for which you stay behind.

Thus, keep your identity lean:
ruthlessly trim from it
anything that is not essential to your own survival.
If something is merely useful,
make it part of your internal baggage, not your external identity.
Past adaptations are good to follow when they are good to follow,
they are bad otherwise, and they are never specifically ``you''.

Focus on one or a few narrow issues where you can be the best,
go deep, and contribute something that no one else can.
This contribution can be the part of yourself that you can spread,
that will keep @emph{you} alive beyond your mere biological existence.
About these vital issues, you'll have to constantly
stay on the top of the evolving competition,
which will require constant effort.
You only have so many resources available,
so pick your fight wisely.

For all the rest, readily admit your incompetence,
and delegate without mercy:
find competent people whose decisions you'll follow
wherever decisions are needed.
You do not have to find them in advance —
when you do not know botany (and even when you do),
it is wise to judge a plant by the fruits it bears.
You also should not fight for them,
and especially not if these people are asking you.
If they are so weak as to need the help of an incompetent,
you should not choose them to begin with;
the only reason why they could actually benefit
from your sacrifice to their cause
is if they are parasiting you@note{
   Of course, that does not mean you should never fight.
   You may realize that something is indeed part of your identity,
   and a cause worth risking your life for it.
   Or you may not be offered choice, and have to fight against your will.
   But do not let anyone draft your identity
   into serving as fodder for losing (or even winning) battles;
   remember that those who force you to fight are your enemies
   (your nearest enemies if not always your worst ones).
}.

And so choosing the right people to whom to delegate itself requires
some competence at the meta-level.
Though this choice can itself be delegated, the buck ultimately stops at you.
You @emph{have} to trust other people for quite a lot of things.
You may usefully understand the fundamentals of other fields,
but more importantly, you need to understand the fundamentals
of evolution, with its evolutionary pressures,
of human action, with the power of incentives,
or human psychology, with each individual's deep values, etc.
With some understanding, you'll soon find that
many common alternatives can be proven wrong,
yet not so obviously wrong that they will not seduce
those many people who do not dare to think in terms of fundamentals.
There again, keep your identity lean:
do not overcommit your self to what other people decide,
and do not hesitate to reject those who betray your trust.
In the end, you'll have to make the choice that matter to you,
depending on all the particulars that only you know about your own life.

Following appropriate rules may take you to the Fast Lane.
But if your software system is itself to be in the Fast Lane,
it better internalize as much of such rules as possible —
more so than competing software systems, anyway.
Your system should be lean,
having a small core identity that carries
its deep message with integrity.
It should focus on a few narrow things that it does well,
and adapt easily to change inside or outside this focus.
It should avoid autism, and systematically delegate
everything outside this focus to other systems.
And it should be able to take fundamentals into account,
and avoid common pitfalls.
Your software system will be successful not just
if it can withstand the high-speed evolution around it,
but if it can make this evolution even faster.

In any case,
whether you are pursuing a quest for the ultimate meaning,
whether you are concerned about the survival of your own memes,
whether you are in for the big bucks,
or whether it is the thrill of the action,
one thing is obvious to me:
once you grok what Evolution is all about,
you'll want to be where the action is,
and grab your bite of it.


@section{Conclusion}

@subsection{Where My Mouth Is}

The double narrative I've presented in this essay is
my vision of what computer systems may become.
I've started long ago the @hyperlink["http://tunes.org/"]{TUNES} project
to build a system that could internalize evolution.
But to my shame, it has remained vaporware ever since.

The goal of TUNES would be to provide the core system infrastructure
to which other software would delegate basic evolutionary mechanisms.
Extensibility from the ground up;
declarative metaprogramming;
virtualization and isolation of components
at appropriately high level of abstractions;
extraction, verification and implementation of bootstrap paths;
enforcement of contracts between various software actors;
conversation with inductive systems;
such would be services provided by the system.

I think that despite its many shortcomings,
Lisp is still my best starting point:
though it is not declarative enough,
particularly so at the meta-level,
and though it is too autistic,
Lisp traditionally includes some mechanisms
for internal evolution that most other languages are missing,
such as metaprogramming.
I believe the low-hanging fruits for such infrastructure are still
the use reflection to drive distributed systems,
but that inductive learning will soon be applicable to programs themselves.


@subsection{Where My Money Is}

Since October 2008, I'm now hiring someone full time
to extend Lisp towards the low-hanging fruits of @hyperlink["http://tunes.org/"]{TUNES}.
Meanwhile, I'm working on @hyperlink["http://common-lisp.net/project/xcvb/"]{XCVB}
to make Lisp evolution less autistic.

I readily admit I do not have quite as much to show as I would like.

What are @emph{you} doing? Are you interested in joining forces?


@; http://arxiv.org/abs/1510.04440 "Modelling the Evolution of Programming Languages" Silvia Crafa (Submitted on 15 Oct 2015)

}

@(generate-bib)
