(set-logic HORN)
(define-fun S_559 ((x Int)) Int (+ x 1))
(define-fun Z_2398 () Int 0)
(declare-fun projS_243 (Int Int) Bool)
(declare-fun isS_520 (Int) Bool)
(declare-fun isZ_520 (Int) Bool)
(assert (forall ((x_75966 Int))
	(projS_243 x_75966 (S_559 x_75966))))
(assert (forall ((x_75969 Int))
	(isS_520 (S_559 x_75969))))
(assert (isZ_520 Z_2398))
(declare-datatypes ((list_323 0)) (((nil_364) (cons_319 (head_638 Int) (tail_642 list_323)))))
(declare-fun diseqlist_319 (list_323 list_323) Bool)
(declare-fun head_639 (Int list_323) Bool)
(declare-fun tail_643 (list_323 list_323) Bool)
(declare-fun isnil_364 (list_323) Bool)
(declare-fun iscons_319 (list_323) Bool)
(assert (forall ((x_75975 Int) (x_75976 list_323))
	(head_639 x_75975 (cons_319 x_75975 x_75976))))
(assert (forall ((x_75975 Int) (x_75976 list_323))
	(tail_643 x_75976 (cons_319 x_75975 x_75976))))
(assert (isnil_364 nil_364))
(assert (forall ((x_75978 Int) (x_75979 list_323))
	(iscons_319 (cons_319 x_75978 x_75979))))
(assert (forall ((x_75980 Int) (x_75981 list_323))
	(diseqlist_319 nil_364 (cons_319 x_75980 x_75981))))
(assert (forall ((x_75982 Int) (x_75983 list_323))
	(diseqlist_319 (cons_319 x_75982 x_75983) nil_364)))
(assert (forall ((x_75984 Int) (x_75985 list_323) (x_75986 Int) (x_75987 list_323))
	(=> (distinct x_75984 x_75986) (diseqlist_319 (cons_319 x_75984 x_75985) (cons_319 x_75986 x_75987)))))
(assert (forall ((x_75984 Int) (x_75985 list_323) (x_75986 Int) (x_75987 list_323))
	(=> (diseqlist_319 x_75985 x_75987) (diseqlist_319 (cons_319 x_75984 x_75985) (cons_319 x_75986 x_75987)))))
(declare-fun x_75951 (list_323 list_323 list_323) Bool)
(assert (forall ((x_75957 list_323) (z_2399 Int) (xs_801 list_323) (y_2702 list_323))
	(=> (x_75951 x_75957 xs_801 y_2702) (x_75951 (cons_319 z_2399 x_75957) (cons_319 z_2399 xs_801) y_2702))))
(assert (forall ((x_75958 list_323))
	(x_75951 x_75958 nil_364 x_75958)))
(declare-fun rotate_10 (list_323 Int list_323) Bool)
(assert (forall ((z Int) (x_75959 list_323))
	(=> (<= z 0) (rotate_10 x_75959 z x_75959))))
(assert (forall ((x_75960 list_323) (x_75961 list_323) (x_75954 Int) (x_75955 list_323) (z_2400 Int))
	(=> (and (>= z_2400 0) (x_75951 x_75961 x_75955 (cons_319 x_75954 nil_364)) (rotate_10 x_75960 z_2400 x_75961)) (rotate_10 x_75960 (S_559 z_2400) (cons_319 x_75954 x_75955)))))
(assert (forall ((z_2400 Int))
	(rotate_10 nil_364 z_2400 nil_364)))
(assert (forall ((x_75964 list_323) (n_113 Int) (xs_802 list_323))
	(=> (and (diseqlist_319 xs_802 x_75964) (rotate_10 x_75964 n_113 xs_802)) false)))
(check-sat)
