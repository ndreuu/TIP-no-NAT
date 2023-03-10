(set-logic HORN)
(declare-datatypes ((Bool_283 0)) (((false_283 ) (true_283 ))))
(declare-fun diseqBool_134 (Bool_283 Bool_283) Bool)
(declare-fun isfalse_134 (Bool_283) Bool)
(declare-fun istrue_134 (Bool_283) Bool)
(assert (isfalse_134 false_283))
(assert (istrue_134 true_283))
(assert (diseqBool_134 false_283 true_283))
(assert (diseqBool_134 true_283 false_283))
(declare-fun and_283 (Bool_283 Bool_283 Bool_283) Bool)
(declare-fun or_289 (Bool_283 Bool_283 Bool_283) Bool)
(declare-fun hence_283 (Bool_283 Bool_283 Bool_283) Bool)
(declare-fun not_287 (Bool_283 Bool_283) Bool)
(assert (and_283 false_283 false_283 false_283))
(assert (and_283 false_283 true_283 false_283))
(assert (and_283 false_283 false_283 true_283))
(assert (and_283 true_283 true_283 true_283))
(assert (or_289 false_283 false_283 false_283))
(assert (or_289 true_283 true_283 false_283))
(assert (or_289 true_283 false_283 true_283))
(assert (or_289 true_283 true_283 true_283))
(assert (hence_283 true_283 false_283 false_283))
(assert (hence_283 false_283 true_283 false_283))
(assert (hence_283 true_283 false_283 true_283))
(assert (hence_283 true_283 true_283 true_283))
(assert (not_287 true_283 false_283))
(assert (not_287 false_283 true_283))
(declare-datatypes ((Nat_479 0)) (((zero_126 ) (succ_123 (p_348 Nat_479)))))
(declare-fun diseqNat_479 (Nat_479 Nat_479) Bool)
(declare-fun p_349 (Nat_479 Nat_479) Bool)
(declare-fun iszero_123 (Nat_479) Bool)
(declare-fun issucc_123 (Nat_479) Bool)
(assert (forall ((x_51383 Nat_479))
	(p_349 x_51383 (succ_123 x_51383))))
(assert (iszero_123 zero_126))
(assert (forall ((x_51385 Nat_479))
	(issucc_123 (succ_123 x_51385))))
(assert (forall ((x_51386 Nat_479))
	(diseqNat_479 zero_126 (succ_123 x_51386))))
(assert (forall ((x_51387 Nat_479))
	(diseqNat_479 (succ_123 x_51387) zero_126)))
(assert (forall ((x_51388 Nat_479) (x_51389 Nat_479))
	(=> (diseqNat_479 x_51388 x_51389)
	    (diseqNat_479 (succ_123 x_51388) (succ_123 x_51389)))))
(declare-datatypes ((list_202 0)) (((nil_230 ) (cons_202 (head_404 Nat_479) (tail_404 list_202)))))
(declare-fun diseqlist_202 (list_202 list_202) Bool)
(declare-fun head_405 (Nat_479 list_202) Bool)
(declare-fun tail_405 (list_202 list_202) Bool)
(declare-fun isnil_230 (list_202) Bool)
(declare-fun iscons_202 (list_202) Bool)
(assert (forall ((x_51391 Nat_479) (x_51392 list_202))
	(head_405 x_51391 (cons_202 x_51391 x_51392))))
(assert (forall ((x_51391 Nat_479) (x_51392 list_202))
	(tail_405 x_51392 (cons_202 x_51391 x_51392))))
(assert (isnil_230 nil_230))
(assert (forall ((x_51394 Nat_479) (x_51395 list_202))
	(iscons_202 (cons_202 x_51394 x_51395))))
(assert (forall ((x_51396 Nat_479) (x_51397 list_202))
	(diseqlist_202 nil_230 (cons_202 x_51396 x_51397))))
(assert (forall ((x_51398 Nat_479) (x_51399 list_202))
	(diseqlist_202 (cons_202 x_51398 x_51399) nil_230)))
(assert (forall ((x_51400 Nat_479) (x_51401 list_202) (x_51402 Nat_479) (x_51403 list_202))
	(=> (diseqNat_479 x_51400 x_51402)
	    (diseqlist_202 (cons_202 x_51400 x_51401) (cons_202 x_51402 x_51403)))))
(assert (forall ((x_51400 Nat_479) (x_51401 list_202) (x_51402 Nat_479) (x_51403 list_202))
	(=> (diseqlist_202 x_51401 x_51403)
	    (diseqlist_202 (cons_202 x_51400 x_51401) (cons_202 x_51402 x_51403)))))
(declare-datatypes ((pair_84 0)) (((pair_85 (projpair_168 list_202) (projpair_169 list_202)))))
(declare-fun diseqpair_42 (pair_84 pair_84) Bool)
(declare-fun projpair_170 (list_202 pair_84) Bool)
(declare-fun projpair_171 (list_202 pair_84) Bool)
(declare-fun ispair_42 (pair_84) Bool)
(assert (forall ((x_51404 list_202) (x_51405 list_202))
	(projpair_170 x_51404 (pair_85 x_51404 x_51405))))
(assert (forall ((x_51404 list_202) (x_51405 list_202))
	(projpair_171 x_51405 (pair_85 x_51404 x_51405))))
(assert (forall ((x_51407 list_202) (x_51408 list_202))
	(ispair_42 (pair_85 x_51407 x_51408))))
(assert (forall ((x_51409 list_202) (x_51410 list_202) (x_51411 list_202) (x_51412 list_202))
	(=> (diseqlist_202 x_51409 x_51411)
	    (diseqpair_42 (pair_85 x_51409 x_51410) (pair_85 x_51411 x_51412)))))
(assert (forall ((x_51409 list_202) (x_51410 list_202) (x_51411 list_202) (x_51412 list_202))
	(=> (diseqlist_202 x_51410 x_51412)
	    (diseqpair_42 (pair_85 x_51409 x_51410) (pair_85 x_51411 x_51412)))))
(declare-fun take_44 (list_202 Nat_479 list_202) Bool)
(assert (forall ((x_51294 list_202) (z_1707 Nat_479) (xs_548 list_202) (z_1706 Nat_479))
	(=> (take_44 x_51294 z_1706 xs_548)
	    (take_44 (cons_202 z_1707 x_51294) (succ_123 z_1706) (cons_202 z_1707 xs_548)))))
(assert (forall ((z_1706 Nat_479))
	(take_44 nil_230 (succ_123 z_1706) nil_230)))
(assert (forall ((y_1910 list_202))
	(take_44 nil_230 zero_126 y_1910)))
(declare-fun plus_120 (Nat_479 Nat_479 Nat_479) Bool)
(assert (forall ((x_51298 Nat_479) (z_1708 Nat_479) (y_1911 Nat_479))
	(=> (plus_120 x_51298 z_1708 y_1911)
	    (plus_120 (succ_123 x_51298) (succ_123 z_1708) y_1911))))
(assert (forall ((x_51299 Nat_479))
	(plus_120 x_51299 zero_126 x_51299)))
(declare-fun minus_300 (Nat_479 Nat_479 Nat_479) Bool)
(assert (forall ((x_51300 Nat_479) (y_1913 Nat_479) (z_1709 Nat_479))
	(=> (minus_300 x_51300 z_1709 y_1913)
	    (minus_300 x_51300 (succ_123 z_1709) (succ_123 y_1913)))))
(assert (forall ((z_1709 Nat_479))
	(minus_300 zero_126 (succ_123 z_1709) zero_126)))
(assert (forall ((y_1912 Nat_479))
	(minus_300 zero_126 zero_126 y_1912)))
(declare-fun third_10 (Nat_479 Nat_479) Bool)
(assert (third_10 zero_126 (succ_123 (succ_123 zero_126))))
(assert (=> (diseqNat_479 (succ_123 zero_126) (succ_123 (succ_123 zero_126)))
	    (third_10 zero_126 (succ_123 zero_126))))
(assert (third_10 zero_126 (succ_123 (succ_123 zero_126))))
(assert (forall ((x_51307 Nat_479) (x_51308 Nat_479) (x_51309 Nat_479) (y_1914 Nat_479))
	(=>	(and (diseqNat_479 (succ_123 y_1914) (succ_123 (succ_123 zero_126)))
			(diseqNat_479 (succ_123 y_1914) (succ_123 zero_126))
			(minus_300 x_51308 (succ_123 y_1914) (succ_123 (succ_123 (succ_123 zero_126))))
			(third_10 x_51309 x_51308)
			(plus_120 x_51307 (succ_123 zero_126) x_51309))
		(third_10 x_51307 (succ_123 y_1914)))))
(assert (third_10 zero_126 (succ_123 (succ_123 zero_126))))
(assert (=> (diseqNat_479 (succ_123 zero_126) (succ_123 (succ_123 zero_126)))
	    (third_10 zero_126 (succ_123 zero_126))))
(assert (third_10 zero_126 (succ_123 (succ_123 zero_126))))
(assert (=>	(and (diseqNat_479 zero_126 (succ_123 (succ_123 zero_126)))
			(diseqNat_479 zero_126 (succ_123 zero_126)))
		(third_10 zero_126 zero_126)))
(declare-fun leq_48 (Bool_283 Nat_479 Nat_479) Bool)
(assert (forall ((x_51315 Bool_283) (x_51274 Nat_479) (z_1710 Nat_479))
	(=> (leq_48 x_51315 z_1710 x_51274)
	    (leq_48 x_51315 (succ_123 z_1710) (succ_123 x_51274)))))
(assert (forall ((z_1710 Nat_479))
	(leq_48 false_283 (succ_123 z_1710) zero_126)))
(assert (forall ((y_1915 Nat_479))
	(leq_48 true_283 zero_126 y_1915)))
(declare-fun ordered_22 (Bool_283 list_202) Bool)
(assert (forall ((x_51319 Bool_283) (x_51320 Bool_283) (x_51321 Bool_283) (y_1917 Nat_479) (xs_549 list_202) (y_1916 Nat_479))
	(=>	(and (leq_48 x_51320 y_1916 y_1917)
			(ordered_22 x_51321 (cons_202 y_1917 xs_549))
			(and_283 x_51319 x_51320 x_51321))
		(ordered_22 x_51319 (cons_202 y_1916 (cons_202 y_1917 xs_549))))))
(assert (forall ((y_1916 Nat_479))
	(ordered_22 true_283 (cons_202 y_1916 nil_230))))
(assert (ordered_22 true_283 nil_230))
(declare-fun sort_30 (list_202 Nat_479 Nat_479) Bool)
(assert (forall ((x_51276 Nat_479) (y_1918 Nat_479))
	(=> (leq_48 true_283 x_51276 y_1918)
	    (sort_30 (cons_202 x_51276 (cons_202 y_1918 nil_230)) x_51276 y_1918))))
(assert (forall ((x_51276 Nat_479) (y_1918 Nat_479))
	(=> (leq_48 false_283 x_51276 y_1918)
	    (sort_30 (cons_202 y_1918 (cons_202 x_51276 nil_230)) x_51276 y_1918))))
(declare-fun length_34 (Nat_479 list_202) Bool)
(assert (forall ((x_51328 Nat_479) (x_51329 Nat_479) (y_1919 Nat_479) (l_36 list_202))
	(=>	(and (length_34 x_51329 l_36)
			(plus_120 x_51328 (succ_123 zero_126) x_51329))
		(length_34 x_51328 (cons_202 y_1919 l_36)))))
(assert (length_34 zero_126 nil_230))
(declare-fun drop_46 (list_202 Nat_479 list_202) Bool)
(assert (forall ((x_51332 list_202) (z_1713 Nat_479) (xs_550 list_202) (z_1712 Nat_479))
	(=> (drop_46 x_51332 z_1712 xs_550)
	    (drop_46 x_51332 (succ_123 z_1712) (cons_202 z_1713 xs_550)))))
(assert (forall ((z_1712 Nat_479))
	(drop_46 nil_230 (succ_123 z_1712) nil_230)))
(assert (forall ((x_51335 list_202))
	(drop_46 x_51335 zero_126 x_51335)))
(declare-fun splitAt_21 (pair_84 Nat_479 list_202) Bool)
(assert (forall ((x_51337 list_202) (x_51338 list_202) (x_51279 Nat_479) (y_1921 list_202))
	(=>	(and (take_44 x_51337 x_51279 y_1921)
			(drop_46 x_51338 x_51279 y_1921))
		(splitAt_21 (pair_85 x_51337 x_51338) x_51279 y_1921))))
(declare-fun x_51280 (list_202 list_202 list_202) Bool)
(assert (forall ((x_51340 list_202) (z_1714 Nat_479) (xs_551 list_202) (y_1922 list_202))
	(=> (x_51280 x_51340 xs_551 y_1922)
	    (x_51280 (cons_202 z_1714 x_51340) (cons_202 z_1714 xs_551) y_1922))))
(assert (forall ((x_51341 list_202))
	(x_51280 x_51341 nil_230 x_51341)))
(declare-fun reverse_11 (list_202 list_202) Bool)
(assert (forall ((x_51342 list_202) (x_51343 list_202) (y_1923 Nat_479) (xs_552 list_202))
	(=>	(and (reverse_11 x_51343 xs_552)
			(x_51280 x_51342 x_51343 (cons_202 y_1923 nil_230)))
		(reverse_11 x_51342 (cons_202 y_1923 xs_552)))))
(assert (reverse_11 nil_230 nil_230))
(declare-fun nstoogesort_30 (list_202 list_202) Bool)
(declare-fun nstoogesort_31 (list_202 list_202) Bool)
(declare-fun nstoogesort_32 (list_202 list_202) Bool)
(assert (forall ((x_51350 list_202) (x_51351 list_202) (x_51352 list_202) (x_51346 Nat_479) (x_51347 Nat_479) (x_51348 list_202) (ys_178 list_202) (zs_60 list_202) (x_51283 list_202))
	(=>	(and (nstoogesort_31 x_51351 zs_60)
			(reverse_11 x_51352 ys_178)
			(x_51280 x_51350 x_51351 x_51352)
			(length_34 x_51346 x_51283)
			(third_10 x_51347 x_51346)
			(reverse_11 x_51348 x_51283)
			(splitAt_21 (pair_85 ys_178 zs_60) x_51347 x_51348))
		(nstoogesort_30 x_51350 x_51283))))
(assert (forall ((x_51354 list_202) (x_51355 list_202) (x_51356 list_202) (x_51286 Nat_479) (x_51287 list_202) (y_1925 Nat_479) (y_1924 Nat_479))
	(=>	(and (nstoogesort_30 x_51355 (cons_202 y_1924 (cons_202 y_1925 (cons_202 x_51286 x_51287))))
			(nstoogesort_32 x_51356 x_51355)
			(nstoogesort_30 x_51354 x_51356))
		(nstoogesort_31 x_51354 (cons_202 y_1924 (cons_202 y_1925 (cons_202 x_51286 x_51287)))))))
(assert (forall ((x_51358 list_202) (y_1925 Nat_479) (y_1924 Nat_479))
	(=> (sort_30 x_51358 y_1924 y_1925)
	    (nstoogesort_31 x_51358 (cons_202 y_1924 (cons_202 y_1925 nil_230))))))
(assert (forall ((y_1924 Nat_479))
	(nstoogesort_31 (cons_202 y_1924 nil_230) (cons_202 y_1924 nil_230))))
(assert (nstoogesort_31 nil_230 nil_230))
(assert (forall ((x_51365 list_202) (x_51366 list_202) (x_51362 Nat_479) (x_51363 Nat_479) (ys_179 list_202) (zs_61 list_202) (x_51288 list_202))
	(=>	(and (nstoogesort_31 x_51366 zs_61)
			(x_51280 x_51365 ys_179 x_51366)
			(length_34 x_51362 x_51288)
			(third_10 x_51363 x_51362)
			(splitAt_21 (pair_85 ys_179 zs_61) x_51363 x_51288))
		(nstoogesort_32 x_51365 x_51288))))
(assert (forall ((x_51368 Nat_479) (x_51369 Nat_479) (x_51370 Nat_479) (x_51371 Nat_479) (x_51289 Nat_479) (y_1926 Nat_479) (z_1716 Nat_479))
	(=>	(and true
			(diseqNat_479 x_51369 x_51371)
			(plus_120 x_51368 y_1926 z_1716)
			(plus_120 x_51369 x_51289 x_51368)
			(plus_120 x_51370 x_51289 y_1926)
			(plus_120 x_51371 x_51370 z_1716))
		false)))
(assert (forall ((x_51372 Nat_479) (x_51373 Nat_479) (x_51290 Nat_479) (y_1927 Nat_479))
	(=>	(and true
			(diseqNat_479 x_51372 x_51373)
			(plus_120 x_51372 x_51290 y_1927)
			(plus_120 x_51373 y_1927 x_51290))
		false)))
(assert (forall ((x_51374 Nat_479) (x_51291 Nat_479))
	(=>	(and true
			(diseqNat_479 x_51374 x_51291)
			(plus_120 x_51374 x_51291 zero_126))
		false)))
(assert (forall ((x_51375 Nat_479) (x_51292 Nat_479))
	(=>	(and true
			(diseqNat_479 x_51375 x_51292)
			(plus_120 x_51375 zero_126 x_51292))
		false)))
(assert (forall ((x_51376 list_202) (xs_553 list_202))
	(=>	(and true
			(nstoogesort_31 x_51376 xs_553)
			(ordered_22 false_283 x_51376))
		false)))
(check-sat)
