(set-logic HORN)
(declare-datatypes ((Bool_109 0)) (((false_109 ) (true_109 ))))
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
(declare-datatypes ((Nat_202 0)) (((zero_20 ) (succ_20 (p_54 Nat_202)))))
(declare-fun diseqNat_202 (Nat_202 Nat_202) Bool)
(declare-fun p_55 (Nat_202 Nat_202) Bool)
(declare-fun iszero_20 (Nat_202) Bool)
(declare-fun issucc_20 (Nat_202) Bool)
(assert (forall ((x_12575 Nat_202))
	(p_55 x_12575 (succ_20 x_12575))))
(assert (iszero_20 zero_20))
(assert (forall ((x_12577 Nat_202))
	(issucc_20 (succ_20 x_12577))))
(assert (forall ((x_12578 Nat_202))
	(diseqNat_202 zero_20 (succ_20 x_12578))))
(assert (forall ((x_12579 Nat_202))
	(diseqNat_202 (succ_20 x_12579) zero_20)))
(assert (forall ((x_12580 Nat_202) (x_12581 Nat_202))
	(=> (diseqNat_202 x_12580 x_12581)
	    (diseqNat_202 (succ_20 x_12580) (succ_20 x_12581)))))
(declare-datatypes ((list_83 0)) (((nil_88 ) (cons_83 (head_166 Nat_202) (tail_166 list_83)))))
(declare-fun diseqlist_83 (list_83 list_83) Bool)
(declare-fun head_167 (Nat_202 list_83) Bool)
(declare-fun tail_167 (list_83 list_83) Bool)
(declare-fun isnil_88 (list_83) Bool)
(declare-fun iscons_83 (list_83) Bool)
(assert (forall ((x_12583 Nat_202) (x_12584 list_83))
	(head_167 x_12583 (cons_83 x_12583 x_12584))))
(assert (forall ((x_12583 Nat_202) (x_12584 list_83))
	(tail_167 x_12584 (cons_83 x_12583 x_12584))))
(assert (isnil_88 nil_88))
(assert (forall ((x_12586 Nat_202) (x_12587 list_83))
	(iscons_83 (cons_83 x_12586 x_12587))))
(assert (forall ((x_12588 Nat_202) (x_12589 list_83))
	(diseqlist_83 nil_88 (cons_83 x_12588 x_12589))))
(assert (forall ((x_12590 Nat_202) (x_12591 list_83))
	(diseqlist_83 (cons_83 x_12590 x_12591) nil_88)))
(assert (forall ((x_12592 Nat_202) (x_12593 list_83) (x_12594 Nat_202) (x_12595 list_83))
	(=> (diseqNat_202 x_12592 x_12594)
	    (diseqlist_83 (cons_83 x_12592 x_12593) (cons_83 x_12594 x_12595)))))
(assert (forall ((x_12592 Nat_202) (x_12593 list_83) (x_12594 Nat_202) (x_12595 list_83))
	(=> (diseqlist_83 x_12593 x_12595)
	    (diseqlist_83 (cons_83 x_12592 x_12593) (cons_83 x_12594 x_12595)))))
(declare-fun take_15 (list_83 Nat_202 list_83) Bool)
(assert (forall ((x_12501 list_83) (z_593 Nat_202) (xs_174 list_83) (z_592 Nat_202))
	(=> (take_15 x_12501 z_592 xs_174)
	    (take_15 (cons_83 z_593 x_12501) (succ_20 z_592) (cons_83 z_593 xs_174)))))
(assert (forall ((z_592 Nat_202))
	(take_15 nil_88 (succ_20 z_592) nil_88)))
(assert (forall ((y_539 list_83))
	(take_15 nil_88 zero_20 y_539)))
(declare-fun plus_16 (Nat_202 Nat_202 Nat_202) Bool)
(assert (forall ((x_12505 Nat_202) (z_594 Nat_202) (y_540 Nat_202))
	(=> (plus_16 x_12505 z_594 y_540)
	    (plus_16 (succ_20 x_12505) (succ_20 z_594) y_540))))
(assert (forall ((x_12506 Nat_202))
	(plus_16 x_12506 zero_20 x_12506)))
(declare-fun minus_110 (Nat_202 Nat_202 Nat_202) Bool)
(assert (forall ((x_12507 Nat_202) (y_542 Nat_202) (z_595 Nat_202))
	(=> (minus_110 x_12507 z_595 y_542)
	    (minus_110 x_12507 (succ_20 z_595) (succ_20 y_542)))))
(assert (forall ((z_595 Nat_202))
	(minus_110 zero_20 (succ_20 z_595) zero_20)))
(assert (forall ((y_541 Nat_202))
	(minus_110 zero_20 zero_20 y_541)))
(declare-fun lt_111 (Bool_109 Nat_202 Nat_202) Bool)
(assert (forall ((x_12511 Bool_109) (n_35 Nat_202) (z_596 Nat_202))
	(=> (lt_111 x_12511 n_35 z_596)
	    (lt_111 x_12511 (succ_20 n_35) (succ_20 z_596)))))
(assert (forall ((z_596 Nat_202))
	(lt_111 true_109 zero_20 (succ_20 z_596))))
(assert (forall ((x_12481 Nat_202))
	(lt_111 false_109 x_12481 zero_20)))
(declare-fun leq_8 (Bool_109 Nat_202 Nat_202) Bool)
(assert (forall ((x_12515 Bool_109) (x_12483 Nat_202) (z_597 Nat_202))
	(=> (leq_8 x_12515 z_597 x_12483)
	    (leq_8 x_12515 (succ_20 z_597) (succ_20 x_12483)))))
(assert (forall ((z_597 Nat_202))
	(leq_8 false_109 (succ_20 z_597) zero_20)))
(assert (forall ((y_544 Nat_202))
	(leq_8 true_109 zero_20 y_544)))
(declare-fun lmerge_0 (list_83 list_83 list_83) Bool)
(assert (forall ((x_12521 list_83) (x_12486 Nat_202) (x_12487 list_83) (z_598 Nat_202) (x_12485 list_83))
	(=>	(and (lmerge_0 x_12521 x_12485 (cons_83 x_12486 x_12487))
			(leq_8 true_109 z_598 x_12486))
		(lmerge_0 (cons_83 z_598 x_12521) (cons_83 z_598 x_12485) (cons_83 x_12486 x_12487)))))
(assert (forall ((x_12524 list_83) (x_12486 Nat_202) (x_12487 list_83) (z_598 Nat_202) (x_12485 list_83))
	(=>	(and (lmerge_0 x_12524 (cons_83 z_598 x_12485) x_12487)
			(leq_8 false_109 z_598 x_12486))
		(lmerge_0 (cons_83 x_12486 x_12524) (cons_83 z_598 x_12485) (cons_83 x_12486 x_12487)))))
(assert (forall ((z_598 Nat_202) (x_12485 list_83))
	(lmerge_0 (cons_83 z_598 x_12485) (cons_83 z_598 x_12485) nil_88)))
(assert (forall ((x_12526 list_83))
	(lmerge_0 x_12526 nil_88 x_12526)))
(declare-fun length_2 (Nat_202 list_83) Bool)
(assert (forall ((x_12527 Nat_202) (x_12528 Nat_202) (y_546 Nat_202) (l_4 list_83))
	(=>	(and (length_2 x_12528 l_4)
			(plus_16 x_12527 (succ_20 zero_20) x_12528))
		(length_2 x_12527 (cons_83 y_546 l_4)))))
(assert (length_2 zero_20 nil_88))
(declare-fun insert_3 (list_83 Nat_202 list_83) Bool)
(assert (forall ((z_599 Nat_202) (xs_175 list_83) (x_12489 Nat_202))
	(=> (leq_8 true_109 x_12489 z_599)
	    (insert_3 (cons_83 x_12489 (cons_83 z_599 xs_175)) x_12489 (cons_83 z_599 xs_175)))))
(assert (forall ((x_12535 list_83) (z_599 Nat_202) (xs_175 list_83) (x_12489 Nat_202))
	(=>	(and (insert_3 x_12535 x_12489 xs_175)
			(leq_8 false_109 x_12489 z_599))
		(insert_3 (cons_83 z_599 x_12535) x_12489 (cons_83 z_599 xs_175)))))
(assert (forall ((x_12489 Nat_202))
	(insert_3 (cons_83 x_12489 nil_88) x_12489 nil_88)))
(declare-fun isort_3 (list_83 list_83) Bool)
(assert (forall ((x_12537 list_83) (x_12538 list_83) (y_548 Nat_202) (xs_176 list_83))
	(=>	(and (isort_3 x_12538 xs_176)
			(insert_3 x_12537 y_548 x_12538))
		(isort_3 x_12537 (cons_83 y_548 xs_176)))))
(assert (isort_3 nil_88 nil_88))
(declare-fun idiv_1 (Nat_202 Nat_202 Nat_202) Bool)
(assert (forall ((x_12491 Nat_202) (y_549 Nat_202))
	(=> (lt_111 true_109 x_12491 y_549)
	    (idiv_1 zero_20 x_12491 y_549))))
(assert (forall ((x_12545 Nat_202) (x_12546 Nat_202) (x_12491 Nat_202) (y_549 Nat_202))
	(=>	(and (minus_110 x_12545 x_12491 y_549)
			(idiv_1 x_12546 x_12545 y_549)
			(lt_111 false_109 x_12491 y_549))
		(idiv_1 (succ_20 x_12546) x_12491 y_549))))
(declare-fun drop_17 (list_83 Nat_202 list_83) Bool)
(assert (forall ((x_12547 list_83) (z_601 Nat_202) (xs_177 list_83) (z_600 Nat_202))
	(=> (drop_17 x_12547 z_600 xs_177)
	    (drop_17 x_12547 (succ_20 z_600) (cons_83 z_601 xs_177)))))
(assert (forall ((z_600 Nat_202))
	(drop_17 nil_88 (succ_20 z_600) nil_88)))
(assert (forall ((x_12550 list_83))
	(drop_17 x_12550 zero_20 x_12550)))
(declare-fun msorttd_0 (list_83 list_83) Bool)
(assert (forall ((x_12553 list_83) (x_12554 list_83) (x_12555 list_83) (x_12556 list_83) (x_12557 list_83) (x_12551 Nat_202) (k_3 Nat_202) (x_12494 Nat_202) (x_12495 list_83) (y_551 Nat_202))
	(=>	(and (take_15 x_12554 k_3 (cons_83 y_551 (cons_83 x_12494 x_12495)))
			(msorttd_0 x_12555 x_12554)
			(drop_17 x_12556 k_3 (cons_83 y_551 (cons_83 x_12494 x_12495)))
			(msorttd_0 x_12557 x_12556)
			(lmerge_0 x_12553 x_12555 x_12557)
			(length_2 x_12551 (cons_83 y_551 (cons_83 x_12494 x_12495)))
			(idiv_1 k_3 x_12551 (succ_20 (succ_20 zero_20))))
		(msorttd_0 x_12553 (cons_83 y_551 (cons_83 x_12494 x_12495))))))
(assert (forall ((y_551 Nat_202))
	(msorttd_0 (cons_83 y_551 nil_88) (cons_83 y_551 nil_88))))
(assert (msorttd_0 nil_88 nil_88))
(assert (forall ((x_12561 Nat_202) (x_12562 Nat_202) (x_12563 Nat_202) (x_12564 Nat_202) (x_12496 Nat_202) (y_552 Nat_202) (z_603 Nat_202))
	(=>	(and true
			(diseqNat_202 x_12562 x_12564)
			(plus_16 x_12561 y_552 z_603)
			(plus_16 x_12562 x_12496 x_12561)
			(plus_16 x_12563 x_12496 y_552)
			(plus_16 x_12564 x_12563 z_603))
		false)))
(assert (forall ((x_12565 Nat_202) (x_12566 Nat_202) (x_12497 Nat_202) (y_553 Nat_202))
	(=>	(and true
			(diseqNat_202 x_12565 x_12566)
			(plus_16 x_12565 x_12497 y_553)
			(plus_16 x_12566 y_553 x_12497))
		false)))
(assert (forall ((x_12567 Nat_202) (x_12498 Nat_202))
	(=>	(and true
			(diseqNat_202 x_12567 x_12498)
			(plus_16 x_12567 x_12498 zero_20))
		false)))
(assert (forall ((x_12568 Nat_202) (x_12499 Nat_202))
	(=>	(and true
			(diseqNat_202 x_12568 x_12499)
			(plus_16 x_12568 zero_20 x_12499))
		false)))
(assert (forall ((x_12569 list_83) (x_12570 list_83) (xs_178 list_83))
	(=>	(and true
			(diseqlist_83 x_12569 x_12570)
			(msorttd_0 x_12569 xs_178)
			(isort_3 x_12570 xs_178))
		false)))
(check-sat)