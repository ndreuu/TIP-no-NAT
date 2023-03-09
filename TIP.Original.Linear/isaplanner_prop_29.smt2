(set-logic HORN)
(declare-datatypes ((Bool_47 0)) (((false_47 ) (true_47 ))))
(declare-fun diseqBool_19 (Bool_47 Bool_47) Bool)
(declare-fun isfalse_19 (Bool_47) Bool)
(declare-fun istrue_19 (Bool_47) Bool)
(assert (isfalse_19 false_47))
(assert (istrue_19 true_47))
(assert (diseqBool_19 false_47 true_47))
(assert (diseqBool_19 true_47 false_47))
(declare-fun and_47 (Bool_47 Bool_47 Bool_47) Bool)
(declare-fun or_47 (Bool_47 Bool_47 Bool_47) Bool)
(declare-fun hence_47 (Bool_47 Bool_47 Bool_47) Bool)
(declare-fun not_47 (Bool_47 Bool_47) Bool)
(assert (and_47 false_47 false_47 false_47))
(assert (and_47 false_47 true_47 false_47))
(assert (and_47 false_47 false_47 true_47))
(assert (and_47 true_47 true_47 true_47))
(assert (or_47 false_47 false_47 false_47))
(assert (or_47 true_47 true_47 false_47))
(assert (or_47 true_47 false_47 true_47))
(assert (or_47 true_47 true_47 true_47))
(assert (hence_47 true_47 false_47 false_47))
(assert (hence_47 false_47 true_47 false_47))
(assert (hence_47 true_47 false_47 true_47))
(assert (hence_47 true_47 true_47 true_47))
(assert (not_47 true_47 false_47))
(assert (not_47 false_47 true_47))
(declare-datatypes ((Nat_91 0)) (((Z_257 ) (S_91 (projS_88 Nat_91)))))
(declare-fun diseqNat_91 (Nat_91 Nat_91) Bool)
(declare-fun projS_89 (Nat_91 Nat_91) Bool)
(declare-fun isZ_91 (Nat_91) Bool)
(declare-fun isS_91 (Nat_91) Bool)
(assert (forall ((x_2524 Nat_91))
	(projS_89 x_2524 (S_91 x_2524))))
(assert (isZ_91 Z_257))
(assert (forall ((x_2526 Nat_91))
	(isS_91 (S_91 x_2526))))
(assert (forall ((x_2527 Nat_91))
	(diseqNat_91 Z_257 (S_91 x_2527))))
(assert (forall ((x_2528 Nat_91))
	(diseqNat_91 (S_91 x_2528) Z_257)))
(assert (forall ((x_2529 Nat_91) (x_2530 Nat_91))
	(=> (diseqNat_91 x_2529 x_2530)
	    (diseqNat_91 (S_91 x_2529) (S_91 x_2530)))))
(declare-datatypes ((list_42 0)) (((nil_42 ) (cons_42 (head_84 Nat_91) (tail_84 list_42)))))
(declare-fun diseqlist_42 (list_42 list_42) Bool)
(declare-fun head_85 (Nat_91 list_42) Bool)
(declare-fun tail_85 (list_42 list_42) Bool)
(declare-fun isnil_42 (list_42) Bool)
(declare-fun iscons_42 (list_42) Bool)
(assert (forall ((x_2532 Nat_91) (x_2533 list_42))
	(head_85 x_2532 (cons_42 x_2532 x_2533))))
(assert (forall ((x_2532 Nat_91) (x_2533 list_42))
	(tail_85 x_2533 (cons_42 x_2532 x_2533))))
(assert (isnil_42 nil_42))
(assert (forall ((x_2535 Nat_91) (x_2536 list_42))
	(iscons_42 (cons_42 x_2535 x_2536))))
(assert (forall ((x_2537 Nat_91) (x_2538 list_42))
	(diseqlist_42 nil_42 (cons_42 x_2537 x_2538))))
(assert (forall ((x_2539 Nat_91) (x_2540 list_42))
	(diseqlist_42 (cons_42 x_2539 x_2540) nil_42)))
(assert (forall ((x_2541 Nat_91) (x_2542 list_42) (x_2543 Nat_91) (x_2544 list_42))
	(=> (diseqNat_91 x_2541 x_2543)
	    (diseqlist_42 (cons_42 x_2541 x_2542) (cons_42 x_2543 x_2544)))))
(assert (forall ((x_2541 Nat_91) (x_2542 list_42) (x_2543 Nat_91) (x_2544 list_42))
	(=> (diseqlist_42 x_2542 x_2544)
	    (diseqlist_42 (cons_42 x_2541 x_2542) (cons_42 x_2543 x_2544)))))
(declare-fun x_2495 (Bool_47 Nat_91 Nat_91) Bool)
(assert (forall ((x_2501 Bool_47) (y_203 Nat_91) (x_2497 Nat_91))
	(=> (x_2495 x_2501 x_2497 y_203)
	    (x_2495 x_2501 (S_91 x_2497) (S_91 y_203)))))
(assert (forall ((x_2497 Nat_91))
	(x_2495 false_47 (S_91 x_2497) Z_257)))
(assert (forall ((z_258 Nat_91))
	(x_2495 false_47 Z_257 (S_91 z_258))))
(assert (x_2495 true_47 Z_257 Z_257))
(declare-fun elem_5 (Bool_47 Nat_91 list_42) Bool)
(assert (forall ((z_259 Nat_91) (xs_74 list_42) (x_2498 Nat_91))
	(=> (x_2495 true_47 x_2498 z_259)
	    (elem_5 true_47 x_2498 (cons_42 z_259 xs_74)))))
(assert (forall ((x_2509 Bool_47) (z_259 Nat_91) (xs_74 list_42) (x_2498 Nat_91))
	(=>	(and (elem_5 x_2509 x_2498 xs_74)
			(x_2495 false_47 x_2498 z_259))
		(elem_5 x_2509 x_2498 (cons_42 z_259 xs_74)))))
(assert (forall ((x_2498 Nat_91))
	(elem_5 false_47 x_2498 nil_42)))
(declare-fun ins_2 (list_42 Nat_91 list_42) Bool)
(assert (forall ((z_260 Nat_91) (xs_75 list_42) (x_2499 Nat_91))
	(=> (x_2495 true_47 x_2499 z_260)
	    (ins_2 (cons_42 z_260 xs_75) x_2499 (cons_42 z_260 xs_75)))))
(assert (forall ((x_2516 list_42) (z_260 Nat_91) (xs_75 list_42) (x_2499 Nat_91))
	(=>	(and (ins_2 x_2516 x_2499 xs_75)
			(x_2495 false_47 x_2499 z_260))
		(ins_2 (cons_42 z_260 x_2516) x_2499 (cons_42 z_260 xs_75)))))
(assert (forall ((x_2499 Nat_91))
	(ins_2 (cons_42 x_2499 nil_42) x_2499 nil_42)))
(assert (forall ((x_2518 list_42) (x_2500 Nat_91) (xs_76 list_42))
	(=>	(and true
			(ins_2 x_2518 x_2500 xs_76)
			(elem_5 false_47 x_2500 x_2518))
		false)))
(check-sat)
