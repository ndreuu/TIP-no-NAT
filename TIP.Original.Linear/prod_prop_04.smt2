(set-logic HORN)
(declare-datatypes ((Nat_620 0)) (((Z_2168 ) (S_509 (unS_728 Nat_620)))))
(declare-fun diseqNat_620 (Nat_620 Nat_620) Bool)
(declare-fun unS_729 (Nat_620 Nat_620) Bool)
(declare-fun isZ_476 (Nat_620) Bool)
(declare-fun isS_476 (Nat_620) Bool)
(assert (forall ((x_56466 Nat_620))
	(unS_729 x_56466 (S_509 x_56466))))
(assert (isZ_476 Z_2168))
(assert (forall ((x_56468 Nat_620))
	(isS_476 (S_509 x_56468))))
(assert (forall ((x_56469 Nat_620))
	(diseqNat_620 Z_2168 (S_509 x_56469))))
(assert (forall ((x_56470 Nat_620))
	(diseqNat_620 (S_509 x_56470) Z_2168)))
(assert (forall ((x_56471 Nat_620) (x_56472 Nat_620))
	(=> (diseqNat_620 x_56471 x_56472)
	    (diseqNat_620 (S_509 x_56471) (S_509 x_56472)))))
(declare-fun add_390 (Nat_620 Nat_620 Nat_620) Bool)
(declare-fun minus_385 (Nat_620 Nat_620 Nat_620) Bool)
(declare-fun le_364 (Nat_620 Nat_620) Bool)
(declare-fun ge_364 (Nat_620 Nat_620) Bool)
(declare-fun lt_384 (Nat_620 Nat_620) Bool)
(declare-fun gt_367 (Nat_620 Nat_620) Bool)
(declare-fun mult_365 (Nat_620 Nat_620 Nat_620) Bool)
(declare-fun div_364 (Nat_620 Nat_620 Nat_620) Bool)
(declare-fun mod_366 (Nat_620 Nat_620 Nat_620) Bool)
(assert (forall ((y_2403 Nat_620))
	(add_390 y_2403 Z_2168 y_2403)))
(assert (forall ((x_56442 Nat_620) (y_2403 Nat_620) (r_437 Nat_620))
	(=> (add_390 r_437 x_56442 y_2403)
	    (add_390 (S_509 r_437) (S_509 x_56442) y_2403))))
(assert (forall ((y_2403 Nat_620))
	(minus_385 Z_2168 Z_2168 y_2403)))
(assert (forall ((x_56442 Nat_620) (y_2403 Nat_620) (r_437 Nat_620))
	(=> (minus_385 r_437 x_56442 y_2403)
	    (minus_385 (S_509 r_437) (S_509 x_56442) y_2403))))
(assert (forall ((y_2403 Nat_620))
	(le_364 Z_2168 y_2403)))
(assert (forall ((x_56442 Nat_620) (y_2403 Nat_620))
	(=> (le_364 x_56442 y_2403)
	    (le_364 (S_509 x_56442) (S_509 y_2403)))))
(assert (forall ((y_2403 Nat_620))
	(ge_364 y_2403 Z_2168)))
(assert (forall ((x_56442 Nat_620) (y_2403 Nat_620))
	(=> (ge_364 x_56442 y_2403)
	    (ge_364 (S_509 x_56442) (S_509 y_2403)))))
(assert (forall ((y_2403 Nat_620))
	(lt_384 Z_2168 (S_509 y_2403))))
(assert (forall ((x_56442 Nat_620) (y_2403 Nat_620))
	(=> (lt_384 x_56442 y_2403)
	    (lt_384 (S_509 x_56442) (S_509 y_2403)))))
(assert (forall ((y_2403 Nat_620))
	(gt_367 (S_509 y_2403) Z_2168)))
(assert (forall ((x_56442 Nat_620) (y_2403 Nat_620))
	(=> (gt_367 x_56442 y_2403)
	    (gt_367 (S_509 x_56442) (S_509 y_2403)))))
(assert (forall ((y_2403 Nat_620))
	(mult_365 Z_2168 Z_2168 y_2403)))
(assert (forall ((x_56442 Nat_620) (y_2403 Nat_620) (r_437 Nat_620) (z_2169 Nat_620))
	(=>	(and (mult_365 r_437 x_56442 y_2403)
			(add_390 z_2169 r_437 y_2403))
		(mult_365 z_2169 (S_509 x_56442) y_2403))))
(assert (forall ((x_56442 Nat_620) (y_2403 Nat_620))
	(=> (lt_384 x_56442 y_2403)
	    (div_364 Z_2168 x_56442 y_2403))))
(assert (forall ((x_56442 Nat_620) (y_2403 Nat_620) (r_437 Nat_620) (z_2169 Nat_620))
	(=>	(and (ge_364 x_56442 y_2403)
			(minus_385 z_2169 x_56442 y_2403)
			(div_364 r_437 z_2169 y_2403))
		(div_364 (S_509 r_437) x_56442 y_2403))))
(assert (forall ((x_56442 Nat_620) (y_2403 Nat_620))
	(=> (lt_384 x_56442 y_2403)
	    (mod_366 x_56442 x_56442 y_2403))))
(assert (forall ((x_56442 Nat_620) (y_2403 Nat_620) (r_437 Nat_620) (z_2169 Nat_620))
	(=>	(and (ge_364 x_56442 y_2403)
			(minus_385 z_2169 x_56442 y_2403)
			(mod_366 r_437 z_2169 y_2403))
		(mod_366 r_437 x_56442 y_2403))))
(declare-datatypes ((list_262 0)) (((nil_292 ) (cons_262 (head_524 Nat_620) (tail_524 list_262)))))
(declare-fun diseqlist_262 (list_262 list_262) Bool)
(declare-fun head_525 (Nat_620 list_262) Bool)
(declare-fun tail_525 (list_262 list_262) Bool)
(declare-fun isnil_292 (list_262) Bool)
(declare-fun iscons_262 (list_262) Bool)
(assert (forall ((x_56444 Nat_620) (x_56445 list_262))
	(head_525 x_56444 (cons_262 x_56444 x_56445))))
(assert (forall ((x_56444 Nat_620) (x_56445 list_262))
	(tail_525 x_56445 (cons_262 x_56444 x_56445))))
(assert (isnil_292 nil_292))
(assert (forall ((x_56447 Nat_620) (x_56448 list_262))
	(iscons_262 (cons_262 x_56447 x_56448))))
(assert (forall ((x_56449 Nat_620) (x_56450 list_262))
	(diseqlist_262 nil_292 (cons_262 x_56449 x_56450))))
(assert (forall ((x_56451 Nat_620) (x_56452 list_262))
	(diseqlist_262 (cons_262 x_56451 x_56452) nil_292)))
(assert (forall ((x_56453 Nat_620) (x_56454 list_262) (x_56455 Nat_620) (x_56456 list_262))
	(=> (diseqNat_620 x_56453 x_56455)
	    (diseqlist_262 (cons_262 x_56453 x_56454) (cons_262 x_56455 x_56456)))))
(assert (forall ((x_56453 Nat_620) (x_56454 list_262) (x_56455 Nat_620) (x_56456 list_262))
	(=> (diseqlist_262 x_56454 x_56456)
	    (diseqlist_262 (cons_262 x_56453 x_56454) (cons_262 x_56455 x_56456)))))
(declare-datatypes ((Nat_619 0)) (((Z_2166 ) (S_508 (projS_222 Nat_619)))))
(declare-fun diseqNat_619 (Nat_619 Nat_619) Bool)
(declare-fun projS_223 (Nat_619 Nat_619) Bool)
(declare-fun isZ_475 (Nat_619) Bool)
(declare-fun isS_475 (Nat_619) Bool)
(assert (forall ((x_56458 Nat_619))
	(projS_223 x_56458 (S_508 x_56458))))
(assert (isZ_475 Z_2166))
(assert (forall ((x_56460 Nat_619))
	(isS_475 (S_508 x_56460))))
(assert (forall ((x_56461 Nat_619))
	(diseqNat_619 Z_2166 (S_508 x_56461))))
(assert (forall ((x_56462 Nat_619))
	(diseqNat_619 (S_508 x_56462) Z_2166)))
(assert (forall ((x_56463 Nat_619) (x_56464 Nat_619))
	(=> (diseqNat_619 x_56463 x_56464)
	    (diseqNat_619 (S_508 x_56463) (S_508 x_56464)))))
(declare-fun length_53 (Nat_619 list_262) Bool)
(assert (forall ((x_56430 Nat_619) (y_2400 Nat_620) (xs_695 list_262))
	(=> (length_53 x_56430 xs_695)
	    (length_53 (S_508 x_56430) (cons_262 y_2400 xs_695)))))
(assert (length_53 Z_2166 nil_292))
(declare-fun double_1 (Nat_619 Nat_619) Bool)
(assert (forall ((x_56433 Nat_619) (y_2401 Nat_619))
	(=> (double_1 x_56433 y_2401)
	    (double_1 (S_508 (S_508 x_56433)) (S_508 y_2401)))))
(assert (double_1 Z_2166 Z_2166))
(declare-fun x_56426 (list_262 list_262 list_262) Bool)
(assert (forall ((x_56436 list_262) (z_2167 Nat_620) (xs_696 list_262) (y_2402 list_262))
	(=> (x_56426 x_56436 xs_696 y_2402)
	    (x_56426 (cons_262 z_2167 x_56436) (cons_262 z_2167 xs_696) y_2402))))
(assert (forall ((x_56437 list_262))
	(x_56426 x_56437 nil_292 x_56437)))
(assert (forall ((x_56438 list_262) (x_56439 Nat_619) (x_56440 Nat_619) (x_56441 Nat_619) (x_56428 list_262))
	(=>	(and true
			(diseqNat_619 x_56439 x_56441)
			(x_56426 x_56438 x_56428 x_56428)
			(length_53 x_56439 x_56438)
			(length_53 x_56440 x_56428)
			(double_1 x_56441 x_56440))
		false)))
(check-sat)
