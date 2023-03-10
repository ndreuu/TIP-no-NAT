(set-logic HORN)
(declare-datatypes ((Nat_216 0)) (((Z_656 ) (S_199 (unS_236 Nat_216)))))
(declare-fun diseqNat_216 (Nat_216 Nat_216) Bool)
(declare-fun unS_237 (Nat_216 Nat_216) Bool)
(declare-fun isZ_191 (Nat_216) Bool)
(declare-fun isS_191 (Nat_216) Bool)
(assert (forall ((x_15433 Nat_216))
	(unS_237 x_15433 (S_199 x_15433))))
(assert (isZ_191 Z_656))
(assert (forall ((x_15435 Nat_216))
	(isS_191 (S_199 x_15435))))
(assert (forall ((x_15436 Nat_216))
	(diseqNat_216 Z_656 (S_199 x_15436))))
(assert (forall ((x_15437 Nat_216))
	(diseqNat_216 (S_199 x_15437) Z_656)))
(assert (forall ((x_15438 Nat_216) (x_15439 Nat_216))
	(=> (diseqNat_216 x_15438 x_15439)
	    (diseqNat_216 (S_199 x_15438) (S_199 x_15439)))))
(declare-fun add_123 (Nat_216 Nat_216 Nat_216) Bool)
(declare-fun minus_120 (Nat_216 Nat_216 Nat_216) Bool)
(declare-fun le_118 (Nat_216 Nat_216) Bool)
(declare-fun ge_118 (Nat_216 Nat_216) Bool)
(declare-fun lt_121 (Nat_216 Nat_216) Bool)
(declare-fun gt_119 (Nat_216 Nat_216) Bool)
(declare-fun mult_118 (Nat_216 Nat_216 Nat_216) Bool)
(declare-fun div_118 (Nat_216 Nat_216 Nat_216) Bool)
(declare-fun mod_118 (Nat_216 Nat_216 Nat_216) Bool)
(assert (forall ((y_620 Nat_216))
	(add_123 y_620 Z_656 y_620)))
(assert (forall ((x_15417 Nat_216) (y_620 Nat_216) (r_135 Nat_216))
	(=> (add_123 r_135 x_15417 y_620)
	    (add_123 (S_199 r_135) (S_199 x_15417) y_620))))
(assert (forall ((y_620 Nat_216))
	(minus_120 Z_656 Z_656 y_620)))
(assert (forall ((x_15417 Nat_216) (y_620 Nat_216) (r_135 Nat_216))
	(=> (minus_120 r_135 x_15417 y_620)
	    (minus_120 (S_199 r_135) (S_199 x_15417) y_620))))
(assert (forall ((y_620 Nat_216))
	(le_118 Z_656 y_620)))
(assert (forall ((x_15417 Nat_216) (y_620 Nat_216))
	(=> (le_118 x_15417 y_620)
	    (le_118 (S_199 x_15417) (S_199 y_620)))))
(assert (forall ((y_620 Nat_216))
	(ge_118 y_620 Z_656)))
(assert (forall ((x_15417 Nat_216) (y_620 Nat_216))
	(=> (ge_118 x_15417 y_620)
	    (ge_118 (S_199 x_15417) (S_199 y_620)))))
(assert (forall ((y_620 Nat_216))
	(lt_121 Z_656 (S_199 y_620))))
(assert (forall ((x_15417 Nat_216) (y_620 Nat_216))
	(=> (lt_121 x_15417 y_620)
	    (lt_121 (S_199 x_15417) (S_199 y_620)))))
(assert (forall ((y_620 Nat_216))
	(gt_119 (S_199 y_620) Z_656)))
(assert (forall ((x_15417 Nat_216) (y_620 Nat_216))
	(=> (gt_119 x_15417 y_620)
	    (gt_119 (S_199 x_15417) (S_199 y_620)))))
(assert (forall ((y_620 Nat_216))
	(mult_118 Z_656 Z_656 y_620)))
(assert (forall ((x_15417 Nat_216) (y_620 Nat_216) (r_135 Nat_216) (z_657 Nat_216))
	(=>	(and (mult_118 r_135 x_15417 y_620)
			(add_123 z_657 r_135 y_620))
		(mult_118 z_657 (S_199 x_15417) y_620))))
(assert (forall ((x_15417 Nat_216) (y_620 Nat_216))
	(=> (lt_121 x_15417 y_620)
	    (div_118 Z_656 x_15417 y_620))))
(assert (forall ((x_15417 Nat_216) (y_620 Nat_216) (r_135 Nat_216) (z_657 Nat_216))
	(=>	(and (ge_118 x_15417 y_620)
			(minus_120 z_657 x_15417 y_620)
			(div_118 r_135 z_657 y_620))
		(div_118 (S_199 r_135) x_15417 y_620))))
(assert (forall ((x_15417 Nat_216) (y_620 Nat_216))
	(=> (lt_121 x_15417 y_620)
	    (mod_118 x_15417 x_15417 y_620))))
(assert (forall ((x_15417 Nat_216) (y_620 Nat_216) (r_135 Nat_216) (z_657 Nat_216))
	(=>	(and (ge_118 x_15417 y_620)
			(minus_120 z_657 x_15417 y_620)
			(mod_118 r_135 z_657 y_620))
		(mod_118 r_135 x_15417 y_620))))
(declare-datatypes ((list_87 0)) (((nil_93 ) (cons_87 (head_174 Nat_216) (tail_174 list_87)))))
(declare-fun diseqlist_87 (list_87 list_87) Bool)
(declare-fun head_175 (Nat_216 list_87) Bool)
(declare-fun tail_175 (list_87 list_87) Bool)
(declare-fun isnil_93 (list_87) Bool)
(declare-fun iscons_87 (list_87) Bool)
(assert (forall ((x_15419 Nat_216) (x_15420 list_87))
	(head_175 x_15419 (cons_87 x_15419 x_15420))))
(assert (forall ((x_15419 Nat_216) (x_15420 list_87))
	(tail_175 x_15420 (cons_87 x_15419 x_15420))))
(assert (isnil_93 nil_93))
(assert (forall ((x_15422 Nat_216) (x_15423 list_87))
	(iscons_87 (cons_87 x_15422 x_15423))))
(assert (forall ((x_15424 Nat_216) (x_15425 list_87))
	(diseqlist_87 nil_93 (cons_87 x_15424 x_15425))))
(assert (forall ((x_15426 Nat_216) (x_15427 list_87))
	(diseqlist_87 (cons_87 x_15426 x_15427) nil_93)))
(assert (forall ((x_15428 Nat_216) (x_15429 list_87) (x_15430 Nat_216) (x_15431 list_87))
	(=> (diseqNat_216 x_15428 x_15430)
	    (diseqlist_87 (cons_87 x_15428 x_15429) (cons_87 x_15430 x_15431)))))
(assert (forall ((x_15428 Nat_216) (x_15429 list_87) (x_15430 Nat_216) (x_15431 list_87))
	(=> (diseqlist_87 x_15429 x_15431)
	    (diseqlist_87 (cons_87 x_15428 x_15429) (cons_87 x_15430 x_15431)))))
(declare-fun interleave_0 (list_87 list_87 list_87) Bool)
(assert (forall ((x_15406 list_87) (z_655 Nat_216) (xs_193 list_87) (y_617 list_87))
	(=> (interleave_0 x_15406 y_617 xs_193)
	    (interleave_0 (cons_87 z_655 x_15406) (cons_87 z_655 xs_193) y_617))))
(assert (forall ((x_15407 list_87))
	(interleave_0 x_15407 nil_93 x_15407)))
(declare-fun evens_2 (list_87 list_87) Bool)
(declare-fun odds_2 (list_87 list_87) Bool)
(assert (forall ((x_15409 list_87) (y_618 Nat_216) (xs_194 list_87))
	(=> (odds_2 x_15409 xs_194)
	    (evens_2 (cons_87 y_618 x_15409) (cons_87 y_618 xs_194)))))
(assert (evens_2 nil_93 nil_93))
(assert (forall ((x_15411 list_87) (y_619 Nat_216) (xs_195 list_87))
	(=> (evens_2 x_15411 xs_195)
	    (odds_2 x_15411 (cons_87 y_619 xs_195)))))
(assert (odds_2 nil_93 nil_93))
(assert (forall ((x_15414 list_87) (x_15415 list_87) (x_15416 list_87) (xs_196 list_87))
	(=>	(and true
			(diseqlist_87 x_15416 xs_196)
			(evens_2 x_15414 xs_196)
			(odds_2 x_15415 xs_196)
			(interleave_0 x_15416 x_15414 x_15415))
		false)))
(check-sat)
