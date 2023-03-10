(set-logic HORN)
(declare-datatypes ((Nat_664 0)) (((S_559 (projS_242 Nat_664)) (Z_2398 ))))
(declare-fun diseqNat_664 (Nat_664 Nat_664) Bool)
(declare-fun projS_243 (Nat_664 Nat_664) Bool)
(declare-fun isS_520 (Nat_664) Bool)
(declare-fun isZ_520 (Nat_664) Bool)
(assert (forall ((x_75966 Nat_664))
	(projS_243 x_75966 (S_559 x_75966))))
(assert (forall ((x_75969 Nat_664))
	(isS_520 (S_559 x_75969))))
(assert (isZ_520 Z_2398))
(assert (forall ((x_75970 Nat_664))
	(diseqNat_664 (S_559 x_75970) Z_2398)))
(assert (forall ((x_75971 Nat_664))
	(diseqNat_664 Z_2398 (S_559 x_75971))))
(assert (forall ((x_75972 Nat_664) (x_75973 Nat_664))
	(=> (diseqNat_664 x_75972 x_75973)
	    (diseqNat_664 (S_559 x_75972) (S_559 x_75973)))))
(declare-datatypes ((list_323 0)) (((nil_364 ) (cons_319 (head_638 Nat_664) (tail_642 list_323)))))
(declare-fun diseqlist_319 (list_323 list_323) Bool)
(declare-fun head_639 (Nat_664 list_323) Bool)
(declare-fun tail_643 (list_323 list_323) Bool)
(declare-fun isnil_364 (list_323) Bool)
(declare-fun iscons_319 (list_323) Bool)
(assert (forall ((x_75975 Nat_664) (x_75976 list_323))
	(head_639 x_75975 (cons_319 x_75975 x_75976))))
(assert (forall ((x_75975 Nat_664) (x_75976 list_323))
	(tail_643 x_75976 (cons_319 x_75975 x_75976))))
(assert (isnil_364 nil_364))
(assert (forall ((x_75978 Nat_664) (x_75979 list_323))
	(iscons_319 (cons_319 x_75978 x_75979))))
(assert (forall ((x_75980 Nat_664) (x_75981 list_323))
	(diseqlist_319 nil_364 (cons_319 x_75980 x_75981))))
(assert (forall ((x_75982 Nat_664) (x_75983 list_323))
	(diseqlist_319 (cons_319 x_75982 x_75983) nil_364)))
(assert (forall ((x_75984 Nat_664) (x_75985 list_323) (x_75986 Nat_664) (x_75987 list_323))
	(=> (diseqNat_664 x_75984 x_75986)
	    (diseqlist_319 (cons_319 x_75984 x_75985) (cons_319 x_75986 x_75987)))))
(assert (forall ((x_75984 Nat_664) (x_75985 list_323) (x_75986 Nat_664) (x_75987 list_323))
	(=> (diseqlist_319 x_75985 x_75987)
	    (diseqlist_319 (cons_319 x_75984 x_75985) (cons_319 x_75986 x_75987)))))
(declare-fun x_75951 (list_323 list_323 list_323) Bool)
(assert (forall ((x_75957 list_323) (z_2399 Nat_664) (xs_801 list_323) (y_2702 list_323))
	(=> (x_75951 x_75957 xs_801 y_2702)
	    (x_75951 (cons_319 z_2399 x_75957) (cons_319 z_2399 xs_801) y_2702))))
(assert (forall ((x_75958 list_323))
	(x_75951 x_75958 nil_364 x_75958)))
(declare-fun rotate_10 (list_323 Nat_664 list_323) Bool)
(assert (forall ((x_75959 list_323))
	(rotate_10 x_75959 Z_2398 x_75959)))
(assert (forall ((x_75960 list_323) (x_75961 list_323) (x_75954 Nat_664) (x_75955 list_323) (z_2400 Nat_664))
	(=>	(and (x_75951 x_75961 x_75955 (cons_319 x_75954 nil_364))
			(rotate_10 x_75960 z_2400 x_75961))
		(rotate_10 x_75960 (S_559 z_2400) (cons_319 x_75954 x_75955)))))
(assert (forall ((z_2400 Nat_664))
	(rotate_10 nil_364 (S_559 z_2400) nil_364)))
(assert (forall ((x_75964 list_323) (n_113 Nat_664) (xs_802 list_323))
	(=>	(and true
			(diseqlist_319 xs_802 x_75964)
			(rotate_10 x_75964 n_113 xs_802))
		false)))
(check-sat)
