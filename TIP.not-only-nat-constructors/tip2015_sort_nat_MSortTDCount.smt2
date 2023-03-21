(set-logic HORN)
(define-fun zero_140 () Int 0)
(define-fun succ_136 ((x Int)) Int (+ x 1))
(declare-datatypes ((Bool_305 0)) (((false_305) (true_305))))
(declare-fun diseqBool_142 (Bool_305 Bool_305) Bool)
(declare-fun isfalse_142 (Bool_305) Bool)
(declare-fun istrue_142 (Bool_305) Bool)
(assert (isfalse_142 false_305))
(assert (istrue_142 true_305))
(assert (diseqBool_142 false_305 true_305))
(assert (diseqBool_142 true_305 false_305))
(declare-fun and_305 (Bool_305 Bool_305 Bool_305) Bool)
(declare-fun or_312 (Bool_305 Bool_305 Bool_305) Bool)
(declare-fun hence_305 (Bool_305 Bool_305 Bool_305) Bool)
(declare-fun not_310 (Bool_305 Bool_305) Bool)
(assert (and_305 false_305 false_305 false_305))
(assert (and_305 false_305 true_305 false_305))
(assert (and_305 false_305 false_305 true_305))
(assert (and_305 true_305 true_305 true_305))
(assert (or_312 false_305 false_305 false_305))
(assert (or_312 true_305 true_305 false_305))
(assert (or_312 true_305 false_305 true_305))
(assert (or_312 true_305 true_305 true_305))
(assert (hence_305 true_305 false_305 false_305))
(assert (hence_305 false_305 true_305 false_305))
(assert (hence_305 true_305 false_305 true_305))
(assert (hence_305 true_305 true_305 true_305))
(assert (not_310 true_305 false_305))
(assert (not_310 false_305 true_305))
(declare-fun p_382 (Int Int) Bool)
(declare-fun iszero_136 (Int) Bool)
(declare-fun issucc_136 (Int) Bool)
(assert (forall ((x_53352 Int))
	(p_382 x_53352 (succ_136 x_53352))))
(assert (iszero_136 zero_140))
(assert (forall ((x_53354 Int))
	(issucc_136 (succ_136 x_53354))))
(declare-datatypes ((list_216 0)) (((nil_244) (cons_216 (head_432 Int) (tail_432 list_216)))))
(declare-fun diseqlist_216 (list_216 list_216) Bool)
(declare-fun head_433 (Int list_216) Bool)
(declare-fun tail_433 (list_216 list_216) Bool)
(declare-fun isnil_244 (list_216) Bool)
(declare-fun iscons_216 (list_216) Bool)
(assert (forall ((x_53360 Int) (x_53361 list_216))
	(head_433 x_53360 (cons_216 x_53360 x_53361))))
(assert (forall ((x_53360 Int) (x_53361 list_216))
	(tail_433 x_53361 (cons_216 x_53360 x_53361))))
(assert (isnil_244 nil_244))
(assert (forall ((x_53363 Int) (x_53364 list_216))
	(iscons_216 (cons_216 x_53363 x_53364))))
(assert (forall ((x_53365 Int) (x_53366 list_216))
	(diseqlist_216 nil_244 (cons_216 x_53365 x_53366))))
(assert (forall ((x_53367 Int) (x_53368 list_216))
	(diseqlist_216 (cons_216 x_53367 x_53368) nil_244)))
(assert (forall ((x_53369 Int) (x_53370 list_216) (x_53371 Int) (x_53372 list_216))
	(=> (distinct x_53369 x_53371) (diseqlist_216 (cons_216 x_53369 x_53370) (cons_216 x_53371 x_53372)))))
(assert (forall ((x_53369 Int) (x_53370 list_216) (x_53371 Int) (x_53372 list_216))
	(=> (diseqlist_216 x_53370 x_53372) (diseqlist_216 (cons_216 x_53369 x_53370) (cons_216 x_53371 x_53372)))))
(declare-fun take_50 (list_216 Int list_216) Bool)
(assert (forall ((x_53281 list_216) (z_1852 Int) (xs_598 list_216) (z_1851 Int))
	(=> (take_50 x_53281 z_1851 xs_598) (take_50 (cons_216 z_1852 x_53281) (succ_136 z_1851) (cons_216 z_1852 xs_598)))))
(assert (forall ((z_1851 Int))
	(take_50 nil_244 (succ_136 z_1851) nil_244)))
(assert (forall ((y_2082 list_216))
	(take_50 nil_244 zero_140 y_2082)))
(declare-fun plus_133 (Int Int Int) Bool)
(assert (forall ((x_53285 Int) (z_1853 Int) (y_2083 Int))
	(=> (plus_133 x_53285 z_1853 y_2083) (plus_133 (succ_136 x_53285) (succ_136 z_1853) y_2083))))
(assert (forall ((x_53286 Int))
	(plus_133 x_53286 zero_140 x_53286)))
(declare-fun minus_325 (Int Int Int) Bool)
(assert (forall ((x_53287 Int) (y_2085 Int) (z_1854 Int))
	(=> (minus_325 x_53287 z_1854 y_2085) (minus_325 x_53287 (succ_136 z_1854) (succ_136 y_2085)))))
(assert (forall ((z_1854 Int))
	(minus_325 zero_140 (succ_136 z_1854) zero_140)))
(assert (forall ((y_2084 Int))
	(minus_325 zero_140 zero_140 y_2084)))
(declare-fun lt_324 (Bool_305 Int Int) Bool)
(assert (forall ((x_53291 Bool_305) (n_107 Int) (z_1855 Int))
	(=> (lt_324 x_53291 n_107 z_1855) (lt_324 x_53291 (succ_136 n_107) (succ_136 z_1855)))))
(assert (forall ((z_1855 Int))
	(lt_324 true_305 zero_140 (succ_136 z_1855))))
(assert (forall ((x_53261 Int))
	(lt_324 false_305 x_53261 zero_140)))
(declare-fun leq_53 (Bool_305 Int Int) Bool)
(assert (forall ((x_53295 Bool_305) (x_53263 Int) (z_1856 Int))
	(=> (leq_53 x_53295 z_1856 x_53263) (leq_53 x_53295 (succ_136 z_1856) (succ_136 x_53263)))))
(assert (forall ((z_1856 Int))
	(leq_53 false_305 (succ_136 z_1856) zero_140)))
(assert (forall ((y_2087 Int))
	(leq_53 true_305 zero_140 y_2087)))
(declare-fun lmerge_17 (list_216 list_216 list_216) Bool)
(assert (forall ((x_53301 list_216) (x_53266 Int) (x_53267 list_216) (z_1857 Int) (x_53265 list_216))
	(=> (and (lmerge_17 x_53301 x_53265 (cons_216 x_53266 x_53267)) (leq_53 true_305 z_1857 x_53266)) (lmerge_17 (cons_216 z_1857 x_53301) (cons_216 z_1857 x_53265) (cons_216 x_53266 x_53267)))))
(assert (forall ((x_53304 list_216) (x_53266 Int) (x_53267 list_216) (z_1857 Int) (x_53265 list_216))
	(=> (and (lmerge_17 x_53304 (cons_216 z_1857 x_53265) x_53267) (leq_53 false_305 z_1857 x_53266)) (lmerge_17 (cons_216 x_53266 x_53304) (cons_216 z_1857 x_53265) (cons_216 x_53266 x_53267)))))
(assert (forall ((z_1857 Int) (x_53265 list_216))
	(lmerge_17 (cons_216 z_1857 x_53265) (cons_216 z_1857 x_53265) nil_244)))
(assert (forall ((x_53306 list_216))
	(lmerge_17 x_53306 nil_244 x_53306)))
(declare-fun length_40 (Int list_216) Bool)
(assert (forall ((x_53307 Int) (x_53308 Int) (y_2089 Int) (l_42 list_216))
	(=> (and (length_40 x_53308 l_42) (plus_133 x_53307 (succ_136 zero_140) x_53308)) (length_40 x_53307 (cons_216 y_2089 l_42)))))
(assert (length_40 zero_140 nil_244))
(declare-fun idiv_8 (Int Int Int) Bool)
(assert (forall ((x_53269 Int) (y_2090 Int))
	(=> (lt_324 true_305 x_53269 y_2090) (idiv_8 zero_140 x_53269 y_2090))))
(assert (forall ((x_53315 Int) (x_53316 Int) (x_53269 Int) (y_2090 Int))
	(=> (and (minus_325 x_53315 x_53269 y_2090) (idiv_8 x_53316 x_53315 y_2090) (lt_324 false_305 x_53269 y_2090)) (idiv_8 (succ_136 x_53316) x_53269 y_2090))))
(declare-fun drop_52 (list_216 Int list_216) Bool)
(assert (forall ((x_53317 list_216) (z_1859 Int) (xs_599 list_216) (z_1858 Int))
	(=> (drop_52 x_53317 z_1858 xs_599) (drop_52 x_53317 (succ_136 z_1858) (cons_216 z_1859 xs_599)))))
(assert (forall ((z_1858 Int))
	(drop_52 nil_244 (succ_136 z_1858) nil_244)))
(assert (forall ((x_53320 list_216))
	(drop_52 x_53320 zero_140 x_53320)))
(declare-fun msorttd_5 (list_216 list_216) Bool)
(assert (forall ((x_53323 list_216) (x_53324 list_216) (x_53325 list_216) (x_53326 list_216) (x_53327 list_216) (x_53321 Int) (k_14 Int) (x_53272 Int) (x_53273 list_216) (y_2092 Int))
	(=> (and (take_50 x_53324 k_14 (cons_216 y_2092 (cons_216 x_53272 x_53273))) (msorttd_5 x_53325 x_53324) (drop_52 x_53326 k_14 (cons_216 y_2092 (cons_216 x_53272 x_53273))) (msorttd_5 x_53327 x_53326) (lmerge_17 x_53323 x_53325 x_53327) (length_40 x_53321 (cons_216 y_2092 (cons_216 x_53272 x_53273))) (idiv_8 k_14 x_53321 (succ_136 (succ_136 zero_140)))) (msorttd_5 x_53323 (cons_216 y_2092 (cons_216 x_53272 x_53273))))))
(assert (forall ((y_2092 Int))
	(msorttd_5 (cons_216 y_2092 nil_244) (cons_216 y_2092 nil_244))))
(assert (msorttd_5 nil_244 nil_244))
(declare-fun count_35 (Int Int list_216) Bool)
(assert (forall ((x_53331 Int) (x_53332 Int) (ys_198 list_216) (x_53274 Int))
	(=> (and (count_35 x_53332 x_53274 ys_198) (plus_133 x_53331 (succ_136 zero_140) x_53332)) (count_35 x_53331 x_53274 (cons_216 x_53274 ys_198)))))
(assert (forall ((x_53334 Int) (z_1861 Int) (ys_198 list_216) (x_53274 Int))
	(=> (and (distinct x_53274 z_1861) (count_35 x_53334 x_53274 ys_198)) (count_35 x_53334 x_53274 (cons_216 z_1861 ys_198)))))
(assert (forall ((x_53274 Int))
	(count_35 zero_140 x_53274 nil_244)))
(assert (forall ((x_53337 Int) (x_53338 Int) (x_53339 Int) (x_53340 Int) (x_53275 Int) (y_2094 Int) (z_1862 Int))
	(=> (and true (distinct x_53338 x_53340) (plus_133 x_53337 y_2094 z_1862) (plus_133 x_53338 x_53275 x_53337) (plus_133 x_53339 x_53275 y_2094) (plus_133 x_53340 x_53339 z_1862)) false)))
(assert (forall ((x_53341 Int) (x_53342 Int) (x_53276 Int) (y_2095 Int))
	(=> (and true (distinct x_53341 x_53342) (plus_133 x_53341 x_53276 y_2095) (plus_133 x_53342 y_2095 x_53276)) false)))
(assert (forall ((x_53343 Int) (x_53277 Int))
	(=> (and true (distinct x_53343 x_53277) (plus_133 x_53343 x_53277 zero_140)) false)))
(assert (forall ((x_53344 Int) (x_53278 Int))
	(=> (and true (distinct x_53344 x_53278) (plus_133 x_53344 zero_140 x_53278)) false)))
(assert (forall ((x_53345 list_216) (x_53346 Int) (x_53347 Int) (x_53279 Int) (xs_600 list_216))
	(=> (and true (distinct x_53346 x_53347) (msorttd_5 x_53345 xs_600) (count_35 x_53346 x_53279 x_53345) (count_35 x_53347 x_53279 xs_600)) false)))
(check-sat)
