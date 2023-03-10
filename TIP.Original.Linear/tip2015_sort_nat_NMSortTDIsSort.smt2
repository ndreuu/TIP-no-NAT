(set-logic HORN)
(declare-datatypes ((Bool_238 0)) (((false_238 ) (true_238 ))))
(declare-fun diseqBool_110 (Bool_238 Bool_238) Bool)
(declare-fun isfalse_110 (Bool_238) Bool)
(declare-fun istrue_110 (Bool_238) Bool)
(assert (isfalse_110 false_238))
(assert (istrue_110 true_238))
(assert (diseqBool_110 false_238 true_238))
(assert (diseqBool_110 true_238 false_238))
(declare-fun and_238 (Bool_238 Bool_238 Bool_238) Bool)
(declare-fun or_243 (Bool_238 Bool_238 Bool_238) Bool)
(declare-fun hence_238 (Bool_238 Bool_238 Bool_238) Bool)
(declare-fun not_241 (Bool_238 Bool_238) Bool)
(assert (and_238 false_238 false_238 false_238))
(assert (and_238 false_238 true_238 false_238))
(assert (and_238 false_238 false_238 true_238))
(assert (and_238 true_238 true_238 true_238))
(assert (or_243 false_238 false_238 false_238))
(assert (or_243 true_238 true_238 false_238))
(assert (or_243 true_238 false_238 true_238))
(assert (or_243 true_238 true_238 true_238))
(assert (hence_238 true_238 false_238 false_238))
(assert (hence_238 false_238 true_238 false_238))
(assert (hence_238 true_238 false_238 true_238))
(assert (hence_238 true_238 true_238 true_238))
(assert (not_241 true_238 false_238))
(assert (not_241 false_238 true_238))
(declare-datatypes ((Nat_404 0)) (((zero_95 ) (succ_93 (p_273 Nat_404)))))
(declare-fun diseqNat_404 (Nat_404 Nat_404) Bool)
(declare-fun p_274 (Nat_404 Nat_404) Bool)
(declare-fun iszero_93 (Nat_404) Bool)
(declare-fun issucc_93 (Nat_404) Bool)
(assert (forall ((x_45331 Nat_404))
	(p_274 x_45331 (succ_93 x_45331))))
(assert (iszero_93 zero_95))
(assert (forall ((x_45333 Nat_404))
	(issucc_93 (succ_93 x_45333))))
(assert (forall ((x_45334 Nat_404))
	(diseqNat_404 zero_95 (succ_93 x_45334))))
(assert (forall ((x_45335 Nat_404))
	(diseqNat_404 (succ_93 x_45335) zero_95)))
(assert (forall ((x_45336 Nat_404) (x_45337 Nat_404))
	(=> (diseqNat_404 x_45336 x_45337)
	    (diseqNat_404 (succ_93 x_45336) (succ_93 x_45337)))))
(declare-datatypes ((list_171 0)) (((nil_196 ) (cons_171 (head_342 Nat_404) (tail_342 list_171)))))
(declare-fun diseqlist_171 (list_171 list_171) Bool)
(declare-fun head_343 (Nat_404 list_171) Bool)
(declare-fun tail_343 (list_171 list_171) Bool)
(declare-fun isnil_196 (list_171) Bool)
(declare-fun iscons_171 (list_171) Bool)
(assert (forall ((x_45339 Nat_404) (x_45340 list_171))
	(head_343 x_45339 (cons_171 x_45339 x_45340))))
(assert (forall ((x_45339 Nat_404) (x_45340 list_171))
	(tail_343 x_45340 (cons_171 x_45339 x_45340))))
(assert (isnil_196 nil_196))
(assert (forall ((x_45342 Nat_404) (x_45343 list_171))
	(iscons_171 (cons_171 x_45342 x_45343))))
(assert (forall ((x_45344 Nat_404) (x_45345 list_171))
	(diseqlist_171 nil_196 (cons_171 x_45344 x_45345))))
(assert (forall ((x_45346 Nat_404) (x_45347 list_171))
	(diseqlist_171 (cons_171 x_45346 x_45347) nil_196)))
(assert (forall ((x_45348 Nat_404) (x_45349 list_171) (x_45350 Nat_404) (x_45351 list_171))
	(=> (diseqNat_404 x_45348 x_45350)
	    (diseqlist_171 (cons_171 x_45348 x_45349) (cons_171 x_45350 x_45351)))))
(assert (forall ((x_45348 Nat_404) (x_45349 list_171) (x_45350 Nat_404) (x_45351 list_171))
	(=> (diseqlist_171 x_45349 x_45351)
	    (diseqlist_171 (cons_171 x_45348 x_45349) (cons_171 x_45350 x_45351)))))
(declare-fun take_39 (list_171 Nat_404 list_171) Bool)
(assert (forall ((x_45260 list_171) (z_1417 Nat_404) (xs_462 list_171) (z_1416 Nat_404))
	(=> (take_39 x_45260 z_1416 xs_462)
	    (take_39 (cons_171 z_1417 x_45260) (succ_93 z_1416) (cons_171 z_1417 xs_462)))))
(assert (forall ((z_1416 Nat_404))
	(take_39 nil_196 (succ_93 z_1416) nil_196)))
(assert (forall ((y_1566 list_171))
	(take_39 nil_196 zero_95 y_1566)))
(declare-fun plus_95 (Nat_404 Nat_404 Nat_404) Bool)
(assert (forall ((x_45264 Nat_404) (z_1418 Nat_404) (y_1567 Nat_404))
	(=> (plus_95 x_45264 z_1418 y_1567)
	    (plus_95 (succ_93 x_45264) (succ_93 z_1418) y_1567))))
(assert (forall ((x_45265 Nat_404))
	(plus_95 x_45265 zero_95 x_45265)))
(declare-fun minus_252 (Nat_404 Nat_404 Nat_404) Bool)
(assert (forall ((x_45266 Nat_404) (y_1569 Nat_404) (z_1419 Nat_404))
	(=> (minus_252 x_45266 z_1419 y_1569)
	    (minus_252 x_45266 (succ_93 z_1419) (succ_93 y_1569)))))
(assert (forall ((z_1419 Nat_404))
	(minus_252 zero_95 (succ_93 z_1419) zero_95)))
(assert (forall ((y_1568 Nat_404))
	(minus_252 zero_95 zero_95 y_1568)))
(declare-fun nmsorttdhalf_2 (Nat_404 Nat_404) Bool)
(assert (nmsorttdhalf_2 zero_95 (succ_93 zero_95)))
(assert (forall ((x_45271 Nat_404) (x_45272 Nat_404) (x_45273 Nat_404) (y_1570 Nat_404))
	(=>	(and (diseqNat_404 (succ_93 y_1570) (succ_93 zero_95))
			(minus_252 x_45272 (succ_93 y_1570) (succ_93 (succ_93 zero_95)))
			(nmsorttdhalf_2 x_45273 x_45272)
			(plus_95 x_45271 (succ_93 zero_95) x_45273))
		(nmsorttdhalf_2 x_45271 (succ_93 y_1570)))))
(assert (nmsorttdhalf_2 zero_95 (succ_93 zero_95)))
(assert (=> (diseqNat_404 zero_95 (succ_93 zero_95))
	    (nmsorttdhalf_2 zero_95 zero_95)))
(declare-fun leq_35 (Bool_238 Nat_404 Nat_404) Bool)
(assert (forall ((x_45277 Bool_238) (x_45243 Nat_404) (z_1420 Nat_404))
	(=> (leq_35 x_45277 z_1420 x_45243)
	    (leq_35 x_45277 (succ_93 z_1420) (succ_93 x_45243)))))
(assert (forall ((z_1420 Nat_404))
	(leq_35 false_238 (succ_93 z_1420) zero_95)))
(assert (forall ((y_1571 Nat_404))
	(leq_35 true_238 zero_95 y_1571)))
(declare-fun lmerge_8 (list_171 list_171 list_171) Bool)
(assert (forall ((x_45283 list_171) (x_45246 Nat_404) (x_45247 list_171) (z_1421 Nat_404) (x_45245 list_171))
	(=>	(and (lmerge_8 x_45283 x_45245 (cons_171 x_45246 x_45247))
			(leq_35 true_238 z_1421 x_45246))
		(lmerge_8 (cons_171 z_1421 x_45283) (cons_171 z_1421 x_45245) (cons_171 x_45246 x_45247)))))
(assert (forall ((x_45286 list_171) (x_45246 Nat_404) (x_45247 list_171) (z_1421 Nat_404) (x_45245 list_171))
	(=>	(and (lmerge_8 x_45286 (cons_171 z_1421 x_45245) x_45247)
			(leq_35 false_238 z_1421 x_45246))
		(lmerge_8 (cons_171 x_45246 x_45286) (cons_171 z_1421 x_45245) (cons_171 x_45246 x_45247)))))
(assert (forall ((z_1421 Nat_404) (x_45245 list_171))
	(lmerge_8 (cons_171 z_1421 x_45245) (cons_171 z_1421 x_45245) nil_196)))
(assert (forall ((x_45288 list_171))
	(lmerge_8 x_45288 nil_196 x_45288)))
(declare-fun length_27 (Nat_404 list_171) Bool)
(assert (forall ((x_45289 Nat_404) (x_45290 Nat_404) (y_1573 Nat_404) (l_29 list_171))
	(=>	(and (length_27 x_45290 l_29)
			(plus_95 x_45289 (succ_93 zero_95) x_45290))
		(length_27 x_45289 (cons_171 y_1573 l_29)))))
(assert (length_27 zero_95 nil_196))
(declare-fun insert_21 (list_171 Nat_404 list_171) Bool)
(assert (forall ((z_1422 Nat_404) (xs_463 list_171) (x_45249 Nat_404))
	(=> (leq_35 true_238 x_45249 z_1422)
	    (insert_21 (cons_171 x_45249 (cons_171 z_1422 xs_463)) x_45249 (cons_171 z_1422 xs_463)))))
(assert (forall ((x_45297 list_171) (z_1422 Nat_404) (xs_463 list_171) (x_45249 Nat_404))
	(=>	(and (insert_21 x_45297 x_45249 xs_463)
			(leq_35 false_238 x_45249 z_1422))
		(insert_21 (cons_171 z_1422 x_45297) x_45249 (cons_171 z_1422 xs_463)))))
(assert (forall ((x_45249 Nat_404))
	(insert_21 (cons_171 x_45249 nil_196) x_45249 nil_196)))
(declare-fun isort_21 (list_171 list_171) Bool)
(assert (forall ((x_45299 list_171) (x_45300 list_171) (y_1575 Nat_404) (xs_464 list_171))
	(=>	(and (isort_21 x_45300 xs_464)
			(insert_21 x_45299 y_1575 x_45300))
		(isort_21 x_45299 (cons_171 y_1575 xs_464)))))
(assert (isort_21 nil_196 nil_196))
(declare-fun drop_41 (list_171 Nat_404 list_171) Bool)
(assert (forall ((x_45303 list_171) (z_1424 Nat_404) (xs_465 list_171) (z_1423 Nat_404))
	(=> (drop_41 x_45303 z_1423 xs_465)
	    (drop_41 x_45303 (succ_93 z_1423) (cons_171 z_1424 xs_465)))))
(assert (forall ((z_1423 Nat_404))
	(drop_41 nil_196 (succ_93 z_1423) nil_196)))
(assert (forall ((x_45306 list_171))
	(drop_41 x_45306 zero_95 x_45306)))
(declare-fun nmsorttd_2 (list_171 list_171) Bool)
(assert (forall ((x_45309 list_171) (x_45310 list_171) (x_45311 list_171) (x_45312 list_171) (x_45313 list_171) (x_45307 Nat_404) (k_9 Nat_404) (x_45253 Nat_404) (x_45254 list_171) (y_1577 Nat_404))
	(=>	(and (take_39 x_45310 k_9 (cons_171 y_1577 (cons_171 x_45253 x_45254)))
			(nmsorttd_2 x_45311 x_45310)
			(drop_41 x_45312 k_9 (cons_171 y_1577 (cons_171 x_45253 x_45254)))
			(nmsorttd_2 x_45313 x_45312)
			(lmerge_8 x_45309 x_45311 x_45313)
			(length_27 x_45307 (cons_171 y_1577 (cons_171 x_45253 x_45254)))
			(nmsorttdhalf_2 k_9 x_45307))
		(nmsorttd_2 x_45309 (cons_171 y_1577 (cons_171 x_45253 x_45254))))))
(assert (forall ((y_1577 Nat_404))
	(nmsorttd_2 (cons_171 y_1577 nil_196) (cons_171 y_1577 nil_196))))
(assert (nmsorttd_2 nil_196 nil_196))
(assert (forall ((x_45317 Nat_404) (x_45318 Nat_404) (x_45319 Nat_404) (x_45320 Nat_404) (x_45255 Nat_404) (y_1578 Nat_404) (z_1426 Nat_404))
	(=>	(and true
			(diseqNat_404 x_45318 x_45320)
			(plus_95 x_45317 y_1578 z_1426)
			(plus_95 x_45318 x_45255 x_45317)
			(plus_95 x_45319 x_45255 y_1578)
			(plus_95 x_45320 x_45319 z_1426))
		false)))
(assert (forall ((x_45321 Nat_404) (x_45322 Nat_404) (x_45256 Nat_404) (y_1579 Nat_404))
	(=>	(and true
			(diseqNat_404 x_45321 x_45322)
			(plus_95 x_45321 x_45256 y_1579)
			(plus_95 x_45322 y_1579 x_45256))
		false)))
(assert (forall ((x_45323 Nat_404) (x_45257 Nat_404))
	(=>	(and true
			(diseqNat_404 x_45323 x_45257)
			(plus_95 x_45323 x_45257 zero_95))
		false)))
(assert (forall ((x_45324 Nat_404) (x_45258 Nat_404))
	(=>	(and true
			(diseqNat_404 x_45324 x_45258)
			(plus_95 x_45324 zero_95 x_45258))
		false)))
(assert (forall ((x_45325 list_171) (x_45326 list_171) (xs_466 list_171))
	(=>	(and true
			(diseqlist_171 x_45325 x_45326)
			(nmsorttd_2 x_45325 xs_466)
			(isort_21 x_45326 xs_466))
		false)))
(check-sat)
