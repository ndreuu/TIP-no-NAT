
(set-logic HORN)
(define-fun Z_94 () Int 0)
(define-fun S_33 ((x Int)) Int (+ x 1))
(define-fun Z_90 () Int 0)
(define-fun S_32 ((x Int)) Int (+ x 1))
(declare-fun unS_35 (Int Int) Bool)
(declare-fun isZ_33 (Int) Bool)
(declare-fun isS_33 (Int) Bool)
(assert (forall ((x_1038 Int))
	(unS_35 x_1038 (S_33 x_1038))))
(assert (isZ_33 Z_94))
(assert (forall ((x_1040 Int))
	(isS_33 (S_33 x_1040))))
(declare-fun add_17 (Int Int Int) Bool)
(declare-fun minus_17 (Int Int Int) Bool)
(declare-fun le_17 (Int Int) Bool)
(declare-fun ge_17 (Int Int) Bool)
(declare-fun lt_17 (Int Int) Bool)
(declare-fun gt_17 (Int Int) Bool)
(declare-fun mult_17 (Int Int Int) Bool)
(declare-fun div_17 (Int Int Int) Bool)
(declare-fun mod_17 (Int Int Int) Bool)
(assert (forall ((y_75 Int))
	(add_17 y_75 Z_94 y_75)))
(assert (forall ((x_1014 Int) (y_75 Int) (r_17 Int))
	(=> (add_17 r_17 x_1014 y_75) (add_17 (S_33 r_17) (S_33 x_1014) y_75))))
(assert (forall ((y_75 Int))
	(minus_17 Z_94 Z_94 y_75)))
(assert (forall ((x_1014 Int) (y_75 Int) (r_17 Int))
	(=> (minus_17 r_17 x_1014 y_75) (minus_17 (S_33 r_17) (S_33 x_1014) y_75))))
(assert (forall ((y_75 Int))
	(le_17 Z_94 y_75)))
(assert (forall ((x_1014 Int) (y_75 Int))
	(=> (le_17 x_1014 y_75) (le_17 (S_33 x_1014) (S_33 y_75)))))
(assert (forall ((y_75 Int))
	(ge_17 y_75 Z_94)))
(assert (forall ((x_1014 Int) (y_75 Int))
	(=> (ge_17 x_1014 y_75) (ge_17 (S_33 x_1014) (S_33 y_75)))))
(assert (forall ((y_75 Int))
	(lt_17 Z_94 (S_33 y_75))))
(assert (forall ((x_1014 Int) (y_75 Int))
	(=> (lt_17 x_1014 y_75) (lt_17 (S_33 x_1014) (S_33 y_75)))))
(assert (forall ((y_75 Int))
	(gt_17 (S_33 y_75) Z_94)))
(assert (forall ((x_1014 Int) (y_75 Int))
	(=> (gt_17 x_1014 y_75) (gt_17 (S_33 x_1014) (S_33 y_75)))))
(assert (forall ((y_75 Int))
	(mult_17 Z_94 Z_94 y_75)))
(assert (forall ((x_1014 Int) (y_75 Int) (r_17 Int) (z_95 Int))
	(=> (and (mult_17 r_17 x_1014 y_75) (add_17 z_95 r_17 y_75)) (mult_17 z_95 (S_33 x_1014) y_75))))
(assert (forall ((x_1014 Int) (y_75 Int))
	(=> (lt_17 x_1014 y_75) (div_17 Z_94 x_1014 y_75))))
(assert (forall ((x_1014 Int) (y_75 Int) (r_17 Int) (z_95 Int))
	(=> (and (ge_17 x_1014 y_75) (minus_17 z_95 x_1014 y_75) (div_17 r_17 z_95 y_75)) (div_17 (S_33 r_17) x_1014 y_75))))
(assert (forall ((x_1014 Int) (y_75 Int))
	(=> (lt_17 x_1014 y_75) (mod_17 x_1014 x_1014 y_75))))
(assert (forall ((x_1014 Int) (y_75 Int) (r_17 Int) (z_95 Int))
	(=> (and (ge_17 x_1014 y_75) (minus_17 z_95 x_1014 y_75) (mod_17 r_17 z_95 y_75)) (mod_17 r_17 x_1014 y_75))))
(declare-datatypes ((list_20 0)) (((nil_20) (cons_20 (head_40 Int) (tail_40 list_20)))))
(declare-fun diseqlist_20 (list_20 list_20) Bool)
(declare-fun head_41 (Int list_20) Bool)
(declare-fun tail_41 (list_20 list_20) Bool)
(declare-fun isnil_20 (list_20) Bool)
(declare-fun iscons_20 (list_20) Bool)
(assert (forall ((x_1016 Int) (x_1017 list_20))
	(head_41 x_1016 (cons_20 x_1016 x_1017))))
(assert (forall ((x_1016 Int) (x_1017 list_20))
	(tail_41 x_1017 (cons_20 x_1016 x_1017))))
(assert (isnil_20 nil_20))
(assert (forall ((x_1019 Int) (x_1020 list_20))
	(iscons_20 (cons_20 x_1019 x_1020))))
(assert (forall ((x_1021 Int) (x_1022 list_20))
	(diseqlist_20 nil_20 (cons_20 x_1021 x_1022))))
(assert (forall ((x_1023 Int) (x_1024 list_20))
	(diseqlist_20 (cons_20 x_1023 x_1024) nil_20)))
(assert (forall ((x_1025 Int) (x_1026 list_20) (x_1027 Int) (x_1028 list_20))
	(=> (distinct x_1025 x_1027) (diseqlist_20 (cons_20 x_1025 x_1026) (cons_20 x_1027 x_1028)))))
(assert (forall ((x_1025 Int) (x_1026 list_20) (x_1027 Int) (x_1028 list_20))
	(=> (diseqlist_20 x_1026 x_1028) (diseqlist_20 (cons_20 x_1025 x_1026) (cons_20 x_1027 x_1028)))))
(declare-fun projS_31 (Int Int) Bool)
(declare-fun isZ_32 (Int) Bool)
(declare-fun isS_32 (Int) Bool)
(assert (forall ((x_1030 Int))
	(projS_31 x_1030 (S_32 x_1030))))
(assert (isZ_32 Z_90))
(assert (forall ((x_1032 Int))
	(isS_32 (S_32 x_1032))))
(declare-fun take_3 (list_20 Int list_20) Bool)
(assert (forall ((x_996 list_20) (x_986 Int) (x_987 list_20) (z_91 Int))
	(=> (take_3 x_996 z_91 x_987) (take_3 (cons_20 x_986 x_996) (S_32 z_91) (cons_20 x_986 x_987)))))
(assert (forall ((z_91 Int))
	(take_3 nil_20 (S_32 z_91) nil_20)))
(assert (forall ((y_71 list_20))
	(take_3 nil_20 Z_90 y_71)))
(declare-fun len_3 (Int list_20) Bool)
(assert (forall ((x_1000 Int) (y_72 Int) (xs_23 list_20))
	(=> (len_3 x_1000 xs_23) (len_3 (S_32 x_1000) (cons_20 y_72 xs_23)))))
(assert (len_3 Z_90 nil_20))
(declare-fun butlast_0 (list_20 list_20) Bool)
(assert (forall ((x_1003 list_20) (x_990 Int) (x_991 list_20) (y_73 Int))
	(=> (butlast_0 x_1003 (cons_20 x_990 x_991)) (butlast_0 (cons_20 y_73 x_1003) (cons_20 y_73 (cons_20 x_990 x_991))))))
(assert (forall ((y_73 Int))
	(butlast_0 nil_20 (cons_20 y_73 nil_20))))
(assert (butlast_0 nil_20 nil_20))
(declare-fun x_992 (Int Int Int) Bool)
(assert (forall ((x_1006 Int) (x_994 Int) (z_93 Int))
	(=> (x_992 x_1006 z_93 x_994) (x_992 x_1006 (S_32 z_93) (S_32 x_994)))))
(assert (forall ((z_93 Int))
	(x_992 (S_32 z_93) (S_32 z_93) Z_90)))
(assert (forall ((y_74 Int))
	(x_992 Z_90 Z_90 y_74)))
(assert (forall ((x_1010 list_20) (x_1011 Int) (x_1012 Int) (x_1013 list_20) (xs_24 list_20))
	(=> (and true (diseqlist_20 x_1010 x_1013) (butlast_0 x_1010 xs_24) (len_3 x_1011 xs_24) (x_992 x_1012 x_1011 (S_32 Z_90)) (take_3 x_1013 x_1012 xs_24)) false)))
(check-sat)