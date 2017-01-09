## TODO

- [X] use \dbkrts to make meta-values more explicit
- [X] discuss limitations of target
- [X] clarify that although target tests Haskell programs, the technique is
      **not** Haskell-specific. it works for any language with algebraic
      datatypes.
- [X] incorporate rebuttal clarifications of experimental results
- [ ] rerun benchmarks with hackage release of target
- [ ] maybe extend related work with
  - [ ] Soft contract verification
  - [ ] Growing solver-aided languages with rosette
  - [ ] Generating efficient test sets with a model checker
- [ ] maybe add benchmark based on "Roll your own test bed for embedded real-time protocols: a haskell experience"


## Summary of PC Discussion

1) Previous work has already used Hoare-style pre-and-post conditions for
automated test generation, so this idea is not entirely new. It would be good if
the revised version of the paper could address novelty w.r.t to existing
work. The rebuttal made it clear that refinement types are more concise and
elegant for writing certain kinds of specifications for functional programs, but
what are the challenges of generating tests from specs written as refinement
types as opposed to other kinds of specs?

2) Both the tool and many aspects of the paper are quite specific to
Haskell. This is probably not something you can change in the final version, but
we wanted to make you aware that this is something that came up during the
discussions.

3) As pointed out by one of the reviewers, the proposed technique may suffer
from a kind of “input explosion” problem similar to the way dynamic symbolic
execution suffers from the path explosion problem. We were not quite convinced
by the author response w.r.t this point. In particular, even though the method
is symbolic, the scalability argument relies on the generated SMT formula being
sparse.

4) In the final version, we strongly encourage the authors to be more clear
about the highlights of the experimental evaluation.


## Comments from Lee Pike

- Title: it might be a little misleading, as arguably, the QC folks would call QuickCheck type-targeted (or maybe type-driven) as well. It just seems a little over-general.

- Is TARGET useful for proving that a theory has a model (i.e., not vacuous)?

- Awkward: “may not be cost effective for verification” —> “may be too difficult to verify”

- First para of sec. 2.1: “scale” —> “rescale”?

- Se.c 2.1: it’s not motivated early on why in this example we’re using TARGET rather than just getting a counterexample from attempting a proof.

- “It can be tricky to verify …” Can you be more precise: e.g., make a claim about whether any SMT solver can handle verifying the function?

- Sec. 3.1 onwards: I find the backticks distracting. What about bold or something?

- First para of Sec. 3.1: should ‘k’ be ‘x0’?

- In terms of real-world examples that TARGET would be excellent for, I used QC to test a physical-layer protocol with a lot of linear real-arith constraints. I wrote a custom generator by-hand. It’d be neat to see how well TARGET handles it. I’m on the plane right now, but it’s a paper by me in the HS symposium from around ’10 or so.

- Sec. 6.3: another related paper that might be worth citing is a paper by Rushby using SAL to do test-vector generation for embedded systems. Let me know if you have trouble finding it.
