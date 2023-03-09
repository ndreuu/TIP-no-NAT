(set-logic HORN)
(declare-datatypes ((Nat_642 0)) (((S_531 (projS_234 Nat_642)) (Z_2291 ))))
(declare-fun diseqNat_642 (Nat_642 Nat_642) Bool)
(declare-fun projS_235 (Nat_642 Nat_642) Bool)
(declare-fun isS_498 (Nat_642) Bool)
(declare-fun isZ_498 (Nat_642) Bool)
(assert (forall ((x_59370 Nat_642))
	(projS_235 x_59370 (S_531 x_59370))))
(assert (forall ((x_59373 Nat_642))
	(isS_498 (S_531 x_59373))))
(assert (isZ_498 Z_2291))
(assert (forall ((x_59374 Nat_642))
	(diseqNat_642 (S_531 x_59374) Z_2291)))
(assert (forall ((x_59375 Nat_642))
	(diseqNat_642 Z_2291 (S_531 x_59375))))
(assert (forall ((x_59376 Nat_642) (x_59377 Nat_642))
	(=> (diseqNat_642 x_59376 x_59377)
	    (diseqNat_642 (S_531 x_59376) (S_531 x_59377)))))
(declare-datatypes ((list_298 0)) (((nil_331 ) (cons_296 (head_592 Nat_642) (tail_594 list_298)))))
(declare-fun diseqlist_296 (list_298 list_298) Bool)
(declare-fun head_593 (Nat_642 list_298) Bool)
(declare-fun tail_595 (list_298 list_298) Bool)
(declare-fun isnil_331 (list_298) Bool)
(declare-fun iscons_296 (list_298) Bool)
(assert (forall ((x_59379 Nat_642) (x_59380 list_298))
	(head_593 x_59379 (cons_296 x_59379 x_59380))))
(assert (forall ((x_59379 Nat_642) (x_59380 list_298))
	(tail_595 x_59380 (cons_296 x_59379 x_59380))))
(assert (isnil_331 nil_331))
(assert (forall ((x_59382 Nat_642) (x_59383 list_298))
	(iscons_296 (cons_296 x_59382 x_59383))))
(assert (forall ((x_59384 Nat_642) (x_59385 list_298))
	(diseqlist_296 nil_331 (cons_296 x_59384 x_59385))))
(assert (forall ((x_59386 Nat_642) (x_59387 list_298))
	(diseqlist_296 (cons_296 x_59386 x_59387) nil_331)))
(assert (forall ((x_59388 Nat_642) (x_59389 list_298) (x_59390 Nat_642) (x_59391 list_298))
	(=> (diseqNat_642 x_59388 x_59390)
	    (diseqlist_296 (cons_296 x_59388 x_59389) (cons_296 x_59390 x_59391)))))
(assert (forall ((x_59388 Nat_642) (x_59389 list_298) (x_59390 Nat_642) (x_59391 list_298))
	(=> (diseqlist_296 x_59389 x_59391)
	    (diseqlist_296 (cons_296 x_59388 x_59389) (cons_296 x_59390 x_59391)))))
(declare-fun drop_59 (list_298 Nat_642 list_298) Bool)
(assert (forall ((x_59363 list_298))
	(drop_59 x_59363 Z_2291 x_59363)))
(assert (forall ((x_59364 list_298) (x_59361 Nat_642) (x_59362 list_298) (z_2292 Nat_642))
	(=> (drop_59 x_59364 z_2292 x_59362)
	    (drop_59 x_59364 (S_531 z_2292) (cons_296 x_59361 x_59362)))))
(assert (forall ((z_2292 Nat_642))
	(drop_59 nil_331 (S_531 z_2292) nil_331)))
(assert (forall ((x_59367 list_298) (n_111 Nat_642) (m_43 Nat_642) (xs_754 list_298))
	(=>	(and true
			(diseqNat_642 n_111 m_43)
			(drop_59 x_59367 n_111 xs_754)
			(drop_59 x_59367 m_43 xs_754))
		false)))
(check-sat)
