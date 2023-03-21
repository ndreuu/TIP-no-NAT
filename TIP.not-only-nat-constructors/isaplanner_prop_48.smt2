(set-logic HORN)
(define-fun Z_334 () Int 0)
(define-fun S_118 ((x Int)) Int (+ x 1))
(declare-fun projS_115 (Int Int) Bool)
(declare-fun isZ_118 (Int) Bool)
(declare-fun isS_118 (Int) Bool)
(assert (forall ((x_3292 Int))
	(projS_115 x_3292 (S_118 x_3292))))
(assert (isZ_118 Z_334))
(assert (forall ((x_3294 Int))
	(isS_118 (S_118 x_3294))))
(declare-datatypes ((list_55 0)) (((nil_55) (cons_55 (head_110 Int) (tail_110 list_55)))))
(declare-fun diseqlist_55 (list_55 list_55) Bool)
(declare-fun head_111 (Int list_55) Bool)
(declare-fun tail_111 (list_55 list_55) Bool)
(declare-fun isnil_55 (list_55) Bool)
(declare-fun iscons_55 (list_55) Bool)
(assert (forall ((x_3300 Int) (x_3301 list_55))
	(head_111 x_3300 (cons_55 x_3300 x_3301))))
(assert (forall ((x_3300 Int) (x_3301 list_55))
	(tail_111 x_3301 (cons_55 x_3300 x_3301))))
(assert (isnil_55 nil_55))
(assert (forall ((x_3303 Int) (x_3304 list_55))
	(iscons_55 (cons_55 x_3303 x_3304))))
(assert (forall ((x_3305 Int) (x_3306 list_55))
	(diseqlist_55 nil_55 (cons_55 x_3305 x_3306))))
(assert (forall ((x_3307 Int) (x_3308 list_55))
	(diseqlist_55 (cons_55 x_3307 x_3308) nil_55)))
(assert (forall ((x_3309 Int) (x_3310 list_55) (x_3311 Int) (x_3312 list_55))
	(=> (distinct x_3309 x_3311) (diseqlist_55 (cons_55 x_3309 x_3310) (cons_55 x_3311 x_3312)))))
(assert (forall ((x_3309 Int) (x_3310 list_55) (x_3311 Int) (x_3312 list_55))
	(=> (diseqlist_55 x_3310 x_3312) (diseqlist_55 (cons_55 x_3309 x_3310) (cons_55 x_3311 x_3312)))))
(declare-fun last_5 (Int list_55) Bool)
(assert (forall ((x_3273 Int) (x_3265 Int) (x_3266 list_55) (y_265 Int))
	(=> (last_5 x_3273 (cons_55 x_3265 x_3266)) (last_5 x_3273 (cons_55 y_265 (cons_55 x_3265 x_3266))))))
(assert (forall ((x_3275 Int))
	(last_5 x_3275 (cons_55 x_3275 nil_55))))
(assert (last_5 Z_334 nil_55))
(declare-fun butlast_2 (list_55 list_55) Bool)
(assert (forall ((x_3278 list_55) (x_3268 Int) (x_3269 list_55) (y_266 Int))
	(=> (butlast_2 x_3278 (cons_55 x_3268 x_3269)) (butlast_2 (cons_55 y_266 x_3278) (cons_55 y_266 (cons_55 x_3268 x_3269))))))
(assert (forall ((y_266 Int))
	(butlast_2 nil_55 (cons_55 y_266 nil_55))))
(assert (butlast_2 nil_55 nil_55))
(declare-fun x_3270 (list_55 list_55 list_55) Bool)
(assert (forall ((x_3282 list_55) (z_337 Int) (xs_102 list_55) (y_267 list_55))
	(=> (x_3270 x_3282 xs_102 y_267) (x_3270 (cons_55 z_337 x_3282) (cons_55 z_337 xs_102) y_267))))
(assert (forall ((x_3283 list_55))
	(x_3270 x_3283 nil_55 x_3283)))
(assert (forall ((x_3284 list_55) (x_3285 Int) (x_3286 list_55) (x_3272 Int) (y_268 list_55))
	(=> (and true (diseqlist_55 x_3286 (cons_55 x_3272 y_268)) true (butlast_2 x_3284 (cons_55 x_3272 y_268)) (last_5 x_3285 (cons_55 x_3272 y_268)) (x_3270 x_3286 x_3284 (cons_55 x_3285 nil_55))) false)))
(assert (forall ((x_3287 list_55) (x_3288 Int) (x_3289 list_55))
	(=> (and true (diseqlist_55 x_3289 nil_55) false (butlast_2 x_3287 nil_55) (last_5 x_3288 nil_55) (x_3270 x_3289 x_3287 (cons_55 x_3288 nil_55))) false)))
(check-sat)