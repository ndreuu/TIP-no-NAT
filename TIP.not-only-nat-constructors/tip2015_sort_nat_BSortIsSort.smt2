(set-logic HORN)
(define-fun zero_10 () Int 0)
(define-fun succ_10 ((x Int)) Int (+ x 1))
(declare-datatypes ((Bool_95 0)) (((false_95) (true_95))))
(declare-fun diseqBool_43 (Bool_95 Bool_95) Bool)
(declare-fun isfalse_43 (Bool_95) Bool)
(declare-fun istrue_43 (Bool_95) Bool)
(assert (isfalse_43 false_95))
(assert (istrue_43 true_95))
(assert (diseqBool_43 false_95 true_95))
(assert (diseqBool_43 true_95 false_95))
(declare-fun and_95 (Bool_95 Bool_95 Bool_95) Bool)
(declare-fun or_96 (Bool_95 Bool_95 Bool_95) Bool)
(declare-fun hence_95 (Bool_95 Bool_95 Bool_95) Bool)
(declare-fun not_95 (Bool_95 Bool_95) Bool)
(assert (and_95 false_95 false_95 false_95))
(assert (and_95 false_95 true_95 false_95))
(assert (and_95 false_95 false_95 true_95))
(assert (and_95 true_95 true_95 true_95))
(assert (or_96 false_95 false_95 false_95))
(assert (or_96 true_95 true_95 false_95))
(assert (or_96 true_95 false_95 true_95))
(assert (or_96 true_95 true_95 true_95))
(assert (hence_95 true_95 false_95 false_95))
(assert (hence_95 false_95 true_95 false_95))
(assert (hence_95 true_95 false_95 true_95))
(assert (hence_95 true_95 true_95 true_95))
(assert (not_95 true_95 false_95))
(assert (not_95 false_95 true_95))
(declare-fun p_30 (Int Int) Bool)
(declare-fun iszero_10 (Int) Bool)
(declare-fun issucc_10 (Int) Bool)
(assert (forall ((x_9493 Int))
	(p_30 x_9493 (succ_10 x_9493))))
(assert (iszero_10 zero_10))
(assert (forall ((x_9495 Int))
	(issucc_10 (succ_10 x_9495))))
(declare-datatypes ((list_76 0)) (((nil_80) (cons_76 (head_152 Int) (tail_152 list_76)))))
(declare-fun diseqlist_76 (list_76 list_76) Bool)
(declare-fun head_153 (Int list_76) Bool)
(declare-fun tail_153 (list_76 list_76) Bool)
(declare-fun isnil_80 (list_76) Bool)
(declare-fun iscons_76 (list_76) Bool)
(assert (forall ((x_9501 Int) (x_9502 list_76))
	(head_153 x_9501 (cons_76 x_9501 x_9502))))
(assert (forall ((x_9501 Int) (x_9502 list_76))
	(tail_153 x_9502 (cons_76 x_9501 x_9502))))
(assert (isnil_80 nil_80))
(assert (forall ((x_9504 Int) (x_9505 list_76))
	(iscons_76 (cons_76 x_9504 x_9505))))
(assert (forall ((x_9506 Int) (x_9507 list_76))
	(diseqlist_76 nil_80 (cons_76 x_9506 x_9507))))
(assert (forall ((x_9508 Int) (x_9509 list_76))
	(diseqlist_76 (cons_76 x_9508 x_9509) nil_80)))
(assert (forall ((x_9510 Int) (x_9511 list_76) (x_9512 Int) (x_9513 list_76))
	(=> (distinct x_9510 x_9512) (diseqlist_76 (cons_76 x_9510 x_9511) (cons_76 x_9512 x_9513)))))
(assert (forall ((x_9510 Int) (x_9511 list_76) (x_9512 Int) (x_9513 list_76))
	(=> (diseqlist_76 x_9511 x_9513) (diseqlist_76 (cons_76 x_9510 x_9511) (cons_76 x_9512 x_9513)))))
(declare-fun leq_4 (Bool_95 Int Int) Bool)
(assert (forall ((x Int) (y Int)) (=> (<= x y) (leq_4 true_95 x y))))
(assert (forall ((x Int) (y Int)) (=> (not (<= x y)) (leq_4 false_95 x y))))
(declare-fun sort_5 (list_76 Int Int) Bool)
(assert (forall ((x_9393 Int) (y_434 Int))
	(=> (leq_4 true_95 x_9393 y_434) (sort_5 (cons_76 x_9393 (cons_76 y_434 nil_80)) x_9393 y_434))))
(assert (forall ((x_9393 Int) (y_434 Int))
	(=> (leq_4 false_95 x_9393 y_434) (sort_5 (cons_76 y_434 (cons_76 x_9393 nil_80)) x_9393 y_434))))
(declare-fun insert_1 (list_76 Int list_76) Bool)
(assert (forall ((z_505 Int) (xs_147 list_76) (x_9394 Int))
	(=> (leq_4 true_95 x_9394 z_505) (insert_1 (cons_76 x_9394 (cons_76 z_505 xs_147)) x_9394 (cons_76 z_505 xs_147)))))
(assert (forall ((x_9428 list_76) (z_505 Int) (xs_147 list_76) (x_9394 Int))
	(=> (and (insert_1 x_9428 x_9394 xs_147) (leq_4 false_95 x_9394 z_505)) (insert_1 (cons_76 z_505 x_9428) x_9394 (cons_76 z_505 xs_147)))))
(assert (forall ((x_9394 Int))
	(insert_1 (cons_76 x_9394 nil_80) x_9394 nil_80)))
(declare-fun isort_1 (list_76 list_76) Bool)
(assert (forall ((x_9430 list_76) (x_9431 list_76) (y_436 Int) (xs_148 list_76))
	(=> (and (isort_1 x_9431 xs_148) (insert_1 x_9430 y_436 x_9431)) (isort_1 x_9430 (cons_76 y_436 xs_148)))))
(assert (isort_1 nil_80 nil_80))
(declare-fun evens_1 (list_76 list_76) Bool)
(declare-fun odds_1 (list_76 list_76) Bool)
(assert (forall ((x_9435 list_76) (y_437 Int) (xs_149 list_76))
	(=> (odds_1 x_9435 xs_149) (evens_1 (cons_76 y_437 x_9435) (cons_76 y_437 xs_149)))))
(assert (evens_1 nil_80 nil_80))
(assert (forall ((x_9437 list_76) (y_438 Int) (xs_150 list_76))
	(=> (evens_1 x_9437 xs_150) (odds_1 x_9437 (cons_76 y_438 xs_150)))))
(assert (odds_1 nil_80 nil_80))
(declare-fun x_9398 (list_76 list_76 list_76) Bool)
(assert (forall ((x_9441 list_76) (z_506 Int) (xs_151 list_76) (y_439 list_76))
	(=> (x_9398 x_9441 xs_151 y_439) (x_9398 (cons_76 z_506 x_9441) (cons_76 z_506 xs_151) y_439))))
(assert (forall ((x_9442 list_76))
	(x_9398 x_9442 nil_80 x_9442)))
(declare-fun pairs_1 (list_76 list_76 list_76) Bool)
(assert (forall ((x_9443 list_76) (x_9444 list_76) (x_9445 list_76) (x_9402 Int) (x_9403 list_76) (z_507 Int) (x_9401 list_76))
	(=> (and (sort_5 x_9444 z_507 x_9402) (pairs_1 x_9445 x_9401 x_9403) (x_9398 x_9443 x_9444 x_9445)) (pairs_1 x_9443 (cons_76 z_507 x_9401) (cons_76 x_9402 x_9403)))))
(assert (forall ((z_507 Int) (x_9401 list_76))
	(pairs_1 (cons_76 z_507 x_9401) (cons_76 z_507 x_9401) nil_80)))
(assert (forall ((x_9448 list_76))
	(pairs_1 x_9448 nil_80 x_9448)))
(declare-fun stitch_1 (list_76 list_76 list_76) Bool)
(assert (forall ((x_9450 list_76) (z_508 Int) (xs_152 list_76) (y_441 list_76))
	(=> (pairs_1 x_9450 xs_152 y_441) (stitch_1 (cons_76 z_508 x_9450) (cons_76 z_508 xs_152) y_441))))
(assert (forall ((x_9451 list_76))
	(stitch_1 x_9451 nil_80 x_9451)))
(declare-fun bmerge_1 (list_76 list_76 list_76) Bool)
(assert (forall ((x_9452 list_76) (x_9453 list_76) (x_9454 list_76) (x_9455 list_76) (x_9456 list_76) (x_9457 list_76) (x_9409 Int) (x_9410 list_76) (fail_1 list_76) (x_9407 Int) (x_9408 list_76) (z_509 Int))
	(=> (and (evens_1 x_9452 (cons_76 z_509 (cons_76 x_9409 x_9410))) (evens_1 x_9453 (cons_76 x_9407 x_9408)) (bmerge_1 x_9454 x_9452 x_9453) (odds_1 x_9455 (cons_76 z_509 (cons_76 x_9409 x_9410))) (odds_1 x_9456 (cons_76 x_9407 x_9408)) (bmerge_1 x_9457 x_9455 x_9456) (stitch_1 fail_1 x_9454 x_9457)) (bmerge_1 fail_1 (cons_76 z_509 (cons_76 x_9409 x_9410)) (cons_76 x_9407 x_9408)))))
(assert (forall ((x_9460 list_76) (x_9461 list_76) (x_9462 list_76) (x_9463 list_76) (x_9464 list_76) (x_9465 list_76) (x_9411 Int) (x_9412 list_76) (fail_1 list_76) (x_9407 Int) (z_509 Int))
	(=> (and (evens_1 x_9460 (cons_76 z_509 nil_80)) (evens_1 x_9461 (cons_76 x_9407 (cons_76 x_9411 x_9412))) (bmerge_1 x_9462 x_9460 x_9461) (odds_1 x_9463 (cons_76 z_509 nil_80)) (odds_1 x_9464 (cons_76 x_9407 (cons_76 x_9411 x_9412))) (bmerge_1 x_9465 x_9463 x_9464) (stitch_1 fail_1 x_9462 x_9465)) (bmerge_1 fail_1 (cons_76 z_509 nil_80) (cons_76 x_9407 (cons_76 x_9411 x_9412))))))
(assert (forall ((x_9475 list_76) (x_9468 list_76) (x_9469 list_76) (x_9470 list_76) (x_9471 list_76) (x_9472 list_76) (x_9473 list_76) (fail_1 list_76) (x_9407 Int) (z_509 Int))
	(=> (and (sort_5 x_9475 z_509 x_9407) (evens_1 x_9468 (cons_76 z_509 nil_80)) (evens_1 x_9469 (cons_76 x_9407 nil_80)) (bmerge_1 x_9470 x_9468 x_9469) (odds_1 x_9471 (cons_76 z_509 nil_80)) (odds_1 x_9472 (cons_76 x_9407 nil_80)) (bmerge_1 x_9473 x_9471 x_9472) (stitch_1 fail_1 x_9470 x_9473)) (bmerge_1 x_9475 (cons_76 z_509 nil_80) (cons_76 x_9407 nil_80)))))
(assert (forall ((z_509 Int) (x_9406 list_76))
	(bmerge_1 (cons_76 z_509 x_9406) (cons_76 z_509 x_9406) nil_80)))
(assert (forall ((y_442 list_76))
	(bmerge_1 nil_80 nil_80 y_442)))
(declare-fun bsort_1 (list_76 list_76) Bool)
(assert (forall ((x_9479 list_76) (x_9480 list_76) (x_9481 list_76) (x_9482 list_76) (x_9483 list_76) (x_9414 Int) (x_9415 list_76) (y_443 Int))
	(=> (and (evens_1 x_9480 (cons_76 y_443 (cons_76 x_9414 x_9415))) (bsort_1 x_9481 x_9480) (odds_1 x_9482 (cons_76 y_443 (cons_76 x_9414 x_9415))) (bsort_1 x_9483 x_9482) (bmerge_1 x_9479 x_9481 x_9483)) (bsort_1 x_9479 (cons_76 y_443 (cons_76 x_9414 x_9415))))))
(assert (forall ((y_443 Int))
	(bsort_1 (cons_76 y_443 nil_80) (cons_76 y_443 nil_80))))
(assert (bsort_1 nil_80 nil_80))
(assert (forall ((x_9487 list_76) (x_9488 list_76) (xs_153 list_76))
	(=> (and true (diseqlist_76 x_9487 x_9488) (bsort_1 x_9487 xs_153) (isort_1 x_9488 xs_153)) false)))
(check-sat)
