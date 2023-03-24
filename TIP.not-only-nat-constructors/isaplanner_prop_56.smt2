(set-logic HORN)
(define-fun Z_212 () Int 0)
(define-fun S_74 ((x Int)) Int (+ x 1))
(define-fun Z_209 () Int 0)
(define-fun S_73 ((x Int)) Int (+ x 1))
(declare-fun unS_77 (Int Int) Bool)
(declare-fun isZ_74 (Int) Bool)
(declare-fun isS_74 (Int) Bool)
(assert (forall ((x_2114 Int))
	(unS_77 x_2114 (S_74 x_2114))))
(assert (isZ_74 Z_212))
(assert (forall ((x_2116 Int))
	(isS_74 (S_74 x_2116))))
(declare-fun add_38 (Int Int Int) Bool)
(declare-fun minus_38 (Int Int Int) Bool)
(declare-fun le_38 (Int Int) Bool)
(declare-fun ge_38 (Int Int) Bool)
(declare-fun lt_38 (Int Int) Bool)
(declare-fun gt_38 (Int Int) Bool)
(declare-fun mult_38 (Int Int Int) Bool)
(declare-fun div_38 (Int Int Int) Bool)
(declare-fun mod_38 (Int Int Int) Bool)
(assert (forall ((y_168 Int))
	(add_38 y_168 Z_212 y_168)))
(assert (forall ((x_2090 Int) (y_168 Int) (r_38 Int))
	(=> (add_38 r_38 x_2090 y_168) (add_38 (S_74 r_38) (S_74 x_2090) y_168))))
(assert (forall ((y_168 Int))
	(minus_38 Z_212 Z_212 y_168)))
(assert (forall ((x_2090 Int) (y_168 Int) (r_38 Int))
	(=> (minus_38 r_38 x_2090 y_168) (minus_38 (S_74 r_38) (S_74 x_2090) y_168))))
(assert (forall ((y_168 Int))
	(le_38 Z_212 y_168)))
(assert (forall ((x_2090 Int) (y_168 Int))
	(=> (le_38 x_2090 y_168) (le_38 (S_74 x_2090) (S_74 y_168)))))
(assert (forall ((y_168 Int))
	(ge_38 y_168 Z_212)))
(assert (forall ((x_2090 Int) (y_168 Int))
	(=> (ge_38 x_2090 y_168) (ge_38 (S_74 x_2090) (S_74 y_168)))))
(assert (forall ((y_168 Int))
	(lt_38 Z_212 (S_74 y_168))))
(assert (forall ((x_2090 Int) (y_168 Int))
	(=> (lt_38 x_2090 y_168) (lt_38 (S_74 x_2090) (S_74 y_168)))))
(assert (forall ((y_168 Int))
	(gt_38 (S_74 y_168) Z_212)))
(assert (forall ((x_2090 Int) (y_168 Int))
	(=> (gt_38 x_2090 y_168) (gt_38 (S_74 x_2090) (S_74 y_168)))))
(assert (forall ((y_168 Int))
	(mult_38 Z_212 Z_212 y_168)))
(assert (forall ((x_2090 Int) (y_168 Int) (r_38 Int) (z_213 Int))
	(=> (and (mult_38 r_38 x_2090 y_168) (add_38 z_213 r_38 y_168)) (mult_38 z_213 (S_74 x_2090) y_168))))
(assert (forall ((x_2090 Int) (y_168 Int))
	(=> (lt_38 x_2090 y_168) (div_38 Z_212 x_2090 y_168))))
(assert (forall ((x_2090 Int) (y_168 Int) (r_38 Int) (z_213 Int))
	(=> (and (ge_38 x_2090 y_168) (minus_38 z_213 x_2090 y_168) (div_38 r_38 z_213 y_168)) (div_38 (S_74 r_38) x_2090 y_168))))
(assert (forall ((x_2090 Int) (y_168 Int))
	(=> (lt_38 x_2090 y_168) (mod_38 x_2090 x_2090 y_168))))
(assert (forall ((x_2090 Int) (y_168 Int) (r_38 Int) (z_213 Int))
	(=> (and (ge_38 x_2090 y_168) (minus_38 z_213 x_2090 y_168) (mod_38 r_38 z_213 y_168)) (mod_38 r_38 x_2090 y_168))))
(declare-datatypes ((list_36 0)) (((nil_36) (cons_36 (head_72 Int) (tail_72 list_36)))))
(declare-fun diseqlist_36 (list_36 list_36) Bool)
(declare-fun head_73 (Int list_36) Bool)
(declare-fun tail_73 (list_36 list_36) Bool)
(declare-fun isnil_36 (list_36) Bool)
(declare-fun iscons_36 (list_36) Bool)
(assert (forall ((x_2092 Int) (x_2093 list_36))
	(head_73 x_2092 (cons_36 x_2092 x_2093))))
(assert (forall ((x_2092 Int) (x_2093 list_36))
	(tail_73 x_2093 (cons_36 x_2092 x_2093))))
(assert (isnil_36 nil_36))
(assert (forall ((x_2095 Int) (x_2096 list_36))
	(iscons_36 (cons_36 x_2095 x_2096))))
(assert (forall ((x_2097 Int) (x_2098 list_36))
	(diseqlist_36 nil_36 (cons_36 x_2097 x_2098))))
(assert (forall ((x_2099 Int) (x_2100 list_36))
	(diseqlist_36 (cons_36 x_2099 x_2100) nil_36)))
(assert (forall ((x_2101 Int) (x_2102 list_36) (x_2103 Int) (x_2104 list_36))
	(=> (distinct x_2101 x_2103) (diseqlist_36 (cons_36 x_2101 x_2102) (cons_36 x_2103 x_2104)))))
(assert (forall ((x_2101 Int) (x_2102 list_36) (x_2103 Int) (x_2104 list_36))
	(=> (diseqlist_36 x_2102 x_2104) (diseqlist_36 (cons_36 x_2101 x_2102) (cons_36 x_2103 x_2104)))))
(declare-fun projS_71 (Int Int) Bool)
(declare-fun isZ_73 (Int) Bool)
(declare-fun isS_73 (Int) Bool)
(assert (forall ((x_2106 Int))
	(projS_71 x_2106 (S_73 x_2106))))
(assert (isZ_73 Z_209))
(assert (forall ((x_2108 Int))
	(isS_73 (S_73 x_2108))))
(declare-fun drop_6 (list_36 Int list_36) Bool)
(assert (forall ((x_2079 list_36) (x_2075 Int) (x_2076 list_36) (z_210 Int))
	(=> (and (>= z_210 0) (drop_6 x_2079 z_210 x_2076)) (drop_6 x_2079 (S_73 z_210) (cons_36 x_2075 x_2076)))))
(assert (forall ((z_210 Int))
	(drop_6 nil_36 z_210 nil_36)))
(assert (forall ((z Int) (x_2082 list_36))
	(=> (<= z 0) (drop_6 x_2082 z x_2082))))
(declare-fun x_2077 (Int Int Int) Bool)
(assert (forall ((x_2084 Int) (z_211 Int) (y_167 Int))
	(=> (and (>= x_2084 0) (>= z_211 0) (x_2077 x_2084 z_211 y_167)) (x_2077 (S_73 x_2084) (S_73 z_211) y_167))))
(assert (forall ((z Int) (x_2085 Int))
	(=> (<= z 0) (x_2077 x_2085 z x_2085))))
(assert (forall ((x_2086 list_36) (x_2087 list_36) (x_2088 Int) (x_2089 list_36) (n_15 Int) (m_5 Int) (xs_61 list_36))
	(=> (and true (diseqlist_36 x_2087 x_2089) (drop_6 x_2086 m_5 xs_61) (drop_6 x_2087 n_15 x_2086) (x_2077 x_2088 n_15 m_5) (drop_6 x_2089 x_2088 xs_61)) false)))
(check-sat)
