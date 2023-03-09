(set-logic HORN)
(declare-datatypes ((Nat_303 0)) (((Z_1001 ) (S_264 (unS_346 Nat_303)))))
(declare-fun diseqNat_303 (Nat_303 Nat_303) Bool)
(declare-fun unS_347 (Nat_303 Nat_303) Bool)
(declare-fun isZ_246 (Nat_303) Bool)
(declare-fun isS_246 (Nat_303) Bool)
(assert (forall ((x_26391 Nat_303))
	(unS_347 x_26391 (S_264 x_26391))))
(assert (isZ_246 Z_1001))
(assert (forall ((x_26393 Nat_303))
	(isS_246 (S_264 x_26393))))
(assert (forall ((x_26394 Nat_303))
	(diseqNat_303 Z_1001 (S_264 x_26394))))
(assert (forall ((x_26395 Nat_303))
	(diseqNat_303 (S_264 x_26395) Z_1001)))
(assert (forall ((x_26396 Nat_303) (x_26397 Nat_303))
	(=> (diseqNat_303 x_26396 x_26397)
	    (diseqNat_303 (S_264 x_26396) (S_264 x_26397)))))
(declare-fun add_184 (Nat_303 Nat_303 Nat_303) Bool)
(declare-fun minus_178 (Nat_303 Nat_303 Nat_303) Bool)
(declare-fun le_173 (Nat_303 Nat_303) Bool)
(declare-fun ge_173 (Nat_303 Nat_303) Bool)
(declare-fun lt_182 (Nat_303 Nat_303) Bool)
(declare-fun gt_175 (Nat_303 Nat_303) Bool)
(declare-fun mult_173 (Nat_303 Nat_303 Nat_303) Bool)
(declare-fun div_173 (Nat_303 Nat_303 Nat_303) Bool)
(declare-fun mod_173 (Nat_303 Nat_303 Nat_303) Bool)
(assert (forall ((y_1040 Nat_303))
	(add_184 y_1040 Z_1001 y_1040)))
(assert (forall ((x_26375 Nat_303) (y_1040 Nat_303) (r_206 Nat_303))
	(=> (add_184 r_206 x_26375 y_1040)
	    (add_184 (S_264 r_206) (S_264 x_26375) y_1040))))
(assert (forall ((y_1040 Nat_303))
	(minus_178 Z_1001 Z_1001 y_1040)))
(assert (forall ((x_26375 Nat_303) (y_1040 Nat_303) (r_206 Nat_303))
	(=> (minus_178 r_206 x_26375 y_1040)
	    (minus_178 (S_264 r_206) (S_264 x_26375) y_1040))))
(assert (forall ((y_1040 Nat_303))
	(le_173 Z_1001 y_1040)))
(assert (forall ((x_26375 Nat_303) (y_1040 Nat_303))
	(=> (le_173 x_26375 y_1040)
	    (le_173 (S_264 x_26375) (S_264 y_1040)))))
(assert (forall ((y_1040 Nat_303))
	(ge_173 y_1040 Z_1001)))
(assert (forall ((x_26375 Nat_303) (y_1040 Nat_303))
	(=> (ge_173 x_26375 y_1040)
	    (ge_173 (S_264 x_26375) (S_264 y_1040)))))
(assert (forall ((y_1040 Nat_303))
	(lt_182 Z_1001 (S_264 y_1040))))
(assert (forall ((x_26375 Nat_303) (y_1040 Nat_303))
	(=> (lt_182 x_26375 y_1040)
	    (lt_182 (S_264 x_26375) (S_264 y_1040)))))
(assert (forall ((y_1040 Nat_303))
	(gt_175 (S_264 y_1040) Z_1001)))
(assert (forall ((x_26375 Nat_303) (y_1040 Nat_303))
	(=> (gt_175 x_26375 y_1040)
	    (gt_175 (S_264 x_26375) (S_264 y_1040)))))
(assert (forall ((y_1040 Nat_303))
	(mult_173 Z_1001 Z_1001 y_1040)))
(assert (forall ((x_26375 Nat_303) (y_1040 Nat_303) (r_206 Nat_303) (z_1002 Nat_303))
	(=>	(and (mult_173 r_206 x_26375 y_1040)
			(add_184 z_1002 r_206 y_1040))
		(mult_173 z_1002 (S_264 x_26375) y_1040))))
(assert (forall ((x_26375 Nat_303) (y_1040 Nat_303))
	(=> (lt_182 x_26375 y_1040)
	    (div_173 Z_1001 x_26375 y_1040))))
(assert (forall ((x_26375 Nat_303) (y_1040 Nat_303) (r_206 Nat_303) (z_1002 Nat_303))
	(=>	(and (ge_173 x_26375 y_1040)
			(minus_178 z_1002 x_26375 y_1040)
			(div_173 r_206 z_1002 y_1040))
		(div_173 (S_264 r_206) x_26375 y_1040))))
(assert (forall ((x_26375 Nat_303) (y_1040 Nat_303))
	(=> (lt_182 x_26375 y_1040)
	    (mod_173 x_26375 x_26375 y_1040))))
(assert (forall ((x_26375 Nat_303) (y_1040 Nat_303) (r_206 Nat_303) (z_1002 Nat_303))
	(=>	(and (ge_173 x_26375 y_1040)
			(minus_178 z_1002 x_26375 y_1040)
			(mod_173 r_206 z_1002 y_1040))
		(mod_173 r_206 x_26375 y_1040))))
(declare-datatypes ((list_122 0)) (((nil_135 ) (cons_122 (head_244 Nat_303) (tail_244 list_122)))))
(declare-fun diseqlist_122 (list_122 list_122) Bool)
(declare-fun head_245 (Nat_303 list_122) Bool)
(declare-fun tail_245 (list_122 list_122) Bool)
(declare-fun isnil_135 (list_122) Bool)
(declare-fun iscons_122 (list_122) Bool)
(assert (forall ((x_26377 Nat_303) (x_26378 list_122))
	(head_245 x_26377 (cons_122 x_26377 x_26378))))
(assert (forall ((x_26377 Nat_303) (x_26378 list_122))
	(tail_245 x_26378 (cons_122 x_26377 x_26378))))
(assert (isnil_135 nil_135))
(assert (forall ((x_26380 Nat_303) (x_26381 list_122))
	(iscons_122 (cons_122 x_26380 x_26381))))
(assert (forall ((x_26382 Nat_303) (x_26383 list_122))
	(diseqlist_122 nil_135 (cons_122 x_26382 x_26383))))
(assert (forall ((x_26384 Nat_303) (x_26385 list_122))
	(diseqlist_122 (cons_122 x_26384 x_26385) nil_135)))
(assert (forall ((x_26386 Nat_303) (x_26387 list_122) (x_26388 Nat_303) (x_26389 list_122))
	(=> (diseqNat_303 x_26386 x_26388)
	    (diseqlist_122 (cons_122 x_26386 x_26387) (cons_122 x_26388 x_26389)))))
(assert (forall ((x_26386 Nat_303) (x_26387 list_122) (x_26388 Nat_303) (x_26389 list_122))
	(=> (diseqlist_122 x_26387 x_26389)
	    (diseqlist_122 (cons_122 x_26386 x_26387) (cons_122 x_26388 x_26389)))))
(declare-fun x_26368 (list_122 list_122 list_122) Bool)
(assert (forall ((x_26371 list_122) (z_1000 Nat_303) (xs_325 list_122) (y_1039 list_122))
	(=> (x_26368 x_26371 xs_325 y_1039)
	    (x_26368 (cons_122 z_1000 x_26371) (cons_122 z_1000 xs_325) y_1039))))
(assert (forall ((x_26372 list_122))
	(x_26368 x_26372 nil_135 x_26372)))
(assert (forall ((x_26373 list_122) (xs_326 list_122) (ys_101 list_122) (zs_31 list_122))
	(=>	(and true
			(diseqlist_122 ys_101 zs_31)
			(x_26368 x_26373 xs_326 ys_101)
			(x_26368 x_26373 xs_326 zs_31))
		false)))
(check-sat)