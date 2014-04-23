% Feldspar planning
%
% 2013-11-08



Agenda
=============================================================

  0. Agree on agenda
  1. Summary of message from Caspar et al (Brief!)
  2. Discussion of what we need to do before March to get past the next review.
     (This probably includes working with Dimitrios V. I will say
     something brief about his work on software defined radio at MSR.)
     I think this must also include increased contact to Ericsson. How
     should that happen?
  3. Where is Feldspar now?
  4. Where do we want Feldspar to be
      * in March
      * in one year's time
      * at the end of Anders' doctorate
      * at the end of RAW FP
  5. What should be our way of working to ensure that we please both
     ourselves and Caspar??
     How can we make it possible for more people (e.g. me, Nikita) to
     work on Feldspar in a useful way?
  6. What should be our plan for the coming 4 weeks?   (What resources are
     needed?)
  7. Next Actions.



Emils pre-notes
=============================================================

# feldspar-language

Blockers:

  * Observable sharing
  * Complicated code
  * Typed AST

Optional:

  *
  * User-supplied rules



Notes
=============================================================

## Summary of message from Caspar et al:

  * Lack of vision (whole of RAW FP)
  * Lack of industrial use

## What do we need to do by March 2014?

Convince people that Feldspar is useful

  * Ericsson
  * MSR
  * SAAB (want to try Feldspar)
  * Need Feldspar killer ideas (e.g. inductive testing, verification)
  * Need to fit into existing design flows
  * Present a tangible and believable vision

## Vision

Should Feldspar be usable by industry in 2 years time?

  * Embedded or not?
  * Startup?
  * Integrate Feldspar in existing flow at e.g. Ericsson?

Anders' vision

  * Write all DSP software in Feldspar (layer 1 and parts of layer 2)
      - At least 80% in ten years time
      - Need a story for mixing Feldspar and C
            - Controlling the signature of the generated C

Point of Feldspar?

  * Main point: Efficient code
  * Also important: Modeling, verification

## Where if Feldspar now

Peter's answer

  * Feldspar not efficient enough
  * Problem: Excessive copying; should be solvable by copy propagation
  * We don’t have a single algorithm (more complicated than a single for loop) that runs well enough

We need a benchmark suite to guide our effort

  * Many (like 50) examples, FFT at the top

We have a story for Feldspar (fusion, design exploration, etc.). It should be backed up by examples and numbers. The benchmarks should demo this.

  * If possible, use channel estimation as demo (filter composed with FFT, etc.)
  * Probablilistic Gaussion elimination to demo fusion and parallelism
  * Even if components are slower, their composition might not be

Current array representation

  * Unnecessary indirections
  * No true multi-dim arrays
  * PJ: These problems might disappear with the multidim work by Josef and the proposed virtual tuples by Emil.


Performance problems:

  * Sequential (standard compiler things)
      - Tuple; PJ: C-compiler might represent these “the right way”
  * Copying
  * Parallelism

How can ordinary people program things like multi-dim arrays?

SICS

  * Copy propagation (by end of 2013 presumably)
  * Multi-dim arrays
  * SIMD vectorization on hold waiting for language support (blocker: AST implementation)
  * PJ: The problems that would be solved by observable sharing disappeared for us.



APs
=============================================================

Anders: Contact EU project

Mary: Keep contact with SAAB

  * After that hand over to Emil

Koen: Contact Dimitriyos

Anders: Responsible for Ericsson contact

Mary: Benchmark tsar

  * Check if Markus Aronsson wants to work on this

(Markus work on OpenMP back end?

  * There are already parallel for loops in the back end)

Anders: sequential performance

Koen: copying

Josef: parallelism

Everyone: Write down your version of the vision

Koen/Emil: Talk to Anton about working on the back end

Mary: Talk to Josef

  * (Charge of multi-dim arrrays?)

Emil: Work on feldspar-language/syntactic?

Emil: Set up e.g. wiki pages for planning/communicating

