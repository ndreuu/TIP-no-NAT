(set-logic HORN)
(define-fun zero_20 () Int 0)
(define-fun succ_20 ((x Int)) Int (+ x 1))
(declare-datatypes ((Bool_109 0)) (((false_109) (true_109))))
(declare-fun diseqBool_50 (Bool_109 Bool_109) Bool)
(declare-fun isfalse_50 (Bool_109) Bool)
(declare-fun istrue_50 (Bool_109) Bool)
(assert (isfalse_50 false_109))
(assert (istrue_50 true_109))
(assert (diseqBool_50 false_109 true_109))
(assert (diseqBool_50 true_109 false_109))
(declare-fun and_109 (Bool_109 Bool_109 Bool_109) Bool)
(declare-fun or_110 (Bool_109 Bool_109 Bool_109) Bool)
(declare-fun hence_109 (Bool_109 Bool_109 Bool_109) Bool)
(declare-fun not_109 (Bool_109 Bool_109) Bool)
(assert (and_109 false_109 false_109 false_109))
(assert (and_109 false_109 true_109 false_109))
(assert (and_109 false_109 false_109 true_109))
(assert (and_109 true_109 true_109 true_109))
(assert (or_110 false_109 false_109 false_109))
(assert (or_110 true_109 true_109 false_109))
(assert (or_110 true_109 false_109 true_109))
(assert (or_110 true_109 true_109 true_109))
(assert (hence_109 true_109 false_109 false_109))
(assert (hence_109 false_109 true_109 false_109))
(assert (hence_109 true_109 false_109 true_109))
(assert (hence_109 true_109 true_109 true_109))
(assert (not_109 true_109 false_109))
(assert (not_109 false_109 true_109))
(declare-fun p_55 (Int Int) Bool)
(declare-fun iszero_20 (Int) Bool)
(declare-fun issucc_20 (Int) Bool)
(assert (forall ((x_12575 Int))
	(p_55 x_12575 (succ_20 x_12575))))
(assert (iszero_20 zero_20))
(assert (forall ((x_12577 Int))
	(issucc_20 (succ_20 x_12577))))
(declare-datatypes ((list_83 0)) (((nil_88) (cons_83 (head_166 Int) (tail_166 list_83)))))
(declare-fun diseqlist_83 (list_83 list_83) Bool)
(declare-fun head_167 (Int list_83) Bool)
(declare-fun tail_167 (list_83 list_83) Bool)
(declare-fun isnil_88 (list_83) Bool)
(declare-fun iscons_83 (list_83) Bool)
(assert (forall ((x_12583 Int) (x_12584 list_83))
	(head_167 x_12583 (cons_83 x_12583 x_12584))))
(assert (forall ((x_12583 Int) (x_12584 list_83))
	(tail_167 x_12584 (cons_83 x_12583 x_12584))))
(assert (isnil_88 nil_88))
(assert (forall ((x_12586 Int) (x_12587 list_83))
	(iscons_83 (cons_83 x_12586 x_12587))))
(assert (forall ((x_12588 Int) (x_12589 list_83))
	(diseqlist_83 nil_88 (cons_83 x_12588 x_12589))))
(assert (forall ((x_12590 Int) (x_12591 list_83))
	(diseqlist_83 (cons_83 x_12590 x_12591) nil_88)))
(assert (forall ((x_12592 Int) (x_12593 list_83) (x_12594 Int) (x_12595 list_83))
	(=> (distinct x_12592 x_12594) (diseqlist_83 (cons_83 x_12592 x_12593) (cons_83 x_12594 x_12595)))))
(assert (forall ((x_12592 Int) (x_12593 list_83) (x_12594 Int) (x_12595 list_83))
	(=> (diseqlist_83 x_12593 x_12595) (diseqlist_83 (cons_83 x_12592 x_12593) (cons_83 x_12594 x_12595)))))
(declare-fun take_15 (list_83 Int list_83) Bool)
(assert (forall ((x_12501 list_83) (z_593 Int) (xs_174 list_83) (z_592 Int))
	(=> (take_15 x_12501 z_592 xs_174) (take_15 (cons_83 z_593 x_12501) (succ_20 z_592) (cons_83 z_593 xs_174)))))
(assert (forall ((z_592 Int))
	(take_15 nil_88 (succ_20 z_592) nil_88)))
(assert (forall ((y_539 list_83))
	(take_15 nil_88 zero_20 y_539)))
(declare-fun plus_16 (Int Int Int) Bool)
(assert (forall ((z Int) (x Int) (y Int)) (=> (= z (+ x y)) (plus_16 z x y))))
(declare-fun minus_110 (Int Int Int) Bool)
(assert (forall ((z Int) (x Int) (y Int)) (=> (= z (- x y)) (minus_110 z x y))))
(declare-fun lt_111 (Bool_109 Int Int) Bool)
(assert (forall ((x Int) (y Int)) (=> (< x y) (lt_111 true_109 x y))))
(assert (forall ((x Int) (y Int)) (=> (not (< x y)) (lt_111 false_109 x y))))
(declare-fun leq_8 (Bool_109 Int Int) Bool)
(assert (forall ((x Int) (y Int)) (=> (<= x y) (leq_8 true_109 x y))))
(assert (forall ((x Int) (y Int)) (=> (not (<= x y)) (leq_8 false_109 x y))))
(declare-fun lmerge_0 (list_83 list_83 list_83) Bool)
(assert (forall ((x_12521 list_83) (x_12486 Int) (x_12487 list_83) (z_598 Int) (x_12485 list_83))
	(=> (and (lmerge_0 x_12521 x_12485 (cons_83 x_12486 x_12487)) (leq_8 true_109 z_598 x_12486)) (lmerge_0 (cons_83 z_598 x_12521) (cons_83 z_598 x_12485) (cons_83 x_12486 x_12487)))))
(assert (forall ((x_12524 list_83) (x_12486 Int) (x_12487 list_83) (z_598 Int) (x_12485 list_83))
	(=> (and (lmerge_0 x_12524 (cons_83 z_598 x_12485) x_12487) (leq_8 false_109 z_598 x_12486)) (lmerge_0 (cons_83 x_12486 x_12524) (cons_83 z_598 x_12485) (cons_83 x_12486 x_12487)))))
(assert (forall ((z_598 Int) (x_12485 list_83))
	(lmerge_0 (cons_83 z_598 x_12485) (cons_83 z_598 x_12485) nil_88)))
(assert (forall ((x_12526 list_83))
	(lmerge_0 x_12526 nil_88 x_12526)))
(declare-fun length_2 (Int list_83) Bool)
(assert (forall ((x_12527 Int) (x_12528 Int) (y_546 Int) (l_4 list_83))
	(=> (and (length_2 x_12528 l_4) (plus_16 x_12527 (succ_20 zero_20) x_12528)) (length_2 x_12527 (cons_83 y_546 l_4)))))
(assert (length_2 zero_20 nil_88))
(declare-fun insert_3 (list_83 Int list_83) Bool)
(assert (forall ((z_599 Int) (xs_175 list_83) (x_12489 Int))
	(=> (leq_8 true_109 x_12489 z_599) (insert_3 (cons_83 x_12489 (cons_83 z_599 xs_175)) x_12489 (cons_83 z_599 xs_175)))))
(assert (forall ((x_12535 list_83) (z_599 Int) (xs_175 list_83) (x_12489 Int))
	(=> (and (insert_3 x_12535 x_12489 xs_175) (leq_8 false_109 x_12489 z_599)) (insert_3 (cons_83 z_599 x_12535) x_12489 (cons_83 z_599 xs_175)))))
(assert (forall ((x_12489 Int))
	(insert_3 (cons_83 x_12489 nil_88) x_12489 nil_88)))
(declare-fun isort_3 (list_83 list_83) Bool)
(assert (forall ((x_12537 list_83) (x_12538 list_83) (y_548 Int) (xs_176 list_83))
	(=> (and (isort_3 x_12538 xs_176) (insert_3 x_12537 y_548 x_12538)) (isort_3 x_12537 (cons_83 y_548 xs_176)))))
(assert (isort_3 nil_88 nil_88))
(define-fun idiv_1 ((z Int) (x Int) (y Int)) Bool (= z (div x y)))
(declare-fun drop_17 (list_83 Int list_83) Bool)
(assert (forall ((x_12547 list_83) (z_601 Int) (xs_177 list_83) (z_600 Int))
	(=> (drop_17 x_12547 z_600 xs_177) (drop_17 x_12547 (succ_20 z_600) (cons_83 z_601 xs_177)))))
(assert (forall ((z_600 Int))
	(drop_17 nil_88 (succ_20 z_600) nil_88)))
(assert (forall ((x_12550 list_83))
	(drop_17 x_12550 zero_20 x_12550)))
(declare-fun msorttd_0 (list_83 list_83) Bool)
(assert (forall ((x_12553 list_83) (x_12554 list_83) (x_12555 list_83) (x_12556 list_83) (x_12557 list_83) (x_12551 Int) (k_3 Int) (x_12494 Int) (x_12495 list_83) (y_551 Int))
	(=> (and (take_15 x_12554 k_3 (cons_83 y_551 (cons_83 x_12494 x_12495))) (msorttd_0 x_12555 x_12554) (drop_17 x_12556 k_3 (cons_83 y_551 (cons_83 x_12494 x_12495))) (msorttd_0 x_12557 x_12556) (lmerge_0 x_12553 x_12555 x_12557) (length_2 x_12551 (cons_83 y_551 (cons_83 x_12494 x_12495))) (idiv_1 k_3 x_12551 (succ_20 (succ_20 zero_20)))) (msorttd_0 x_12553 (cons_83 y_551 (cons_83 x_12494 x_12495))))))
(assert (forall ((y_551 Int))
	(msorttd_0 (cons_83 y_551 nil_88) (cons_83 y_551 nil_88))))
(assert (msorttd_0 nil_88 nil_88))
(assert (forall ((x_12561 Int) (x_12562 Int) (x_12563 Int) (x_12564 Int) (x_12496 Int) (y_552 Int) (z_603 Int))
	(=> (and (distinct x_12562 x_12564) (plus_16 x_12561 y_552 z_603) (plus_16 x_12562 x_12496 x_12561) (plus_16 x_12563 x_12496 y_552) (plus_16 x_12564 x_12563 z_603)) false)))
(assert (forall ((x_12565 Int) (x_12566 Int) (x_12497 Int) (y_553 Int))
	(=> (and (distinct x_12565 x_12566) (plus_16 x_12565 x_12497 y_553) (plus_16 x_12566 y_553 x_12497)) false)))
(assert (forall ((x_12567 Int) (x_12498 Int))
	(=> (and (distinct x_12567 x_12498) (plus_16 x_12567 x_12498 zero_20)) false)))
(assert (forall ((x_12568 Int) (x_12499 Int))
	(=> (and (distinct x_12568 x_12499) (plus_16 x_12568 zero_20 x_12499)) false)))
(assert (forall ((x_12569 list_83) (x_12570 list_83) (xs_178 list_83))
	(=> (and (diseqlist_83 x_12569 x_12570) (msorttd_0 x_12569 xs_178) (isort_3 x_12570 xs_178)) false)))
(check-sat)
