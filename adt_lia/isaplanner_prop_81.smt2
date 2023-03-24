(set-logic HORN)
(define-fun Z_308 () Int 0)
(define-fun S_109 ((x Int)) Int (+ x 1))
(define-fun Z_304 () Int 0)
(define-fun S_108 ((x Int)) Int (+ x 1))
(declare-fun unS_113 (Int Int) Bool)
(declare-fun isZ_109 (Int) Bool)
(declare-fun isS_109 (Int) Bool)
(assert (forall ((x_3017 Int))
	(unS_113 x_3017 (S_109 x_3017))))
(assert (isZ_109 Z_308))
(assert (forall ((x_3019 Int))
	(isS_109 (S_109 x_3019))))
(declare-fun add_56 (Int Int Int) Bool)
(declare-fun minus_56 (Int Int Int) Bool)
(declare-fun le_56 (Int Int) Bool)
(declare-fun ge_56 (Int Int) Bool)
(declare-fun lt_56 (Int Int) Bool)
(declare-fun gt_56 (Int Int) Bool)
(declare-fun mult_56 (Int Int Int) Bool)
(declare-fun div_56 (Int Int Int) Bool)
(declare-fun mod_56 (Int Int Int) Bool)
(assert (forall ((y_243 Int))
	(add_56 y_243 Z_308 y_243)))
(assert (forall ((x_2993 Int) (y_243 Int) (r_56 Int))
	(=> (add_56 r_56 x_2993 y_243) (add_56 (S_109 r_56) (S_109 x_2993) y_243))))
(assert (forall ((y_243 Int))
	(minus_56 Z_308 Z_308 y_243)))
(assert (forall ((x_2993 Int) (y_243 Int) (r_56 Int))
	(=> (minus_56 r_56 x_2993 y_243) (minus_56 (S_109 r_56) (S_109 x_2993) y_243))))
(assert (forall ((y_243 Int))
	(le_56 Z_308 y_243)))
(assert (forall ((x_2993 Int) (y_243 Int))
	(=> (le_56 x_2993 y_243) (le_56 (S_109 x_2993) (S_109 y_243)))))
(assert (forall ((y_243 Int))
	(ge_56 y_243 Z_308)))
(assert (forall ((x_2993 Int) (y_243 Int))
	(=> (ge_56 x_2993 y_243) (ge_56 (S_109 x_2993) (S_109 y_243)))))
(assert (forall ((y_243 Int))
	(lt_56 Z_308 (S_109 y_243))))
(assert (forall ((x_2993 Int) (y_243 Int))
	(=> (lt_56 x_2993 y_243) (lt_56 (S_109 x_2993) (S_109 y_243)))))
(assert (forall ((y_243 Int))
	(gt_56 (S_109 y_243) Z_308)))
(assert (forall ((x_2993 Int) (y_243 Int))
	(=> (gt_56 x_2993 y_243) (gt_56 (S_109 x_2993) (S_109 y_243)))))
(assert (forall ((y_243 Int))
	(mult_56 Z_308 Z_308 y_243)))
(assert (forall ((x_2993 Int) (y_243 Int) (r_56 Int) (z_309 Int))
	(=> (and (mult_56 r_56 x_2993 y_243) (add_56 z_309 r_56 y_243)) (mult_56 z_309 (S_109 x_2993) y_243))))
(assert (forall ((x_2993 Int) (y_243 Int))
	(=> (lt_56 x_2993 y_243) (div_56 Z_308 x_2993 y_243))))
(assert (forall ((x_2993 Int) (y_243 Int) (r_56 Int) (z_309 Int))
	(=> (and (ge_56 x_2993 y_243) (minus_56 z_309 x_2993 y_243) (div_56 r_56 z_309 y_243)) (div_56 (S_109 r_56) x_2993 y_243))))
(assert (forall ((x_2993 Int) (y_243 Int))
	(=> (lt_56 x_2993 y_243) (mod_56 x_2993 x_2993 y_243))))
(assert (forall ((x_2993 Int) (y_243 Int) (r_56 Int) (z_309 Int))
	(=> (and (ge_56 x_2993 y_243) (minus_56 z_309 x_2993 y_243) (mod_56 r_56 z_309 y_243)) (mod_56 r_56 x_2993 y_243))))
(declare-datatypes ((list_50 0)) (((nil_50) (cons_50 (head_100 Int) (tail_100 list_50)))))
(declare-fun diseqlist_50 (list_50 list_50) Bool)
(declare-fun head_101 (Int list_50) Bool)
(declare-fun tail_101 (list_50 list_50) Bool)
(declare-fun isnil_50 (list_50) Bool)
(declare-fun iscons_50 (list_50) Bool)
(assert (forall ((x_2995 Int) (x_2996 list_50))
	(head_101 x_2995 (cons_50 x_2995 x_2996))))
(assert (forall ((x_2995 Int) (x_2996 list_50))
	(tail_101 x_2996 (cons_50 x_2995 x_2996))))
(assert (isnil_50 nil_50))
(assert (forall ((x_2998 Int) (x_2999 list_50))
	(iscons_50 (cons_50 x_2998 x_2999))))
(assert (forall ((x_3000 Int) (x_3001 list_50))
	(diseqlist_50 nil_50 (cons_50 x_3000 x_3001))))
(assert (forall ((x_3002 Int) (x_3003 list_50))
	(diseqlist_50 (cons_50 x_3002 x_3003) nil_50)))
(assert (forall ((x_3004 Int) (x_3005 list_50) (x_3006 Int) (x_3007 list_50))
	(=> (distinct x_3004 x_3006) (diseqlist_50 (cons_50 x_3004 x_3005) (cons_50 x_3006 x_3007)))))
(assert (forall ((x_3004 Int) (x_3005 list_50) (x_3006 Int) (x_3007 list_50))
	(=> (diseqlist_50 x_3005 x_3007) (diseqlist_50 (cons_50 x_3004 x_3005) (cons_50 x_3006 x_3007)))))
(declare-fun projS_105 (Int Int) Bool)
(declare-fun isZ_108 (Int) Bool)
(declare-fun isS_108 (Int) Bool)
(assert (forall ((x_3009 Int))
	(projS_105 x_3009 (S_108 x_3009))))
(assert (isZ_108 Z_304))
(assert (forall ((x_3011 Int))
	(isS_108 (S_108 x_3011))))
(declare-fun take_10 (list_50 Int list_50) Bool)
(assert (forall ((x_2978 list_50) (x_2970 Int) (x_2971 list_50) (z_305 Int))
	(=> (and (>= z_305 0) (take_10 x_2978 z_305 x_2971)) (take_10 (cons_50 x_2970 x_2978) (S_108 z_305) (cons_50 x_2970 x_2971)))))
(assert (forall ((z_305 Int))
	(=> (>= z_305 0) (take_10 nil_50 (S_108 z_305) nil_50))))
(assert (forall ((z Int) (y_240 list_50))
	(=> (<= z 0) (take_10 nil_50 z y_240))))
(declare-fun drop_10 (list_50 Int list_50) Bool)
(assert (forall ((x_2981 list_50) (x_2973 Int) (x_2974 list_50) (z_306 Int))
	(=> (and (>= z_306 0) (drop_10 x_2981 z_306 x_2974)) (drop_10 x_2981 (S_108 z_306) (cons_50 x_2973 x_2974)))))
(assert (forall ((z_306 Int))
	(drop_10 nil_50 z_306 nil_50)))
(assert (forall ((z Int) (x_2984 list_50))
	(=> (<= z 0) (drop_10 x_2984 z x_2984))))
(declare-fun x_2975 (Int Int Int) Bool)
(assert (forall ((x_2986 Int) (z_307 Int) (y_242 Int))
	(=> (and (>= x_2986 0) (>= z_307 0) (x_2975 x_2986 z_307 y_242)) (x_2975 (S_108 x_2986) (S_108 z_307) y_242))))
(assert (forall ((z Int) (x_2987 Int))
	(=> (<= z 0) (x_2975 x_2987 z x_2987))))
(assert (forall ((x_2988 list_50) (x_2989 list_50) (x_2990 Int) (x_2991 list_50) (x_2992 list_50) (n_22 Int) (m_10 Int) (xs_91 list_50))
	(=> (and (diseqlist_50 x_2989 x_2992) (drop_10 x_2988 m_10 xs_91) (take_10 x_2989 n_22 x_2988) (x_2975 x_2990 n_22 m_10) (take_10 x_2991 x_2990 xs_91) (drop_10 x_2992 m_10 x_2991)) false)))
(check-sat)