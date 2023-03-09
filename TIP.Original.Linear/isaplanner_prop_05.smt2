(set-logic HORN)
(declare-datatypes ((Bool_7 0)) (((false_7 ) (true_7 ))))
(declare-fun diseqBool_2 (Bool_7 Bool_7) Bool)
(declare-fun isfalse_2 (Bool_7) Bool)
(declare-fun istrue_2 (Bool_7) Bool)
(assert (isfalse_2 false_7))
(assert (istrue_2 true_7))
(assert (diseqBool_2 false_7 true_7))
(assert (diseqBool_2 true_7 false_7))
(declare-fun and_7 (Bool_7 Bool_7 Bool_7) Bool)
(declare-fun or_7 (Bool_7 Bool_7 Bool_7) Bool)
(declare-fun hence_7 (Bool_7 Bool_7 Bool_7) Bool)
(declare-fun not_7 (Bool_7 Bool_7) Bool)
(assert (and_7 false_7 false_7 false_7))
(assert (and_7 false_7 true_7 false_7))
(assert (and_7 false_7 false_7 true_7))
(assert (and_7 true_7 true_7 true_7))
(assert (or_7 false_7 false_7 false_7))
(assert (or_7 true_7 true_7 false_7))
(assert (or_7 true_7 false_7 true_7))
(assert (or_7 true_7 true_7 true_7))
(assert (hence_7 true_7 false_7 false_7))
(assert (hence_7 false_7 true_7 false_7))
(assert (hence_7 true_7 false_7 true_7))
(assert (hence_7 true_7 true_7 true_7))
(assert (not_7 true_7 false_7))
(assert (not_7 false_7 true_7))
(declare-datatypes ((Nat_13 0)) (((Z_38 ) (S_13 (projS_12 Nat_13)))))
(declare-fun diseqNat_13 (Nat_13 Nat_13) Bool)
(declare-fun projS_13 (Nat_13 Nat_13) Bool)
(declare-fun isZ_13 (Nat_13) Bool)
(declare-fun isS_13 (Nat_13) Bool)
(assert (forall ((x_426 Nat_13))
	(projS_13 x_426 (S_13 x_426))))
(assert (isZ_13 Z_38))
(assert (forall ((x_428 Nat_13))
	(isS_13 (S_13 x_428))))
(assert (forall ((x_429 Nat_13))
	(diseqNat_13 Z_38 (S_13 x_429))))
(assert (forall ((x_430 Nat_13))
	(diseqNat_13 (S_13 x_430) Z_38)))
(assert (forall ((x_431 Nat_13) (x_432 Nat_13))
	(=> (diseqNat_13 x_431 x_432)
	    (diseqNat_13 (S_13 x_431) (S_13 x_432)))))
(declare-datatypes ((list_8 0)) (((nil_8 ) (cons_8 (head_16 Nat_13) (tail_16 list_8)))))
(declare-fun diseqlist_8 (list_8 list_8) Bool)
(declare-fun head_17 (Nat_13 list_8) Bool)
(declare-fun tail_17 (list_8 list_8) Bool)
(declare-fun isnil_8 (list_8) Bool)
(declare-fun iscons_8 (list_8) Bool)
(assert (forall ((x_434 Nat_13) (x_435 list_8))
	(head_17 x_434 (cons_8 x_434 x_435))))
(assert (forall ((x_434 Nat_13) (x_435 list_8))
	(tail_17 x_435 (cons_8 x_434 x_435))))
(assert (isnil_8 nil_8))
(assert (forall ((x_437 Nat_13) (x_438 list_8))
	(iscons_8 (cons_8 x_437 x_438))))
(assert (forall ((x_439 Nat_13) (x_440 list_8))
	(diseqlist_8 nil_8 (cons_8 x_439 x_440))))
(assert (forall ((x_441 Nat_13) (x_442 list_8))
	(diseqlist_8 (cons_8 x_441 x_442) nil_8)))
(assert (forall ((x_443 Nat_13) (x_444 list_8) (x_445 Nat_13) (x_446 list_8))
	(=> (diseqNat_13 x_443 x_445)
	    (diseqlist_8 (cons_8 x_443 x_444) (cons_8 x_445 x_446)))))
(assert (forall ((x_443 Nat_13) (x_444 list_8) (x_445 Nat_13) (x_446 list_8))
	(=> (diseqlist_8 x_444 x_446)
	    (diseqlist_8 (cons_8 x_443 x_444) (cons_8 x_445 x_446)))))
(declare-fun x_403 (Bool_7 Nat_13 Nat_13) Bool)
(assert (forall ((x_408 Bool_7) (y_32 Nat_13) (x_405 Nat_13))
	(=> (x_403 x_408 x_405 y_32)
	    (x_403 x_408 (S_13 x_405) (S_13 y_32)))))
(assert (forall ((x_405 Nat_13))
	(x_403 false_7 (S_13 x_405) Z_38)))
(assert (forall ((z_39 Nat_13))
	(x_403 false_7 Z_38 (S_13 z_39))))
(assert (x_403 true_7 Z_38 Z_38))
(declare-fun count_0 (Nat_13 Nat_13 list_8) Bool)
(assert (forall ((x_415 Nat_13) (z_40 Nat_13) (ys_4 list_8) (x_406 Nat_13))
	(=>	(and (count_0 x_415 x_406 ys_4)
			(x_403 true_7 x_406 z_40))
		(count_0 (S_13 x_415) x_406 (cons_8 z_40 ys_4)))))
(assert (forall ((x_417 Nat_13) (z_40 Nat_13) (ys_4 list_8) (x_406 Nat_13))
	(=>	(and (count_0 x_417 x_406 ys_4)
			(x_403 false_7 x_406 z_40))
		(count_0 x_417 x_406 (cons_8 z_40 ys_4)))))
(assert (forall ((x_406 Nat_13))
	(count_0 Z_38 x_406 nil_8)))
(assert (forall ((x_420 Nat_13) (x_421 Nat_13) (n_2 Nat_13) (xs_13 list_8))
	(=>	(and true
			(diseqNat_13 (S_13 x_420) x_421)
			(count_0 x_420 n_2 xs_13)
			(count_0 x_421 n_2 (cons_8 n_2 xs_13)))
		false)))
(check-sat)
