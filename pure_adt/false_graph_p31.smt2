(set-logic HORN)
(declare-datatypes ((Nat_650 0)) (((Z_2345 ) (S_540 (unS_774 Nat_650)))))
(declare-fun diseqNat_650 (Nat_650 Nat_650) Bool)
(declare-fun unS_775 (Nat_650 Nat_650) Bool)
(declare-fun isZ_506 (Nat_650) Bool)
(declare-fun isS_506 (Nat_650) Bool)
(assert (forall ((x_60556 Nat_650))
	(unS_775 x_60556 (S_540 x_60556))))
(assert (isZ_506 Z_2345))
(assert (forall ((x_60558 Nat_650))
	(isS_506 (S_540 x_60558))))
(assert (forall ((x_60559 Nat_650))
	(diseqNat_650 Z_2345 (S_540 x_60559))))
(assert (forall ((x_60560 Nat_650))
	(diseqNat_650 (S_540 x_60560) Z_2345)))
(assert (forall ((x_60561 Nat_650) (x_60562 Nat_650))
	(=> (diseqNat_650 x_60561 x_60562)
	    (diseqNat_650 (S_540 x_60561) (S_540 x_60562)))))
(declare-fun add_413 (Nat_650 Nat_650 Nat_650) Bool)
(declare-fun minus_408 (Nat_650 Nat_650 Nat_650) Bool)
(declare-fun le_387 (Nat_650 Nat_650) Bool)
(declare-fun ge_387 (Nat_650 Nat_650) Bool)
(declare-fun lt_407 (Nat_650 Nat_650) Bool)
(declare-fun gt_390 (Nat_650 Nat_650) Bool)
(declare-fun mult_388 (Nat_650 Nat_650 Nat_650) Bool)
(declare-fun div_387 (Nat_650 Nat_650 Nat_650) Bool)
(declare-fun mod_389 (Nat_650 Nat_650 Nat_650) Bool)
(assert (forall ((y_2627 Nat_650))
	(add_413 y_2627 Z_2345 y_2627)))
(assert (forall ((x_60544 Nat_650) (y_2627 Nat_650) (r_490 Nat_650))
	(=> (add_413 r_490 x_60544 y_2627)
	    (add_413 (S_540 r_490) (S_540 x_60544) y_2627))))
(assert (forall ((y_2627 Nat_650))
	(minus_408 Z_2345 Z_2345 y_2627)))
(assert (forall ((x_60544 Nat_650) (y_2627 Nat_650) (r_490 Nat_650))
	(=> (minus_408 r_490 x_60544 y_2627)
	    (minus_408 (S_540 r_490) (S_540 x_60544) y_2627))))
(assert (forall ((y_2627 Nat_650))
	(le_387 Z_2345 y_2627)))
(assert (forall ((x_60544 Nat_650) (y_2627 Nat_650))
	(=> (le_387 x_60544 y_2627)
	    (le_387 (S_540 x_60544) (S_540 y_2627)))))
(assert (forall ((y_2627 Nat_650))
	(ge_387 y_2627 Z_2345)))
(assert (forall ((x_60544 Nat_650) (y_2627 Nat_650))
	(=> (ge_387 x_60544 y_2627)
	    (ge_387 (S_540 x_60544) (S_540 y_2627)))))
(assert (forall ((y_2627 Nat_650))
	(lt_407 Z_2345 (S_540 y_2627))))
(assert (forall ((x_60544 Nat_650) (y_2627 Nat_650))
	(=> (lt_407 x_60544 y_2627)
	    (lt_407 (S_540 x_60544) (S_540 y_2627)))))
(assert (forall ((y_2627 Nat_650))
	(gt_390 (S_540 y_2627) Z_2345)))
(assert (forall ((x_60544 Nat_650) (y_2627 Nat_650))
	(=> (gt_390 x_60544 y_2627)
	    (gt_390 (S_540 x_60544) (S_540 y_2627)))))
(assert (forall ((y_2627 Nat_650))
	(mult_388 Z_2345 Z_2345 y_2627)))
(assert (forall ((x_60544 Nat_650) (y_2627 Nat_650) (r_490 Nat_650) (z_2346 Nat_650))
	(=>	(and (mult_388 r_490 x_60544 y_2627)
			(add_413 z_2346 r_490 y_2627))
		(mult_388 z_2346 (S_540 x_60544) y_2627))))
(assert (forall ((x_60544 Nat_650) (y_2627 Nat_650))
	(=> (lt_407 x_60544 y_2627)
	    (div_387 Z_2345 x_60544 y_2627))))
(assert (forall ((x_60544 Nat_650) (y_2627 Nat_650) (r_490 Nat_650) (z_2346 Nat_650))
	(=>	(and (ge_387 x_60544 y_2627)
			(minus_408 z_2346 x_60544 y_2627)
			(div_387 r_490 z_2346 y_2627))
		(div_387 (S_540 r_490) x_60544 y_2627))))
(assert (forall ((x_60544 Nat_650) (y_2627 Nat_650))
	(=> (lt_407 x_60544 y_2627)
	    (mod_389 x_60544 x_60544 y_2627))))
(assert (forall ((x_60544 Nat_650) (y_2627 Nat_650) (r_490 Nat_650) (z_2346 Nat_650))
	(=>	(and (ge_387 x_60544 y_2627)
			(minus_408 z_2346 x_60544 y_2627)
			(mod_389 r_490 z_2346 y_2627))
		(mod_389 r_490 x_60544 y_2627))))
(declare-datatypes ((Bool_387 0)) (((false_387 ) (true_387 ))))
(declare-fun diseqBool_178 (Bool_387 Bool_387) Bool)
(declare-fun isfalse_178 (Bool_387) Bool)
(declare-fun istrue_178 (Bool_387) Bool)
(assert (isfalse_178 false_387))
(assert (istrue_178 true_387))
(assert (diseqBool_178 false_387 true_387))
(assert (diseqBool_178 true_387 false_387))
(declare-fun and_389 (Bool_387 Bool_387 Bool_387) Bool)
(declare-fun or_400 (Bool_387 Bool_387 Bool_387) Bool)
(declare-fun hence_387 (Bool_387 Bool_387 Bool_387) Bool)
(declare-fun not_392 (Bool_387 Bool_387) Bool)
(assert (and_389 false_387 false_387 false_387))
(assert (and_389 false_387 true_387 false_387))
(assert (and_389 false_387 false_387 true_387))
(assert (and_389 true_387 true_387 true_387))
(assert (or_400 false_387 false_387 false_387))
(assert (or_400 true_387 true_387 false_387))
(assert (or_400 true_387 false_387 true_387))
(assert (or_400 true_387 true_387 true_387))
(assert (hence_387 true_387 false_387 false_387))
(assert (hence_387 false_387 true_387 false_387))
(assert (hence_387 true_387 false_387 true_387))
(assert (hence_387 true_387 true_387 true_387))
(assert (not_392 true_387 false_387))
(assert (not_392 false_387 true_387))
(declare-datatypes ((pair_122 0)) (((pair_123 (projpair_244 Nat_650) (projpair_245 Nat_650)))))
(declare-fun diseqpair_61 (pair_122 pair_122) Bool)
(declare-fun projpair_246 (Nat_650 pair_122) Bool)
(declare-fun projpair_247 (Nat_650 pair_122) Bool)
(declare-fun ispair_61 (pair_122) Bool)
(assert (forall ((x_60565 Nat_650) (x_60566 Nat_650))
	(projpair_246 x_60565 (pair_123 x_60565 x_60566))))
(assert (forall ((x_60565 Nat_650) (x_60566 Nat_650))
	(projpair_247 x_60566 (pair_123 x_60565 x_60566))))
(assert (forall ((x_60568 Nat_650) (x_60569 Nat_650))
	(ispair_61 (pair_123 x_60568 x_60569))))
(assert (forall ((x_60570 Nat_650) (x_60571 Nat_650) (x_60572 Nat_650) (x_60573 Nat_650))
	(=> (diseqNat_650 x_60570 x_60572)
	    (diseqpair_61 (pair_123 x_60570 x_60571) (pair_123 x_60572 x_60573)))))
(assert (forall ((x_60570 Nat_650) (x_60571 Nat_650) (x_60572 Nat_650) (x_60573 Nat_650))
	(=> (diseqNat_650 x_60571 x_60573)
	    (diseqpair_61 (pair_123 x_60570 x_60571) (pair_123 x_60572 x_60573)))))
(declare-datatypes ((list_307 0)) (((nil_341 ) (cons_304 (head_608 Bool_387) (tail_611 list_307)))))
(declare-fun diseqlist_304 (list_307 list_307) Bool)
(declare-fun head_612 (Bool_387 list_307) Bool)
(declare-fun tail_615 (list_307 list_307) Bool)
(declare-fun isnil_341 (list_307) Bool)
(declare-fun iscons_304 (list_307) Bool)
(assert (forall ((x_60575 Bool_387) (x_60576 list_307))
	(head_612 x_60575 (cons_304 x_60575 x_60576))))
(assert (forall ((x_60575 Bool_387) (x_60576 list_307))
	(tail_615 x_60576 (cons_304 x_60575 x_60576))))
(assert (isnil_341 nil_341))
(assert (forall ((x_60578 Bool_387) (x_60579 list_307))
	(iscons_304 (cons_304 x_60578 x_60579))))
(assert (forall ((x_60580 Bool_387) (x_60581 list_307))
	(diseqlist_304 nil_341 (cons_304 x_60580 x_60581))))
(assert (forall ((x_60582 Bool_387) (x_60583 list_307))
	(diseqlist_304 (cons_304 x_60582 x_60583) nil_341)))
(assert (forall ((x_60584 Bool_387) (x_60585 list_307) (x_60586 Bool_387) (x_60587 list_307))
	(=> (diseqBool_178 x_60584 x_60586)
	    (diseqlist_304 (cons_304 x_60584 x_60585) (cons_304 x_60586 x_60587)))))
(assert (forall ((x_60584 Bool_387) (x_60585 list_307) (x_60586 Bool_387) (x_60587 list_307))
	(=> (diseqlist_304 x_60585 x_60587)
	    (diseqlist_304 (cons_304 x_60584 x_60585) (cons_304 x_60586 x_60587)))))
(declare-datatypes ((list_308 0)) (((nil_342 ) (cons_305 (head_609 Nat_650) (tail_612 list_308)))))
(declare-fun diseqlist_305 (list_308 list_308) Bool)
(declare-fun head_613 (Nat_650 list_308) Bool)
(declare-fun tail_616 (list_308 list_308) Bool)
(declare-fun isnil_342 (list_308) Bool)
(declare-fun iscons_305 (list_308) Bool)
(assert (forall ((x_60589 Nat_650) (x_60590 list_308))
	(head_613 x_60589 (cons_305 x_60589 x_60590))))
(assert (forall ((x_60589 Nat_650) (x_60590 list_308))
	(tail_616 x_60590 (cons_305 x_60589 x_60590))))
(assert (isnil_342 nil_342))
(assert (forall ((x_60592 Nat_650) (x_60593 list_308))
	(iscons_305 (cons_305 x_60592 x_60593))))
(assert (forall ((x_60594 Nat_650) (x_60595 list_308))
	(diseqlist_305 nil_342 (cons_305 x_60594 x_60595))))
(assert (forall ((x_60596 Nat_650) (x_60597 list_308))
	(diseqlist_305 (cons_305 x_60596 x_60597) nil_342)))
(assert (forall ((x_60598 Nat_650) (x_60599 list_308) (x_60600 Nat_650) (x_60601 list_308))
	(=> (diseqNat_650 x_60598 x_60600)
	    (diseqlist_305 (cons_305 x_60598 x_60599) (cons_305 x_60600 x_60601)))))
(assert (forall ((x_60598 Nat_650) (x_60599 list_308) (x_60600 Nat_650) (x_60601 list_308))
	(=> (diseqlist_305 x_60599 x_60601)
	    (diseqlist_305 (cons_305 x_60598 x_60599) (cons_305 x_60600 x_60601)))))
(declare-datatypes ((list_309 0)) (((nil_343 ) (cons_306 (head_610 pair_122) (tail_613 list_309)))))
(declare-fun diseqlist_306 (list_309 list_309) Bool)
(declare-fun head_614 (pair_122 list_309) Bool)
(declare-fun tail_617 (list_309 list_309) Bool)
(declare-fun isnil_343 (list_309) Bool)
(declare-fun iscons_306 (list_309) Bool)
(assert (forall ((x_60603 pair_122) (x_60604 list_309))
	(head_614 x_60603 (cons_306 x_60603 x_60604))))
(assert (forall ((x_60603 pair_122) (x_60604 list_309))
	(tail_617 x_60604 (cons_306 x_60603 x_60604))))
(assert (isnil_343 nil_343))
(assert (forall ((x_60606 pair_122) (x_60607 list_309))
	(iscons_306 (cons_306 x_60606 x_60607))))
(assert (forall ((x_60608 pair_122) (x_60609 list_309))
	(diseqlist_306 nil_343 (cons_306 x_60608 x_60609))))
(assert (forall ((x_60610 pair_122) (x_60611 list_309))
	(diseqlist_306 (cons_306 x_60610 x_60611) nil_343)))
(assert (forall ((x_60612 pair_122) (x_60613 list_309) (x_60614 pair_122) (x_60615 list_309))
	(=> (diseqpair_61 x_60612 x_60614)
	    (diseqlist_306 (cons_306 x_60612 x_60613) (cons_306 x_60614 x_60615)))))
(assert (forall ((x_60612 pair_122) (x_60613 list_309) (x_60614 pair_122) (x_60615 list_309))
	(=> (diseqlist_306 x_60613 x_60615)
	    (diseqlist_306 (cons_306 x_60612 x_60613) (cons_306 x_60614 x_60615)))))
(declare-datatypes ((list_310 0)) (((nil_344 ) (cons_307 (head_611 list_309) (tail_614 list_310)))))
(declare-fun diseqlist_307 (list_310 list_310) Bool)
(declare-fun head_615 (list_309 list_310) Bool)
(declare-fun tail_618 (list_310 list_310) Bool)
(declare-fun isnil_344 (list_310) Bool)
(declare-fun iscons_307 (list_310) Bool)
(assert (forall ((x_60617 list_309) (x_60618 list_310))
	(head_615 x_60617 (cons_307 x_60617 x_60618))))
(assert (forall ((x_60617 list_309) (x_60618 list_310))
	(tail_618 x_60618 (cons_307 x_60617 x_60618))))
(assert (isnil_344 nil_344))
(assert (forall ((x_60620 list_309) (x_60621 list_310))
	(iscons_307 (cons_307 x_60620 x_60621))))
(assert (forall ((x_60622 list_309) (x_60623 list_310))
	(diseqlist_307 nil_344 (cons_307 x_60622 x_60623))))
(assert (forall ((x_60624 list_309) (x_60625 list_310))
	(diseqlist_307 (cons_307 x_60624 x_60625) nil_344)))
(assert (forall ((x_60626 list_309) (x_60627 list_310) (x_60628 list_309) (x_60629 list_310))
	(=> (diseqlist_306 x_60626 x_60628)
	    (diseqlist_307 (cons_307 x_60626 x_60627) (cons_307 x_60628 x_60629)))))
(assert (forall ((x_60626 list_309) (x_60627 list_310) (x_60628 list_309) (x_60629 list_310))
	(=> (diseqlist_307 x_60627 x_60629)
	    (diseqlist_307 (cons_307 x_60626 x_60627) (cons_307 x_60628 x_60629)))))
(declare-datatypes ((Maybe_7 0)) (((Nothing_7 ) (Just_7 (projJust_14 Nat_650)))))
(declare-fun diseqMaybe_7 (Maybe_7 Maybe_7) Bool)
(declare-fun projJust_15 (Nat_650 Maybe_7) Bool)
(declare-fun isNothing_7 (Maybe_7) Bool)
(declare-fun isJust_7 (Maybe_7) Bool)
(assert (forall ((x_60631 Nat_650))
	(projJust_15 x_60631 (Just_7 x_60631))))
(assert (isNothing_7 Nothing_7))
(assert (forall ((x_60633 Nat_650))
	(isJust_7 (Just_7 x_60633))))
(assert (forall ((x_60634 Nat_650))
	(diseqMaybe_7 Nothing_7 (Just_7 x_60634))))
(assert (forall ((x_60635 Nat_650))
	(diseqMaybe_7 (Just_7 x_60635) Nothing_7)))
(assert (forall ((x_60636 Nat_650) (x_60637 Nat_650))
	(=> (diseqNat_650 x_60636 x_60637)
	    (diseqMaybe_7 (Just_7 x_60636) (Just_7 x_60637)))))
(declare-fun primEnumFromTo_4 (list_308 Nat_650 Nat_650) Bool)
(assert (forall ((x_60459 Nat_650) (y_2616 Nat_650))
	(=> (gt_390 x_60459 y_2616)
	    (primEnumFromTo_4 nil_342 x_60459 y_2616))))
(assert (forall ((x_60545 Nat_650) (x_60476 list_308) (x_60459 Nat_650) (y_2616 Nat_650))
	(=>	(and (le_387 x_60459 y_2616)
			(primEnumFromTo_4 x_60476 x_60545 y_2616)
			(add_413 x_60545 (S_540 Z_2345) x_60459))
		(primEnumFromTo_4 (cons_305 x_60459 x_60476) x_60459 y_2616))))
(declare-fun petersen_8 (list_309 Nat_650 list_308) Bool)
(assert (forall ((x_60546 Nat_650) (x_60478 list_309) (z_2338 Nat_650) (x_60461 list_308) (x_60460 Nat_650))
	(=>	(and (petersen_8 x_60478 x_60460 x_60461)
			(add_413 x_60546 x_60460 z_2338))
		(petersen_8 (cons_306 (pair_123 z_2338 x_60546) x_60478) x_60460 (cons_305 z_2338 x_60461)))))
(assert (forall ((x_60460 Nat_650))
	(petersen_8 nil_343 x_60460 nil_342)))
(declare-fun petersen_9 (list_309 list_308) Bool)
(assert (forall ((x_60547 Nat_650) (x_60481 list_309) (y_2618 Nat_650) (z_2339 list_308))
	(=>	(and (petersen_9 x_60481 z_2339)
			(add_413 x_60547 (S_540 Z_2345) y_2618))
		(petersen_9 (cons_306 (pair_123 y_2618 x_60547) x_60481) (cons_305 y_2618 z_2339)))))
(assert (petersen_9 nil_343 nil_342))
(declare-fun petersen_10 (list_310 Nat_650 list_309) Bool)
(assert (forall ((x_60548 Nat_650) (x_60549 Nat_650) (x_60484 list_310) (u_10 Nat_650) (v_10 Nat_650) (x_60464 list_309) (x_60463 Nat_650))
	(=>	(and (petersen_10 x_60484 x_60463 x_60464)
			(add_413 x_60548 x_60463 u_10)
			(add_413 x_60549 x_60463 v_10))
		(petersen_10 (cons_307 (cons_306 (pair_123 u_10 v_10) (cons_306 (pair_123 x_60548 x_60549) nil_343)) x_60484) x_60463 (cons_306 (pair_123 u_10 v_10) x_60464)))))
(assert (forall ((x_60463 Nat_650))
	(petersen_10 nil_344 x_60463 nil_343)))
(declare-fun index_1 (Maybe_7 list_308 Nat_650) Bool)
(assert (forall ((z_2341 Nat_650) (xs_774 list_308))
	(index_1 (Just_7 z_2341) (cons_305 z_2341 xs_774) Z_2345)))
(assert (forall ((x_60550 Nat_650) (x_60487 Maybe_7) (z_2341 Nat_650) (xs_774 list_308) (y_2620 Nat_650))
	(=>	(and (diseqNat_650 y_2620 Z_2345)
			(index_1 x_60487 xs_774 x_60550)
			(minus_408 x_60550 y_2620 (S_540 Z_2345)))
		(index_1 x_60487 (cons_305 z_2341 xs_774) y_2620))))
(assert (forall ((y_2620 Nat_650))
	(index_1 Nothing_7 nil_342 y_2620)))
(declare-fun formula_5 (list_307 list_308) Bool)
(assert (forall ((x_60491 list_307) (y_2621 Nat_650) (z_2342 list_308))
	(=>	(and (lt_407 y_2621 (S_540 (S_540 (S_540 Z_2345))))
			(formula_5 x_60491 z_2342))
		(formula_5 (cons_304 true_387 x_60491) (cons_305 y_2621 z_2342)))))
(assert (forall ((x_60493 list_307) (y_2621 Nat_650) (z_2342 list_308))
	(=>	(and (ge_387 y_2621 (S_540 (S_540 (S_540 Z_2345))))
			(formula_5 x_60493 z_2342))
		(formula_5 (cons_304 false_387 x_60493) (cons_305 y_2621 z_2342)))))
(assert (formula_5 nil_341 nil_342))
(declare-fun colouring_2 (list_307 list_308 list_309) Bool)
(assert (forall ((x_60498 list_307) (c_33 Nat_650) (u_11 Nat_650) (v_11 Nat_650) (z_2343 list_309) (a_69 list_308))
	(=>	(and (colouring_2 x_60498 a_69 z_2343)
			(index_1 (Just_7 c_33) a_69 v_11)
			(index_1 (Just_7 c_33) a_69 u_11))
		(colouring_2 (cons_304 false_387 x_60498) a_69 (cons_306 (pair_123 u_11 v_11) z_2343)))))
(assert (forall ((x_60502 list_307) (c_34 Nat_650) (c_33 Nat_650) (u_11 Nat_650) (v_11 Nat_650) (z_2343 list_309) (a_69 list_308))
	(=>	(and (diseqNat_650 c_33 c_34)
			(colouring_2 x_60502 a_69 z_2343)
			(index_1 (Just_7 c_34) a_69 v_11)
			(index_1 (Just_7 c_33) a_69 u_11))
		(colouring_2 (cons_304 true_387 x_60502) a_69 (cons_306 (pair_123 u_11 v_11) z_2343)))))
(assert (forall ((x_60506 list_307) (c_33 Nat_650) (u_11 Nat_650) (v_11 Nat_650) (z_2343 list_309) (a_69 list_308))
	(=>	(and (colouring_2 x_60506 a_69 z_2343)
			(index_1 Nothing_7 a_69 v_11)
			(index_1 (Just_7 c_33) a_69 u_11))
		(colouring_2 (cons_304 false_387 x_60506) a_69 (cons_306 (pair_123 u_11 v_11) z_2343)))))
(assert (forall ((x_60509 list_307) (u_11 Nat_650) (v_11 Nat_650) (z_2343 list_309) (a_69 list_308))
	(=>	(and (colouring_2 x_60509 a_69 z_2343)
			(index_1 Nothing_7 a_69 u_11))
		(colouring_2 (cons_304 false_387 x_60509) a_69 (cons_306 (pair_123 u_11 v_11) z_2343)))))
(assert (forall ((a_69 list_308))
	(colouring_2 nil_341 a_69 nil_343)))
(declare-fun and_388 (Bool_387 list_307) Bool)
(assert (forall ((x_60511 Bool_387) (x_60512 Bool_387) (y_2623 Bool_387) (xs_775 list_307))
	(=>	(and (and_388 x_60512 xs_775)
			(and_389 x_60511 y_2623 x_60512))
		(and_388 x_60511 (cons_304 y_2623 xs_775)))))
(assert (and_388 true_387 nil_341))
(declare-fun colouring_3 (Bool_387 list_309 list_308) Bool)
(assert (forall ((x_60514 Bool_387) (x_60515 list_307) (x_60469 list_309) (y_2624 list_308))
	(=>	(and (colouring_2 x_60515 y_2624 x_60469)
			(and_388 x_60514 x_60515))
		(colouring_3 x_60514 x_60469 y_2624))))
(declare-fun x_60470 (list_309 list_309 list_309) Bool)
(assert (forall ((x_60518 list_309) (z_2344 pair_122) (xs_776 list_309) (y_2625 list_309))
	(=> (x_60470 x_60518 xs_776 y_2625)
	    (x_60470 (cons_306 z_2344 x_60518) (cons_306 z_2344 xs_776) y_2625))))
(assert (forall ((x_60519 list_309))
	(x_60470 x_60519 nil_343 x_60519)))
(declare-fun concat_4 (list_309 list_310) Bool)
(assert (forall ((x_60520 list_309) (x_60521 list_309) (y_2626 list_309) (xs_777 list_310))
	(=>	(and (concat_4 x_60521 xs_777)
			(x_60470 x_60520 y_2626 x_60521))
		(concat_4 x_60520 (cons_307 y_2626 xs_777)))))
(assert (concat_4 nil_343 nil_344))
(declare-fun petersen_11 (list_309 Nat_650) Bool)
(assert (petersen_11 nil_343 Z_2345))
(assert (forall ((x_60552 Nat_650) (x_60551 Nat_650) (x_60525 list_309) (x_60526 list_308) (x_60527 list_309) (x_60528 list_310) (x_60529 list_309) (x_60530 list_308) (x_60531 list_309) (x_60473 Nat_650))
	(=>	(and (diseqNat_650 x_60473 Z_2345)
			(primEnumFromTo_4 x_60526 Z_2345 x_60551)
			(petersen_9 x_60527 x_60526)
			(petersen_10 x_60528 x_60473 (cons_306 (pair_123 x_60552 Z_2345) x_60527))
			(concat_4 x_60529 x_60528)
			(primEnumFromTo_4 x_60530 Z_2345 x_60473)
			(petersen_8 x_60531 x_60473 x_60530)
			(x_60470 x_60525 x_60529 x_60531)
			(minus_408 x_60552 x_60473 (S_540 Z_2345))
			(minus_408 x_60551 x_60473 (S_540 Z_2345)))
		(petersen_11 x_60525 x_60473))))
(assert (forall ((x_60554 Nat_650) (x_60553 Nat_650) (x_60541 list_307) (x_60533 list_308) (x_60534 list_309) (x_60535 list_310) (x_60536 list_309) (x_60537 list_308) (x_60538 list_309) (x_60539 list_309) (a_70 list_308))
	(=>	(and true
			true
			(formula_5 x_60541 a_70)
			(and_388 true_387 x_60541)
			(primEnumFromTo_4 x_60533 Z_2345 x_60553)
			(petersen_9 x_60534 x_60533)
			(petersen_10 x_60535 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 Z_2345))))))))))))))))))))))))))))))) (cons_306 (pair_123 x_60554 Z_2345) x_60534))
			(concat_4 x_60536 x_60535)
			(primEnumFromTo_4 x_60537 Z_2345 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 Z_2345))))))))))))))))))))))))))))))))
			(petersen_8 x_60538 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 Z_2345))))))))))))))))))))))))))))))) x_60537)
			(x_60470 x_60539 x_60536 x_60538)
			(colouring_3 true_387 x_60539 a_70)
			(minus_408 x_60554 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 Z_2345))))))))))))))))))))))))))))))) (S_540 Z_2345))
			(minus_408 x_60553 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 (S_540 Z_2345))))))))))))))))))))))))))))))) (S_540 Z_2345)))
		false)))
(check-sat)