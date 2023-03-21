(set-logic HORN)
(define-fun Z_310 () Int 0)
(define-fun S_110 ((x Int)) Int (+ x 1))
(declare-datatypes ((Bool_57 0)) (((false_57) (true_57))))
(declare-fun diseqBool_24 (Bool_57 Bool_57) Bool)
(declare-fun isfalse_24 (Bool_57) Bool)
(declare-fun istrue_24 (Bool_57) Bool)
(assert (isfalse_24 false_57))
(assert (istrue_24 true_57))
(assert (diseqBool_24 false_57 true_57))
(assert (diseqBool_24 true_57 false_57))
(declare-fun and_57 (Bool_57 Bool_57 Bool_57) Bool)
(declare-fun or_57 (Bool_57 Bool_57 Bool_57) Bool)
(declare-fun hence_57 (Bool_57 Bool_57 Bool_57) Bool)
(declare-fun not_57 (Bool_57 Bool_57) Bool)
(assert (and_57 false_57 false_57 false_57))
(assert (and_57 false_57 true_57 false_57))
(assert (and_57 false_57 false_57 true_57))
(assert (and_57 true_57 true_57 true_57))
(assert (or_57 false_57 false_57 false_57))
(assert (or_57 true_57 true_57 false_57))
(assert (or_57 true_57 false_57 true_57))
(assert (or_57 true_57 true_57 true_57))
(assert (hence_57 true_57 false_57 false_57))
(assert (hence_57 false_57 true_57 false_57))
(assert (hence_57 true_57 false_57 true_57))
(assert (hence_57 true_57 true_57 true_57))
(assert (not_57 true_57 false_57))
(assert (not_57 false_57 true_57))
(declare-fun projS_107 (Int Int) Bool)
(declare-fun isZ_110 (Int) Bool)
(declare-fun isS_110 (Int) Bool)
(assert (forall ((x_3066 Int))
	(projS_107 x_3066 (S_110 x_3066))))
(assert (isZ_110 Z_310))
(assert (forall ((x_3068 Int))
	(isS_110 (S_110 x_3068))))
(declare-datatypes ((list_51 0)) (((nil_51) (cons_51 (head_102 Int) (tail_102 list_51)))))
(declare-fun diseqlist_51 (list_51 list_51) Bool)
(declare-fun head_103 (Int list_51) Bool)
(declare-fun tail_103 (list_51 list_51) Bool)
(declare-fun isnil_51 (list_51) Bool)
(declare-fun iscons_51 (list_51) Bool)
(assert (forall ((x_3074 Int) (x_3075 list_51))
	(head_103 x_3074 (cons_51 x_3074 x_3075))))
(assert (forall ((x_3074 Int) (x_3075 list_51))
	(tail_103 x_3075 (cons_51 x_3074 x_3075))))
(assert (isnil_51 nil_51))
(assert (forall ((x_3077 Int) (x_3078 list_51))
	(iscons_51 (cons_51 x_3077 x_3078))))
(assert (forall ((x_3079 Int) (x_3080 list_51))
	(diseqlist_51 nil_51 (cons_51 x_3079 x_3080))))
(assert (forall ((x_3081 Int) (x_3082 list_51))
	(diseqlist_51 (cons_51 x_3081 x_3082) nil_51)))
(assert (forall ((x_3083 Int) (x_3084 list_51) (x_3085 Int) (x_3086 list_51))
	(=> (distinct x_3083 x_3085) (diseqlist_51 (cons_51 x_3083 x_3084) (cons_51 x_3085 x_3086)))))
(assert (forall ((x_3083 Int) (x_3084 list_51) (x_3085 Int) (x_3086 list_51))
	(=> (diseqlist_51 x_3084 x_3086) (diseqlist_51 (cons_51 x_3083 x_3084) (cons_51 x_3085 x_3086)))))
(declare-fun x_3024 (Bool_57 Int Int) Bool)
(assert (forall ((x Int) (y Int))
	(=> (distinct x y) (x_3024 false_57 x y))))
(assert (forall ((x Int) (y Int))
	(=> (= x y) (x_3024 true_57 x y))))
(declare-fun count_5 (Int Int list_51) Bool)
(assert (forall ((x_3040 Int) (z_312 Int) (ys_24 list_51) (x_3027 Int))
	(=> (and (count_5 x_3040 x_3027 ys_24) (x_3024 true_57 x_3027 z_312)) (count_5 (S_110 x_3040) x_3027 (cons_51 z_312 ys_24)))))
(assert (forall ((x_3042 Int) (z_312 Int) (ys_24 list_51) (x_3027 Int))
	(=> (and (count_5 x_3042 x_3027 ys_24) (x_3024 false_57 x_3027 z_312)) (count_5 x_3042 x_3027 (cons_51 z_312 ys_24)))))
(assert (forall ((x_3027 Int))
	(count_5 Z_310 x_3027 nil_51)))
(declare-fun x_3028 (Bool_57 Int Int) Bool)
(assert (forall ((x_3045 Bool_57) (x_3030 Int) (z_313 Int))
	(=> (x_3028 x_3045 z_313 x_3030) (x_3028 x_3045 (S_110 z_313) (S_110 x_3030)))))
(assert (forall ((z_313 Int))
	(x_3028 false_57 (S_110 z_313) Z_310)))
(assert (forall ((y_247 Int))
	(x_3028 true_57 Z_310 y_247)))
(declare-fun insort_3 (list_51 Int list_51) Bool)
(assert (forall ((z_314 Int) (xs_92 list_51) (x_3031 Int))
	(=> (x_3028 true_57 x_3031 z_314) (insort_3 (cons_51 x_3031 (cons_51 z_314 xs_92)) x_3031 (cons_51 z_314 xs_92)))))
(assert (forall ((x_3053 list_51) (z_314 Int) (xs_92 list_51) (x_3031 Int))
	(=> (and (insort_3 x_3053 x_3031 xs_92) (x_3028 false_57 x_3031 z_314)) (insort_3 (cons_51 z_314 x_3053) x_3031 (cons_51 z_314 xs_92)))))
(assert (forall ((x_3031 Int))
	(insort_3 (cons_51 x_3031 nil_51) x_3031 nil_51)))
(declare-fun sort_2 (list_51 list_51) Bool)
(assert (forall ((x_3055 list_51) (x_3056 list_51) (y_249 Int) (xs_93 list_51))
	(=> (and (sort_2 x_3056 xs_93) (insort_3 x_3055 y_249 x_3056)) (sort_2 x_3055 (cons_51 y_249 xs_93)))))
(assert (sort_2 nil_51 nil_51))
(assert (forall ((x_3059 Int) (x_3060 list_51) (x_3061 Int) (n_23 Int) (xs_94 list_51))
	(=> (and true (distinct x_3059 x_3061) (count_5 x_3059 n_23 xs_94) (sort_2 x_3060 xs_94) (count_5 x_3061 n_23 x_3060)) false)))
(check-sat)
