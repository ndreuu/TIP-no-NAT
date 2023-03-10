(set-logic HORN)
(declare-datatypes ((Nat_599 0)) (((Z_2109 ) (S_488 (unS_706 Nat_599)))))
(declare-fun diseqNat_599 (Nat_599 Nat_599) Bool)
(declare-fun unS_707 (Nat_599 Nat_599) Bool)
(declare-fun isZ_455 (Nat_599) Bool)
(declare-fun isS_455 (Nat_599) Bool)
(assert (forall ((x_55923 Nat_599))
	(unS_707 x_55923 (S_488 x_55923))))
(assert (isZ_455 Z_2109))
(assert (forall ((x_55925 Nat_599))
	(isS_455 (S_488 x_55925))))
(assert (forall ((x_55926 Nat_599))
	(diseqNat_599 Z_2109 (S_488 x_55926))))
(assert (forall ((x_55927 Nat_599))
	(diseqNat_599 (S_488 x_55927) Z_2109)))
(assert (forall ((x_55928 Nat_599) (x_55929 Nat_599))
	(=> (diseqNat_599 x_55928 x_55929)
	    (diseqNat_599 (S_488 x_55928) (S_488 x_55929)))))
(declare-fun add_379 (Nat_599 Nat_599 Nat_599) Bool)
(declare-fun minus_374 (Nat_599 Nat_599 Nat_599) Bool)
(declare-fun le_353 (Nat_599 Nat_599) Bool)
(declare-fun ge_353 (Nat_599 Nat_599) Bool)
(declare-fun lt_373 (Nat_599 Nat_599) Bool)
(declare-fun gt_356 (Nat_599 Nat_599) Bool)
(declare-fun mult_354 (Nat_599 Nat_599 Nat_599) Bool)
(declare-fun div_353 (Nat_599 Nat_599 Nat_599) Bool)
(declare-fun mod_355 (Nat_599 Nat_599 Nat_599) Bool)
(assert (forall ((y_2347 Nat_599))
	(add_379 y_2347 Z_2109 y_2347)))
(assert (forall ((x_55907 Nat_599) (y_2347 Nat_599) (r_426 Nat_599))
	(=> (add_379 r_426 x_55907 y_2347)
	    (add_379 (S_488 r_426) (S_488 x_55907) y_2347))))
(assert (forall ((y_2347 Nat_599))
	(minus_374 Z_2109 Z_2109 y_2347)))
(assert (forall ((x_55907 Nat_599) (y_2347 Nat_599) (r_426 Nat_599))
	(=> (minus_374 r_426 x_55907 y_2347)
	    (minus_374 (S_488 r_426) (S_488 x_55907) y_2347))))
(assert (forall ((y_2347 Nat_599))
	(le_353 Z_2109 y_2347)))
(assert (forall ((x_55907 Nat_599) (y_2347 Nat_599))
	(=> (le_353 x_55907 y_2347)
	    (le_353 (S_488 x_55907) (S_488 y_2347)))))
(assert (forall ((y_2347 Nat_599))
	(ge_353 y_2347 Z_2109)))
(assert (forall ((x_55907 Nat_599) (y_2347 Nat_599))
	(=> (ge_353 x_55907 y_2347)
	    (ge_353 (S_488 x_55907) (S_488 y_2347)))))
(assert (forall ((y_2347 Nat_599))
	(lt_373 Z_2109 (S_488 y_2347))))
(assert (forall ((x_55907 Nat_599) (y_2347 Nat_599))
	(=> (lt_373 x_55907 y_2347)
	    (lt_373 (S_488 x_55907) (S_488 y_2347)))))
(assert (forall ((y_2347 Nat_599))
	(gt_356 (S_488 y_2347) Z_2109)))
(assert (forall ((x_55907 Nat_599) (y_2347 Nat_599))
	(=> (gt_356 x_55907 y_2347)
	    (gt_356 (S_488 x_55907) (S_488 y_2347)))))
(assert (forall ((y_2347 Nat_599))
	(mult_354 Z_2109 Z_2109 y_2347)))
(assert (forall ((x_55907 Nat_599) (y_2347 Nat_599) (r_426 Nat_599) (z_2110 Nat_599))
	(=>	(and (mult_354 r_426 x_55907 y_2347)
			(add_379 z_2110 r_426 y_2347))
		(mult_354 z_2110 (S_488 x_55907) y_2347))))
(assert (forall ((x_55907 Nat_599) (y_2347 Nat_599))
	(=> (lt_373 x_55907 y_2347)
	    (div_353 Z_2109 x_55907 y_2347))))
(assert (forall ((x_55907 Nat_599) (y_2347 Nat_599) (r_426 Nat_599) (z_2110 Nat_599))
	(=>	(and (ge_353 x_55907 y_2347)
			(minus_374 z_2110 x_55907 y_2347)
			(div_353 r_426 z_2110 y_2347))
		(div_353 (S_488 r_426) x_55907 y_2347))))
(assert (forall ((x_55907 Nat_599) (y_2347 Nat_599))
	(=> (lt_373 x_55907 y_2347)
	    (mod_355 x_55907 x_55907 y_2347))))
(assert (forall ((x_55907 Nat_599) (y_2347 Nat_599) (r_426 Nat_599) (z_2110 Nat_599))
	(=>	(and (ge_353 x_55907 y_2347)
			(minus_374 z_2110 x_55907 y_2347)
			(mod_355 r_426 z_2110 y_2347))
		(mod_355 r_426 x_55907 y_2347))))
(declare-datatypes ((list_254 0)) (((nil_284 ) (cons_254 (head_508 Nat_599) (tail_508 list_254)))))
(declare-fun diseqlist_254 (list_254 list_254) Bool)
(declare-fun head_509 (Nat_599 list_254) Bool)
(declare-fun tail_509 (list_254 list_254) Bool)
(declare-fun isnil_284 (list_254) Bool)
(declare-fun iscons_254 (list_254) Bool)
(assert (forall ((x_55909 Nat_599) (x_55910 list_254))
	(head_509 x_55909 (cons_254 x_55909 x_55910))))
(assert (forall ((x_55909 Nat_599) (x_55910 list_254))
	(tail_509 x_55910 (cons_254 x_55909 x_55910))))
(assert (isnil_284 nil_284))
(assert (forall ((x_55912 Nat_599) (x_55913 list_254))
	(iscons_254 (cons_254 x_55912 x_55913))))
(assert (forall ((x_55914 Nat_599) (x_55915 list_254))
	(diseqlist_254 nil_284 (cons_254 x_55914 x_55915))))
(assert (forall ((x_55916 Nat_599) (x_55917 list_254))
	(diseqlist_254 (cons_254 x_55916 x_55917) nil_284)))
(assert (forall ((x_55918 Nat_599) (x_55919 list_254) (x_55920 Nat_599) (x_55921 list_254))
	(=> (diseqNat_599 x_55918 x_55920)
	    (diseqlist_254 (cons_254 x_55918 x_55919) (cons_254 x_55920 x_55921)))))
(assert (forall ((x_55918 Nat_599) (x_55919 list_254) (x_55920 Nat_599) (x_55921 list_254))
	(=> (diseqlist_254 x_55919 x_55921)
	    (diseqlist_254 (cons_254 x_55918 x_55919) (cons_254 x_55920 x_55921)))))
(declare-fun x_55891 (list_254 list_254 list_254) Bool)
(assert (forall ((x_55896 list_254) (z_2108 Nat_599) (xs_679 list_254) (y_2344 list_254))
	(=> (x_55891 x_55896 xs_679 y_2344)
	    (x_55891 (cons_254 z_2108 x_55896) (cons_254 z_2108 xs_679) y_2344))))
(assert (forall ((x_55897 list_254))
	(x_55891 x_55897 nil_284 x_55897)))
(declare-fun rev_16 (list_254 list_254) Bool)
(assert (forall ((x_55898 list_254) (x_55899 list_254) (y_2345 Nat_599) (xs_680 list_254))
	(=>	(and (rev_16 x_55899 xs_680)
			(x_55891 x_55898 x_55899 (cons_254 y_2345 nil_284)))
		(rev_16 x_55898 (cons_254 y_2345 xs_680)))))
(assert (rev_16 nil_284 nil_284))
(assert (forall ((x_55902 list_254) (x_55903 list_254) (x_55904 list_254) (x_55905 list_254) (x_55906 list_254) (x_55894 list_254) (y_2346 list_254))
	(=>	(and true
			(diseqlist_254 x_55905 x_55906)
			(rev_16 x_55902 x_55894)
			(rev_16 x_55903 y_2346)
			(x_55891 x_55904 x_55902 x_55903)
			(rev_16 x_55905 x_55904)
			(x_55891 x_55906 y_2346 x_55894))
		false)))
(check-sat)
