(set-logic HORN)
(declare-datatypes ((Bool_325 0)) (((false_325 ) (true_325 ))))
(declare-fun diseqBool_150 (Bool_325 Bool_325) Bool)
(declare-fun isfalse_150 (Bool_325) Bool)
(declare-fun istrue_150 (Bool_325) Bool)
(assert (isfalse_150 false_325))
(assert (istrue_150 true_325))
(assert (diseqBool_150 false_325 true_325))
(assert (diseqBool_150 true_325 false_325))
(declare-fun and_325 (Bool_325 Bool_325 Bool_325) Bool)
(declare-fun or_332 (Bool_325 Bool_325 Bool_325) Bool)
(declare-fun hence_325 (Bool_325 Bool_325 Bool_325) Bool)
(declare-fun not_330 (Bool_325 Bool_325) Bool)
(assert (and_325 false_325 false_325 false_325))
(assert (and_325 false_325 true_325 false_325))
(assert (and_325 false_325 false_325 true_325))
(assert (and_325 true_325 true_325 true_325))
(assert (or_332 false_325 false_325 false_325))
(assert (or_332 true_325 true_325 false_325))
(assert (or_332 true_325 false_325 true_325))
(assert (or_332 true_325 true_325 true_325))
(assert (hence_325 true_325 false_325 false_325))
(assert (hence_325 false_325 true_325 false_325))
(assert (hence_325 true_325 false_325 true_325))
(assert (hence_325 true_325 true_325 true_325))
(assert (not_330 true_325 false_325))
(assert (not_330 false_325 true_325))
(declare-datatypes ((Nat_550 0)) (((Z_1961 ) (S_439 (projS_162 Nat_550)))))
(declare-fun diseqNat_550 (Nat_550 Nat_550) Bool)
(declare-fun projS_163 (Nat_550 Nat_550) Bool)
(declare-fun isZ_406 (Nat_550) Bool)
(declare-fun isS_406 (Nat_550) Bool)
(assert (forall ((x_54512 Nat_550))
	(projS_163 x_54512 (S_439 x_54512))))
(assert (isZ_406 Z_1961))
(assert (forall ((x_54514 Nat_550))
	(isS_406 (S_439 x_54514))))
(assert (forall ((x_54515 Nat_550))
	(diseqNat_550 Z_1961 (S_439 x_54515))))
(assert (forall ((x_54516 Nat_550))
	(diseqNat_550 (S_439 x_54516) Z_1961)))
(assert (forall ((x_54517 Nat_550) (x_54518 Nat_550))
	(=> (diseqNat_550 x_54517 x_54518)
	    (diseqNat_550 (S_439 x_54517) (S_439 x_54518)))))
(declare-datatypes ((list_230 0)) (((nil_260 ) (cons_230 (head_460 Nat_550) (tail_460 list_230)))))
(declare-fun diseqlist_230 (list_230 list_230) Bool)
(declare-fun head_461 (Nat_550 list_230) Bool)
(declare-fun tail_461 (list_230 list_230) Bool)
(declare-fun isnil_260 (list_230) Bool)
(declare-fun iscons_230 (list_230) Bool)
(assert (forall ((x_54520 Nat_550) (x_54521 list_230))
	(head_461 x_54520 (cons_230 x_54520 x_54521))))
(assert (forall ((x_54520 Nat_550) (x_54521 list_230))
	(tail_461 x_54521 (cons_230 x_54520 x_54521))))
(assert (isnil_260 nil_260))
(assert (forall ((x_54523 Nat_550) (x_54524 list_230))
	(iscons_230 (cons_230 x_54523 x_54524))))
(assert (forall ((x_54525 Nat_550) (x_54526 list_230))
	(diseqlist_230 nil_260 (cons_230 x_54525 x_54526))))
(assert (forall ((x_54527 Nat_550) (x_54528 list_230))
	(diseqlist_230 (cons_230 x_54527 x_54528) nil_260)))
(assert (forall ((x_54529 Nat_550) (x_54530 list_230) (x_54531 Nat_550) (x_54532 list_230))
	(=> (diseqNat_550 x_54529 x_54531)
	    (diseqlist_230 (cons_230 x_54529 x_54530) (cons_230 x_54531 x_54532)))))
(assert (forall ((x_54529 Nat_550) (x_54530 list_230) (x_54531 Nat_550) (x_54532 list_230))
	(=> (diseqlist_230 x_54530 x_54532)
	    (diseqlist_230 (cons_230 x_54529 x_54530) (cons_230 x_54531 x_54532)))))
(declare-fun x_54469 (Bool_325 Nat_550 Nat_550) Bool)
(assert (forall ((x_54479 Bool_325) (y_2196 Nat_550) (x_54471 Nat_550))
	(=> (x_54469 x_54479 x_54471 y_2196)
	    (x_54469 x_54479 (S_439 x_54471) (S_439 y_2196)))))
(assert (forall ((x_54471 Nat_550))
	(x_54469 false_325 (S_439 x_54471) Z_1961)))
(assert (forall ((z_1962 Nat_550))
	(x_54469 false_325 Z_1961 (S_439 z_1962))))
(assert (x_54469 true_325 Z_1961 Z_1961))
(declare-fun count_36 (Nat_550 Nat_550 list_230) Bool)
(assert (forall ((x_54486 Nat_550) (z_1963 Nat_550) (xs_627 list_230) (x_54472 Nat_550))
	(=>	(and (count_36 x_54486 x_54472 xs_627)
			(x_54469 true_325 x_54472 z_1963))
		(count_36 (S_439 x_54486) x_54472 (cons_230 z_1963 xs_627)))))
(assert (forall ((x_54488 Nat_550) (z_1963 Nat_550) (xs_627 list_230) (x_54472 Nat_550))
	(=>	(and (count_36 x_54488 x_54472 xs_627)
			(x_54469 false_325 x_54472 z_1963))
		(count_36 x_54488 x_54472 (cons_230 z_1963 xs_627)))))
(assert (forall ((x_54472 Nat_550))
	(count_36 Z_1961 x_54472 nil_260)))
(declare-fun x_54473 (Bool_325 Nat_550 Nat_550) Bool)
(assert (forall ((x_54491 Bool_325) (x_54475 Nat_550) (z_1964 Nat_550))
	(=> (x_54473 x_54491 z_1964 x_54475)
	    (x_54473 x_54491 (S_439 z_1964) (S_439 x_54475)))))
(assert (forall ((z_1964 Nat_550))
	(x_54473 false_325 (S_439 z_1964) Z_1961)))
(assert (forall ((y_2198 Nat_550))
	(x_54473 true_325 Z_1961 y_2198)))
(declare-fun insert_29 (list_230 Nat_550 list_230) Bool)
(assert (forall ((z_1965 Nat_550) (xs_628 list_230) (x_54476 Nat_550))
	(=> (x_54473 true_325 x_54476 z_1965)
	    (insert_29 (cons_230 x_54476 (cons_230 z_1965 xs_628)) x_54476 (cons_230 z_1965 xs_628)))))
(assert (forall ((x_54499 list_230) (z_1965 Nat_550) (xs_628 list_230) (x_54476 Nat_550))
	(=>	(and (insert_29 x_54499 x_54476 xs_628)
			(x_54473 false_325 x_54476 z_1965))
		(insert_29 (cons_230 z_1965 x_54499) x_54476 (cons_230 z_1965 xs_628)))))
(assert (forall ((x_54476 Nat_550))
	(insert_29 (cons_230 x_54476 nil_260) x_54476 nil_260)))
(declare-fun isort_28 (list_230 list_230) Bool)
(assert (forall ((x_54501 list_230) (x_54502 list_230) (y_2200 Nat_550) (xs_629 list_230))
	(=>	(and (isort_28 x_54502 xs_629)
			(insert_29 x_54501 y_2200 x_54502))
		(isort_28 x_54501 (cons_230 y_2200 xs_629)))))
(assert (isort_28 nil_260 nil_260))
(assert (forall ((x_54505 list_230) (x_54506 Nat_550) (x_54507 Nat_550) (x_54478 Nat_550) (y_2201 list_230))
	(=>	(and true
			(diseqNat_550 x_54506 x_54507)
			(isort_28 x_54505 y_2201)
			(count_36 x_54506 x_54478 x_54505)
			(count_36 x_54507 x_54478 y_2201))
		false)))
(check-sat)