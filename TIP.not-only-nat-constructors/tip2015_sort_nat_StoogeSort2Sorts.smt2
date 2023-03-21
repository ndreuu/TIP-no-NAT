
(set-logic HORN)
(define-fun zero_46 () Int 0)
(define-fun succ_45 ((x Int)) Int (+ x 1))
(declare-datatypes ((Bool_153 0)) (((false_153) (true_153))))
(declare-fun diseqBool_65 (Bool_153 Bool_153) Bool)
(declare-fun isfalse_65 (Bool_153) Bool)
(declare-fun istrue_65 (Bool_153) Bool)
(assert (isfalse_65 false_153))
(assert (istrue_65 true_153))
(assert (diseqBool_65 false_153 true_153))
(assert (diseqBool_65 true_153 false_153))
(declare-fun and_153 (Bool_153 Bool_153 Bool_153) Bool)
(declare-fun or_155 (Bool_153 Bool_153 Bool_153) Bool)
(declare-fun hence_153 (Bool_153 Bool_153 Bool_153) Bool)
(declare-fun not_154 (Bool_153 Bool_153) Bool)
(assert (and_153 false_153 false_153 false_153))
(assert (and_153 false_153 true_153 false_153))
(assert (and_153 false_153 false_153 true_153))
(assert (and_153 true_153 true_153 true_153))
(assert (or_155 false_153 false_153 false_153))
(assert (or_155 true_153 true_153 false_153))
(assert (or_155 true_153 false_153 true_153))
(assert (or_155 true_153 true_153 true_153))
(assert (hence_153 true_153 false_153 false_153))
(assert (hence_153 false_153 true_153 false_153))
(assert (hence_153 true_153 false_153 true_153))
(assert (hence_153 true_153 true_153 true_153))
(assert (not_154 true_153 false_153))
(assert (not_154 false_153 true_153))
(declare-fun p_131 (Int Int) Bool)
(declare-fun iszero_45 (Int) Bool)
(declare-fun issucc_45 (Int) Bool)
(assert (forall ((x_22451 Int))
	(p_131 x_22451 (succ_45 x_22451))))
(assert (iszero_45 zero_46))
(assert (forall ((x_22453 Int))
	(issucc_45 (succ_45 x_22453))))
(declare-datatypes ((list_109 0)) (((nil_120) (cons_109 (head_218 Int) (tail_218 list_109)))))
(declare-fun diseqlist_109 (list_109 list_109) Bool)
(declare-fun head_219 (Int list_109) Bool)
(declare-fun tail_219 (list_109 list_109) Bool)
(declare-fun isnil_120 (list_109) Bool)
(declare-fun iscons_109 (list_109) Bool)
(assert (forall ((x_22459 Int) (x_22460 list_109))
	(head_219 x_22459 (cons_109 x_22459 x_22460))))
(assert (forall ((x_22459 Int) (x_22460 list_109))
	(tail_219 x_22460 (cons_109 x_22459 x_22460))))
(assert (isnil_120 nil_120))
(assert (forall ((x_22462 Int) (x_22463 list_109))
	(iscons_109 (cons_109 x_22462 x_22463))))
(assert (forall ((x_22464 Int) (x_22465 list_109))
	(diseqlist_109 nil_120 (cons_109 x_22464 x_22465))))
(assert (forall ((x_22466 Int) (x_22467 list_109))
	(diseqlist_109 (cons_109 x_22466 x_22467) nil_120)))
(assert (forall ((x_22468 Int) (x_22469 list_109) (x_22470 Int) (x_22471 list_109))
	(=> (distinct x_22468 x_22470) (diseqlist_109 (cons_109 x_22468 x_22469) (cons_109 x_22470 x_22471)))))
(assert (forall ((x_22468 Int) (x_22469 list_109) (x_22470 Int) (x_22471 list_109))
	(=> (diseqlist_109 x_22469 x_22471) (diseqlist_109 (cons_109 x_22468 x_22469) (cons_109 x_22470 x_22471)))))
(declare-datatypes ((pair_36 0)) (((pair_37 (projpair_72 list_109) (projpair_73 list_109)))))
(declare-fun diseqpair_18 (pair_36 pair_36) Bool)
(declare-fun projpair_74 (list_109 pair_36) Bool)
(declare-fun projpair_75 (list_109 pair_36) Bool)
(declare-fun ispair_18 (pair_36) Bool)
(assert (forall ((x_22472 list_109) (x_22473 list_109))
	(projpair_74 x_22472 (pair_37 x_22472 x_22473))))
(assert (forall ((x_22472 list_109) (x_22473 list_109))
	(projpair_75 x_22473 (pair_37 x_22472 x_22473))))
(assert (forall ((x_22475 list_109) (x_22476 list_109))
	(ispair_18 (pair_37 x_22475 x_22476))))
(assert (forall ((x_22477 list_109) (x_22478 list_109) (x_22479 list_109) (x_22480 list_109))
	(=> (diseqlist_109 x_22477 x_22479) (diseqpair_18 (pair_37 x_22477 x_22478) (pair_37 x_22479 x_22480)))))
(assert (forall ((x_22477 list_109) (x_22478 list_109) (x_22479 list_109) (x_22480 list_109))
	(=> (diseqlist_109 x_22478 x_22480) (diseqpair_18 (pair_37 x_22477 x_22478) (pair_37 x_22479 x_22480)))))
(declare-fun take_22 (list_109 Int list_109) Bool)
(assert (forall ((x_22344 list_109) (z_854 Int) (xs_265 list_109) (z_853 Int))
	(=> (take_22 x_22344 z_853 xs_265) (take_22 (cons_109 z_854 x_22344) (succ_45 z_853) (cons_109 z_854 xs_265)))))
(assert (forall ((z_853 Int))
	(take_22 nil_120 (succ_45 z_853) nil_120)))
(assert (forall ((y_853 list_109))
	(take_22 nil_120 zero_46 y_853)))
(declare-fun plus_43 (Int Int Int) Bool)
(assert (forall ((x_22348 Int) (z_855 Int) (y_854 Int))
	(=> (plus_43 x_22348 z_855 y_854) (plus_43 (succ_45 x_22348) (succ_45 z_855) y_854))))
(assert (forall ((x_22349 Int))
	(plus_43 x_22349 zero_46 x_22349)))
(declare-fun times_9 (Int Int Int) Bool)
(assert (forall ((x_22350 Int) (x_22351 Int) (z_856 Int) (y_855 Int))
	(=> (and (times_9 x_22351 z_856 y_855) (plus_43 x_22350 y_855 x_22351)) (times_9 x_22350 (succ_45 z_856) y_855))))
(assert (forall ((y_855 Int))
	(times_9 zero_46 zero_46 y_855)))
(declare-fun minus_156 (Int Int Int) Bool)
(assert (forall ((x_22354 Int) (y_857 Int) (z_857 Int))
	(=> (minus_156 x_22354 z_857 y_857) (minus_156 x_22354 (succ_45 z_857) (succ_45 y_857)))))
(assert (forall ((z_857 Int))
	(minus_156 zero_46 (succ_45 z_857) zero_46)))
(assert (forall ((y_856 Int))
	(minus_156 zero_46 zero_46 y_856)))
(declare-fun lt_158 (Bool_153 Int Int) Bool)
(assert (forall ((x_22358 Bool_153) (n_53 Int) (z_858 Int))
	(=> (lt_158 x_22358 n_53 z_858) (lt_158 x_22358 (succ_45 n_53) (succ_45 z_858)))))
(assert (forall ((z_858 Int))
	(lt_158 true_153 zero_46 (succ_45 z_858))))
(assert (forall ((x_22314 Int))
	(lt_158 false_153 x_22314 zero_46)))
(declare-fun leq_16 (Bool_153 Int Int) Bool)
(assert (forall ((x_22362 Bool_153) (x_22316 Int) (z_859 Int))
	(=> (leq_16 x_22362 z_859 x_22316) (leq_16 x_22362 (succ_45 z_859) (succ_45 x_22316)))))
(assert (forall ((z_859 Int))
	(leq_16 false_153 (succ_45 z_859) zero_46)))
(assert (forall ((y_859 Int))
	(leq_16 true_153 zero_46 y_859)))
(declare-fun ordered_7 (Bool_153 list_109) Bool)
(assert (forall ((x_22366 Bool_153) (x_22367 Bool_153) (x_22368 Bool_153) (y_861 Int) (xs_266 list_109) (y_860 Int))
	(=> (and (leq_16 x_22367 y_860 y_861) (ordered_7 x_22368 (cons_109 y_861 xs_266)) (and_153 x_22366 x_22367 x_22368)) (ordered_7 x_22366 (cons_109 y_860 (cons_109 y_861 xs_266))))))
(assert (forall ((y_860 Int))
	(ordered_7 true_153 (cons_109 y_860 nil_120))))
(assert (ordered_7 true_153 nil_120))
(declare-fun sort_11 (list_109 Int Int) Bool)
(assert (forall ((x_22318 Int) (y_862 Int))
	(=> (leq_16 true_153 x_22318 y_862) (sort_11 (cons_109 x_22318 (cons_109 y_862 nil_120)) x_22318 y_862))))
(assert (forall ((x_22318 Int) (y_862 Int))
	(=> (leq_16 false_153 x_22318 y_862) (sort_11 (cons_109 y_862 (cons_109 x_22318 nil_120)) x_22318 y_862))))
(declare-fun length_9 (Int list_109) Bool)
(assert (forall ((x_22375 Int) (x_22376 Int) (y_863 Int) (l_11 list_109))
	(=> (and (length_9 x_22376 l_11) (plus_43 x_22375 (succ_45 zero_46) x_22376)) (length_9 x_22375 (cons_109 y_863 l_11)))))
(assert (length_9 zero_46 nil_120))
(declare-fun idiv_3 (Int Int Int) Bool)
(assert (forall ((x_22320 Int) (y_864 Int))
	(=> (lt_158 true_153 x_22320 y_864) (idiv_3 zero_46 x_22320 y_864))))
(assert (forall ((x_22383 Int) (x_22384 Int) (x_22320 Int) (y_864 Int))
	(=> (and (minus_156 x_22383 x_22320 y_864) (idiv_3 x_22384 x_22383 y_864) (lt_158 false_153 x_22320 y_864)) (idiv_3 (succ_45 x_22384) x_22320 y_864))))
(declare-fun drop_24 (list_109 Int list_109) Bool)
(assert (forall ((x_22385 list_109) (z_862 Int) (xs_267 list_109) (z_861 Int))
	(=> (drop_24 x_22385 z_861 xs_267) (drop_24 x_22385 (succ_45 z_861) (cons_109 z_862 xs_267)))))
(assert (forall ((z_861 Int))
	(drop_24 nil_120 (succ_45 z_861) nil_120)))
(assert (forall ((x_22388 list_109))
	(drop_24 x_22388 zero_46 x_22388)))
(declare-fun splitAt_5 (pair_36 Int list_109) Bool)
(assert (forall ((x_22390 list_109) (x_22391 list_109) (x_22322 Int) (y_866 list_109))
	(=> (and (take_22 x_22390 x_22322 y_866) (drop_24 x_22391 x_22322 y_866)) (splitAt_5 (pair_37 x_22390 x_22391) x_22322 y_866))))
(declare-fun x_22323 (list_109 list_109 list_109) Bool)
(assert (forall ((x_22393 list_109) (z_863 Int) (xs_268 list_109) (y_867 list_109))
	(=> (x_22323 x_22393 xs_268 y_867) (x_22323 (cons_109 z_863 x_22393) (cons_109 z_863 xs_268) y_867))))
(assert (forall ((x_22394 list_109))
	(x_22323 x_22394 nil_120 x_22394)))
(declare-fun stoogesort_9 (list_109 list_109) Bool)
(declare-fun stoogesort_10 (list_109 list_109) Bool)
(declare-fun stoogesort_11 (list_109 list_109) Bool)
(assert (forall ((x_22399 list_109) (x_22400 list_109) (x_22395 Int) (x_22396 Int) (x_22397 Int) (ys_76 list_109) (zs_17 list_109) (x_22325 list_109))
	(=> (and (stoogesort_10 x_22400 ys_76) (x_22323 x_22399 x_22400 zs_17) (length_9 x_22395 x_22325) (times_9 x_22396 (succ_45 (succ_45 zero_46)) x_22395) (idiv_3 x_22397 (succ_45 x_22396) (succ_45 (succ_45 (succ_45 zero_46)))) (splitAt_5 (pair_37 ys_76 zs_17) x_22397 x_22325)) (stoogesort_9 x_22399 x_22325))))
(assert (forall ((x_22402 list_109) (x_22403 list_109) (x_22404 list_109) (x_22328 Int) (x_22329 list_109) (y_869 Int) (y_868 Int))
	(=> (and (stoogesort_9 x_22403 (cons_109 y_868 (cons_109 y_869 (cons_109 x_22328 x_22329)))) (stoogesort_11 x_22404 x_22403) (stoogesort_9 x_22402 x_22404)) (stoogesort_10 x_22402 (cons_109 y_868 (cons_109 y_869 (cons_109 x_22328 x_22329)))))))
(assert (forall ((x_22406 list_109) (y_869 Int) (y_868 Int))
	(=> (sort_11 x_22406 y_868 y_869) (stoogesort_10 x_22406 (cons_109 y_868 (cons_109 y_869 nil_120))))))
(assert (forall ((y_868 Int))
	(stoogesort_10 (cons_109 y_868 nil_120) (cons_109 y_868 nil_120))))
(assert (stoogesort_10 nil_120 nil_120))
(assert (forall ((x_22413 list_109) (x_22414 list_109) (x_22410 Int) (x_22411 Int) (ys_77 list_109) (zs_18 list_109) (x_22330 list_109))
	(=> (and (stoogesort_10 x_22414 zs_18) (x_22323 x_22413 ys_77 x_22414) (length_9 x_22410 x_22330) (idiv_3 x_22411 x_22410 (succ_45 (succ_45 (succ_45 zero_46)))) (splitAt_5 (pair_37 ys_77 zs_18) x_22411 x_22330)) (stoogesort_11 x_22413 x_22330))))
(assert (forall ((x_22416 Int) (x_22417 Int) (x_22418 Int) (x_22419 Int) (x_22331 Int) (y_870 Int) (z_865 Int))
	(=> (and true (distinct x_22417 x_22419) (times_9 x_22416 y_870 z_865) (times_9 x_22417 x_22331 x_22416) (times_9 x_22418 x_22331 y_870) (times_9 x_22419 x_22418 z_865)) false)))
(assert (forall ((x_22420 Int) (x_22421 Int) (x_22422 Int) (x_22423 Int) (x_22332 Int) (y_871 Int) (z_866 Int))
	(=> (and true (distinct x_22421 x_22423) (plus_43 x_22420 y_871 z_866) (plus_43 x_22421 x_22332 x_22420) (plus_43 x_22422 x_22332 y_871) (plus_43 x_22423 x_22422 z_866)) false)))
(assert (forall ((x_22424 Int) (x_22425 Int) (x_22333 Int) (y_872 Int))
	(=> (and true (distinct x_22424 x_22425) (times_9 x_22424 x_22333 y_872) (times_9 x_22425 y_872 x_22333)) false)))
(assert (forall ((x_22426 Int) (x_22427 Int) (x_22334 Int) (y_873 Int))
	(=> (and true (distinct x_22426 x_22427) (plus_43 x_22426 x_22334 y_873) (plus_43 x_22427 y_873 x_22334)) false)))
(assert (forall ((x_22428 Int) (x_22429 Int) (x_22430 Int) (x_22431 Int) (x_22432 Int) (x_22335 Int) (y_874 Int) (z_867 Int))
	(=> (and true (distinct x_22429 x_22432) (plus_43 x_22428 y_874 z_867) (times_9 x_22429 x_22335 x_22428) (times_9 x_22430 x_22335 y_874) (times_9 x_22431 x_22335 z_867) (plus_43 x_22432 x_22430 x_22431)) false)))
(assert (forall ((x_22433 Int) (x_22434 Int) (x_22435 Int) (x_22436 Int) (x_22437 Int) (x_22336 Int) (y_875 Int) (z_868 Int))
	(=> (and true (distinct x_22434 x_22437) (plus_43 x_22433 x_22336 y_875) (times_9 x_22434 x_22433 z_868) (times_9 x_22435 x_22336 z_868) (times_9 x_22436 y_875 z_868) (plus_43 x_22437 x_22435 x_22436)) false)))
(assert (forall ((x_22438 Int) (x_22337 Int))
	(=> (and true (distinct x_22438 x_22337) (times_9 x_22438 x_22337 (succ_45 zero_46))) false)))
(assert (forall ((x_22439 Int) (x_22338 Int))
	(=> (and true (distinct x_22439 x_22338) (times_9 x_22439 (succ_45 zero_46) x_22338)) false)))
(assert (forall ((x_22440 Int) (x_22339 Int))
	(=> (and true (distinct x_22440 x_22339) (plus_43 x_22440 x_22339 zero_46)) false)))
(assert (forall ((x_22441 Int) (x_22340 Int))
	(=> (and true (distinct x_22441 x_22340) (plus_43 x_22441 zero_46 x_22340)) false)))
(assert (forall ((x_22442 Int) (x_22341 Int))
	(=> (and true (distinct x_22442 zero_46) (times_9 x_22442 x_22341 zero_46)) false)))
(assert (forall ((x_22443 Int) (x_22342 Int))
	(=> (and true (distinct x_22443 zero_46) (times_9 x_22443 zero_46 x_22342)) false)))
(assert (forall ((x_22444 list_109) (xs_269 list_109))
	(=> (and true (stoogesort_10 x_22444 xs_269) (ordered_7 false_153 x_22444)) false)))
(check-sat)