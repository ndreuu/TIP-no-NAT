
(set-logic HORN)
(define-fun Z_912 () Int 0)
(define-fun S_249 ((x Int)) Int (+ x 1))
(declare-fun unS_321 (Int Int) Bool)
(declare-fun isZ_233 (Int) Bool)
(declare-fun isS_233 (Int) Bool)
(assert (forall ((x_23076 Int))
	(unS_321 x_23076 (S_249 x_23076))))
(assert (isZ_233 Z_912))
(assert (forall ((x_23078 Int))
	(isS_233 (S_249 x_23078))))
(declare-fun add_170 (Int Int Int) Bool)
(declare-fun minus_164 (Int Int Int) Bool)
(declare-fun le_160 (Int Int) Bool)
(declare-fun ge_160 (Int Int) Bool)
(declare-fun lt_166 (Int Int) Bool)
(declare-fun gt_161 (Int Int) Bool)
(declare-fun mult_160 (Int Int Int) Bool)
(declare-fun div_160 (Int Int Int) Bool)
(declare-fun mod_160 (Int Int Int) Bool)
(assert (forall ((y_926 Int))
	(add_170 y_926 Z_912 y_926)))
(assert (forall ((x_23074 Int) (y_926 Int) (r_190 Int))
	(=> (add_170 r_190 x_23074 y_926) (add_170 (S_249 r_190) (S_249 x_23074) y_926))))
(assert (forall ((y_926 Int))
	(minus_164 Z_912 Z_912 y_926)))
(assert (forall ((x_23074 Int) (y_926 Int) (r_190 Int))
	(=> (minus_164 r_190 x_23074 y_926) (minus_164 (S_249 r_190) (S_249 x_23074) y_926))))
(assert (forall ((y_926 Int))
	(le_160 Z_912 y_926)))
(assert (forall ((x_23074 Int) (y_926 Int))
	(=> (le_160 x_23074 y_926) (le_160 (S_249 x_23074) (S_249 y_926)))))
(assert (forall ((y_926 Int))
	(ge_160 y_926 Z_912)))
(assert (forall ((x_23074 Int) (y_926 Int))
	(=> (ge_160 x_23074 y_926) (ge_160 (S_249 x_23074) (S_249 y_926)))))
(assert (forall ((y_926 Int))
	(lt_166 Z_912 (S_249 y_926))))
(assert (forall ((x_23074 Int) (y_926 Int))
	(=> (lt_166 x_23074 y_926) (lt_166 (S_249 x_23074) (S_249 y_926)))))
(assert (forall ((y_926 Int))
	(gt_161 (S_249 y_926) Z_912)))
(assert (forall ((x_23074 Int) (y_926 Int))
	(=> (gt_161 x_23074 y_926) (gt_161 (S_249 x_23074) (S_249 y_926)))))
(assert (forall ((y_926 Int))
	(mult_160 Z_912 Z_912 y_926)))
(assert (forall ((x_23074 Int) (y_926 Int) (r_190 Int) (z_913 Int))
	(=> (and (mult_160 r_190 x_23074 y_926) (add_170 z_913 r_190 y_926)) (mult_160 z_913 (S_249 x_23074) y_926))))
(assert (forall ((x_23074 Int) (y_926 Int))
	(=> (lt_166 x_23074 y_926) (div_160 Z_912 x_23074 y_926))))
(assert (forall ((x_23074 Int) (y_926 Int) (r_190 Int) (z_913 Int))
	(=> (and (ge_160 x_23074 y_926) (minus_164 z_913 x_23074 y_926) (div_160 r_190 z_913 y_926)) (div_160 (S_249 r_190) x_23074 y_926))))
(assert (forall ((x_23074 Int) (y_926 Int))
	(=> (lt_166 x_23074 y_926) (mod_160 x_23074 x_23074 y_926))))
(assert (forall ((x_23074 Int) (y_926 Int) (r_190 Int) (z_913 Int))
	(=> (and (ge_160 x_23074 y_926) (minus_164 z_913 x_23074 y_926) (mod_160 r_190 z_913 y_926)) (mod_160 r_190 x_23074 y_926))))
(declare-datatypes ((list_115 0)) (((nil_127) (cons_115 (head_230 Int) (tail_230 list_115)))))
(declare-fun diseqlist_115 (list_115 list_115) Bool)
(declare-fun head_231 (Int list_115) Bool)
(declare-fun tail_231 (list_115 list_115) Bool)
(declare-fun isnil_127 (list_115) Bool)
(declare-fun iscons_115 (list_115) Bool)
(assert (forall ((x_23084 Int) (x_23085 list_115))
	(head_231 x_23084 (cons_115 x_23084 x_23085))))
(assert (forall ((x_23084 Int) (x_23085 list_115))
	(tail_231 x_23085 (cons_115 x_23084 x_23085))))
(assert (isnil_127 nil_127))
(assert (forall ((x_23087 Int) (x_23088 list_115))
	(iscons_115 (cons_115 x_23087 x_23088))))
(assert (forall ((x_23089 Int) (x_23090 list_115))
	(diseqlist_115 nil_127 (cons_115 x_23089 x_23090))))
(assert (forall ((x_23091 Int) (x_23092 list_115))
	(diseqlist_115 (cons_115 x_23091 x_23092) nil_127)))
(assert (forall ((x_23093 Int) (x_23094 list_115) (x_23095 Int) (x_23096 list_115))
	(=> (distinct x_23093 x_23095) (diseqlist_115 (cons_115 x_23093 x_23094) (cons_115 x_23095 x_23096)))))
(assert (forall ((x_23093 Int) (x_23094 list_115) (x_23095 Int) (x_23096 list_115))
	(=> (diseqlist_115 x_23094 x_23096) (diseqlist_115 (cons_115 x_23093 x_23094) (cons_115 x_23095 x_23096)))))
(declare-fun sort_13 (list_115 Int Int) Bool)
(assert (forall ((x_22986 Int) (y_916 Int))
	(=> (le_160 x_22986 y_916) (sort_13 (cons_115 x_22986 (cons_115 y_916 nil_127)) x_22986 y_916))))
(assert (forall ((x_22986 Int) (y_916 Int))
	(=> (gt_161 x_22986 y_916) (sort_13 (cons_115 y_916 (cons_115 x_22986 nil_127)) x_22986 y_916))))
(declare-fun insert_11 (list_115 Int list_115) Bool)
(assert (forall ((z_906 Int) (xs_288 list_115) (x_22987 Int))
	(=> (le_160 x_22987 z_906) (insert_11 (cons_115 x_22987 (cons_115 z_906 xs_288)) x_22987 (cons_115 z_906 xs_288)))))
(assert (forall ((x_23013 list_115) (z_906 Int) (xs_288 list_115) (x_22987 Int))
	(=> (and (gt_161 x_22987 z_906) (insert_11 x_23013 x_22987 xs_288)) (insert_11 (cons_115 z_906 x_23013) x_22987 (cons_115 z_906 xs_288)))))
(assert (forall ((x_22987 Int))
	(insert_11 (cons_115 x_22987 nil_127) x_22987 nil_127)))
(declare-fun isort_11 (list_115 list_115) Bool)
(assert (forall ((x_23015 list_115) (x_23016 list_115) (y_918 Int) (xs_289 list_115))
	(=> (and (isort_11 x_23016 xs_289) (insert_11 x_23015 y_918 x_23016)) (isort_11 x_23015 (cons_115 y_918 xs_289)))))
(assert (isort_11 nil_127 nil_127))
(declare-fun evens_4 (list_115 list_115) Bool)
(declare-fun odds_4 (list_115 list_115) Bool)
(assert (forall ((x_23020 list_115) (y_919 Int) (xs_290 list_115))
	(=> (odds_4 x_23020 xs_290) (evens_4 (cons_115 y_919 x_23020) (cons_115 y_919 xs_290)))))
(assert (evens_4 nil_127 nil_127))
(assert (forall ((x_23022 list_115) (y_920 Int) (xs_291 list_115))
	(=> (evens_4 x_23022 xs_291) (odds_4 x_23022 (cons_115 y_920 xs_291)))))
(assert (odds_4 nil_127 nil_127))
(declare-fun x_22991 (list_115 list_115 list_115) Bool)
(assert (forall ((x_23026 list_115) (z_907 Int) (xs_292 list_115) (y_921 list_115))
	(=> (x_22991 x_23026 xs_292 y_921) (x_22991 (cons_115 z_907 x_23026) (cons_115 z_907 xs_292) y_921))))
(assert (forall ((x_23027 list_115))
	(x_22991 x_23027 nil_127 x_23027)))
(declare-fun pairs_3 (list_115 list_115 list_115) Bool)
(assert (forall ((x_23028 list_115) (x_23029 list_115) (x_23030 list_115) (x_22995 Int) (x_22996 list_115) (z_908 Int) (x_22994 list_115))
	(=> (and (sort_13 x_23029 z_908 x_22995) (pairs_3 x_23030 x_22994 x_22996) (x_22991 x_23028 x_23029 x_23030)) (pairs_3 x_23028 (cons_115 z_908 x_22994) (cons_115 x_22995 x_22996)))))
(assert (forall ((z_908 Int) (x_22994 list_115))
	(pairs_3 (cons_115 z_908 x_22994) (cons_115 z_908 x_22994) nil_127)))
(assert (forall ((x_23033 list_115))
	(pairs_3 x_23033 nil_127 x_23033)))
(declare-fun stitch_3 (list_115 list_115 list_115) Bool)
(assert (forall ((x_23035 list_115) (z_909 Int) (xs_293 list_115) (y_923 list_115))
	(=> (pairs_3 x_23035 xs_293 y_923) (stitch_3 (cons_115 z_909 x_23035) (cons_115 z_909 xs_293) y_923))))
(assert (forall ((x_23036 list_115))
	(stitch_3 x_23036 nil_127 x_23036)))
(declare-fun bmerge_3 (list_115 list_115 list_115) Bool)
(assert (forall ((x_23037 list_115) (x_23038 list_115) (x_23039 list_115) (x_23040 list_115) (x_23041 list_115) (x_23042 list_115) (x_23002 Int) (x_23003 list_115) (fail_7 list_115) (x_23000 Int) (x_23001 list_115) (z_910 Int))
	(=> (and (evens_4 x_23037 (cons_115 z_910 (cons_115 x_23002 x_23003))) (evens_4 x_23038 (cons_115 x_23000 x_23001)) (bmerge_3 x_23039 x_23037 x_23038) (odds_4 x_23040 (cons_115 z_910 (cons_115 x_23002 x_23003))) (odds_4 x_23041 (cons_115 x_23000 x_23001)) (bmerge_3 x_23042 x_23040 x_23041) (stitch_3 fail_7 x_23039 x_23042)) (bmerge_3 fail_7 (cons_115 z_910 (cons_115 x_23002 x_23003)) (cons_115 x_23000 x_23001)))))
(assert (forall ((x_23045 list_115) (x_23046 list_115) (x_23047 list_115) (x_23048 list_115) (x_23049 list_115) (x_23050 list_115) (x_23004 Int) (x_23005 list_115) (fail_7 list_115) (x_23000 Int) (z_910 Int))
	(=> (and (evens_4 x_23045 (cons_115 z_910 nil_127)) (evens_4 x_23046 (cons_115 x_23000 (cons_115 x_23004 x_23005))) (bmerge_3 x_23047 x_23045 x_23046) (odds_4 x_23048 (cons_115 z_910 nil_127)) (odds_4 x_23049 (cons_115 x_23000 (cons_115 x_23004 x_23005))) (bmerge_3 x_23050 x_23048 x_23049) (stitch_3 fail_7 x_23047 x_23050)) (bmerge_3 fail_7 (cons_115 z_910 nil_127) (cons_115 x_23000 (cons_115 x_23004 x_23005))))))
(assert (forall ((x_23060 list_115) (x_23053 list_115) (x_23054 list_115) (x_23055 list_115) (x_23056 list_115) (x_23057 list_115) (x_23058 list_115) (fail_7 list_115) (x_23000 Int) (z_910 Int))
	(=> (and (sort_13 x_23060 z_910 x_23000) (evens_4 x_23053 (cons_115 z_910 nil_127)) (evens_4 x_23054 (cons_115 x_23000 nil_127)) (bmerge_3 x_23055 x_23053 x_23054) (odds_4 x_23056 (cons_115 z_910 nil_127)) (odds_4 x_23057 (cons_115 x_23000 nil_127)) (bmerge_3 x_23058 x_23056 x_23057) (stitch_3 fail_7 x_23055 x_23058)) (bmerge_3 x_23060 (cons_115 z_910 nil_127) (cons_115 x_23000 nil_127)))))
(assert (forall ((z_910 Int) (x_22999 list_115))
	(bmerge_3 (cons_115 z_910 x_22999) (cons_115 z_910 x_22999) nil_127)))
(assert (forall ((y_924 list_115))
	(bmerge_3 nil_127 nil_127 y_924)))
(declare-fun bsort_3 (list_115 list_115) Bool)
(assert (forall ((x_23064 list_115) (x_23065 list_115) (x_23066 list_115) (x_23067 list_115) (x_23068 list_115) (x_23007 Int) (x_23008 list_115) (y_925 Int))
	(=> (and (evens_4 x_23065 (cons_115 y_925 (cons_115 x_23007 x_23008))) (bsort_3 x_23066 x_23065) (odds_4 x_23067 (cons_115 y_925 (cons_115 x_23007 x_23008))) (bsort_3 x_23068 x_23067) (bmerge_3 x_23064 x_23066 x_23068)) (bsort_3 x_23064 (cons_115 y_925 (cons_115 x_23007 x_23008))))))
(assert (forall ((y_925 Int))
	(bsort_3 (cons_115 y_925 nil_127) (cons_115 y_925 nil_127))))
(assert (bsort_3 nil_127 nil_127))
(assert (forall ((x_23072 list_115) (x_23073 list_115) (xs_294 list_115))
	(=> (and true (diseqlist_115 x_23072 x_23073) (bsort_3 x_23072 xs_294) (isort_11 x_23073 xs_294)) false)))
(check-sat)