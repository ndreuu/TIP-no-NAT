(set-logic HORN)
(define-fun S_526 ((x Int)) Int (+ x 1))
(define-fun Z_2265 () Int 0)
(declare-fun projS_233 (Int Int) Bool)
(declare-fun isS_493 (Int) Bool)
(declare-fun isZ_493 (Int) Bool)
(assert (forall ((x_58657 Int))
	(projS_233 x_58657 (S_526 x_58657))))
(assert (forall ((x_58660 Int))
	(isS_493 (S_526 x_58660))))
(assert (isZ_493 Z_2265))
(declare-datatypes ((list_289 0)) (((nil_320) (cons_287 (head_574 Int) (tail_576 list_289)))))
(declare-fun diseqlist_287 (list_289 list_289) Bool)
(declare-fun head_575 (Int list_289) Bool)
(declare-fun tail_577 (list_289 list_289) Bool)
(declare-fun isnil_320 (list_289) Bool)
(declare-fun iscons_287 (list_289) Bool)
(assert (forall ((x_58666 Int) (x_58667 list_289))
	(head_575 x_58666 (cons_287 x_58666 x_58667))))
(assert (forall ((x_58666 Int) (x_58667 list_289))
	(tail_577 x_58667 (cons_287 x_58666 x_58667))))
(assert (isnil_320 nil_320))
(assert (forall ((x_58669 Int) (x_58670 list_289))
	(iscons_287 (cons_287 x_58669 x_58670))))
(assert (forall ((x_58671 Int) (x_58672 list_289))
	(diseqlist_287 nil_320 (cons_287 x_58671 x_58672))))
(assert (forall ((x_58673 Int) (x_58674 list_289))
	(diseqlist_287 (cons_287 x_58673 x_58674) nil_320)))
(assert (forall ((x_58675 Int) (x_58676 list_289) (x_58677 Int) (x_58678 list_289))
	(=> (distinct x_58675 x_58677) (diseqlist_287 (cons_287 x_58675 x_58676) (cons_287 x_58677 x_58678)))))
(assert (forall ((x_58675 Int) (x_58676 list_289) (x_58677 Int) (x_58678 list_289))
	(=> (diseqlist_287 x_58676 x_58678) (diseqlist_287 (cons_287 x_58675 x_58676) (cons_287 x_58677 x_58678)))))
(declare-fun drop_58 (list_289 Int list_289) Bool)
(assert (forall ((x_58648 list_289))
	(drop_58 x_58648 Z_2265 x_58648)))
(assert (forall ((x_58649 list_289) (x_58646 Int) (x_58647 list_289) (z_2266 Int))
	(=> (and (distinct Z_2265 (S_526 z_2266)) (drop_58 x_58649 z_2266 x_58647)) (drop_58 x_58649 (S_526 z_2266) (cons_287 x_58646 x_58647)))))
(assert (forall ((z_2266 Int))
	(drop_58 nil_320 (S_526 z_2266) nil_320)))
(assert (forall ((x_58652 list_289) (x_58653 list_289) (x_58654 list_289) (x_58655 list_289) (n_110 Int) (m_42 Int) (xs_743 list_289))
	(=> (and true (diseqlist_287 x_58653 x_58655) (drop_58 x_58652 m_42 xs_743) (drop_58 x_58653 n_110 x_58652) (drop_58 x_58654 n_110 xs_743) (drop_58 x_58655 m_42 x_58654)) false)))
(check-sat)
