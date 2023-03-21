
(set-logic HORN)
(define-fun Z_1150 () Int 0)
(define-fun S_293 ((x Int)) Int (+ x 1))
(declare-fun unS_401 (Int Int) Bool)
(declare-fun isZ_273 (Int) Bool)
(declare-fun isS_273 (Int) Bool)
(assert (forall ((x_31006 Int))
	(unS_401 x_31006 (S_293 x_31006))))
(assert (isZ_273 Z_1150))
(assert (forall ((x_31008 Int))
	(isS_273 (S_293 x_31008))))
(declare-fun add_215 (Int Int Int) Bool)
(declare-fun minus_207 (Int Int Int) Bool)
(declare-fun le_200 (Int Int) Bool)
(declare-fun ge_200 (Int Int) Bool)
(declare-fun lt_212 (Int Int) Bool)
(declare-fun gt_203 (Int Int) Bool)
(declare-fun mult_200 (Int Int Int) Bool)
(declare-fun div_200 (Int Int Int) Bool)
(declare-fun mod_200 (Int Int Int) Bool)
(assert (forall ((y_1227 Int))
	(add_215 y_1227 Z_1150 y_1227)))
(assert (forall ((x_30996 Int) (y_1227 Int) (r_238 Int))
	(=> (add_215 r_238 x_30996 y_1227) (add_215 (S_293 r_238) (S_293 x_30996) y_1227))))
(assert (forall ((y_1227 Int))
	(minus_207 Z_1150 Z_1150 y_1227)))
(assert (forall ((x_30996 Int) (y_1227 Int) (r_238 Int))
	(=> (minus_207 r_238 x_30996 y_1227) (minus_207 (S_293 r_238) (S_293 x_30996) y_1227))))
(assert (forall ((y_1227 Int))
	(le_200 Z_1150 y_1227)))
(assert (forall ((x_30996 Int) (y_1227 Int))
	(=> (le_200 x_30996 y_1227) (le_200 (S_293 x_30996) (S_293 y_1227)))))
(assert (forall ((y_1227 Int))
	(ge_200 y_1227 Z_1150)))
(assert (forall ((x_30996 Int) (y_1227 Int))
	(=> (ge_200 x_30996 y_1227) (ge_200 (S_293 x_30996) (S_293 y_1227)))))
(assert (forall ((y_1227 Int))
	(lt_212 Z_1150 (S_293 y_1227))))
(assert (forall ((x_30996 Int) (y_1227 Int))
	(=> (lt_212 x_30996 y_1227) (lt_212 (S_293 x_30996) (S_293 y_1227)))))
(assert (forall ((y_1227 Int))
	(gt_203 (S_293 y_1227) Z_1150)))
(assert (forall ((x_30996 Int) (y_1227 Int))
	(=> (gt_203 x_30996 y_1227) (gt_203 (S_293 x_30996) (S_293 y_1227)))))
(assert (forall ((y_1227 Int))
	(mult_200 Z_1150 Z_1150 y_1227)))
(assert (forall ((x_30996 Int) (y_1227 Int) (r_238 Int) (z_1151 Int))
	(=> (and (mult_200 r_238 x_30996 y_1227) (add_215 z_1151 r_238 y_1227)) (mult_200 z_1151 (S_293 x_30996) y_1227))))
(assert (forall ((x_30996 Int) (y_1227 Int))
	(=> (lt_212 x_30996 y_1227) (div_200 Z_1150 x_30996 y_1227))))
(assert (forall ((x_30996 Int) (y_1227 Int) (r_238 Int) (z_1151 Int))
	(=> (and (ge_200 x_30996 y_1227) (minus_207 z_1151 x_30996 y_1227) (div_200 r_238 z_1151 y_1227)) (div_200 (S_293 r_238) x_30996 y_1227))))
(assert (forall ((x_30996 Int) (y_1227 Int))
	(=> (lt_212 x_30996 y_1227) (mod_200 x_30996 x_30996 y_1227))))
(assert (forall ((x_30996 Int) (y_1227 Int) (r_238 Int) (z_1151 Int))
	(=> (and (ge_200 x_30996 y_1227) (minus_207 z_1151 x_30996 y_1227) (mod_200 r_238 z_1151 y_1227)) (mod_200 r_238 x_30996 y_1227))))
(declare-datatypes ((list_137 0)) (((nil_153) (cons_137 (head_274 Int) (tail_274 list_137)))))
(declare-fun diseqlist_137 (list_137 list_137) Bool)
(declare-fun head_275 (Int list_137) Bool)
(declare-fun tail_275 (list_137 list_137) Bool)
(declare-fun isnil_153 (list_137) Bool)
(declare-fun iscons_137 (list_137) Bool)
(assert (forall ((x_31014 Int) (x_31015 list_137))
	(head_275 x_31014 (cons_137 x_31014 x_31015))))
(assert (forall ((x_31014 Int) (x_31015 list_137))
	(tail_275 x_31015 (cons_137 x_31014 x_31015))))
(assert (isnil_153 nil_153))
(assert (forall ((x_31017 Int) (x_31018 list_137))
	(iscons_137 (cons_137 x_31017 x_31018))))
(assert (forall ((x_31019 Int) (x_31020 list_137))
	(diseqlist_137 nil_153 (cons_137 x_31019 x_31020))))
(assert (forall ((x_31021 Int) (x_31022 list_137))
	(diseqlist_137 (cons_137 x_31021 x_31022) nil_153)))
(assert (forall ((x_31023 Int) (x_31024 list_137) (x_31025 Int) (x_31026 list_137))
	(=> (distinct x_31023 x_31025) (diseqlist_137 (cons_137 x_31023 x_31024) (cons_137 x_31025 x_31026)))))
(assert (forall ((x_31023 Int) (x_31024 list_137) (x_31025 Int) (x_31026 list_137))
	(=> (diseqlist_137 x_31024 x_31026) (diseqlist_137 (cons_137 x_31023 x_31024) (cons_137 x_31025 x_31026)))))
(declare-datatypes ((pair_58 0)) (((pair_59 (projpair_116 list_137) (projpair_117 list_137)))))
(declare-fun diseqpair_29 (pair_58 pair_58) Bool)
(declare-fun projpair_118 (list_137 pair_58) Bool)
(declare-fun projpair_119 (list_137 pair_58) Bool)
(declare-fun ispair_29 (pair_58) Bool)
(assert (forall ((x_31027 list_137) (x_31028 list_137))
	(projpair_118 x_31027 (pair_59 x_31027 x_31028))))
(assert (forall ((x_31027 list_137) (x_31028 list_137))
	(projpair_119 x_31028 (pair_59 x_31027 x_31028))))
(assert (forall ((x_31030 list_137) (x_31031 list_137))
	(ispair_29 (pair_59 x_31030 x_31031))))
(assert (forall ((x_31032 list_137) (x_31033 list_137) (x_31034 list_137) (x_31035 list_137))
	(=> (diseqlist_137 x_31032 x_31034) (diseqpair_29 (pair_59 x_31032 x_31033) (pair_59 x_31034 x_31035)))))
(assert (forall ((x_31032 list_137) (x_31033 list_137) (x_31034 list_137) (x_31035 list_137))
	(=> (diseqlist_137 x_31033 x_31035) (diseqpair_29 (pair_59 x_31032 x_31033) (pair_59 x_31034 x_31035)))))
(declare-fun take_30 (list_137 Int list_137) Bool)
(assert (forall ((x_30934 Int) (y_1218 list_137))
	(=> (le_200 x_30934 Z_1150) (take_30 nil_153 x_30934 y_1218))))
(assert (forall ((x_30997 Int) (x_30951 list_137) (z_1145 Int) (xs_371 list_137) (x_30934 Int))
	(=> (and (gt_203 x_30934 Z_1150) (take_30 x_30951 x_30997 xs_371) (minus_207 x_30997 x_30934 (S_293 Z_1150))) (take_30 (cons_137 z_1145 x_30951) x_30934 (cons_137 z_1145 xs_371)))))
(assert (forall ((x_30934 Int) (y_1218 list_137))
	(=> (le_200 x_30934 Z_1150) (take_30 nil_153 x_30934 y_1218))))
(assert (forall ((x_30934 Int))
	(=> (gt_203 x_30934 Z_1150) (take_30 nil_153 x_30934 nil_153))))
(declare-fun sort_21 (list_137 Int Int) Bool)
(assert (forall ((x_30935 Int) (y_1219 Int))
	(=> (le_200 x_30935 y_1219) (sort_21 (cons_137 x_30935 (cons_137 y_1219 nil_153)) x_30935 y_1219))))
(assert (forall ((x_30935 Int) (y_1219 Int))
	(=> (gt_203 x_30935 y_1219) (sort_21 (cons_137 y_1219 (cons_137 x_30935 nil_153)) x_30935 y_1219))))
(declare-fun length_18 (Int list_137) Bool)
(assert (forall ((x_30956 Int) (x_30957 Int) (y_1220 Int) (l_20 list_137))
	(=> (and (length_18 x_30957 l_20) (add_215 x_30956 (S_293 Z_1150) x_30957)) (length_18 x_30956 (cons_137 y_1220 l_20)))))
(assert (length_18 Z_1150 nil_153))
(declare-fun drop_32 (list_137 Int list_137) Bool)
(assert (forall ((x_30959 list_137) (x_30937 Int))
	(=> (le_200 x_30937 Z_1150) (drop_32 x_30959 x_30937 x_30959))))
(assert (forall ((x_30999 Int) (x_30960 list_137) (z_1146 Int) (xs_372 list_137) (x_30937 Int))
	(=> (and (gt_203 x_30937 Z_1150) (drop_32 x_30960 x_30999 xs_372) (minus_207 x_30999 x_30937 (S_293 Z_1150))) (drop_32 x_30960 x_30937 (cons_137 z_1146 xs_372)))))
(assert (forall ((x_30962 list_137) (x_30937 Int))
	(=> (le_200 x_30937 Z_1150) (drop_32 x_30962 x_30937 x_30962))))
(assert (forall ((x_30937 Int))
	(=> (gt_203 x_30937 Z_1150) (drop_32 nil_153 x_30937 nil_153))))
(declare-fun splitAt_13 (pair_58 Int list_137) Bool)
(assert (forall ((x_30965 list_137) (x_30966 list_137) (x_30938 Int) (y_1222 list_137))
	(=> (and (take_30 x_30965 x_30938 y_1222) (drop_32 x_30966 x_30938 y_1222)) (splitAt_13 (pair_59 x_30965 x_30966) x_30938 y_1222))))
(declare-fun count_25 (Int Int list_137) Bool)
(assert (forall ((x_30967 Int) (x_30968 Int) (ys_122 list_137) (x_30939 Int))
	(=> (and (count_25 x_30968 x_30939 ys_122) (add_215 x_30967 (S_293 Z_1150) x_30968)) (count_25 x_30967 x_30939 (cons_137 x_30939 ys_122)))))
(assert (forall ((x_30969 Int) (z_1147 Int) (ys_122 list_137) (x_30939 Int))
	(=> (and (distinct x_30939 z_1147) (count_25 x_30969 x_30939 ys_122)) (count_25 x_30969 x_30939 (cons_137 z_1147 ys_122)))))
(assert (forall ((x_30939 Int))
	(count_25 Z_1150 x_30939 nil_153)))
(declare-fun x_30940 (list_137 list_137 list_137) Bool)
(assert (forall ((x_30973 list_137) (z_1148 Int) (xs_373 list_137) (y_1224 list_137))
	(=> (x_30940 x_30973 xs_373 y_1224) (x_30940 (cons_137 z_1148 x_30973) (cons_137 z_1148 xs_373) y_1224))))
(assert (forall ((x_30974 list_137))
	(x_30940 x_30974 nil_153 x_30974)))
(declare-fun stoogesort_24 (list_137 list_137) Bool)
(declare-fun stoogesort_25 (list_137 list_137) Bool)
(declare-fun stoogesort_26 (list_137 list_137) Bool)
(assert (forall ((x_31001 Int) (x_31002 Int) (x_31003 Int) (x_30977 list_137) (x_30978 list_137) (x_30975 Int) (ys_123 list_137) (zs_39 list_137) (x_30942 list_137))
	(=> (and (stoogesort_25 x_30978 ys_123) (x_30940 x_30977 x_30978 zs_39) (length_18 x_30975 x_30942) (splitAt_13 (pair_59 ys_123 zs_39) x_31003 x_30942) (mult_200 x_31001 (S_293 (S_293 Z_1150)) x_30975) (add_215 x_31002 x_31001 (S_293 Z_1150)) (div_200 x_31003 x_31002 (S_293 (S_293 (S_293 Z_1150))))) (stoogesort_24 x_30977 x_30942))))
(assert (forall ((x_30980 list_137) (x_30981 list_137) (x_30982 list_137) (x_30945 Int) (x_30946 list_137) (y_1226 Int) (y_1225 Int))
	(=> (and (stoogesort_24 x_30981 (cons_137 y_1225 (cons_137 y_1226 (cons_137 x_30945 x_30946)))) (stoogesort_26 x_30982 x_30981) (stoogesort_24 x_30980 x_30982)) (stoogesort_25 x_30980 (cons_137 y_1225 (cons_137 y_1226 (cons_137 x_30945 x_30946)))))))
(assert (forall ((x_30984 list_137) (y_1226 Int) (y_1225 Int))
	(=> (sort_21 x_30984 y_1225 y_1226) (stoogesort_25 x_30984 (cons_137 y_1225 (cons_137 y_1226 nil_153))))))
(assert (forall ((y_1225 Int))
	(stoogesort_25 (cons_137 y_1225 nil_153) (cons_137 y_1225 nil_153))))
(assert (stoogesort_25 nil_153 nil_153))
(assert (forall ((x_31004 Int) (x_30990 list_137) (x_30991 list_137) (x_30988 Int) (ys_124 list_137) (zs_40 list_137) (x_30947 list_137))
	(=> (and (stoogesort_25 x_30991 zs_40) (x_30940 x_30990 ys_124 x_30991) (length_18 x_30988 x_30947) (splitAt_13 (pair_59 ys_124 zs_40) x_31004 x_30947) (div_200 x_31004 x_30988 (S_293 (S_293 (S_293 Z_1150))))) (stoogesort_26 x_30990 x_30947))))
(assert (forall ((x_30993 list_137) (x_30994 Int) (x_30995 Int) (x_30948 Int) (xs_374 list_137))
	(=> (and true (distinct x_30994 x_30995) (stoogesort_25 x_30993 xs_374) (count_25 x_30994 x_30948 x_30993) (count_25 x_30995 x_30948 xs_374)) false)))
(check-sat)