(set-logic HORN)
(define-fun Z_2066 () Int 0)
(define-fun S_474 ((x Int)) Int (+ x 1))
(declare-fun unS_689 (Int Int) Bool)
(declare-fun isZ_441 (Int) Bool)
(declare-fun isS_441 (Int) Bool)
(assert (forall ((x_55507 Int))
	(unS_689 x_55507 (S_474 x_55507))))
(assert (isZ_441 Z_2066))
(assert (forall ((x_55509 Int))
	(isS_441 (S_474 x_55509))))
(declare-fun add_370 (Int Int Int) Bool)
(declare-fun minus_365 (Int Int Int) Bool)
(declare-fun le_344 (Int Int) Bool)
(declare-fun ge_344 (Int Int) Bool)
(declare-fun lt_364 (Int Int) Bool)
(declare-fun gt_347 (Int Int) Bool)
(declare-fun mult_344 (Int Int Int) Bool)
(declare-fun div_344 (Int Int Int) Bool)
(declare-fun mod_346 (Int Int Int) Bool)
(assert (forall ((y_2302 Int))
	(add_370 y_2302 Z_2066 y_2302)))
(assert (forall ((x_55477 Int) (y_2302 Int) (r_417 Int))
	(=> (add_370 r_417 x_55477 y_2302) (add_370 (S_474 r_417) (S_474 x_55477) y_2302))))
(assert (forall ((y_2302 Int))
	(minus_365 Z_2066 Z_2066 y_2302)))
(assert (forall ((x_55477 Int) (y_2302 Int) (r_417 Int))
	(=> (minus_365 r_417 x_55477 y_2302) (minus_365 (S_474 r_417) (S_474 x_55477) y_2302))))
(assert (forall ((y_2302 Int))
	(le_344 Z_2066 y_2302)))
(assert (forall ((x_55477 Int) (y_2302 Int))
	(=> (le_344 x_55477 y_2302) (le_344 (S_474 x_55477) (S_474 y_2302)))))
(assert (forall ((y_2302 Int))
	(ge_344 y_2302 Z_2066)))
(assert (forall ((x_55477 Int) (y_2302 Int))
	(=> (ge_344 x_55477 y_2302) (ge_344 (S_474 x_55477) (S_474 y_2302)))))
(assert (forall ((y_2302 Int))
	(lt_364 Z_2066 (S_474 y_2302))))
(assert (forall ((x_55477 Int) (y_2302 Int))
	(=> (lt_364 x_55477 y_2302) (lt_364 (S_474 x_55477) (S_474 y_2302)))))
(assert (forall ((y_2302 Int))
	(gt_347 (S_474 y_2302) Z_2066)))
(assert (forall ((x_55477 Int) (y_2302 Int))
	(=> (gt_347 x_55477 y_2302) (gt_347 (S_474 x_55477) (S_474 y_2302)))))
(assert (forall ((y_2302 Int))
	(mult_344 Z_2066 Z_2066 y_2302)))
(assert (forall ((x_55477 Int) (y_2302 Int) (r_417 Int) (z_2067 Int))
	(=> (and (mult_344 r_417 x_55477 y_2302) (add_370 z_2067 r_417 y_2302)) (mult_344 z_2067 (S_474 x_55477) y_2302))))
(assert (forall ((x_55477 Int) (y_2302 Int))
	(=> (lt_364 x_55477 y_2302) (div_344 Z_2066 x_55477 y_2302))))
(assert (forall ((x_55477 Int) (y_2302 Int) (r_417 Int) (z_2067 Int))
	(=> (and (ge_344 x_55477 y_2302) (minus_365 z_2067 x_55477 y_2302) (div_344 r_417 z_2067 y_2302)) (div_344 (S_474 r_417) x_55477 y_2302))))
(assert (forall ((x_55477 Int) (y_2302 Int))
	(=> (lt_364 x_55477 y_2302) (mod_346 x_55477 x_55477 y_2302))))
(assert (forall ((x_55477 Int) (y_2302 Int) (r_417 Int) (z_2067 Int))
	(=> (and (ge_344 x_55477 y_2302) (minus_365 z_2067 x_55477 y_2302) (mod_346 r_417 z_2067 y_2302)) (mod_346 r_417 x_55477 y_2302))))
(declare-datatypes ((list_246 0)) (((nil_276) (cons_246 (head_492 Int) (tail_492 list_246)))))
(declare-fun diseqlist_246 (list_246 list_246) Bool)
(declare-fun head_494 (Int list_246) Bool)
(declare-fun tail_494 (list_246 list_246) Bool)
(declare-fun isnil_276 (list_246) Bool)
(declare-fun iscons_246 (list_246) Bool)
(assert (forall ((x_55479 Int) (x_55480 list_246))
	(head_494 x_55479 (cons_246 x_55479 x_55480))))
(assert (forall ((x_55479 Int) (x_55480 list_246))
	(tail_494 x_55480 (cons_246 x_55479 x_55480))))
(assert (isnil_276 nil_276))
(assert (forall ((x_55482 Int) (x_55483 list_246))
	(iscons_246 (cons_246 x_55482 x_55483))))
(assert (forall ((x_55484 Int) (x_55485 list_246))
	(diseqlist_246 nil_276 (cons_246 x_55484 x_55485))))
(assert (forall ((x_55486 Int) (x_55487 list_246))
	(diseqlist_246 (cons_246 x_55486 x_55487) nil_276)))
(assert (forall ((x_55488 Int) (x_55489 list_246) (x_55490 Int) (x_55491 list_246))
	(=> (distinct x_55488 x_55490) (diseqlist_246 (cons_246 x_55488 x_55489) (cons_246 x_55490 x_55491)))))
(assert (forall ((x_55488 Int) (x_55489 list_246) (x_55490 Int) (x_55491 list_246))
	(=> (diseqlist_246 x_55489 x_55491) (diseqlist_246 (cons_246 x_55488 x_55489) (cons_246 x_55490 x_55491)))))
(declare-datatypes ((list_247 0)) (((nil_277) (cons_247 (head_493 list_246) (tail_493 list_247)))))
(declare-fun diseqlist_247 (list_247 list_247) Bool)
(declare-fun head_495 (list_246 list_247) Bool)
(declare-fun tail_495 (list_247 list_247) Bool)
(declare-fun isnil_277 (list_247) Bool)
(declare-fun iscons_247 (list_247) Bool)
(assert (forall ((x_55493 list_246) (x_55494 list_247))
	(head_495 x_55493 (cons_247 x_55493 x_55494))))
(assert (forall ((x_55493 list_246) (x_55494 list_247))
	(tail_495 x_55494 (cons_247 x_55493 x_55494))))
(assert (isnil_277 nil_277))
(assert (forall ((x_55496 list_246) (x_55497 list_247))
	(iscons_247 (cons_247 x_55496 x_55497))))
(assert (forall ((x_55498 list_246) (x_55499 list_247))
	(diseqlist_247 nil_277 (cons_247 x_55498 x_55499))))
(assert (forall ((x_55500 list_246) (x_55501 list_247))
	(diseqlist_247 (cons_247 x_55500 x_55501) nil_277)))
(assert (forall ((x_55502 list_246) (x_55503 list_247) (x_55504 list_246) (x_55505 list_247))
	(=> (diseqlist_246 x_55502 x_55504) (diseqlist_247 (cons_247 x_55502 x_55503) (cons_247 x_55504 x_55505)))))
(assert (forall ((x_55502 list_246) (x_55503 list_247) (x_55504 list_246) (x_55505 list_247))
	(=> (diseqlist_247 x_55503 x_55505) (diseqlist_247 (cons_247 x_55502 x_55503) (cons_247 x_55504 x_55505)))))
(declare-fun x_55452 (list_246 list_246 list_246) Bool)
(assert (forall ((x_55459 list_246) (z_2065 Int) (xs_660 list_246) (y_2299 list_246))
	(=> (x_55452 x_55459 xs_660 y_2299) (x_55452 (cons_246 z_2065 x_55459) (cons_246 z_2065 xs_660) y_2299))))
(assert (forall ((x_55460 list_246))
	(x_55452 x_55460 nil_276 x_55460)))
(declare-fun rev_12 (list_246 list_246) Bool)
(assert (forall ((x_55461 list_246) (x_55462 list_246) (y_2300 Int) (xs_661 list_246))
	(=> (and (rev_12 x_55462 xs_661) (x_55452 x_55461 x_55462 (cons_246 y_2300 nil_276))) (rev_12 x_55461 (cons_246 y_2300 xs_661)))))
(assert (rev_12 nil_276 nil_276))
(declare-fun qrevflat_0 (list_246 list_247 list_246) Bool)
(assert (forall ((x_55465 list_246) (x_55466 list_246) (x_55467 list_246) (xs_662 list_246) (xss_8 list_247) (y_2301 list_246))
	(=> (and (rev_12 x_55466 xs_662) (x_55452 x_55467 x_55466 y_2301) (qrevflat_0 x_55465 xss_8 x_55467)) (qrevflat_0 x_55465 (cons_247 xs_662 xss_8) y_2301))))
(assert (forall ((x_55469 list_246))
	(qrevflat_0 x_55469 nil_277 x_55469)))
(declare-fun revflat_0 (list_246 list_247) Bool)
(assert (forall ((x_55470 list_246) (x_55471 list_246) (x_55472 list_246) (xs_663 list_246) (xss_9 list_247))
	(=> (and (revflat_0 x_55471 xss_9) (rev_12 x_55472 xs_663) (x_55452 x_55470 x_55471 x_55472)) (revflat_0 x_55470 (cons_247 xs_663 xss_9)))))
(assert (revflat_0 nil_276 nil_277))
(assert (forall ((x_55475 list_246) (x_55476 list_246) (x_55457 list_247))
	(=> (and (diseqlist_246 x_55475 x_55476) (revflat_0 x_55475 x_55457) (qrevflat_0 x_55476 x_55457 nil_276)) false)))
(check-sat)
