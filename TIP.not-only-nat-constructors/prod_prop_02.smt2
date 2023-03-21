
(set-logic HORN)
(define-fun Z_2038 () Int 0)
(define-fun S_465 ((x Int)) Int (+ x 1))
(define-fun Z_2036 () Int 0)
(define-fun S_464 ((x Int)) Int (+ x 1))
(declare-fun unS_677 (Int Int) Bool)
(declare-fun isZ_432 (Int) Bool)
(declare-fun isS_432 (Int) Bool)
(assert (forall ((x_55209 Int))
	(unS_677 x_55209 (S_465 x_55209))))
(assert (isZ_432 Z_2038))
(assert (forall ((x_55211 Int))
	(isS_432 (S_465 x_55211))))
(declare-fun add_364 (Int Int Int) Bool)
(declare-fun minus_359 (Int Int Int) Bool)
(declare-fun le_338 (Int Int) Bool)
(declare-fun ge_338 (Int Int) Bool)
(declare-fun lt_358 (Int Int) Bool)
(declare-fun gt_341 (Int Int) Bool)
(declare-fun mult_338 (Int Int Int) Bool)
(declare-fun div_338 (Int Int Int) Bool)
(declare-fun mod_340 (Int Int Int) Bool)
(assert (forall ((y_2272 Int))
	(add_364 y_2272 Z_2038 y_2272)))
(assert (forall ((x_55185 Int) (y_2272 Int) (r_411 Int))
	(=> (add_364 r_411 x_55185 y_2272) (add_364 (S_465 r_411) (S_465 x_55185) y_2272))))
(assert (forall ((y_2272 Int))
	(minus_359 Z_2038 Z_2038 y_2272)))
(assert (forall ((x_55185 Int) (y_2272 Int) (r_411 Int))
	(=> (minus_359 r_411 x_55185 y_2272) (minus_359 (S_465 r_411) (S_465 x_55185) y_2272))))
(assert (forall ((y_2272 Int))
	(le_338 Z_2038 y_2272)))
(assert (forall ((x_55185 Int) (y_2272 Int))
	(=> (le_338 x_55185 y_2272) (le_338 (S_465 x_55185) (S_465 y_2272)))))
(assert (forall ((y_2272 Int))
	(ge_338 y_2272 Z_2038)))
(assert (forall ((x_55185 Int) (y_2272 Int))
	(=> (ge_338 x_55185 y_2272) (ge_338 (S_465 x_55185) (S_465 y_2272)))))
(assert (forall ((y_2272 Int))
	(lt_358 Z_2038 (S_465 y_2272))))
(assert (forall ((x_55185 Int) (y_2272 Int))
	(=> (lt_358 x_55185 y_2272) (lt_358 (S_465 x_55185) (S_465 y_2272)))))
(assert (forall ((y_2272 Int))
	(gt_341 (S_465 y_2272) Z_2038)))
(assert (forall ((x_55185 Int) (y_2272 Int))
	(=> (gt_341 x_55185 y_2272) (gt_341 (S_465 x_55185) (S_465 y_2272)))))
(assert (forall ((y_2272 Int))
	(mult_338 Z_2038 Z_2038 y_2272)))
(assert (forall ((x_55185 Int) (y_2272 Int) (r_411 Int) (z_2039 Int))
	(=> (and (mult_338 r_411 x_55185 y_2272) (add_364 z_2039 r_411 y_2272)) (mult_338 z_2039 (S_465 x_55185) y_2272))))
(assert (forall ((x_55185 Int) (y_2272 Int))
	(=> (lt_358 x_55185 y_2272) (div_338 Z_2038 x_55185 y_2272))))
(assert (forall ((x_55185 Int) (y_2272 Int) (r_411 Int) (z_2039 Int))
	(=> (and (ge_338 x_55185 y_2272) (minus_359 z_2039 x_55185 y_2272) (div_338 r_411 z_2039 y_2272)) (div_338 (S_465 r_411) x_55185 y_2272))))
(assert (forall ((x_55185 Int) (y_2272 Int))
	(=> (lt_358 x_55185 y_2272) (mod_340 x_55185 x_55185 y_2272))))
(assert (forall ((x_55185 Int) (y_2272 Int) (r_411 Int) (z_2039 Int))
	(=> (and (ge_338 x_55185 y_2272) (minus_359 z_2039 x_55185 y_2272) (mod_340 r_411 z_2039 y_2272)) (mod_340 r_411 x_55185 y_2272))))
(declare-datatypes ((list_241 0)) (((nil_271) (cons_241 (head_482 Int) (tail_482 list_241)))))
(declare-fun diseqlist_241 (list_241 list_241) Bool)
(declare-fun head_483 (Int list_241) Bool)
(declare-fun tail_483 (list_241 list_241) Bool)
(declare-fun isnil_271 (list_241) Bool)
(declare-fun iscons_241 (list_241) Bool)
(assert (forall ((x_55187 Int) (x_55188 list_241))
	(head_483 x_55187 (cons_241 x_55187 x_55188))))
(assert (forall ((x_55187 Int) (x_55188 list_241))
	(tail_483 x_55188 (cons_241 x_55187 x_55188))))
(assert (isnil_271 nil_271))
(assert (forall ((x_55190 Int) (x_55191 list_241))
	(iscons_241 (cons_241 x_55190 x_55191))))
(assert (forall ((x_55192 Int) (x_55193 list_241))
	(diseqlist_241 nil_271 (cons_241 x_55192 x_55193))))
(assert (forall ((x_55194 Int) (x_55195 list_241))
	(diseqlist_241 (cons_241 x_55194 x_55195) nil_271)))
(assert (forall ((x_55196 Int) (x_55197 list_241) (x_55198 Int) (x_55199 list_241))
	(=> (distinct x_55196 x_55198) (diseqlist_241 (cons_241 x_55196 x_55197) (cons_241 x_55198 x_55199)))))
(assert (forall ((x_55196 Int) (x_55197 list_241) (x_55198 Int) (x_55199 list_241))
	(=> (diseqlist_241 x_55197 x_55199) (diseqlist_241 (cons_241 x_55196 x_55197) (cons_241 x_55198 x_55199)))))
(declare-fun projS_187 (Int Int) Bool)
(declare-fun isZ_431 (Int) Bool)
(declare-fun isS_431 (Int) Bool)
(assert (forall ((x_55201 Int))
	(projS_187 x_55201 (S_464 x_55201))))
(assert (isZ_431 Z_2036))
(assert (forall ((x_55203 Int))
	(isS_431 (S_464 x_55203))))
(declare-fun length_48 (Int list_241) Bool)
(assert (forall ((x_55176 Int) (y_2269 Int) (xs_649 list_241))
	(=> (length_48 x_55176 xs_649) (length_48 (S_464 x_55176) (cons_241 y_2269 xs_649)))))
(assert (length_48 Z_2036 nil_271))
(declare-fun x_55172 (list_241 list_241 list_241) Bool)
(assert (forall ((x_55179 list_241) (z_2037 Int) (xs_650 list_241) (y_2270 list_241))
	(=> (x_55172 x_55179 xs_650 y_2270) (x_55172 (cons_241 z_2037 x_55179) (cons_241 z_2037 xs_650) y_2270))))
(assert (forall ((x_55180 list_241))
	(x_55172 x_55180 nil_271 x_55180)))
(assert (forall ((x_55181 list_241) (x_55182 Int) (x_55183 list_241) (x_55184 Int) (x_55174 list_241) (y_2271 list_241))
	(=> (and true (distinct x_55182 x_55184) (x_55172 x_55181 x_55174 y_2271) (length_48 x_55182 x_55181) (x_55172 x_55183 y_2271 x_55174) (length_48 x_55184 x_55183)) false)))
(check-sat)