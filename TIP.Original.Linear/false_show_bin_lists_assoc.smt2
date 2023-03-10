(set-logic HORN)
(declare-datatypes ((Nat_626 0)) (((Z_2203 ) (S_515 (unS_738 Nat_626)))))
(declare-fun diseqNat_626 (Nat_626 Nat_626) Bool)
(declare-fun unS_739 (Nat_626 Nat_626) Bool)
(declare-fun isZ_482 (Nat_626) Bool)
(declare-fun isS_482 (Nat_626) Bool)
(assert (forall ((x_57340 Nat_626))
	(unS_739 x_57340 (S_515 x_57340))))
(assert (isZ_482 Z_2203))
(assert (forall ((x_57342 Nat_626))
	(isS_482 (S_515 x_57342))))
(assert (forall ((x_57343 Nat_626))
	(diseqNat_626 Z_2203 (S_515 x_57343))))
(assert (forall ((x_57344 Nat_626))
	(diseqNat_626 (S_515 x_57344) Z_2203)))
(assert (forall ((x_57345 Nat_626) (x_57346 Nat_626))
	(=> (diseqNat_626 x_57345 x_57346)
	    (diseqNat_626 (S_515 x_57345) (S_515 x_57346)))))
(declare-fun add_395 (Nat_626 Nat_626 Nat_626) Bool)
(declare-fun minus_390 (Nat_626 Nat_626 Nat_626) Bool)
(declare-fun le_369 (Nat_626 Nat_626) Bool)
(declare-fun ge_369 (Nat_626 Nat_626) Bool)
(declare-fun lt_389 (Nat_626 Nat_626) Bool)
(declare-fun gt_372 (Nat_626 Nat_626) Bool)
(declare-fun mult_370 (Nat_626 Nat_626 Nat_626) Bool)
(declare-fun div_369 (Nat_626 Nat_626 Nat_626) Bool)
(declare-fun mod_371 (Nat_626 Nat_626 Nat_626) Bool)
(assert (forall ((y_2447 Nat_626))
	(add_395 y_2447 Z_2203 y_2447)))
(assert (forall ((x_57333 Nat_626) (y_2447 Nat_626) (r_450 Nat_626))
	(=> (add_395 r_450 x_57333 y_2447)
	    (add_395 (S_515 r_450) (S_515 x_57333) y_2447))))
(assert (forall ((y_2447 Nat_626))
	(minus_390 Z_2203 Z_2203 y_2447)))
(assert (forall ((x_57333 Nat_626) (y_2447 Nat_626) (r_450 Nat_626))
	(=> (minus_390 r_450 x_57333 y_2447)
	    (minus_390 (S_515 r_450) (S_515 x_57333) y_2447))))
(assert (forall ((y_2447 Nat_626))
	(le_369 Z_2203 y_2447)))
(assert (forall ((x_57333 Nat_626) (y_2447 Nat_626))
	(=> (le_369 x_57333 y_2447)
	    (le_369 (S_515 x_57333) (S_515 y_2447)))))
(assert (forall ((y_2447 Nat_626))
	(ge_369 y_2447 Z_2203)))
(assert (forall ((x_57333 Nat_626) (y_2447 Nat_626))
	(=> (ge_369 x_57333 y_2447)
	    (ge_369 (S_515 x_57333) (S_515 y_2447)))))
(assert (forall ((y_2447 Nat_626))
	(lt_389 Z_2203 (S_515 y_2447))))
(assert (forall ((x_57333 Nat_626) (y_2447 Nat_626))
	(=> (lt_389 x_57333 y_2447)
	    (lt_389 (S_515 x_57333) (S_515 y_2447)))))
(assert (forall ((y_2447 Nat_626))
	(gt_372 (S_515 y_2447) Z_2203)))
(assert (forall ((x_57333 Nat_626) (y_2447 Nat_626))
	(=> (gt_372 x_57333 y_2447)
	    (gt_372 (S_515 x_57333) (S_515 y_2447)))))
(assert (forall ((y_2447 Nat_626))
	(mult_370 Z_2203 Z_2203 y_2447)))
(assert (forall ((x_57333 Nat_626) (y_2447 Nat_626) (r_450 Nat_626) (z_2204 Nat_626))
	(=>	(and (mult_370 r_450 x_57333 y_2447)
			(add_395 z_2204 r_450 y_2447))
		(mult_370 z_2204 (S_515 x_57333) y_2447))))
(assert (forall ((x_57333 Nat_626) (y_2447 Nat_626))
	(=> (lt_389 x_57333 y_2447)
	    (div_369 Z_2203 x_57333 y_2447))))
(assert (forall ((x_57333 Nat_626) (y_2447 Nat_626) (r_450 Nat_626) (z_2204 Nat_626))
	(=>	(and (ge_369 x_57333 y_2447)
			(minus_390 z_2204 x_57333 y_2447)
			(div_369 r_450 z_2204 y_2447))
		(div_369 (S_515 r_450) x_57333 y_2447))))
(assert (forall ((x_57333 Nat_626) (y_2447 Nat_626))
	(=> (lt_389 x_57333 y_2447)
	    (mod_371 x_57333 x_57333 y_2447))))
(assert (forall ((x_57333 Nat_626) (y_2447 Nat_626) (r_450 Nat_626) (z_2204 Nat_626))
	(=>	(and (ge_369 x_57333 y_2447)
			(minus_390 z_2204 x_57333 y_2447)
			(mod_371 r_450 z_2204 y_2447))
		(mod_371 r_450 x_57333 y_2447))))
(declare-datatypes ((B_41 0)) (((I_6 ) (O_9 ))))
(declare-fun diseqB_1 (B_41 B_41) Bool)
(declare-fun isI_1 (B_41) Bool)
(declare-fun isO_1 (B_41) Bool)
(assert (isI_1 I_6))
(assert (isO_1 O_9))
(assert (diseqB_1 I_6 O_9))
(assert (diseqB_1 O_9 I_6))
(declare-datatypes ((list_274 0)) (((nil_306 ) (cons_274 (head_548 B_41) (tail_548 list_274)))))
(declare-fun diseqlist_274 (list_274 list_274) Bool)
(declare-fun head_549 (B_41 list_274) Bool)
(declare-fun tail_549 (list_274 list_274) Bool)
(declare-fun isnil_306 (list_274) Bool)
(declare-fun iscons_274 (list_274) Bool)
(assert (forall ((x_57350 B_41) (x_57351 list_274))
	(head_549 x_57350 (cons_274 x_57350 x_57351))))
(assert (forall ((x_57350 B_41) (x_57351 list_274))
	(tail_549 x_57351 (cons_274 x_57350 x_57351))))
(assert (isnil_306 nil_306))
(assert (forall ((x_57353 B_41) (x_57354 list_274))
	(iscons_274 (cons_274 x_57353 x_57354))))
(assert (forall ((x_57355 B_41) (x_57356 list_274))
	(diseqlist_274 nil_306 (cons_274 x_57355 x_57356))))
(assert (forall ((x_57357 B_41) (x_57358 list_274))
	(diseqlist_274 (cons_274 x_57357 x_57358) nil_306)))
(assert (forall ((x_57359 B_41) (x_57360 list_274) (x_57361 B_41) (x_57362 list_274))
	(=> (diseqB_1 x_57359 x_57361)
	    (diseqlist_274 (cons_274 x_57359 x_57360) (cons_274 x_57361 x_57362)))))
(assert (forall ((x_57359 B_41) (x_57360 list_274) (x_57361 B_41) (x_57362 list_274))
	(=> (diseqlist_274 x_57360 x_57362)
	    (diseqlist_274 (cons_274 x_57359 x_57360) (cons_274 x_57361 x_57362)))))
(declare-fun half_3 (Nat_626 Nat_626) Bool)
(assert (forall ((x_57304 Nat_626) (x_57295 Nat_626))
	(=> (div_369 x_57304 x_57295 (S_515 (S_515 Z_2203)))
	    (half_3 x_57304 x_57295))))
(declare-fun shw_0 (list_274 Nat_626) Bool)
(assert (shw_0 nil_306 Z_2203))
(assert (forall ((x_57307 Nat_626) (x_57308 list_274) (x_57296 Nat_626))
	(=>	(and (diseqNat_626 x_57296 Z_2203)
			(half_3 x_57307 x_57296)
			(shw_0 x_57308 x_57307)
			(mod_371 Z_2203 x_57296 (S_515 (S_515 Z_2203))))
		(shw_0 (cons_274 O_9 x_57308) x_57296))))
(assert (shw_0 nil_306 Z_2203))
(assert (forall ((x_57336 Nat_626) (x_57311 Nat_626) (x_57312 list_274) (x_57296 Nat_626))
	(=>	(and (diseqNat_626 x_57296 Z_2203)
			(diseqNat_626 x_57336 Z_2203)
			(half_3 x_57311 x_57296)
			(shw_0 x_57312 x_57311)
			(mod_371 x_57336 x_57296 (S_515 (S_515 Z_2203))))
		(shw_0 (cons_274 I_6 x_57312) x_57296))))
(declare-fun double_2 (Nat_626 Nat_626) Bool)
(assert (forall ((x_57313 Nat_626) (x_57297 Nat_626))
	(=> (add_395 x_57313 x_57297 x_57297)
	    (double_2 x_57313 x_57297))))
(declare-fun rd_0 (Nat_626 list_274) Bool)
(assert (forall ((x_57314 Nat_626) (x_57315 Nat_626) (xs_708 list_274))
	(=>	(and (rd_0 x_57315 xs_708)
			(double_2 x_57314 x_57315))
		(rd_0 x_57314 (cons_274 O_9 xs_708)))))
(assert (forall ((x_57317 Nat_626) (x_57318 Nat_626) (x_57319 Nat_626) (xs_708 list_274))
	(=>	(and (rd_0 x_57318 xs_708)
			(double_2 x_57319 x_57318)
			(add_395 x_57317 (S_515 Z_2203) x_57319))
		(rd_0 x_57317 (cons_274 I_6 xs_708)))))
(assert (rd_0 Z_2203 nil_306))
(declare-fun x_57299 (list_274 list_274 list_274) Bool)
(assert (forall ((x_57322 list_274) (z_2201 B_41) (xs_709 list_274) (y_2444 list_274))
	(=> (x_57299 x_57322 xs_709 y_2444)
	    (x_57299 (cons_274 z_2201 x_57322) (cons_274 z_2201 xs_709) y_2444))))
(assert (forall ((x_57323 list_274))
	(x_57299 x_57323 nil_306 x_57323)))
(declare-fun x_57301 (Nat_626 Nat_626 Nat_626) Bool)
(assert (forall ((x_57324 Nat_626) (x_57325 list_274) (x_57326 list_274) (x_57327 list_274) (x_57302 Nat_626) (y_2445 Nat_626))
	(=>	(and (shw_0 x_57325 x_57302)
			(shw_0 x_57326 y_2445)
			(x_57299 x_57327 x_57325 x_57326)
			(rd_0 x_57324 x_57327))
		(x_57301 x_57324 x_57302 y_2445))))
(assert (forall ((x_57329 Nat_626) (x_57330 Nat_626) (x_57331 Nat_626) (x_57332 Nat_626) (x_57303 Nat_626) (y_2446 Nat_626) (z_2202 Nat_626))
	(=>	(and true
			(diseqNat_626 x_57330 x_57332)
			(x_57301 x_57329 y_2446 z_2202)
			(x_57301 x_57330 x_57303 x_57329)
			(x_57301 x_57331 x_57303 y_2446)
			(x_57301 x_57332 x_57331 z_2202))
		false)))
(check-sat)
