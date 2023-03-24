(set-logic HORN)
(declare-datatypes ((Nat_505 0)) (((Z_1805 ) (S_405 (unS_598 Nat_505)))))
(declare-fun diseqNat_505 (Nat_505 Nat_505) Bool)
(declare-fun unS_599 (Nat_505 Nat_505) Bool)
(declare-fun isZ_372 (Nat_505) Bool)
(declare-fun isS_372 (Nat_505) Bool)
(assert (forall ((x_52671 Nat_505))
	(unS_599 x_52671 (S_405 x_52671))))
(assert (isZ_372 Z_1805))
(assert (forall ((x_52673 Nat_505))
	(isS_372 (S_405 x_52673))))
(assert (forall ((x_52674 Nat_505))
	(diseqNat_505 Z_1805 (S_405 x_52674))))
(assert (forall ((x_52675 Nat_505))
	(diseqNat_505 (S_405 x_52675) Z_1805)))
(assert (forall ((x_52676 Nat_505) (x_52677 Nat_505))
	(=> (diseqNat_505 x_52676 x_52677)
	    (diseqNat_505 (S_405 x_52676) (S_405 x_52677)))))
(declare-fun add_321 (Nat_505 Nat_505 Nat_505) Bool)
(declare-fun minus_317 (Nat_505 Nat_505 Nat_505) Bool)
(declare-fun le_299 (Nat_505 Nat_505) Bool)
(declare-fun ge_299 (Nat_505 Nat_505) Bool)
(declare-fun lt_318 (Nat_505 Nat_505) Bool)
(declare-fun gt_302 (Nat_505 Nat_505) Bool)
(declare-fun mult_299 (Nat_505 Nat_505 Nat_505) Bool)
(declare-fun div_299 (Nat_505 Nat_505 Nat_505) Bool)
(declare-fun mod_301 (Nat_505 Nat_505 Nat_505) Bool)
(assert (forall ((y_2027 Nat_505))
	(add_321 y_2027 Z_1805 y_2027)))
(assert (forall ((x_52664 Nat_505) (y_2027 Nat_505) (r_368 Nat_505))
	(=> (add_321 r_368 x_52664 y_2027)
	    (add_321 (S_405 r_368) (S_405 x_52664) y_2027))))
(assert (forall ((y_2027 Nat_505))
	(minus_317 Z_1805 Z_1805 y_2027)))
(assert (forall ((x_52664 Nat_505) (y_2027 Nat_505) (r_368 Nat_505))
	(=> (minus_317 r_368 x_52664 y_2027)
	    (minus_317 (S_405 r_368) (S_405 x_52664) y_2027))))
(assert (forall ((y_2027 Nat_505))
	(le_299 Z_1805 y_2027)))
(assert (forall ((x_52664 Nat_505) (y_2027 Nat_505))
	(=> (le_299 x_52664 y_2027)
	    (le_299 (S_405 x_52664) (S_405 y_2027)))))
(assert (forall ((y_2027 Nat_505))
	(ge_299 y_2027 Z_1805)))
(assert (forall ((x_52664 Nat_505) (y_2027 Nat_505))
	(=> (ge_299 x_52664 y_2027)
	    (ge_299 (S_405 x_52664) (S_405 y_2027)))))
(assert (forall ((y_2027 Nat_505))
	(lt_318 Z_1805 (S_405 y_2027))))
(assert (forall ((x_52664 Nat_505) (y_2027 Nat_505))
	(=> (lt_318 x_52664 y_2027)
	    (lt_318 (S_405 x_52664) (S_405 y_2027)))))
(assert (forall ((y_2027 Nat_505))
	(gt_302 (S_405 y_2027) Z_1805)))
(assert (forall ((x_52664 Nat_505) (y_2027 Nat_505))
	(=> (gt_302 x_52664 y_2027)
	    (gt_302 (S_405 x_52664) (S_405 y_2027)))))
(assert (forall ((y_2027 Nat_505))
	(mult_299 Z_1805 Z_1805 y_2027)))
(assert (forall ((x_52664 Nat_505) (y_2027 Nat_505) (r_368 Nat_505) (z_1806 Nat_505))
	(=>	(and (mult_299 r_368 x_52664 y_2027)
			(add_321 z_1806 r_368 y_2027))
		(mult_299 z_1806 (S_405 x_52664) y_2027))))
(assert (forall ((x_52664 Nat_505) (y_2027 Nat_505))
	(=> (lt_318 x_52664 y_2027)
	    (div_299 Z_1805 x_52664 y_2027))))
(assert (forall ((x_52664 Nat_505) (y_2027 Nat_505) (r_368 Nat_505) (z_1806 Nat_505))
	(=>	(and (ge_299 x_52664 y_2027)
			(minus_317 z_1806 x_52664 y_2027)
			(div_299 r_368 z_1806 y_2027))
		(div_299 (S_405 r_368) x_52664 y_2027))))
(assert (forall ((x_52664 Nat_505) (y_2027 Nat_505))
	(=> (lt_318 x_52664 y_2027)
	    (mod_301 x_52664 x_52664 y_2027))))
(assert (forall ((x_52664 Nat_505) (y_2027 Nat_505) (r_368 Nat_505) (z_1806 Nat_505))
	(=>	(and (ge_299 x_52664 y_2027)
			(minus_317 z_1806 x_52664 y_2027)
			(mod_301 r_368 z_1806 y_2027))
		(mod_301 r_368 x_52664 y_2027))))
(declare-datatypes ((list_209 0)) (((nil_237 ) (cons_209 (head_418 Nat_505) (tail_418 list_209)))))
(declare-fun diseqlist_209 (list_209 list_209) Bool)
(declare-fun head_419 (Nat_505 list_209) Bool)
(declare-fun tail_419 (list_209 list_209) Bool)
(declare-fun isnil_237 (list_209) Bool)
(declare-fun iscons_209 (list_209) Bool)
(assert (forall ((x_52679 Nat_505) (x_52680 list_209))
	(head_419 x_52679 (cons_209 x_52679 x_52680))))
(assert (forall ((x_52679 Nat_505) (x_52680 list_209))
	(tail_419 x_52680 (cons_209 x_52679 x_52680))))
(assert (isnil_237 nil_237))
(assert (forall ((x_52682 Nat_505) (x_52683 list_209))
	(iscons_209 (cons_209 x_52682 x_52683))))
(assert (forall ((x_52684 Nat_505) (x_52685 list_209))
	(diseqlist_209 nil_237 (cons_209 x_52684 x_52685))))
(assert (forall ((x_52686 Nat_505) (x_52687 list_209))
	(diseqlist_209 (cons_209 x_52686 x_52687) nil_237)))
(assert (forall ((x_52688 Nat_505) (x_52689 list_209) (x_52690 Nat_505) (x_52691 list_209))
	(=> (diseqNat_505 x_52688 x_52690)
	    (diseqlist_209 (cons_209 x_52688 x_52689) (cons_209 x_52690 x_52691)))))
(assert (forall ((x_52688 Nat_505) (x_52689 list_209) (x_52690 Nat_505) (x_52691 list_209))
	(=> (diseqlist_209 x_52689 x_52691)
	    (diseqlist_209 (cons_209 x_52688 x_52689) (cons_209 x_52690 x_52691)))))
(declare-fun take_47 (list_209 Nat_505 list_209) Bool)
(assert (forall ((x_52607 Nat_505) (y_2020 list_209))
	(=> (le_299 x_52607 Z_1805)
	    (take_47 nil_237 x_52607 y_2020))))
(assert (forall ((x_52665 Nat_505) (x_52622 list_209) (z_1800 Nat_505) (xs_578 list_209) (x_52607 Nat_505))
	(=>	(and (gt_302 x_52607 Z_1805)
			(take_47 x_52622 x_52665 xs_578)
			(minus_317 x_52665 x_52607 (S_405 Z_1805)))
		(take_47 (cons_209 z_1800 x_52622) x_52607 (cons_209 z_1800 xs_578)))))
(assert (forall ((x_52607 Nat_505) (y_2020 list_209))
	(=> (le_299 x_52607 Z_1805)
	    (take_47 nil_237 x_52607 y_2020))))
(assert (forall ((x_52607 Nat_505))
	(=> (gt_302 x_52607 Z_1805)
	    (take_47 nil_237 x_52607 nil_237))))
(declare-fun nmsorttdhalf_4 (Nat_505 Nat_505) Bool)
(assert (nmsorttdhalf_4 Z_1805 (S_405 Z_1805)))
(assert (=> (diseqNat_505 Z_1805 (S_405 Z_1805))
	    (nmsorttdhalf_4 Z_1805 Z_1805)))
(assert (nmsorttdhalf_4 Z_1805 (S_405 Z_1805)))
(assert (forall ((x_52667 Nat_505) (x_52628 Nat_505) (x_52629 Nat_505) (x_52608 Nat_505))
	(=>	(and (diseqNat_505 x_52608 (S_405 Z_1805))
			(diseqNat_505 x_52608 Z_1805)
			(nmsorttdhalf_4 x_52629 x_52667)
			(minus_317 x_52667 x_52608 (S_405 (S_405 Z_1805)))
			(add_321 x_52628 (S_405 Z_1805) x_52629))
		(nmsorttdhalf_4 x_52628 x_52608))))
(declare-fun lmerge_15 (list_209 list_209 list_209) Bool)
(assert (forall ((x_52631 list_209) (x_52611 Nat_505) (x_52612 list_209) (z_1801 Nat_505) (x_52610 list_209))
	(=>	(and (le_299 z_1801 x_52611)
			(lmerge_15 x_52631 x_52610 (cons_209 x_52611 x_52612)))
		(lmerge_15 (cons_209 z_1801 x_52631) (cons_209 z_1801 x_52610) (cons_209 x_52611 x_52612)))))
(assert (forall ((x_52633 list_209) (x_52611 Nat_505) (x_52612 list_209) (z_1801 Nat_505) (x_52610 list_209))
	(=>	(and (gt_302 z_1801 x_52611)
			(lmerge_15 x_52633 (cons_209 z_1801 x_52610) x_52612))
		(lmerge_15 (cons_209 x_52611 x_52633) (cons_209 z_1801 x_52610) (cons_209 x_52611 x_52612)))))
(assert (forall ((z_1801 Nat_505) (x_52610 list_209))
	(lmerge_15 (cons_209 z_1801 x_52610) (cons_209 z_1801 x_52610) nil_237)))
(assert (forall ((x_52635 list_209))
	(lmerge_15 x_52635 nil_237 x_52635)))
(declare-fun length_37 (Nat_505 list_209) Bool)
(assert (forall ((x_52636 Nat_505) (x_52637 Nat_505) (y_2022 Nat_505) (l_39 list_209))
	(=>	(and (length_37 x_52637 l_39)
			(add_321 x_52636 (S_405 Z_1805) x_52637))
		(length_37 x_52636 (cons_209 y_2022 l_39)))))
(assert (length_37 Z_1805 nil_237))
(declare-fun insert_25 (list_209 Nat_505 list_209) Bool)
(assert (forall ((z_1802 Nat_505) (xs_579 list_209) (x_52614 Nat_505))
	(=> (le_299 x_52614 z_1802)
	    (insert_25 (cons_209 x_52614 (cons_209 z_1802 xs_579)) x_52614 (cons_209 z_1802 xs_579)))))
(assert (forall ((x_52641 list_209) (z_1802 Nat_505) (xs_579 list_209) (x_52614 Nat_505))
	(=>	(and (gt_302 x_52614 z_1802)
			(insert_25 x_52641 x_52614 xs_579))
		(insert_25 (cons_209 z_1802 x_52641) x_52614 (cons_209 z_1802 xs_579)))))
(assert (forall ((x_52614 Nat_505))
	(insert_25 (cons_209 x_52614 nil_237) x_52614 nil_237)))
(declare-fun isort_25 (list_209 list_209) Bool)
(assert (forall ((x_52643 list_209) (x_52644 list_209) (y_2024 Nat_505) (xs_580 list_209))
	(=>	(and (isort_25 x_52644 xs_580)
			(insert_25 x_52643 y_2024 x_52644))
		(isort_25 x_52643 (cons_209 y_2024 xs_580)))))
(assert (isort_25 nil_237 nil_237))
(declare-fun drop_49 (list_209 Nat_505 list_209) Bool)
(assert (forall ((x_52647 list_209) (x_52616 Nat_505))
	(=> (le_299 x_52616 Z_1805)
	    (drop_49 x_52647 x_52616 x_52647))))
(assert (forall ((x_52669 Nat_505) (x_52648 list_209) (z_1803 Nat_505) (xs_581 list_209) (x_52616 Nat_505))
	(=>	(and (gt_302 x_52616 Z_1805)
			(drop_49 x_52648 x_52669 xs_581)
			(minus_317 x_52669 x_52616 (S_405 Z_1805)))
		(drop_49 x_52648 x_52616 (cons_209 z_1803 xs_581)))))
(assert (forall ((x_52650 list_209) (x_52616 Nat_505))
	(=> (le_299 x_52616 Z_1805)
	    (drop_49 x_52650 x_52616 x_52650))))
(assert (forall ((x_52616 Nat_505))
	(=> (gt_302 x_52616 Z_1805)
	    (drop_49 nil_237 x_52616 nil_237))))
(declare-fun nmsorttd_4 (list_209 list_209) Bool)
(assert (forall ((x_52654 list_209) (x_52655 list_209) (x_52656 list_209) (x_52657 list_209) (x_52658 list_209) (x_52652 Nat_505) (k_12 Nat_505) (x_52618 Nat_505) (x_52619 list_209) (y_2026 Nat_505))
	(=>	(and (take_47 x_52655 k_12 (cons_209 y_2026 (cons_209 x_52618 x_52619)))
			(nmsorttd_4 x_52656 x_52655)
			(drop_49 x_52657 k_12 (cons_209 y_2026 (cons_209 x_52618 x_52619)))
			(nmsorttd_4 x_52658 x_52657)
			(lmerge_15 x_52654 x_52656 x_52658)
			(length_37 x_52652 (cons_209 y_2026 (cons_209 x_52618 x_52619)))
			(nmsorttdhalf_4 k_12 x_52652))
		(nmsorttd_4 x_52654 (cons_209 y_2026 (cons_209 x_52618 x_52619))))))
(assert (forall ((y_2026 Nat_505))
	(nmsorttd_4 (cons_209 y_2026 nil_237) (cons_209 y_2026 nil_237))))
(assert (nmsorttd_4 nil_237 nil_237))
(assert (forall ((x_52662 list_209) (x_52663 list_209) (xs_582 list_209))
	(=>	(and true
			(diseqlist_209 x_52662 x_52663)
			(nmsorttd_4 x_52662 xs_582)
			(isort_25 x_52663 xs_582))
		false)))
(check-sat)