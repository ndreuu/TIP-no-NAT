(set-logic HORN)
(declare-datatypes ((Nat_538 0)) (((Z_1929 ) (S_427 (unS_636 Nat_538)))))
(declare-fun diseqNat_538 (Nat_538 Nat_538) Bool)
(declare-fun unS_637 (Nat_538 Nat_538) Bool)
(declare-fun isZ_394 (Nat_538) Bool)
(declare-fun isS_394 (Nat_538) Bool)
(assert (forall ((x_54152 Nat_538))
	(unS_637 x_54152 (S_427 x_54152))))
(assert (isZ_394 Z_1929))
(assert (forall ((x_54154 Nat_538))
	(isS_394 (S_427 x_54154))))
(assert (forall ((x_54155 Nat_538))
	(diseqNat_538 Z_1929 (S_427 x_54155))))
(assert (forall ((x_54156 Nat_538))
	(diseqNat_538 (S_427 x_54156) Z_1929)))
(assert (forall ((x_54157 Nat_538) (x_54158 Nat_538))
	(=> (diseqNat_538 x_54157 x_54158)
	    (diseqNat_538 (S_427 x_54157) (S_427 x_54158)))))
(declare-fun add_344 (Nat_538 Nat_538 Nat_538) Bool)
(declare-fun minus_339 (Nat_538 Nat_538 Nat_538) Bool)
(declare-fun le_318 (Nat_538 Nat_538) Bool)
(declare-fun ge_318 (Nat_538 Nat_538) Bool)
(declare-fun lt_338 (Nat_538 Nat_538) Bool)
(declare-fun gt_321 (Nat_538 Nat_538) Bool)
(declare-fun mult_318 (Nat_538 Nat_538 Nat_538) Bool)
(declare-fun div_318 (Nat_538 Nat_538 Nat_538) Bool)
(declare-fun mod_320 (Nat_538 Nat_538 Nat_538) Bool)
(assert (forall ((y_2164 Nat_538))
	(add_344 y_2164 Z_1929 y_2164)))
(assert (forall ((x_54136 Nat_538) (y_2164 Nat_538) (r_391 Nat_538))
	(=> (add_344 r_391 x_54136 y_2164)
	    (add_344 (S_427 r_391) (S_427 x_54136) y_2164))))
(assert (forall ((y_2164 Nat_538))
	(minus_339 Z_1929 Z_1929 y_2164)))
(assert (forall ((x_54136 Nat_538) (y_2164 Nat_538) (r_391 Nat_538))
	(=> (minus_339 r_391 x_54136 y_2164)
	    (minus_339 (S_427 r_391) (S_427 x_54136) y_2164))))
(assert (forall ((y_2164 Nat_538))
	(le_318 Z_1929 y_2164)))
(assert (forall ((x_54136 Nat_538) (y_2164 Nat_538))
	(=> (le_318 x_54136 y_2164)
	    (le_318 (S_427 x_54136) (S_427 y_2164)))))
(assert (forall ((y_2164 Nat_538))
	(ge_318 y_2164 Z_1929)))
(assert (forall ((x_54136 Nat_538) (y_2164 Nat_538))
	(=> (ge_318 x_54136 y_2164)
	    (ge_318 (S_427 x_54136) (S_427 y_2164)))))
(assert (forall ((y_2164 Nat_538))
	(lt_338 Z_1929 (S_427 y_2164))))
(assert (forall ((x_54136 Nat_538) (y_2164 Nat_538))
	(=> (lt_338 x_54136 y_2164)
	    (lt_338 (S_427 x_54136) (S_427 y_2164)))))
(assert (forall ((y_2164 Nat_538))
	(gt_321 (S_427 y_2164) Z_1929)))
(assert (forall ((x_54136 Nat_538) (y_2164 Nat_538))
	(=> (gt_321 x_54136 y_2164)
	    (gt_321 (S_427 x_54136) (S_427 y_2164)))))
(assert (forall ((y_2164 Nat_538))
	(mult_318 Z_1929 Z_1929 y_2164)))
(assert (forall ((x_54136 Nat_538) (y_2164 Nat_538) (r_391 Nat_538) (z_1930 Nat_538))
	(=>	(and (mult_318 r_391 x_54136 y_2164)
			(add_344 z_1930 r_391 y_2164))
		(mult_318 z_1930 (S_427 x_54136) y_2164))))
(assert (forall ((x_54136 Nat_538) (y_2164 Nat_538))
	(=> (lt_338 x_54136 y_2164)
	    (div_318 Z_1929 x_54136 y_2164))))
(assert (forall ((x_54136 Nat_538) (y_2164 Nat_538) (r_391 Nat_538) (z_1930 Nat_538))
	(=>	(and (ge_318 x_54136 y_2164)
			(minus_339 z_1930 x_54136 y_2164)
			(div_318 r_391 z_1930 y_2164))
		(div_318 (S_427 r_391) x_54136 y_2164))))
(assert (forall ((x_54136 Nat_538) (y_2164 Nat_538))
	(=> (lt_338 x_54136 y_2164)
	    (mod_320 x_54136 x_54136 y_2164))))
(assert (forall ((x_54136 Nat_538) (y_2164 Nat_538) (r_391 Nat_538) (z_1930 Nat_538))
	(=>	(and (ge_318 x_54136 y_2164)
			(minus_339 z_1930 x_54136 y_2164)
			(mod_320 r_391 z_1930 y_2164))
		(mod_320 r_391 x_54136 y_2164))))
(declare-datatypes ((list_223 0)) (((nil_253 ) (cons_223 (head_446 Nat_538) (tail_446 list_223)))))
(declare-fun diseqlist_223 (list_223 list_223) Bool)
(declare-fun head_447 (Nat_538 list_223) Bool)
(declare-fun tail_447 (list_223 list_223) Bool)
(declare-fun isnil_253 (list_223) Bool)
(declare-fun iscons_223 (list_223) Bool)
(assert (forall ((x_54138 Nat_538) (x_54139 list_223))
	(head_447 x_54138 (cons_223 x_54138 x_54139))))
(assert (forall ((x_54138 Nat_538) (x_54139 list_223))
	(tail_447 x_54139 (cons_223 x_54138 x_54139))))
(assert (isnil_253 nil_253))
(assert (forall ((x_54141 Nat_538) (x_54142 list_223))
	(iscons_223 (cons_223 x_54141 x_54142))))
(assert (forall ((x_54143 Nat_538) (x_54144 list_223))
	(diseqlist_223 nil_253 (cons_223 x_54143 x_54144))))
(assert (forall ((x_54145 Nat_538) (x_54146 list_223))
	(diseqlist_223 (cons_223 x_54145 x_54146) nil_253)))
(assert (forall ((x_54147 Nat_538) (x_54148 list_223) (x_54149 Nat_538) (x_54150 list_223))
	(=> (diseqNat_538 x_54147 x_54149)
	    (diseqlist_223 (cons_223 x_54147 x_54148) (cons_223 x_54149 x_54150)))))
(assert (forall ((x_54147 Nat_538) (x_54148 list_223) (x_54149 Nat_538) (x_54150 list_223))
	(=> (diseqlist_223 x_54148 x_54150)
	    (diseqlist_223 (cons_223 x_54147 x_54148) (cons_223 x_54149 x_54150)))))
(declare-fun x_54119 (list_223 list_223 list_223) Bool)
(assert (forall ((x_54124 list_223) (z_1928 Nat_538) (xs_612 list_223) (y_2161 list_223))
	(=> (x_54119 x_54124 xs_612 y_2161)
	    (x_54119 (cons_223 z_1928 x_54124) (cons_223 z_1928 xs_612) y_2161))))
(assert (forall ((x_54125 list_223))
	(x_54119 x_54125 nil_253 x_54125)))
(declare-fun rev_6 (list_223 list_223) Bool)
(assert (forall ((x_54126 list_223) (x_54127 list_223) (y_2162 Nat_538) (xs_613 list_223))
	(=>	(and (rev_6 x_54127 xs_613)
			(x_54119 x_54126 x_54127 (cons_223 y_2162 nil_253)))
		(rev_6 x_54126 (cons_223 y_2162 xs_613)))))
(assert (rev_6 nil_253 nil_253))
(assert (forall ((x_54130 list_223) (x_54131 list_223) (x_54132 list_223) (x_54133 list_223) (x_54134 list_223) (x_54135 list_223) (x_54122 list_223) (y_2163 list_223))
	(=>	(and true
			(diseqlist_223 x_54132 x_54135)
			(rev_6 x_54130 x_54122)
			(rev_6 x_54131 x_54130)
			(x_54119 x_54132 x_54131 y_2163)
			(x_54119 x_54133 x_54122 y_2163)
			(rev_6 x_54134 x_54133)
			(rev_6 x_54135 x_54134))
		false)))
(check-sat)