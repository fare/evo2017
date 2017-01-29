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

@conferenceinfo["Salon des Refusés 2017" "2017-04-04, Brussels, Belgium"] @copyrightyear{2017} @; SUBMITTING!

@abstract{
  The lives we live are weaved around the stories we tell.
  This is true of programmers as of all humans.
  And the greatest of all stories are @emph{origin stories}.
  I will examine the origin stories of software,
  from simple tales of software creation
  to elaborate theories of software evolution.
  And I will relate these stories to the tools they explain
  and the technological realities we bring about by following them.
  I will conclude by reflecting on storytelling,
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
But if you can't recognize and discuss informal patterns
in the structure of software @emph{development},
you have not yet entered the realm of language
with respect to software engineering.

Now the most powerful patterns about how humans behave are @emph{stories}:
they explain the behavior of a protagonist in terms of purposes and challenges,
with causes and consequences for success and failure.
Human brains are atuned to stories, whether implicit or explicit,
and humans are wont to cast themselves into roles defined by stories.
And the most powerful stories are @emph{cosmogonies} and @emph{theodicies}:
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
This essay doesn't even make any specific claim as to
which story best explains the origins of which software
--- it only tries to make each logogony understood,
as well as its implications.
Each reader can take it from there.
And if the presented story arc does promote
a thesis about the origins of software,
in the end it is that, as far as the emergence of software goes,
@emph{Man is no God} --- which should hardly offend anyone.

Still, this essay does make a claim:
that @emph{stories matter} ---
that you should examine the stories you live by,
be careful those you choose to accept or to reject,
and constantly refine them. For they will shape you.
So yes, question my beliefs; and question your own ---
that's the point, whichever your or my beliefs are.

@subsection{From Über-God to Underdog, and Beyond}

In the next two parts of this essay, I explore a gamut of
increasingly elaborate logogonies, and accompanying anthropodicies ---
stories about how software, and accompanying bugs, come into existence.
First, creationist stories; then, evolutionist stories.
To each story, we associate tools that humans use while writing software,
that each fit into the narrative yet not the previous ones.

In a last part of this essay, I step back from the stories themselves,
and discuss stories as a tool:
what we can tell about them, how they shape our behavior, and
what to expect from them in the future.

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
Wait, let's examine paradigms for the appearance of software on earth:
start from the initial naive paradigm of software
@hyperlink["http://www.catb.org/jargon/html/C/creationism.html"]{creationism}
and watch how it has evolved since.
}

@section{Software Creationism}

@subsection{The Simplest Logogony}

How does software come into existence?
Isn't it obvious?
If you ask a layman or a newbie,
his explanation might be as follows:

@story{At first the machine was uninitialized and blank;
then Man said: ``Let Software be such'' --- and so Software was.}

This simplest of stories is @emph{Software Creationism}:
in casts the programmer as a God Almighty outside and above the machine;
the software is His creation, His proxy, embodied in the machine.

This belief not only comes naturally to non-programmers
when confronted with the apparition of software;
it was also historically the first software paradigm assumed;
and it is still the tacit paradigm underlying
most undergraduate computer science education:
in exercises and tests, assignments and projects,
students are expected to produce
a perfect solution to a perfect specification,
from what is defined arbitrarily as ``scratch'',
whether on paper or on a restricted test machine.
Their code is evaluated once by the teacher;
it must stand alone and neither rely on any code by anyone else
nor contribute to such.

No programming tools are necessary in this paradigm;
just pen and paper to write the perfect program,
and a switchboard to insert the program into the machine.
A perfect Programmer-God does not need tools:
He transmits His perfect ideas to the machine directly in its memory
in binary (or base ten, etc.).
Programming the machine is best done directly in the machine's language,
for optimum representation of the God's perfect idea.

Indeed, that's not how software is written these days ---
which only shows that this naive logogony has long lost its dominance.

@subsection{The Simplest Anthropodicy}

Software creation by a superior God is beautiful story;
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
A devil modifies software in a way counters to God's intent.
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
our software engineering paradigms.

Interestingly, anytime we find a new and hopefully better programming paradigm,
we will always be able consider a variant of it
where some dark forces conspire to undo or corrupt
what the creative forces strive to achieve.
Thus, the idea of such opposing forces is a universal ``mixin''
for software engineering paradigms, the @emph{devil mixin}
--- our first storytelling meta-tool.

@subsection{Layered Creation}

While naive software creationism can adequately explain small programs,
the theory quickly reaches its limits:
large working programs just do not spring all armed from the head of Man.
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
At last Man produced a stable version...
though He's working on next patch release.}

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
possibly leaving fossils along the way,
--- all according to a carefully designed master plan.

In other words, @emph{Iterated Creation} is but another name for...

@subsection{Intelligent Design}

@emph{Intelligent Design} is a common paradigm among software engineers,
indeed implied by this very title,
if only because it flatters them:
it recognizes enough of the difficulty of programming to set professionals
above students and amateurs who can only write small programs;
yet it affirms that professionals tame big complex software issues
through the systematic endeavor of their Manly brainiac powers.
They are intelligent and in control.

Within this paradigm are created and elaborated such tools and concepts as
algebraic data structures and algorithms,
operating systems, source code, compilers, compiler-compilers, build systems,
modelling tools, hierarchically layered systems,
the iterated waterfall process, release cycles,
and all kind of neat engineering practices.

Now of course, this logogony can be enhanced with the devil mixin,
at which point new tools are engineered to counter
the chaos introduced by the Devil:
error messages, loggers, tracers and single-steppers to help locate bugs;
line-editors to modify the Program;
acceptance testing to validate It.

@subsection{Polytheism}

Another useful mixin for logogonies is @emph{the polytheism mixin}.
In this story modifier, there isn't one Man,
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
Each of these explanations for errors in Man's Designe
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
It isn't rare that good ideas were discarded in favor of bad ideas.
Even when things work, it is often for the wrong reasons;
and pieces of code that survive are used in ways they were not intended.

The issue isn't that errors creep in
that corrupt the implementation of a perfect idea;
the issue is that the idea was far from perfect to begin with.
As far as creator gods go, Programmers are only so bright.
Men have ``bounded rationality''.
In plain words, we are plain stupid.
And so, the next stepping stone on the way
towards better logogonies is:
@hyperlink["http://www.theshrubbery.com/udn/"]{Unintelligent design}.

@subsection{Unintelligent Design}

The Programmer-God may have an intent, but
He's a blind idiot who doesn't quite know
what it is he wants or how to achieve it.
He not only makes gross mistakes,
he goes on wild goose chases that lead nowhere,
and sets impossible goal while ignoring obvious truths.

Tools to help Him design programs will thus include
helpful messages from his compilers for error diagnostic and recovery.
Their role is not to tell an intelligent programmer
``the devil crept in while you weren't looking,
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
Tools do most of the work and clever interfaces try to present things
so that complexity is managed away from the stupid user.
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
you're glad they are idiots, too,
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
even when we don't make the story explicit.
Why do you use a typechecker? Because you make type errors.
What if you don't use a typechecker.
You still make type errors and pay the price.
Whatever stories you tell others to impress them,
or tell yourself to boost your own ego,
the tools you choose to use (or fail to use)
tell a more honest story about yourself.

But how far does Man have to humiliate Himself
before a truthful story emerges about the origins of Software?
If Software isn't the @emph{Triumph of the Will} of Man,
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
for Man to be good at the former even though he's bad at the latter.
This software paradigm is @emph{Supernatural Selection}.

Under this paradigm, new tools are selected into prominence.
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

The paradigm of Supernatural Selection obviously suffers
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
we are lead to the appearance of new tools,
that roughly correspond to the @emph{Second Wave of Cybernetics}.
Genetic Algorithms, supervised learning through neural networks,
probabilistically approximately correct learning methods
allow to mine information from large databases
without any explicitly designed representation of knowledge.
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

The paradigm of Teleological Evolution loosens
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

As far as paradigms for understanding software development go,
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
those that don't---don't.
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
--- everyone's all unique and different;
that doesn't exempt them from the laws of natural selection.
Programmers are machines among others, trying to survive in a wild
machine-eats-machine world;
their actions are their attempts to survive and reproduce
by gaining an edge in the race
for ever more efficient acquisition and use of reproductive resources.
If God exists, then ever since He created the world,
He has just been relaxing, sitting back and enjoying the show.
Evolution is not actively guided by God, it is God's Spectator Sport.
Such is the paradigm of @emph{Natural Selection}.

@subsection{Software Darwinism}

Natural Selection, unlike Supernatural Selection or Teleological Evolution,
is what (software) darwinists mean when they speak of (software) ``evolution''.

With this perspective on software development,
we gain new mental models for development processes.
We think of software in terms of self-sustaining systems,
that evolve and compete based on their ability to survive and spread.
We understand that the hosts and actors of this memetic competition
are men as well as machines, or even more so.
We may then notice that systems are never born big,
and that the only big systems that work are those
that were born small and evolved and grew in a way that
they were kept working at every step @~cite[Systemantics].
We relate the spread of ideas to the demographics
generations of humans and machines passing on
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
It doesn't offer direct solutions to design problems so much
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
Face it: you're no god, you're not outside the world and above it.
There @emph{might} be a God (or Gods),
who might or might not be intervening in this World---but
you have to come to the realization that
@emph{you} are definitely neither Him nor any of Them.
You're one of us earthworms, trying to make the best out of what you have
(or not trying, and thus probably failing
and promptly disappearing into irrelevance).
Evolution is not something for you to enjoy watching from above,
it is something you are part of, willy nilly.
You can't just let nature decide,
you're part of the nature that will decide.
Whichever genes and memes you carry may or may not survive--—it is largely
up through your actions that they will succeed or fail.
You're either in the experimental set
of changes that may or may not work out well,
or you're in the control set
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
You're the entrepreneur of your own life.

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
and in the ability to use the latter when the latter can't use the former.
But in the long run, proprietary software destroys incentive from anyone
who doesn't fully trust the software owner;
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
The topic of our story is now storytelling.

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

A story may good by itself---if it brings original insight;
it may be bad by itself---if it is logically inconsistent;
but most stories are only good or bad in context---as
useful or misleading ways to describe a situation.

If your problem is so simple that
you grok it all and can write down a software solution in one breath,
by all means, do it!
Don't follow a 12-step plan to software development
to be rinsed and lathered along 30 iterations.
If on the other hand you can't fully understand the problem you're tackling,
if designing a solution is too hard for structured methods,
then keep escalating the methods you use until you hopefully solve your problem.
Generating random programs until a solution is found should be a last resort.
Yet given proper biases in generation, cleverness in detection, and raw power,
this resort might be made affordable,
and find solutions where other methods fail.

Thus, when more elaborate stories are invented,
older, simpler stories don't die out:
they each find their niche of validity,
where the cost of improving on them
is higher that the return on the improvement;
meanwhile, new stories cover new ground more so than claim known territory.
Interestingly, as stories inspire tools that increase man's reach,
the domain of validity of older stories is expanded rather than narrowed.
Modern languages and IDEs indeed make it possible to instantly create
or systematically engineer programs that would previously have been
monumental endeavors.

The question therefore isn't to find a one-size-fits-all story,
but to identify the story that best fits the situation at hand,
which will make you most effective if you play the games it suggests.

@bold{TO BE CONTINUED...}
@XXX{

@subsection{Paradigms Matter}

This evolution of programming paradigms is a nice story,
but what is its relevance for software developers?
After all, the tools described above already exist;
they have been created, they have been engineered,
they have been selected or they have emerged,
without any of these paradigms being explicitly stated,
much less used as a conscious guide.
Do these paradigms correspond to anything real,
or are they but a nice-sounding rationalization?
What do we gain if anything by spelling them out?

Well, as Daniel Dennett wrote,
``There is no such thing as philosophy-free science;
there is only science whose philosophical baggage
is taken on board without examination.''
This is true of computer science and computer engineering
as of any other human endeavour.
Just because you don't state your assumptions
doesn't save you from the consequences
of following them when they are erroneous,
not anymore than putting your head in the sand
would save you from predators you can't see.
These paradigms do describe assumptions implicitly followed
without a conscious decision,
and each step in their evolution describes relevant phenomena
to which earlier paradigms are blind.
And those who make unconscious decisions
are but surer victims of the problems they are blind to.

Realizing that some phenomena are not accidents happening during development,
but constitute an essential part of it
is necessary to properly address them.
``Failing to plan is planning to fail.''
If you assume, say, the Intelligent Design paradigm,
even though you may benefit from tools developed with latter paradigms,
you will systematically waste resources
trying to intelligently design
what is beyond the reach of any intelligent design,
or aiming at the only solutions reachable by it
despite their being inferior to competition.
However, if you go beyond intelligent design,
you will come to better solutions naturally by letting them grow.
By embracing a more primitive paradigm,
you will introduce a lot of unnecessary nasty bugs by not taking seriously
the systematic processes of weeding them out early with dedicated tools;
you will systematically fail to consider cheap solutions that are at hand,
but that do not lend themselves to a perfect algorithmic description, etc.

Any discrepancy between reality and what you perceive is a blind spot;
the less you see, the more mistakes you make.
Any discrepancy between your practice and your theory
is a blind spot that you can readily fix
by applying the theory and enhancing the practice.
Any discrepancy between your theory and the best available theory
is a blind spot that you can fix by learning more theory.
Any discrepancy between the best available theory and reality
is a blind spot you cannot do much about.
Those who stay behind in terms of software development paradigm
will be incapable of doing what will appear to them as
clever lateral thinking, strokes of genius or unreachable fantasy,
whereas those who master further paradigms
will casually achieve feats previously deemed impossible
by a simple systematic application of their more evolved paradigms.
In the end, if you don't stay on top
of these paradigms and their application,
you'll be outcompeted by those who do.

Now to those who understand the relevance
of these programming paradigms,
the important open question is:
what is the next paradigm, if any?
Is the above view from @secref{Inside_Evolution}
the be-all, end-all of programming paradigms?
Is the refinement of existing tools our only hope?
Or will some further paradigm catch on?
Can one identify and adopt this paradigm early on,
and thus get an edge over competition?

What then, if anything, is next on our road
as far ahead of the current paradigm as that paradigm was of previous ones?


@subsection{Paradigmatic Optimism}

The simplest view about future paradigms is that
there will be no new ones, at least none that works.
Our understanding of software development is mature
and as good as it can get as far as the big picture goes,
though there may always be a myriad of minor details to get right.
This is @emph{Present Optimism}:
the theory that we've already reached the limit of knowledge.

Of course, assuming there is finite understandable information
about the big picture of software development,
there will be diminishing returns in understanding the field
and eventually not enough new relevant information
to possibly constitute a new paradigm change for the better.
And so we can be confident that
this theory of Present Optimism will @emph{some day} be true
about software development paradigms as about many things.

On the other hand, considering how new the field of software development is
and how fast it has changed in just the last few years,
it seems premature to declare that we fully understand
how software is developed and will not find new deep insights.
If indeed our understanding of software development
was to remain unchanged for, say, five to ten years,
and all developers were to settle towards a finite set
of well understood unchanging methods, then
we could assert with much more confidence
that indeed we have reached the acme of software development.
But this hasn't nearly happened yet,
and the case for Present Optimism is rather slim.

Another kind of optimism and a common idea about
the future of software paradigms has always been
that computers will somehow become more intelligent than men
and will take over the menial task of programming,
like djinns to whom you will give orders and who will grant your wishes.
This is Extreme Future Optimism, or @emph{Millenarism}:
the theory that soon(er or later),
we'll reach a Millenium (or Singularity)
where all our worries will be taken away.

However, this Optimism is based
on a misunderstanding of what progress is about,
a misunderstanding that is best dispelled by confronting it with
the equal and opposite misunderstanding:
the claim that such a future is bleak
because it means machines will be taking all our jobs away.
Hopefully the errors will cancel each other in a collision
from which light will emerge.


@subsection{No Escape From Evolution}

Yes, computers in many ways have replaced humans for many tasks,
and will replace humans for more tasks to come.
The building of tools that replace human work in software development
is what our whole story of paradigms was about.
But competition by computerized tools does not destroy human jobs,
it only displaces jobs towards new areas not covered by tools.
Useful tools provide some of the same positive satisfactions as before
and some more, while reducing the negative efforts;
the goal of some previous jobs is fulfilled without the associated costs.
The human resources previously used toward that goal
are not destroyed but liberated;
they are made available to be redirected to new useful endeavours
that couldn't previously be afforded.

Furthermore,
as long as humans and machines do not have
the same relative performance in all activities,
the law of comparative advantages ensures that
the tasks relatively better done by meatware than by software
will remain a domain of human activity.
And even if machines do it better than humans,
nobody prevents you from programming without machine help,
or from choosing to sponsor a human rather than a machine
for the programming tasks you need,
and there will probably always be a cottage industry of ``brain made'' software
just like there now is a cottage industry of ``hand made'' pottery.
But just like automation in other industries made these industries
vastly more productive and mankind at large vastly more wealthy,
so will automation in programming make software a more profitable industry
and better serve mankind.
Through all the software development tools already mentioned
in the article above, automation already serves mankind,
to a tremendous degree.
Continuing to program in Java will no more provide job security
than did programming in C++, COBOL, Assembly or Binary before;
it will only guarantee a lot of wasted effort and ultimately failure
in the Luddite refusal of automation.

What machines can neither possibly create nor destroy is
on the one hand the desire for ever more, ever higher satisfactions,
and on the other hand,
the ability to adapt and work towards these satisfaction:
in other words, human life, its drive and its spirit.
Machines displace this life for the better,
turning feats into chores, chores into menial tasks,
menial tasks into assumable commodities.
As our past worries are taken away,
we worry about new often loftier tasks that become our focus.
Ultimately, the only persons who create human jobs are human parents,
and only illness and death destroy jobs;
the rest is a matter of organizing existing human resources.
The fear of Artificial Intelligence and claim of Human Supremacy
is a lifeformist stance wrapped in the usual protectionist fallacies,
and its narrowmindedness should inspire
the same spite as racist or nationalist arguments before it.

Conversely, blind faith in Artificial Intelligence
is yet another mystic superstition by millenarists
dreaming of being saved from having to live their own lives.
This blind faith is a cop out, in that it wishes away
the very nature of life and its intrinsic difficulties.
Indeed, even if ``intelligent'' machines are to replace humans
in the activity of programming,
said machines won't be able cop out
of a programming paradigm that way;
the buck will have to stop somewhere,
and the issues will have to be addressed.
Sentient agents, whether electrical or biological,
are equally constrained by the laws of Human Action:
the competition for scarcity of resources,
the power of incentives,
the benefits of cooperation,
the law of supply and demand,
the importance of property rights, etc.,
and ultimately, @emph{evolution},
will apply to them as to they apply to us.

However brighter than today a future with artificial intelligences might be,
bridging the gap between today and that future,
if possible, won't be achieved by hand-waving.
It will require a paradigm shift that the cop out precisely prevents from knowing.

The legitimate cop out is not to assume knowledge but to admit ignorance:
``my previous investigations didn't lead
to any firm conclusion to this question,
and I don't have enough combined care for the matter
and trust in the remaining venues available for investigation
to afford further investigation.''
But are we reduced to this ignorance?
Are there not things we know or can guess about the directions
that the future may take?


@subsection{Bootstrapping Intelligence}

If you could provide an accurate functional description
of what the future would bring,
then this future would already be there,
by the simple execution of this description as a plan.
Any vision of the future is thus speculative, fallible, blurry and incomplete.
The tracks I will propose to follow are thus but my personal interpretation;
but, of course, no more so than the explanations that preceded,
or than the speculations of anyone else.

What is clear to me is that currently
an awful lot of what is done by programmers
can and will be automated away:
from more or less straightforward performance tweaks
to translation between various layers of software,
from maintenance of multiple representations of the system
to documentation, tutorials and testing,
from negotiating what the software should be doing
to ensuring that it does not do something unexpected.
A lot of the work
currently done by human intelligence
will in the future be replaced by computer automation.
Indeed, all the previously mentioned progress in terms of programming tools
from all the previously mentioned programming paradigms
can be seen as such replacement of human intelligence by computer automation.
And the trend will continue in ways we can't imagine precisely.

The purpose of computers is to @emph{automate that which can be automated}.
This applies to all human activities.
In particular this applies to software development itself.
The self-application of improved automation techniques
to the development of further automation techniques
one hope may be self-catalytic:
cumulative progress in machine intelligence
leads to ever more progress in machine intelligence;
bias towards systems that mutate better and faster
leads to systems with even stronger bias toward mutating better and faster;
pressure for higher value and lower costs
leads to automation of production
that increases pressure for higher value and lower costs.
In a sense, intelligence at programming computers
is the most general kind of intelligence computers may have;
a series of meta-level mutations
can quickly bootstrapping such intelligence
in a positive feedback loop,
until a phase transition is reached.

Now, whether we ever reach a ``Singularity'' where mankind is transcended
or whether the history of mankind continues as usual,
whether or not we ever create artificially intelligent entities
that behave as autonomous agents
or whether computer intelligence remains
a prop to augment human agents,
it is not immediately relevant where or how far the road goes;
that is not for you to decide, only to observe.
What matters is that this road will be taken,
and that those who stay behind will become irrelevant;
what matters is that if there is an inflexion point
where we'll reach quickly diminishing returns on investment in machine intelligence,
this point seems to be well ahead of us;
what matters is that we are within the part of the curve that accelerates.


@subsection{Quantum Leaps}

Certainly, we can imagine a lot of tools,
that will indeed help with software development:
For instance, we can work on better languages and ``optimizing'' compilers
that work better in a world of massively distributed computing,
with major disuniformity in the memory and processing architecture.
We can find better type systems, grow deeper expert systems,
improve statistical analysis of data bases,
and generally throw everything we have at improving software development.

But not all mutations contribute as much to bootstrapping machine intelligence.
There may be infinitely many innovations
that could allow to better apply programs to improve real-life
in as many fields;
but in any given field, such as the field of general intelligence,
for all we know, progress is quantum:
it is made of a finite number of breakthroughs
accompanied by large series of small improvements.
There is only so much that can be known, and so much that needs be known.

Most improvements in computer science are not breakthroughs
and don't remotely involve anything like computer intelligence.
At best, they improve the complexity of some class of programs we write
by some constant factor.
Simplifying such constants matters, at least to a point,
in that any software complexity leads to a combinatorial explosion
when automated programs try to synthetize and analyze such software.
Reduction of the gunk in computing can thus positively affect
the tractability of ``intelligent'' algorithms.
Still, these improvements are not computer intelligence per se,
only the matter that computer intelligence may work on.
The question thus remains to identify what are the
@emph{essential} difficulties that have to be tackled
on the way to more computer intelligence,
and where are low-hanging fruits on the path to solving
these specific difficulties.

What tools that can be developed today
can best help automate programming in the long run?
Which generally applicable software methods
are not currently applied to improving software development itself?
What kind of architecture makes it easier to combine such methods
and apply them to the improvement of software development itself?
What essential aspects of a more intelligent system
are currently left unresearched?

These are the kind of questions you should be asking
if you're interested in making a breakthrough in computer science.


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
they haven't been integrated to the core of computing systems.
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
that isn't explored yet.

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
least the program can't work and development is seriously set back.

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
   So unless you're very trusting,
   you probably want to see the recording as a story to be taken with a pinch of salt,
   it being understood that it happened between two other entities,
   and not as memory that's blended in as if it had happened
   to the target system itself.

   In other words, the best way to transfer knowledge to an inductive system
   is to have it take the same courses as the initial system;
   and while courses based on recordings of interactions with similar learning systems
   may be much better than recordings of courses without student interaction,
   it still doesn't replace interaction with a tutor,
   though a specialized tutor may remain much more expensive,
   unless it's itself automated — which is another typical a bootstrap problem.
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
as it becomes harder to trust that an adversary didn't intrude into the system
to filter communication or bias the induction,
even if you trust that the system itself hasn't gone crazy or adversarial,
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
either you pass on your specific genes, or you don't.

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
some ideas survive, some don't, but you survive and get stronger either way.
You need to beware of course of ideas that will survive at your expense
— but at least you don't have to stake all of yourself in one bet.
If you keep those ideas that work and reject those that don't,
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
Once they appeared, if you didn't have @emph{it}, you were out of The Big Game.

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
or something else I can't fathom.

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
that you're moving in the Fast Lane,
where change happens.

The general piece of advice from which the rest follows is:
gear your system to emphasize Internal Evolution.
That is, maximize the domain of phenomena to which you adapt,
minimize the domain of phenomena for which you stay behind.

Thus, keep your identity lean:
ruthlessly trim from it
anything that isn't essential to your own survival.
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
You don't have to find them in advance —
when you don't know botany (and even when you do),
it is wise to judge a plant by the fruits it bears.
You also shouldn't fight for them,
and especially not if these people are asking you.
If they're so weak as to need the help of an incompetent,
you shouldn't choose them to begin with;
the only reason why they could actually benefit
from your sacrifice to their cause
is if they are parasiting you@note{
   Of course, that doesn't mean you should never fight.
   You may realize that something is indeed part of your identity,
   and a cause worth risking your life for it.
   Or you may not be offered choice, and have to fight against your will.
   But don't let anyone draft your identity
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
yet not so obviously wrong that they won't seduce
those many people who don't dare to think in terms of fundamentals.
There again, keep your identity lean:
don't overcommit your self to what other people decide,
and don't hesitate to reject those who betray your trust.
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
whether you're pursuing a quest for the ultimate meaning,
whether you're concerned about the survival of your own memes,
whether you're in for the big bucks,
or whether it's the thrill of the action,
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

I readily admit I don't have quite as much to show as I'd like.

What are @emph{you} doing? Are you interested in joining forces?


@; http://arxiv.org/abs/1510.04440 "Modelling the Evolution of Programming Languages" Silvia Crafa (Submitted on 15 Oct 2015)

Though unlikely that your software activities follow the "perfect" logogony,
that doesn't mean that whatever dysfunction introduced there is
the most tragic dysfunction in your life.
There are many, many stories about Software and about Man,
that define your current behavior, the Role you Play.
And the one that you get most wrong,
that is causing you the greatest waste in your life,
that you could benefit most from fixing...
is for you to discover, examine, and fix.
Logogonies were just the most spectacular way of illustrating the notion
of stories and games we play.
So, make the stories of your life explicit, and rewrite them, better!

}

@(generate-bib)
