
(set-logic HORN)
(define-fun Z_1961 () Int 0)
(define-fun S_439 ((x Int)) Int (+ x 1))
(declare-datatypes ((Bool_325 0)) (((false_325) (true_325))))
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
(declare-fun projS_163 (Int Int) Bool)
(declare-fun isZ_406 (Int) Bool)
(declare-fun isS_406 (Int) Bool)
(assert (forall ((x_54512 Int))
	(projS_163 x_54512 (S_439 x_54512))))
(assert (isZ_406 Z_1961))
(assert (forall ((x_54514 Int))
	(isS_406 (S_439 x_54514))))
(declare-datatypes ((list_230 0)) (((nil_260) (cons_230 (head_460 Int) (tail_460 list_230)))))
(declare-fun diseqlist_230 (list_230 list_230) Bool)
(declare-fun head_461 (Int list_230) Bool)
(declare-fun tail_461 (list_230 list_230) Bool)
(declare-fun isnil_260 (list_230) Bool)
(declare-fun iscons_230 (list_230) Bool)
(assert (forall ((x_54520 Int) (x_54521 list_230))
	(head_461 x_54520 (cons_230 x_54520 x_54521))))
(assert (forall ((x_54520 Int) (x_54521 list_230))
	(tail_461 x_54521 (cons_230 x_54520 x_54521))))
(assert (isnil_260 nil_260))
(assert (forall ((x_54523 Int) (x_54524 list_230))
	(iscons_230 (cons_230 x_54523 x_54524))))
(assert (forall ((x_54525 Int) (x_54526 list_230))
	(diseqlist_230 nil_260 (cons_230 x_54525 x_54526))))
(assert (forall ((x_54527 Int) (x_54528 list_230))
	(diseqlist_230 (cons_230 x_54527 x_54528) nil_260)))
(assert (forall ((x_54529 Int) (x_54530 list_230) (x_54531 Int) (x_54532 list_230))
	(=> (distinct x_54529 x_54531) (diseqlist_230 (cons_230 x_54529 x_54530) (cons_230 x_54531 x_54532)))))
(assert (forall ((x_54529 Int) (x_54530 list_230) (x_54531 Int) (x_54532 list_230))
	(=> (diseqlist_230 x_54530 x_54532) (diseqlist_230 (cons_230 x_54529 x_54530) (cons_230 x_54531 x_54532)))))
(declare-fun x_54469 (Bool_325 Int Int) Bool)
(assert (forall ((x_54479 Bool_325) (y_2196 Int) (x_54471 Int))
	(=> (x_54469 x_54479 x_54471 y_2196) (x_54469 x_54479 (S_439 x_54471) (S_439 y_2196)))))
(assert (forall ((x_54471 Int))
	(x_54469 false_325 (S_439 x_54471) Z_1961)))
(assert (forall ((z_1962 Int))
	(x_54469 false_325 Z_1961 (S_439 z_1962))))
(assert (x_54469 true_325 Z_1961 Z_1961))
(declare-fun count_36 (Int Int list_230) Bool)
(assert (forall ((x_54486 Int) (z_1963 Int) (xs_627 list_230) (x_54472 Int))
	(=> (and (count_36 x_54486 x_54472 xs_627) (x_54469 true_325 x_54472 z_1963)) (count_36 (S_439 x_54486) x_54472 (cons_230 z_1963 xs_627)))))
(assert (forall ((x_54488 Int) (z_1963 Int) (xs_627 list_230) (x_54472 Int))
	(=> (and (count_36 x_54488 x_54472 xs_627) (x_54469 false_325 x_54472 z_1963)) (count_36 x_54488 x_54472 (cons_230 z_1963 xs_627)))))
(assert (forall ((x_54472 Int))
	(count_36 Z_1961 x_54472 nil_260)))
(declare-fun x_54473 (Bool_325 Int Int) Bool)
(assert (forall ((x_54491 Bool_325) (x_54475 Int) (z_1964 Int))
	(=> (x_54473 x_54491 z_1964 x_54475) (x_54473 x_54491 (S_439 z_1964) (S_439 x_54475)))))
(assert (forall ((z_1964 Int))
	(x_54473 false_325 (S_439 z_1964) Z_1961)))
(assert (forall ((y_2198 Int))
	(x_54473 true_325 Z_1961 y_2198)))
(declare-fun insert_29 (list_230 Int list_230) Bool)
(assert (forall ((z_1965 Int) (xs_628 list_230) (x_54476 Int))
	(=> (x_54473 true_325 x_54476 z_1965) (insert_29 (cons_230 x_54476 (cons_230 z_1965 xs_628)) x_54476 (cons_230 z_1965 xs_628)))))
(assert (forall ((x_54499 list_230) (z_1965 Int) (xs_628 list_230) (x_54476 Int))
	(=> (and (insert_29 x_54499 x_54476 xs_628) (x_54473 false_325 x_54476 z_1965)) (insert_29 (cons_230 z_1965 x_54499) x_54476 (cons_230 z_1965 xs_628)))))
(assert (forall ((x_54476 Int))
	(insert_29 (cons_230 x_54476 nil_260) x_54476 nil_260)))
(declare-fun isort_28 (list_230 list_230) Bool)
(assert (forall ((x_54501 list_230) (x_54502 list_230) (y_2200 Int) (xs_629 list_230))
	(=> (and (isort_28 x_54502 xs_629) (insert_29 x_54501 y_2200 x_54502)) (isort_28 x_54501 (cons_230 y_2200 xs_629)))))
(assert (isort_28 nil_260 nil_260))
(assert (forall ((x_54505 list_230) (x_54506 Int) (x_54507 Int) (x_54478 Int) (y_2201 list_230))
	(=> (and true (distinct x_54506 x_54507) (isort_28 x_54505 y_2201) (count_36 x_54506 x_54478 x_54505) (count_36 x_54507 x_54478 y_2201)) false)))
(check-sat)