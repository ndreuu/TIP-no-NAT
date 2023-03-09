(set-logic HORN)
(declare-datatypes ((Bool_360 0)) (((false_360 ) (true_360 ))))
(declare-fun diseqBool_164 (Bool_360 Bool_360) Bool)
(declare-fun isfalse_164 (Bool_360) Bool)
(declare-fun istrue_164 (Bool_360) Bool)
(assert (isfalse_164 false_360))
(assert (istrue_164 true_360))
(assert (diseqBool_164 false_360 true_360))
(assert (diseqBool_164 true_360 false_360))
(declare-fun and_360 (Bool_360 Bool_360 Bool_360) Bool)
(declare-fun or_367 (Bool_360 Bool_360 Bool_360) Bool)
(declare-fun hence_360 (Bool_360 Bool_360 Bool_360) Bool)
(declare-fun not_365 (Bool_360 Bool_360) Bool)
(assert (and_360 false_360 false_360 false_360))
(assert (and_360 false_360 true_360 false_360))
(assert (and_360 false_360 false_360 true_360))
(assert (and_360 true_360 true_360 true_360))
(assert (or_367 false_360 false_360 false_360))
(assert (or_367 true_360 true_360 false_360))
(assert (or_367 true_360 false_360 true_360))
(assert (or_367 true_360 true_360 true_360))
(assert (hence_360 true_360 false_360 false_360))
(assert (hence_360 false_360 true_360 false_360))
(assert (hence_360 true_360 false_360 true_360))
(assert (hence_360 true_360 true_360 true_360))
(assert (not_365 true_360 false_360))
(assert (not_365 false_360 true_360))
(declare-datatypes ((Nat_611 0)) (((Z_2145 ) (S_500 (projS_214 Nat_611)))))
(declare-fun diseqNat_611 (Nat_611 Nat_611) Bool)
(declare-fun projS_215 (Nat_611 Nat_611) Bool)
(declare-fun isZ_467 (Nat_611) Bool)
(declare-fun isS_467 (Nat_611) Bool)
(assert (forall ((x_56285 Nat_611))
	(projS_215 x_56285 (S_500 x_56285))))
(assert (isZ_467 Z_2145))
(assert (forall ((x_56287 Nat_611))
	(isS_467 (S_500 x_56287))))
(assert (forall ((x_56288 Nat_611))
	(diseqNat_611 Z_2145 (S_500 x_56288))))
(assert (forall ((x_56289 Nat_611))
	(diseqNat_611 (S_500 x_56289) Z_2145)))
(assert (forall ((x_56290 Nat_611) (x_56291 Nat_611))
	(=> (diseqNat_611 x_56290 x_56291)
	    (diseqNat_611 (S_500 x_56290) (S_500 x_56291)))))
(declare-datatypes ((list_260 0)) (((nil_290 ) (cons_260 (head_520 Nat_611) (tail_520 list_260)))))
(declare-fun diseqlist_260 (list_260 list_260) Bool)
(declare-fun head_521 (Nat_611 list_260) Bool)
(declare-fun tail_521 (list_260 list_260) Bool)
(declare-fun isnil_290 (list_260) Bool)
(declare-fun iscons_260 (list_260) Bool)
(assert (forall ((x_56293 Nat_611) (x_56294 list_260))
	(head_521 x_56293 (cons_260 x_56293 x_56294))))
(assert (forall ((x_56293 Nat_611) (x_56294 list_260))
	(tail_521 x_56294 (cons_260 x_56293 x_56294))))
(assert (isnil_290 nil_290))
(assert (forall ((x_56296 Nat_611) (x_56297 list_260))
	(iscons_260 (cons_260 x_56296 x_56297))))
(assert (forall ((x_56298 Nat_611) (x_56299 list_260))
	(diseqlist_260 nil_290 (cons_260 x_56298 x_56299))))
(assert (forall ((x_56300 Nat_611) (x_56301 list_260))
	(diseqlist_260 (cons_260 x_56300 x_56301) nil_290)))
(assert (forall ((x_56302 Nat_611) (x_56303 list_260) (x_56304 Nat_611) (x_56305 list_260))
	(=> (diseqNat_611 x_56302 x_56304)
	    (diseqlist_260 (cons_260 x_56302 x_56303) (cons_260 x_56304 x_56305)))))
(assert (forall ((x_56302 Nat_611) (x_56303 list_260) (x_56304 Nat_611) (x_56305 list_260))
	(=> (diseqlist_260 x_56303 x_56305)
	    (diseqlist_260 (cons_260 x_56302 x_56303) (cons_260 x_56304 x_56305)))))
(declare-fun barbar_12 (Bool_360 Bool_360 Bool_360) Bool)
(assert (forall ((y_2383 Bool_360))
	(barbar_12 true_360 true_360 y_2383)))
(assert (forall ((x_56263 Bool_360))
	(barbar_12 x_56263 false_360 x_56263)))
(declare-fun x_56255 (Bool_360 Nat_611 Nat_611) Bool)
(assert (forall ((x_56264 Bool_360) (y_2385 Nat_611) (x_56257 Nat_611))
	(=> (x_56255 x_56264 x_56257 y_2385)
	    (x_56255 x_56264 (S_500 x_56257) (S_500 y_2385)))))
(assert (forall ((x_56257 Nat_611))
	(x_56255 false_360 (S_500 x_56257) Z_2145)))
(assert (forall ((z_2146 Nat_611))
	(x_56255 false_360 Z_2145 (S_500 z_2146))))
(assert (x_56255 true_360 Z_2145 Z_2145))
(declare-fun elem_24 (Bool_360 Nat_611 list_260) Bool)
(assert (forall ((x_56269 Bool_360) (x_56270 Bool_360) (x_56271 Bool_360) (z_2147 Nat_611) (xs_691 list_260) (x_56258 Nat_611))
	(=>	(and (x_56255 x_56270 x_56258 z_2147)
			(elem_24 x_56271 x_56258 xs_691)
			(barbar_12 x_56269 x_56270 x_56271))
		(elem_24 x_56269 x_56258 (cons_260 z_2147 xs_691)))))
(assert (forall ((x_56258 Nat_611))
	(elem_24 false_360 x_56258 nil_290)))
(declare-fun x_56259 (list_260 list_260 list_260) Bool)
(assert (forall ((x_56275 list_260) (z_2148 Nat_611) (xs_692 list_260) (y_2387 list_260))
	(=> (x_56259 x_56275 xs_692 y_2387)
	    (x_56259 (cons_260 z_2148 x_56275) (cons_260 z_2148 xs_692) y_2387))))
(assert (forall ((x_56276 list_260))
	(x_56259 x_56276 nil_290 x_56276)))
(assert (forall ((x_56277 list_260) (x_56261 Nat_611) (y_2388 list_260) (z_2149 list_260))
	(=>	(and true
			(elem_24 true_360 x_56261 y_2388)
			(elem_24 true_360 x_56261 z_2149)
			(x_56259 x_56277 y_2388 z_2149)
			(elem_24 false_360 x_56261 x_56277))
		false)))
(check-sat)
