(set-logic HORN)
(declare-datatypes ((Bool_342 0)) (((false_342 ) (true_342 ))))
(declare-fun diseqBool_157 (Bool_342 Bool_342) Bool)
(declare-fun isfalse_157 (Bool_342) Bool)
(declare-fun istrue_157 (Bool_342) Bool)
(assert (isfalse_157 false_342))
(assert (istrue_157 true_342))
(assert (diseqBool_157 false_342 true_342))
(assert (diseqBool_157 true_342 false_342))
(declare-fun and_342 (Bool_342 Bool_342 Bool_342) Bool)
(declare-fun or_349 (Bool_342 Bool_342 Bool_342) Bool)
(declare-fun hence_342 (Bool_342 Bool_342 Bool_342) Bool)
(declare-fun not_347 (Bool_342 Bool_342) Bool)
(assert (and_342 false_342 false_342 false_342))
(assert (and_342 false_342 true_342 false_342))
(assert (and_342 false_342 false_342 true_342))
(assert (and_342 true_342 true_342 true_342))
(assert (or_349 false_342 false_342 false_342))
(assert (or_349 true_342 true_342 false_342))
(assert (or_349 true_342 false_342 true_342))
(assert (or_349 true_342 true_342 true_342))
(assert (hence_342 true_342 false_342 false_342))
(assert (hence_342 false_342 true_342 false_342))
(assert (hence_342 true_342 false_342 true_342))
(assert (hence_342 true_342 true_342 true_342))
(assert (not_347 true_342 false_342))
(assert (not_347 false_342 true_342))
(declare-datatypes ((Nat_582 0)) (((Z_2055 ) (S_471 (projS_192 Nat_582)))))
(declare-fun diseqNat_582 (Nat_582 Nat_582) Bool)
(declare-fun projS_193 (Nat_582 Nat_582) Bool)
(declare-fun isZ_438 (Nat_582) Bool)
(declare-fun isS_438 (Nat_582) Bool)
(assert (forall ((x_55384 Nat_582))
	(projS_193 x_55384 (S_471 x_55384))))
(assert (isZ_438 Z_2055))
(assert (forall ((x_55386 Nat_582))
	(isS_438 (S_471 x_55386))))
(assert (forall ((x_55387 Nat_582))
	(diseqNat_582 Z_2055 (S_471 x_55387))))
(assert (forall ((x_55388 Nat_582))
	(diseqNat_582 (S_471 x_55388) Z_2055)))
(assert (forall ((x_55389 Nat_582) (x_55390 Nat_582))
	(=> (diseqNat_582 x_55389 x_55390)
	    (diseqNat_582 (S_471 x_55389) (S_471 x_55390)))))
(declare-datatypes ((list_244 0)) (((nil_274 ) (cons_244 (head_488 Nat_582) (tail_488 list_244)))))
(declare-fun diseqlist_244 (list_244 list_244) Bool)
(declare-fun head_489 (Nat_582 list_244) Bool)
(declare-fun tail_489 (list_244 list_244) Bool)
(declare-fun isnil_274 (list_244) Bool)
(declare-fun iscons_244 (list_244) Bool)
(assert (forall ((x_55392 Nat_582) (x_55393 list_244))
	(head_489 x_55392 (cons_244 x_55392 x_55393))))
(assert (forall ((x_55392 Nat_582) (x_55393 list_244))
	(tail_489 x_55393 (cons_244 x_55392 x_55393))))
(assert (isnil_274 nil_274))
(assert (forall ((x_55395 Nat_582) (x_55396 list_244))
	(iscons_244 (cons_244 x_55395 x_55396))))
(assert (forall ((x_55397 Nat_582) (x_55398 list_244))
	(diseqlist_244 nil_274 (cons_244 x_55397 x_55398))))
(assert (forall ((x_55399 Nat_582) (x_55400 list_244))
	(diseqlist_244 (cons_244 x_55399 x_55400) nil_274)))
(assert (forall ((x_55401 Nat_582) (x_55402 list_244) (x_55403 Nat_582) (x_55404 list_244))
	(=> (diseqNat_582 x_55401 x_55403)
	    (diseqlist_244 (cons_244 x_55401 x_55402) (cons_244 x_55403 x_55404)))))
(assert (forall ((x_55401 Nat_582) (x_55402 list_244) (x_55403 Nat_582) (x_55404 list_244))
	(=> (diseqlist_244 x_55402 x_55404)
	    (diseqlist_244 (cons_244 x_55401 x_55402) (cons_244 x_55403 x_55404)))))
(declare-fun barbar_7 (Bool_342 Bool_342 Bool_342) Bool)
(assert (forall ((y_2288 Bool_342))
	(barbar_7 true_342 true_342 y_2288)))
(assert (forall ((x_55363 Bool_342))
	(barbar_7 x_55363 false_342 x_55363)))
(declare-fun x_55355 (Bool_342 Nat_582 Nat_582) Bool)
(assert (forall ((x_55364 Bool_342) (y_2290 Nat_582) (x_55357 Nat_582))
	(=> (x_55355 x_55364 x_55357 y_2290)
	    (x_55355 x_55364 (S_471 x_55357) (S_471 y_2290)))))
(assert (forall ((x_55357 Nat_582))
	(x_55355 false_342 (S_471 x_55357) Z_2055)))
(assert (forall ((z_2056 Nat_582))
	(x_55355 false_342 Z_2055 (S_471 z_2056))))
(assert (x_55355 true_342 Z_2055 Z_2055))
(declare-fun elem_19 (Bool_342 Nat_582 list_244) Bool)
(assert (forall ((x_55369 Bool_342) (x_55370 Bool_342) (x_55371 Bool_342) (z_2057 Nat_582) (xs_656 list_244) (x_55358 Nat_582))
	(=>	(and (x_55355 x_55370 x_55358 z_2057)
			(elem_19 x_55371 x_55358 xs_656)
			(barbar_7 x_55369 x_55370 x_55371))
		(elem_19 x_55369 x_55358 (cons_244 z_2057 xs_656)))))
(assert (forall ((x_55358 Nat_582))
	(elem_19 false_342 x_55358 nil_274)))
(declare-fun x_55359 (list_244 list_244 list_244) Bool)
(assert (forall ((x_55375 list_244) (z_2058 Nat_582) (xs_657 list_244) (y_2292 list_244))
	(=> (x_55359 x_55375 xs_657 y_2292)
	    (x_55359 (cons_244 z_2058 x_55375) (cons_244 z_2058 xs_657) y_2292))))
(assert (forall ((x_55376 list_244))
	(x_55359 x_55376 nil_274 x_55376)))
(assert (forall ((x_55377 list_244) (x_55361 Nat_582) (y_2293 list_244) (z_2059 list_244))
	(=>	(and true
			(elem_19 true_342 x_55361 z_2059)
			(x_55359 x_55377 y_2293 z_2059)
			(elem_19 false_342 x_55361 x_55377))
		false)))
(check-sat)
