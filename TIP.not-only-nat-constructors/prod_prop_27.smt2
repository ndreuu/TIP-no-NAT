(set-logic HORN)
(define-fun Z_2094 () Int 0)
(define-fun S_483 ((x Int)) Int (+ x 1))
(declare-fun unS_701 (Int Int) Bool)
(declare-fun isZ_450 (Int) Bool)
(declare-fun isS_450 (Int) Bool)
(assert (forall ((x_55762 Int))
	(unS_701 x_55762 (S_483 x_55762))))
(assert (isZ_450 Z_2094))
(assert (forall ((x_55764 Int))
	(isS_450 (S_483 x_55764))))
(declare-fun add_376 (Int Int Int) Bool)
(declare-fun minus_371 (Int Int Int) Bool)
(declare-fun le_350 (Int Int) Bool)
(declare-fun ge_350 (Int Int) Bool)
(declare-fun lt_370 (Int Int) Bool)
(declare-fun gt_353 (Int Int) Bool)
(declare-fun mult_351 (Int Int Int) Bool)
(declare-fun div_350 (Int Int Int) Bool)
(declare-fun mod_352 (Int Int Int) Bool)
(assert (forall ((y_2330 Int))
	(add_376 y_2330 Z_2094 y_2330)))
(assert (forall ((x_55746 Int) (y_2330 Int) (r_423 Int))
	(=> (add_376 r_423 x_55746 y_2330) (add_376 (S_483 r_423) (S_483 x_55746) y_2330))))
(assert (forall ((y_2330 Int))
	(minus_371 Z_2094 Z_2094 y_2330)))
(assert (forall ((x_55746 Int) (y_2330 Int) (r_423 Int))
	(=> (minus_371 r_423 x_55746 y_2330) (minus_371 (S_483 r_423) (S_483 x_55746) y_2330))))
(assert (forall ((y_2330 Int))
	(le_350 Z_2094 y_2330)))
(assert (forall ((x_55746 Int) (y_2330 Int))
	(=> (le_350 x_55746 y_2330) (le_350 (S_483 x_55746) (S_483 y_2330)))))
(assert (forall ((y_2330 Int))
	(ge_350 y_2330 Z_2094)))
(assert (forall ((x_55746 Int) (y_2330 Int))
	(=> (ge_350 x_55746 y_2330) (ge_350 (S_483 x_55746) (S_483 y_2330)))))
(assert (forall ((y_2330 Int))
	(lt_370 Z_2094 (S_483 y_2330))))
(assert (forall ((x_55746 Int) (y_2330 Int))
	(=> (lt_370 x_55746 y_2330) (lt_370 (S_483 x_55746) (S_483 y_2330)))))
(assert (forall ((y_2330 Int))
	(gt_353 (S_483 y_2330) Z_2094)))
(assert (forall ((x_55746 Int) (y_2330 Int))
	(=> (gt_353 x_55746 y_2330) (gt_353 (S_483 x_55746) (S_483 y_2330)))))
(assert (forall ((y_2330 Int))
	(mult_351 Z_2094 Z_2094 y_2330)))
(assert (forall ((x_55746 Int) (y_2330 Int) (r_423 Int) (z_2095 Int))
	(=> (and (mult_351 r_423 x_55746 y_2330) (add_376 z_2095 r_423 y_2330)) (mult_351 z_2095 (S_483 x_55746) y_2330))))
(assert (forall ((x_55746 Int) (y_2330 Int))
	(=> (lt_370 x_55746 y_2330) (div_350 Z_2094 x_55746 y_2330))))
(assert (forall ((x_55746 Int) (y_2330 Int) (r_423 Int) (z_2095 Int))
	(=> (and (ge_350 x_55746 y_2330) (minus_371 z_2095 x_55746 y_2330) (div_350 r_423 z_2095 y_2330)) (div_350 (S_483 r_423) x_55746 y_2330))))
(assert (forall ((x_55746 Int) (y_2330 Int))
	(=> (lt_370 x_55746 y_2330) (mod_352 x_55746 x_55746 y_2330))))
(assert (forall ((x_55746 Int) (y_2330 Int) (r_423 Int) (z_2095 Int))
	(=> (and (ge_350 x_55746 y_2330) (minus_371 z_2095 x_55746 y_2330) (mod_352 r_423 z_2095 y_2330)) (mod_352 r_423 x_55746 y_2330))))
(declare-datatypes ((list_251 0)) (((nil_281) (cons_251 (head_502 Int) (tail_502 list_251)))))
(declare-fun diseqlist_251 (list_251 list_251) Bool)
(declare-fun head_503 (Int list_251) Bool)
(declare-fun tail_503 (list_251 list_251) Bool)
(declare-fun isnil_281 (list_251) Bool)
(declare-fun iscons_251 (list_251) Bool)
(assert (forall ((x_55748 Int) (x_55749 list_251))
	(head_503 x_55748 (cons_251 x_55748 x_55749))))
(assert (forall ((x_55748 Int) (x_55749 list_251))
	(tail_503 x_55749 (cons_251 x_55748 x_55749))))
(assert (isnil_281 nil_281))
(assert (forall ((x_55751 Int) (x_55752 list_251))
	(iscons_251 (cons_251 x_55751 x_55752))))
(assert (forall ((x_55753 Int) (x_55754 list_251))
	(diseqlist_251 nil_281 (cons_251 x_55753 x_55754))))
(assert (forall ((x_55755 Int) (x_55756 list_251))
	(diseqlist_251 (cons_251 x_55755 x_55756) nil_281)))
(assert (forall ((x_55757 Int) (x_55758 list_251) (x_55759 Int) (x_55760 list_251))
	(=> (distinct x_55757 x_55759) (diseqlist_251 (cons_251 x_55757 x_55758) (cons_251 x_55759 x_55760)))))
(assert (forall ((x_55757 Int) (x_55758 list_251) (x_55759 Int) (x_55760 list_251))
	(=> (diseqlist_251 x_55758 x_55760) (diseqlist_251 (cons_251 x_55757 x_55758) (cons_251 x_55759 x_55760)))))
(declare-fun qrev_3 (list_251 list_251 list_251) Bool)
(assert (forall ((x_55734 list_251) (z_2092 Int) (xs_671 list_251) (y_2327 list_251))
	(=> (qrev_3 x_55734 xs_671 (cons_251 z_2092 y_2327)) (qrev_3 x_55734 (cons_251 z_2092 xs_671) y_2327))))
(assert (forall ((x_55736 list_251))
	(qrev_3 x_55736 nil_281 x_55736)))
(declare-fun x_55730 (list_251 list_251 list_251) Bool)
(assert (forall ((x_55738 list_251) (z_2093 Int) (xs_672 list_251) (y_2328 list_251))
	(=> (x_55730 x_55738 xs_672 y_2328) (x_55730 (cons_251 z_2093 x_55738) (cons_251 z_2093 xs_672) y_2328))))
(assert (forall ((x_55739 list_251))
	(x_55730 x_55739 nil_281 x_55739)))
(declare-fun rev_15 (list_251 list_251) Bool)
(assert (forall ((x_55740 list_251) (x_55741 list_251) (y_2329 Int) (xs_673 list_251))
	(=> (and (rev_15 x_55741 xs_673) (x_55730 x_55740 x_55741 (cons_251 y_2329 nil_281))) (rev_15 x_55740 (cons_251 y_2329 xs_673)))))
(assert (rev_15 nil_281 nil_281))
(assert (forall ((x_55744 list_251) (x_55745 list_251) (x_55733 list_251))
	(=> (and (diseqlist_251 x_55744 x_55745) (rev_15 x_55744 x_55733) (qrev_3 x_55745 x_55733 nil_281)) false)))
(check-sat)
