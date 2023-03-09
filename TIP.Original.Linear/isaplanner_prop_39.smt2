(set-logic HORN)
(declare-datatypes ((Bool_62 0)) (((false_62 ) (true_62 ))))
(declare-fun diseqBool_26 (Bool_62 Bool_62) Bool)
(declare-fun isfalse_26 (Bool_62) Bool)
(declare-fun istrue_26 (Bool_62) Bool)
(assert (isfalse_26 false_62))
(assert (istrue_26 true_62))
(assert (diseqBool_26 false_62 true_62))
(assert (diseqBool_26 true_62 false_62))
(declare-fun and_62 (Bool_62 Bool_62 Bool_62) Bool)
(declare-fun or_62 (Bool_62 Bool_62 Bool_62) Bool)
(declare-fun hence_62 (Bool_62 Bool_62 Bool_62) Bool)
(declare-fun not_62 (Bool_62 Bool_62) Bool)
(assert (and_62 false_62 false_62 false_62))
(assert (and_62 false_62 true_62 false_62))
(assert (and_62 false_62 false_62 true_62))
(assert (and_62 true_62 true_62 true_62))
(assert (or_62 false_62 false_62 false_62))
(assert (or_62 true_62 true_62 false_62))
(assert (or_62 true_62 false_62 true_62))
(assert (or_62 true_62 true_62 true_62))
(assert (hence_62 true_62 false_62 false_62))
(assert (hence_62 false_62 true_62 false_62))
(assert (hence_62 true_62 false_62 true_62))
(assert (hence_62 true_62 true_62 true_62))
(assert (not_62 true_62 false_62))
(assert (not_62 false_62 true_62))
(declare-datatypes ((Nat_120 0)) (((Z_340 ) (S_120 (projS_116 Nat_120)))))
(declare-fun diseqNat_120 (Nat_120 Nat_120) Bool)
(declare-fun projS_117 (Nat_120 Nat_120) Bool)
(declare-fun isZ_120 (Nat_120) Bool)
(declare-fun isS_120 (Nat_120) Bool)
(assert (forall ((x_3351 Nat_120))
	(projS_117 x_3351 (S_120 x_3351))))
(assert (isZ_120 Z_340))
(assert (forall ((x_3353 Nat_120))
	(isS_120 (S_120 x_3353))))
(assert (forall ((x_3354 Nat_120))
	(diseqNat_120 Z_340 (S_120 x_3354))))
(assert (forall ((x_3355 Nat_120))
	(diseqNat_120 (S_120 x_3355) Z_340)))
(assert (forall ((x_3356 Nat_120) (x_3357 Nat_120))
	(=> (diseqNat_120 x_3356 x_3357)
	    (diseqNat_120 (S_120 x_3356) (S_120 x_3357)))))
(declare-datatypes ((list_56 0)) (((nil_56 ) (cons_56 (head_112 Nat_120) (tail_112 list_56)))))
(declare-fun diseqlist_56 (list_56 list_56) Bool)
(declare-fun head_113 (Nat_120 list_56) Bool)
(declare-fun tail_113 (list_56 list_56) Bool)
(declare-fun isnil_56 (list_56) Bool)
(declare-fun iscons_56 (list_56) Bool)
(assert (forall ((x_3359 Nat_120) (x_3360 list_56))
	(head_113 x_3359 (cons_56 x_3359 x_3360))))
(assert (forall ((x_3359 Nat_120) (x_3360 list_56))
	(tail_113 x_3360 (cons_56 x_3359 x_3360))))
(assert (isnil_56 nil_56))
(assert (forall ((x_3362 Nat_120) (x_3363 list_56))
	(iscons_56 (cons_56 x_3362 x_3363))))
(assert (forall ((x_3364 Nat_120) (x_3365 list_56))
	(diseqlist_56 nil_56 (cons_56 x_3364 x_3365))))
(assert (forall ((x_3366 Nat_120) (x_3367 list_56))
	(diseqlist_56 (cons_56 x_3366 x_3367) nil_56)))
(assert (forall ((x_3368 Nat_120) (x_3369 list_56) (x_3370 Nat_120) (x_3371 list_56))
	(=> (diseqNat_120 x_3368 x_3370)
	    (diseqlist_56 (cons_56 x_3368 x_3369) (cons_56 x_3370 x_3371)))))
(assert (forall ((x_3368 Nat_120) (x_3369 list_56) (x_3370 Nat_120) (x_3371 list_56))
	(=> (diseqlist_56 x_3369 x_3371)
	    (diseqlist_56 (cons_56 x_3368 x_3369) (cons_56 x_3370 x_3371)))))
(declare-fun x_3321 (Bool_62 Nat_120 Nat_120) Bool)
(assert (forall ((x_3328 Bool_62) (y_271 Nat_120) (x_3323 Nat_120))
	(=> (x_3321 x_3328 x_3323 y_271)
	    (x_3321 x_3328 (S_120 x_3323) (S_120 y_271)))))
(assert (forall ((x_3323 Nat_120))
	(x_3321 false_62 (S_120 x_3323) Z_340)))
(assert (forall ((z_341 Nat_120))
	(x_3321 false_62 Z_340 (S_120 z_341))))
(assert (x_3321 true_62 Z_340 Z_340))
(declare-fun count_7 (Nat_120 Nat_120 list_56) Bool)
(assert (forall ((x_3335 Nat_120) (z_342 Nat_120) (ys_26 list_56) (x_3324 Nat_120))
	(=>	(and (count_7 x_3335 x_3324 ys_26)
			(x_3321 true_62 x_3324 z_342))
		(count_7 (S_120 x_3335) x_3324 (cons_56 z_342 ys_26)))))
(assert (forall ((x_3337 Nat_120) (z_342 Nat_120) (ys_26 list_56) (x_3324 Nat_120))
	(=>	(and (count_7 x_3337 x_3324 ys_26)
			(x_3321 false_62 x_3324 z_342))
		(count_7 x_3337 x_3324 (cons_56 z_342 ys_26)))))
(assert (forall ((x_3324 Nat_120))
	(count_7 Z_340 x_3324 nil_56)))
(declare-fun x_3325 (Nat_120 Nat_120 Nat_120) Bool)
(assert (forall ((x_3341 Nat_120) (z_343 Nat_120) (y_273 Nat_120))
	(=> (x_3325 x_3341 z_343 y_273)
	    (x_3325 (S_120 x_3341) (S_120 z_343) y_273))))
(assert (forall ((x_3342 Nat_120))
	(x_3325 x_3342 Z_340 x_3342)))
(assert (forall ((x_3343 Nat_120) (x_3344 Nat_120) (x_3345 Nat_120) (x_3346 Nat_120) (n_25 Nat_120) (x_3327 Nat_120) (xs_104 list_56))
	(=>	(and true
			(diseqNat_120 x_3345 x_3346)
			(count_7 x_3343 n_25 (cons_56 x_3327 nil_56))
			(count_7 x_3344 n_25 xs_104)
			(x_3325 x_3345 x_3343 x_3344)
			(count_7 x_3346 n_25 (cons_56 x_3327 xs_104)))
		false)))
(check-sat)