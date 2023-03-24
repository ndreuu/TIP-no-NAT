(set-logic HORN)
(define-fun Z_1439 () Int 0)
(define-fun S_340 ((x Int)) Int (+ x 1))
(declare-fun unS_481 (Int Int) Bool)
(declare-fun isZ_313 (Int) Bool)
(declare-fun isS_313 (Int) Bool)
(assert (forall ((x_45488 Int))
	(unS_481 x_45488 (S_340 x_45488))))
(assert (isZ_313 Z_1439))
(assert (forall ((x_45490 Int))
	(isS_313 (S_340 x_45490))))
(declare-datatypes ((Bool_240 0)) (((false_240) (true_240))))
(declare-fun diseqBool_112 (Bool_240 Bool_240) Bool)
(declare-fun isfalse_112 (Bool_240) Bool)
(declare-fun istrue_112 (Bool_240) Bool)
(assert (isfalse_112 false_240))
(assert (istrue_112 true_240))
(assert (diseqBool_112 false_240 true_240))
(assert (diseqBool_112 true_240 false_240))
(declare-fun and_240 (Bool_240 Bool_240 Bool_240) Bool)
(declare-fun or_245 (Bool_240 Bool_240 Bool_240) Bool)
(declare-fun hence_240 (Bool_240 Bool_240 Bool_240) Bool)
(declare-fun not_243 (Bool_240 Bool_240) Bool)
(assert (and_240 false_240 false_240 false_240))
(assert (and_240 false_240 true_240 false_240))
(assert (and_240 false_240 false_240 true_240))
(assert (and_240 true_240 true_240 true_240))
(assert (or_245 false_240 false_240 false_240))
(assert (or_245 true_240 true_240 false_240))
(assert (or_245 true_240 false_240 true_240))
(assert (or_245 true_240 true_240 true_240))
(assert (hence_240 true_240 false_240 false_240))
(assert (hence_240 false_240 true_240 false_240))
(assert (hence_240 true_240 false_240 true_240))
(assert (hence_240 true_240 true_240 true_240))
(assert (not_243 true_240 false_240))
(assert (not_243 false_240 true_240))
(declare-datatypes ((list_173 0)) (((nil_198) (cons_173 (head_346 Int) (tail_346 list_173)))))
(declare-fun diseqlist_173 (list_173 list_173) Bool)
(declare-fun head_347 (Int list_173) Bool)
(declare-fun tail_347 (list_173 list_173) Bool)
(declare-fun isnil_198 (list_173) Bool)
(declare-fun iscons_173 (list_173) Bool)
(assert (forall ((x_45498 Int) (x_45499 list_173))
	(head_347 x_45498 (cons_173 x_45498 x_45499))))
(assert (forall ((x_45498 Int) (x_45499 list_173))
	(tail_347 x_45499 (cons_173 x_45498 x_45499))))
(assert (isnil_198 nil_198))
(assert (forall ((x_45501 Int) (x_45502 list_173))
	(iscons_173 (cons_173 x_45501 x_45502))))
(assert (forall ((x_45503 Int) (x_45504 list_173))
	(diseqlist_173 nil_198 (cons_173 x_45503 x_45504))))
(assert (forall ((x_45505 Int) (x_45506 list_173))
	(diseqlist_173 (cons_173 x_45505 x_45506) nil_198)))
(assert (forall ((x_45507 Int) (x_45508 list_173) (x_45509 Int) (x_45510 list_173))
	(=> (distinct x_45507 x_45509) (diseqlist_173 (cons_173 x_45507 x_45508) (cons_173 x_45509 x_45510)))))
(assert (forall ((x_45507 Int) (x_45508 list_173) (x_45509 Int) (x_45510 list_173))
	(=> (diseqlist_173 x_45508 x_45510) (diseqlist_173 (cons_173 x_45507 x_45508) (cons_173 x_45509 x_45510)))))
(declare-fun sort_26 (list_173 Int Int) Bool)
(assert (forall ((x_45402 Int) (y_1585 Int))
	(=> (<= x_45402 y_1585) (sort_26 (cons_173 x_45402 (cons_173 y_1585 nil_198)) x_45402 y_1585))))
(assert (forall ((x_45402 Int) (y_1585 Int))
	(=> (> x_45402 y_1585) (sort_26 (cons_173 y_1585 (cons_173 x_45402 nil_198)) x_45402 y_1585))))
(declare-fun ordered_16 (Bool_240 list_173) Bool)
(assert (forall ((x_45426 Bool_240) (y_1587 Int) (xs_469 list_173) (y_1586 Int))
	(=> (and (<= y_1586 y_1587) (ordered_16 x_45426 (cons_173 y_1587 xs_469))) (ordered_16 x_45426 (cons_173 y_1586 (cons_173 y_1587 xs_469))))))
(assert (forall ((y_1587 Int) (xs_469 list_173) (y_1586 Int))
	(=> (> y_1586 y_1587) (ordered_16 false_240 (cons_173 y_1586 (cons_173 y_1587 xs_469))))))
(assert (forall ((y_1586 Int))
	(ordered_16 true_240 (cons_173 y_1586 nil_198))))
(assert (ordered_16 true_240 nil_198))
(declare-fun evens_7 (list_173 list_173) Bool)
(declare-fun odds_7 (list_173 list_173) Bool)
(assert (forall ((x_45432 list_173) (y_1588 Int) (xs_470 list_173))
	(=> (odds_7 x_45432 xs_470) (evens_7 (cons_173 y_1588 x_45432) (cons_173 y_1588 xs_470)))))
(assert (evens_7 nil_198 nil_198))
(assert (forall ((x_45434 list_173) (y_1589 Int) (xs_471 list_173))
	(=> (evens_7 x_45434 xs_471) (odds_7 x_45434 (cons_173 y_1589 xs_471)))))
(assert (odds_7 nil_198 nil_198))
(declare-fun x_45406 (list_173 list_173 list_173) Bool)
(assert (forall ((x_45438 list_173) (z_1434 Int) (xs_472 list_173) (y_1590 list_173))
	(=> (x_45406 x_45438 xs_472 y_1590) (x_45406 (cons_173 z_1434 x_45438) (cons_173 z_1434 xs_472) y_1590))))
(assert (forall ((x_45439 list_173))
	(x_45406 x_45439 nil_198 x_45439)))
(declare-fun pairs_5 (list_173 list_173 list_173) Bool)
(assert (forall ((x_45440 list_173) (x_45441 list_173) (x_45442 list_173) (x_45410 Int) (x_45411 list_173) (z_1435 Int) (x_45409 list_173))
	(=> (and (sort_26 x_45441 z_1435 x_45410) (pairs_5 x_45442 x_45409 x_45411) (x_45406 x_45440 x_45441 x_45442)) (pairs_5 x_45440 (cons_173 z_1435 x_45409) (cons_173 x_45410 x_45411)))))
(assert (forall ((z_1435 Int) (x_45409 list_173))
	(pairs_5 (cons_173 z_1435 x_45409) (cons_173 z_1435 x_45409) nil_198)))
(assert (forall ((x_45445 list_173))
	(pairs_5 x_45445 nil_198 x_45445)))
(declare-fun stitch_5 (list_173 list_173 list_173) Bool)
(assert (forall ((x_45447 list_173) (z_1436 Int) (xs_473 list_173) (y_1592 list_173))
	(=> (pairs_5 x_45447 xs_473 y_1592) (stitch_5 (cons_173 z_1436 x_45447) (cons_173 z_1436 xs_473) y_1592))))
(assert (forall ((x_45448 list_173))
	(stitch_5 x_45448 nil_198 x_45448)))
(declare-fun bmerge_5 (list_173 list_173 list_173) Bool)
(assert (forall ((x_45449 list_173) (x_45450 list_173) (x_45451 list_173) (x_45452 list_173) (x_45453 list_173) (x_45454 list_173) (x_45417 Int) (x_45418 list_173) (fail_20 list_173) (x_45415 Int) (x_45416 list_173) (z_1437 Int))
	(=> (and (evens_7 x_45449 (cons_173 z_1437 (cons_173 x_45417 x_45418))) (evens_7 x_45450 (cons_173 x_45415 x_45416)) (bmerge_5 x_45451 x_45449 x_45450) (odds_7 x_45452 (cons_173 z_1437 (cons_173 x_45417 x_45418))) (odds_7 x_45453 (cons_173 x_45415 x_45416)) (bmerge_5 x_45454 x_45452 x_45453) (stitch_5 fail_20 x_45451 x_45454)) (bmerge_5 fail_20 (cons_173 z_1437 (cons_173 x_45417 x_45418)) (cons_173 x_45415 x_45416)))))
(assert (forall ((x_45457 list_173) (x_45458 list_173) (x_45459 list_173) (x_45460 list_173) (x_45461 list_173) (x_45462 list_173) (x_45419 Int) (x_45420 list_173) (fail_20 list_173) (x_45415 Int) (z_1437 Int))
	(=> (and (evens_7 x_45457 (cons_173 z_1437 nil_198)) (evens_7 x_45458 (cons_173 x_45415 (cons_173 x_45419 x_45420))) (bmerge_5 x_45459 x_45457 x_45458) (odds_7 x_45460 (cons_173 z_1437 nil_198)) (odds_7 x_45461 (cons_173 x_45415 (cons_173 x_45419 x_45420))) (bmerge_5 x_45462 x_45460 x_45461) (stitch_5 fail_20 x_45459 x_45462)) (bmerge_5 fail_20 (cons_173 z_1437 nil_198) (cons_173 x_45415 (cons_173 x_45419 x_45420))))))
(assert (forall ((x_45472 list_173) (x_45465 list_173) (x_45466 list_173) (x_45467 list_173) (x_45468 list_173) (x_45469 list_173) (x_45470 list_173) (fail_20 list_173) (x_45415 Int) (z_1437 Int))
	(=> (and (sort_26 x_45472 z_1437 x_45415) (evens_7 x_45465 (cons_173 z_1437 nil_198)) (evens_7 x_45466 (cons_173 x_45415 nil_198)) (bmerge_5 x_45467 x_45465 x_45466) (odds_7 x_45468 (cons_173 z_1437 nil_198)) (odds_7 x_45469 (cons_173 x_45415 nil_198)) (bmerge_5 x_45470 x_45468 x_45469) (stitch_5 fail_20 x_45467 x_45470)) (bmerge_5 x_45472 (cons_173 z_1437 nil_198) (cons_173 x_45415 nil_198)))))
(assert (forall ((z_1437 Int) (x_45414 list_173))
	(bmerge_5 (cons_173 z_1437 x_45414) (cons_173 z_1437 x_45414) nil_198)))
(assert (forall ((y_1593 list_173))
	(bmerge_5 nil_198 nil_198 y_1593)))
(declare-fun bsort_5 (list_173 list_173) Bool)
(assert (forall ((x_45476 list_173) (x_45477 list_173) (x_45478 list_173) (x_45479 list_173) (x_45480 list_173) (x_45422 Int) (x_45423 list_173) (y_1594 Int))
	(=> (and (evens_7 x_45477 (cons_173 y_1594 (cons_173 x_45422 x_45423))) (bsort_5 x_45478 x_45477) (odds_7 x_45479 (cons_173 y_1594 (cons_173 x_45422 x_45423))) (bsort_5 x_45480 x_45479) (bmerge_5 x_45476 x_45478 x_45480)) (bsort_5 x_45476 (cons_173 y_1594 (cons_173 x_45422 x_45423))))))
(assert (forall ((y_1594 Int))
	(bsort_5 (cons_173 y_1594 nil_198) (cons_173 y_1594 nil_198))))
(assert (bsort_5 nil_198 nil_198))
(assert (forall ((x_45484 list_173) (xs_474 list_173))
	(=> (and true (bsort_5 x_45484 xs_474) (ordered_16 false_240 x_45484)) false)))
(check-sat)
