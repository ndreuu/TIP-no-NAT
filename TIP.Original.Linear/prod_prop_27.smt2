(set-logic HORN)
(declare-datatypes ((Nat_594 0)) (((Z_2094 ) (S_483 (unS_700 Nat_594)))))
(declare-fun diseqNat_594 (Nat_594 Nat_594) Bool)
(declare-fun unS_701 (Nat_594 Nat_594) Bool)
(declare-fun isZ_450 (Nat_594) Bool)
(declare-fun isS_450 (Nat_594) Bool)
(assert (forall ((x_55762 Nat_594))
	(unS_701 x_55762 (S_483 x_55762))))
(assert (isZ_450 Z_2094))
(assert (forall ((x_55764 Nat_594))
	(isS_450 (S_483 x_55764))))
(assert (forall ((x_55765 Nat_594))
	(diseqNat_594 Z_2094 (S_483 x_55765))))
(assert (forall ((x_55766 Nat_594))
	(diseqNat_594 (S_483 x_55766) Z_2094)))
(assert (forall ((x_55767 Nat_594) (x_55768 Nat_594))
	(=> (diseqNat_594 x_55767 x_55768)
	    (diseqNat_594 (S_483 x_55767) (S_483 x_55768)))))
(declare-fun add_376 (Nat_594 Nat_594 Nat_594) Bool)
(declare-fun minus_371 (Nat_594 Nat_594 Nat_594) Bool)
(declare-fun le_350 (Nat_594 Nat_594) Bool)
(declare-fun ge_350 (Nat_594 Nat_594) Bool)
(declare-fun lt_370 (Nat_594 Nat_594) Bool)
(declare-fun gt_353 (Nat_594 Nat_594) Bool)
(declare-fun mult_351 (Nat_594 Nat_594 Nat_594) Bool)
(declare-fun div_350 (Nat_594 Nat_594 Nat_594) Bool)
(declare-fun mod_352 (Nat_594 Nat_594 Nat_594) Bool)
(assert (forall ((y_2330 Nat_594))
	(add_376 y_2330 Z_2094 y_2330)))
(assert (forall ((x_55746 Nat_594) (y_2330 Nat_594) (r_423 Nat_594))
	(=> (add_376 r_423 x_55746 y_2330)
	    (add_376 (S_483 r_423) (S_483 x_55746) y_2330))))
(assert (forall ((y_2330 Nat_594))
	(minus_371 Z_2094 Z_2094 y_2330)))
(assert (forall ((x_55746 Nat_594) (y_2330 Nat_594) (r_423 Nat_594))
	(=> (minus_371 r_423 x_55746 y_2330)
	    (minus_371 (S_483 r_423) (S_483 x_55746) y_2330))))
(assert (forall ((y_2330 Nat_594))
	(le_350 Z_2094 y_2330)))
(assert (forall ((x_55746 Nat_594) (y_2330 Nat_594))
	(=> (le_350 x_55746 y_2330)
	    (le_350 (S_483 x_55746) (S_483 y_2330)))))
(assert (forall ((y_2330 Nat_594))
	(ge_350 y_2330 Z_2094)))
(assert (forall ((x_55746 Nat_594) (y_2330 Nat_594))
	(=> (ge_350 x_55746 y_2330)
	    (ge_350 (S_483 x_55746) (S_483 y_2330)))))
(assert (forall ((y_2330 Nat_594))
	(lt_370 Z_2094 (S_483 y_2330))))
(assert (forall ((x_55746 Nat_594) (y_2330 Nat_594))
	(=> (lt_370 x_55746 y_2330)
	    (lt_370 (S_483 x_55746) (S_483 y_2330)))))
(assert (forall ((y_2330 Nat_594))
	(gt_353 (S_483 y_2330) Z_2094)))
(assert (forall ((x_55746 Nat_594) (y_2330 Nat_594))
	(=> (gt_353 x_55746 y_2330)
	    (gt_353 (S_483 x_55746) (S_483 y_2330)))))
(assert (forall ((y_2330 Nat_594))
	(mult_351 Z_2094 Z_2094 y_2330)))
(assert (forall ((x_55746 Nat_594) (y_2330 Nat_594) (r_423 Nat_594) (z_2095 Nat_594))
	(=>	(and (mult_351 r_423 x_55746 y_2330)
			(add_376 z_2095 r_423 y_2330))
		(mult_351 z_2095 (S_483 x_55746) y_2330))))
(assert (forall ((x_55746 Nat_594) (y_2330 Nat_594))
	(=> (lt_370 x_55746 y_2330)
	    (div_350 Z_2094 x_55746 y_2330))))
(assert (forall ((x_55746 Nat_594) (y_2330 Nat_594) (r_423 Nat_594) (z_2095 Nat_594))
	(=>	(and (ge_350 x_55746 y_2330)
			(minus_371 z_2095 x_55746 y_2330)
			(div_350 r_423 z_2095 y_2330))
		(div_350 (S_483 r_423) x_55746 y_2330))))
(assert (forall ((x_55746 Nat_594) (y_2330 Nat_594))
	(=> (lt_370 x_55746 y_2330)
	    (mod_352 x_55746 x_55746 y_2330))))
(assert (forall ((x_55746 Nat_594) (y_2330 Nat_594) (r_423 Nat_594) (z_2095 Nat_594))
	(=>	(and (ge_350 x_55746 y_2330)
			(minus_371 z_2095 x_55746 y_2330)
			(mod_352 r_423 z_2095 y_2330))
		(mod_352 r_423 x_55746 y_2330))))
(declare-datatypes ((list_251 0)) (((nil_281 ) (cons_251 (head_502 Nat_594) (tail_502 list_251)))))
(declare-fun diseqlist_251 (list_251 list_251) Bool)
(declare-fun head_503 (Nat_594 list_251) Bool)
(declare-fun tail_503 (list_251 list_251) Bool)
(declare-fun isnil_281 (list_251) Bool)
(declare-fun iscons_251 (list_251) Bool)
(assert (forall ((x_55748 Nat_594) (x_55749 list_251))
	(head_503 x_55748 (cons_251 x_55748 x_55749))))
(assert (forall ((x_55748 Nat_594) (x_55749 list_251))
	(tail_503 x_55749 (cons_251 x_55748 x_55749))))
(assert (isnil_281 nil_281))
(assert (forall ((x_55751 Nat_594) (x_55752 list_251))
	(iscons_251 (cons_251 x_55751 x_55752))))
(assert (forall ((x_55753 Nat_594) (x_55754 list_251))
	(diseqlist_251 nil_281 (cons_251 x_55753 x_55754))))
(assert (forall ((x_55755 Nat_594) (x_55756 list_251))
	(diseqlist_251 (cons_251 x_55755 x_55756) nil_281)))
(assert (forall ((x_55757 Nat_594) (x_55758 list_251) (x_55759 Nat_594) (x_55760 list_251))
	(=> (diseqNat_594 x_55757 x_55759)
	    (diseqlist_251 (cons_251 x_55757 x_55758) (cons_251 x_55759 x_55760)))))
(assert (forall ((x_55757 Nat_594) (x_55758 list_251) (x_55759 Nat_594) (x_55760 list_251))
	(=> (diseqlist_251 x_55758 x_55760)
	    (diseqlist_251 (cons_251 x_55757 x_55758) (cons_251 x_55759 x_55760)))))
(declare-fun qrev_3 (list_251 list_251 list_251) Bool)
(assert (forall ((x_55734 list_251) (z_2092 Nat_594) (xs_671 list_251) (y_2327 list_251))
	(=> (qrev_3 x_55734 xs_671 (cons_251 z_2092 y_2327))
	    (qrev_3 x_55734 (cons_251 z_2092 xs_671) y_2327))))
(assert (forall ((x_55736 list_251))
	(qrev_3 x_55736 nil_281 x_55736)))
(declare-fun x_55730 (list_251 list_251 list_251) Bool)
(assert (forall ((x_55738 list_251) (z_2093 Nat_594) (xs_672 list_251) (y_2328 list_251))
	(=> (x_55730 x_55738 xs_672 y_2328)
	    (x_55730 (cons_251 z_2093 x_55738) (cons_251 z_2093 xs_672) y_2328))))
(assert (forall ((x_55739 list_251))
	(x_55730 x_55739 nil_281 x_55739)))
(declare-fun rev_15 (list_251 list_251) Bool)
(assert (forall ((x_55740 list_251) (x_55741 list_251) (y_2329 Nat_594) (xs_673 list_251))
	(=>	(and (rev_15 x_55741 xs_673)
			(x_55730 x_55740 x_55741 (cons_251 y_2329 nil_281)))
		(rev_15 x_55740 (cons_251 y_2329 xs_673)))))
(assert (rev_15 nil_281 nil_281))
(assert (forall ((x_55744 list_251) (x_55745 list_251) (x_55733 list_251))
	(=>	(and true
			(diseqlist_251 x_55744 x_55745)
			(rev_15 x_55744 x_55733)
			(qrev_3 x_55745 x_55733 nil_281))
		false)))
(check-sat)
