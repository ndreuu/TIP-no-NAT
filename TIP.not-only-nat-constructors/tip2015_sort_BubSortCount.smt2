
(set-logic HORN)
(define-fun Z_1053 () Int 0)
(define-fun S_275 ((x Int)) Int (+ x 1))
(declare-fun unS_369 (Int Int) Bool)
(declare-fun isZ_257 (Int) Bool)
(declare-fun isS_257 (Int) Bool)
(assert (forall ((x_27395 Int))
	(unS_369 x_27395 (S_275 x_27395))))
(assert (isZ_257 Z_1053))
(assert (forall ((x_27397 Int))
	(isS_257 (S_275 x_27397))))
(declare-fun add_197 (Int Int Int) Bool)
(declare-fun minus_189 (Int Int Int) Bool)
(declare-fun le_184 (Int Int) Bool)
(declare-fun ge_184 (Int Int) Bool)
(declare-fun lt_193 (Int Int) Bool)
(declare-fun gt_186 (Int Int) Bool)
(declare-fun mult_184 (Int Int Int) Bool)
(declare-fun div_184 (Int Int Int) Bool)
(declare-fun mod_184 (Int Int Int) Bool)
(assert (forall ((y_1102 Int))
	(add_197 y_1102 Z_1053 y_1102)))
(assert (forall ((x_27392 Int) (y_1102 Int) (r_219 Int))
	(=> (add_197 r_219 x_27392 y_1102) (add_197 (S_275 r_219) (S_275 x_27392) y_1102))))
(assert (forall ((y_1102 Int))
	(minus_189 Z_1053 Z_1053 y_1102)))
(assert (forall ((x_27392 Int) (y_1102 Int) (r_219 Int))
	(=> (minus_189 r_219 x_27392 y_1102) (minus_189 (S_275 r_219) (S_275 x_27392) y_1102))))
(assert (forall ((y_1102 Int))
	(le_184 Z_1053 y_1102)))
(assert (forall ((x_27392 Int) (y_1102 Int))
	(=> (le_184 x_27392 y_1102) (le_184 (S_275 x_27392) (S_275 y_1102)))))
(assert (forall ((y_1102 Int))
	(ge_184 y_1102 Z_1053)))
(assert (forall ((x_27392 Int) (y_1102 Int))
	(=> (ge_184 x_27392 y_1102) (ge_184 (S_275 x_27392) (S_275 y_1102)))))
(assert (forall ((y_1102 Int))
	(lt_193 Z_1053 (S_275 y_1102))))
(assert (forall ((x_27392 Int) (y_1102 Int))
	(=> (lt_193 x_27392 y_1102) (lt_193 (S_275 x_27392) (S_275 y_1102)))))
(assert (forall ((y_1102 Int))
	(gt_186 (S_275 y_1102) Z_1053)))
(assert (forall ((x_27392 Int) (y_1102 Int))
	(=> (gt_186 x_27392 y_1102) (gt_186 (S_275 x_27392) (S_275 y_1102)))))
(assert (forall ((y_1102 Int))
	(mult_184 Z_1053 Z_1053 y_1102)))
(assert (forall ((x_27392 Int) (y_1102 Int) (r_219 Int) (z_1054 Int))
	(=> (and (mult_184 r_219 x_27392 y_1102) (add_197 z_1054 r_219 y_1102)) (mult_184 z_1054 (S_275 x_27392) y_1102))))
(assert (forall ((x_27392 Int) (y_1102 Int))
	(=> (lt_193 x_27392 y_1102) (div_184 Z_1053 x_27392 y_1102))))
(assert (forall ((x_27392 Int) (y_1102 Int) (r_219 Int) (z_1054 Int))
	(=> (and (ge_184 x_27392 y_1102) (minus_189 z_1054 x_27392 y_1102) (div_184 r_219 z_1054 y_1102)) (div_184 (S_275 r_219) x_27392 y_1102))))
(assert (forall ((x_27392 Int) (y_1102 Int))
	(=> (lt_193 x_27392 y_1102) (mod_184 x_27392 x_27392 y_1102))))
(assert (forall ((x_27392 Int) (y_1102 Int) (r_219 Int) (z_1054 Int))
	(=> (and (ge_184 x_27392 y_1102) (minus_189 z_1054 x_27392 y_1102) (mod_184 r_219 z_1054 y_1102)) (mod_184 r_219 x_27392 y_1102))))
(declare-datatypes ((Bool_184 0)) (((false_184) (true_184))))
(declare-fun diseqBool_79 (Bool_184 Bool_184) Bool)
(declare-fun isfalse_79 (Bool_184) Bool)
(declare-fun istrue_79 (Bool_184) Bool)
(assert (isfalse_79 false_184))
(assert (istrue_79 true_184))
(assert (diseqBool_79 false_184 true_184))
(assert (diseqBool_79 true_184 false_184))
(declare-fun and_184 (Bool_184 Bool_184 Bool_184) Bool)
(declare-fun or_187 (Bool_184 Bool_184 Bool_184) Bool)
(declare-fun hence_184 (Bool_184 Bool_184 Bool_184) Bool)
(declare-fun not_186 (Bool_184 Bool_184) Bool)
(assert (and_184 false_184 false_184 false_184))
(assert (and_184 false_184 true_184 false_184))
(assert (and_184 false_184 false_184 true_184))
(assert (and_184 true_184 true_184 true_184))
(assert (or_187 false_184 false_184 false_184))
(assert (or_187 true_184 true_184 false_184))
(assert (or_187 true_184 false_184 true_184))
(assert (or_187 true_184 true_184 true_184))
(assert (hence_184 true_184 false_184 false_184))
(assert (hence_184 false_184 true_184 false_184))
(assert (hence_184 true_184 false_184 true_184))
(assert (hence_184 true_184 true_184 true_184))
(assert (not_186 true_184 false_184))
(assert (not_186 false_184 true_184))
(declare-datatypes ((list_130 0)) (((nil_144) (cons_130 (head_260 Int) (tail_260 list_130)))))
(declare-fun diseqlist_130 (list_130 list_130) Bool)
(declare-fun head_261 (Int list_130) Bool)
(declare-fun tail_261 (list_130 list_130) Bool)
(declare-fun isnil_144 (list_130) Bool)
(declare-fun iscons_130 (list_130) Bool)
(assert (forall ((x_27405 Int) (x_27406 list_130))
	(head_261 x_27405 (cons_130 x_27405 x_27406))))
(assert (forall ((x_27405 Int) (x_27406 list_130))
	(tail_261 x_27406 (cons_130 x_27405 x_27406))))
(assert (isnil_144 nil_144))
(assert (forall ((x_27408 Int) (x_27409 list_130))
	(iscons_130 (cons_130 x_27408 x_27409))))
(assert (forall ((x_27410 Int) (x_27411 list_130))
	(diseqlist_130 nil_144 (cons_130 x_27410 x_27411))))
(assert (forall ((x_27412 Int) (x_27413 list_130))
	(diseqlist_130 (cons_130 x_27412 x_27413) nil_144)))
(assert (forall ((x_27414 Int) (x_27415 list_130) (x_27416 Int) (x_27417 list_130))
	(=> (distinct x_27414 x_27416) (diseqlist_130 (cons_130 x_27414 x_27415) (cons_130 x_27416 x_27417)))))
(assert (forall ((x_27414 Int) (x_27415 list_130) (x_27416 Int) (x_27417 list_130))
	(=> (diseqlist_130 x_27415 x_27417) (diseqlist_130 (cons_130 x_27414 x_27415) (cons_130 x_27416 x_27417)))))
(declare-datatypes ((pair_50 0)) (((pair_51 (projpair_100 Bool_184) (projpair_101 list_130)))))
(declare-fun diseqpair_25 (pair_50 pair_50) Bool)
(declare-fun projpair_102 (Bool_184 pair_50) Bool)
(declare-fun projpair_103 (list_130 pair_50) Bool)
(declare-fun ispair_25 (pair_50) Bool)
(assert (forall ((x_27418 Bool_184) (x_27419 list_130))
	(projpair_102 x_27418 (pair_51 x_27418 x_27419))))
(assert (forall ((x_27418 Bool_184) (x_27419 list_130))
	(projpair_103 x_27419 (pair_51 x_27418 x_27419))))
(assert (forall ((x_27421 Bool_184) (x_27422 list_130))
	(ispair_25 (pair_51 x_27421 x_27422))))
(assert (forall ((x_27423 Bool_184) (x_27424 list_130) (x_27425 Bool_184) (x_27426 list_130))
	(=> (diseqBool_79 x_27423 x_27425) (diseqpair_25 (pair_51 x_27423 x_27424) (pair_51 x_27425 x_27426)))))
(assert (forall ((x_27423 Bool_184) (x_27424 list_130) (x_27425 Bool_184) (x_27426 list_130))
	(=> (diseqlist_130 x_27424 x_27426) (diseqpair_25 (pair_51 x_27423 x_27424) (pair_51 x_27425 x_27426)))))
(declare-fun count_20 (Int Int list_130) Bool)
(assert (forall ((x_27373 Int) (x_27374 Int) (ys_105 list_130) (x_27369 Int))
	(=> (and (count_20 x_27374 x_27369 ys_105) (add_197 x_27373 (S_275 Z_1053) x_27374)) (count_20 x_27373 x_27369 (cons_130 x_27369 ys_105)))))
(assert (forall ((x_27375 Int) (z_1051 Int) (ys_105 list_130) (x_27369 Int))
	(=> (and (distinct x_27369 z_1051) (count_20 x_27375 x_27369 ys_105)) (count_20 x_27375 x_27369 (cons_130 z_1051 ys_105)))))
(assert (forall ((x_27369 Int))
	(count_20 Z_1053 x_27369 nil_144)))
(declare-fun bubble_3 (pair_50 list_130) Bool)
(assert (forall ((b_23 Bool_184) (ys_106 list_130) (y_1101 Int) (xs_345 list_130) (y_1100 Int))
	(=> (and (le_184 y_1100 y_1101) (bubble_3 (pair_51 b_23 ys_106) (cons_130 y_1101 xs_345))) (bubble_3 (pair_51 b_23 (cons_130 y_1100 ys_106)) (cons_130 y_1100 (cons_130 y_1101 xs_345))))))
(assert (forall ((b_24 Bool_184) (ys_107 list_130) (y_1101 Int) (xs_345 list_130) (y_1100 Int))
	(=> (and (gt_186 y_1100 y_1101) (bubble_3 (pair_51 b_24 ys_107) (cons_130 y_1100 xs_345))) (bubble_3 (pair_51 true_184 (cons_130 y_1101 ys_107)) (cons_130 y_1100 (cons_130 y_1101 xs_345))))))
(assert (forall ((y_1100 Int))
	(bubble_3 (pair_51 false_184 (cons_130 y_1100 nil_144)) (cons_130 y_1100 nil_144))))
(assert (bubble_3 (pair_51 false_184 nil_144) nil_144))
(declare-fun bubsort_3 (list_130 list_130) Bool)
(assert (forall ((x_27385 list_130) (ys_108 list_130) (x_27371 list_130))
	(=> (and (bubsort_3 x_27385 ys_108) (bubble_3 (pair_51 true_184 ys_108) x_27371)) (bubsort_3 x_27385 x_27371))))
(assert (forall ((ys_108 list_130) (x_27371 list_130))
	(=> (bubble_3 (pair_51 false_184 ys_108) x_27371) (bubsort_3 x_27371 x_27371))))
(assert (forall ((x_27389 list_130) (x_27390 Int) (x_27391 Int) (x_27372 Int) (xs_346 list_130))
	(=> (and true (distinct x_27390 x_27391) (bubsort_3 x_27389 xs_346) (count_20 x_27390 x_27372 x_27389) (count_20 x_27391 x_27372 xs_346)) false)))
(check-sat)