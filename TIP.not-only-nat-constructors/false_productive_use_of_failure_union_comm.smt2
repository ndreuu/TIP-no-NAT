
(set-logic HORN)
(define-fun S_553 ((x Int)) Int (+ x 1))
(define-fun Z_2371 () Int 0)
(declare-datatypes ((Bool_395 0)) (((false_395) (true_395))))
(declare-fun diseqBool_186 (Bool_395 Bool_395) Bool)
(declare-fun isfalse_186 (Bool_395) Bool)
(declare-fun istrue_186 (Bool_395) Bool)
(assert (isfalse_186 false_395))
(assert (istrue_186 true_395))
(assert (diseqBool_186 false_395 true_395))
(assert (diseqBool_186 true_395 false_395))
(declare-fun and_397 (Bool_395 Bool_395 Bool_395) Bool)
(declare-fun or_408 (Bool_395 Bool_395 Bool_395) Bool)
(declare-fun hence_395 (Bool_395 Bool_395 Bool_395) Bool)
(declare-fun not_400 (Bool_395 Bool_395) Bool)
(assert (and_397 false_395 false_395 false_395))
(assert (and_397 false_395 true_395 false_395))
(assert (and_397 false_395 false_395 true_395))
(assert (and_397 true_395 true_395 true_395))
(assert (or_408 false_395 false_395 false_395))
(assert (or_408 true_395 true_395 false_395))
(assert (or_408 true_395 false_395 true_395))
(assert (or_408 true_395 true_395 true_395))
(assert (hence_395 true_395 false_395 false_395))
(assert (hence_395 false_395 true_395 false_395))
(assert (hence_395 true_395 false_395 true_395))
(assert (hence_395 true_395 true_395 true_395))
(assert (not_400 true_395 false_395))
(assert (not_400 false_395 true_395))
(declare-fun projS_241 (Int Int) Bool)
(declare-fun isS_515 (Int) Bool)
(declare-fun isZ_515 (Int) Bool)
(assert (forall ((x_70606 Int))
	(projS_241 x_70606 (S_553 x_70606))))
(assert (forall ((x_70609 Int))
	(isS_515 (S_553 x_70609))))
(assert (isZ_515 Z_2371))
(declare-datatypes ((list_318 0)) (((nil_358) (cons_315 (head_630 Int) (tail_633 list_318)))))
(declare-fun diseqlist_315 (list_318 list_318) Bool)
(declare-fun head_631 (Int list_318) Bool)
(declare-fun tail_634 (list_318 list_318) Bool)
(declare-fun isnil_358 (list_318) Bool)
(declare-fun iscons_315 (list_318) Bool)
(assert (forall ((x_70615 Int) (x_70616 list_318))
	(head_631 x_70615 (cons_315 x_70615 x_70616))))
(assert (forall ((x_70615 Int) (x_70616 list_318))
	(tail_634 x_70616 (cons_315 x_70615 x_70616))))
(assert (isnil_358 nil_358))
(assert (forall ((x_70618 Int) (x_70619 list_318))
	(iscons_315 (cons_315 x_70618 x_70619))))
(assert (forall ((x_70620 Int) (x_70621 list_318))
	(diseqlist_315 nil_358 (cons_315 x_70620 x_70621))))
(assert (forall ((x_70622 Int) (x_70623 list_318))
	(diseqlist_315 (cons_315 x_70622 x_70623) nil_358)))
(assert (forall ((x_70624 Int) (x_70625 list_318) (x_70626 Int) (x_70627 list_318))
	(=> (distinct x_70624 x_70626) (diseqlist_315 (cons_315 x_70624 x_70625) (cons_315 x_70626 x_70627)))))
(assert (forall ((x_70624 Int) (x_70625 list_318) (x_70626 Int) (x_70627 list_318))
	(=> (diseqlist_315 x_70625 x_70627) (diseqlist_315 (cons_315 x_70624 x_70625) (cons_315 x_70626 x_70627)))))
(declare-fun eqNat_1 (Bool_395 Int Int) Bool)
(assert (eqNat_1 true_395 Z_2371 Z_2371))
(assert (forall ((x_70578 Int))
	(eqNat_1 false_395 Z_2371 (S_553 x_70578))))
(assert (forall ((z_2372 Int))
	(eqNat_1 false_395 (S_553 z_2372) Z_2371)))
(assert (forall ((x_70585 Bool_395) (y_2664 Int) (z_2372 Int))
	(=> (eqNat_1 x_70585 z_2372 y_2664) (eqNat_1 x_70585 (S_553 z_2372) (S_553 y_2664)))))
(declare-fun barbar_14 (Bool_395 Bool_395 Bool_395) Bool)
(assert (forall ((y_2665 Bool_395))
	(barbar_14 true_395 true_395 y_2665)))
(assert (forall ((x_70588 Bool_395))
	(barbar_14 x_70588 false_395 x_70588)))
(declare-fun elem_28 (Bool_395 Int list_318) Bool)
(assert (forall ((x_70589 Bool_395) (x_70590 Bool_395) (x_70591 Bool_395) (z_2373 Int) (xs_787 list_318) (x_70580 Int))
	(=> (and (eqNat_1 x_70590 x_70580 z_2373) (elem_28 x_70591 x_70580 xs_787) (barbar_14 x_70589 x_70590 x_70591)) (elem_28 x_70589 x_70580 (cons_315 z_2373 xs_787)))))
(assert (forall ((x_70580 Int))
	(elem_28 false_395 x_70580 nil_358)))
(declare-fun union_4 (list_318 list_318 list_318) Bool)
(assert (forall ((x_70595 list_318) (z_2374 Int) (xs_788 list_318) (y_2667 list_318))
	(=> (and (union_4 x_70595 xs_788 y_2667) (elem_28 true_395 z_2374 y_2667)) (union_4 x_70595 (cons_315 z_2374 xs_788) y_2667))))
(assert (forall ((x_70599 list_318) (z_2374 Int) (xs_788 list_318) (y_2667 list_318))
	(=> (and (union_4 x_70599 xs_788 y_2667) (elem_28 false_395 z_2374 y_2667)) (union_4 (cons_315 z_2374 x_70599) (cons_315 z_2374 xs_788) y_2667))))
(assert (forall ((x_70600 list_318))
	(union_4 x_70600 nil_358 x_70600)))
(assert (forall ((x_70601 list_318) (x_70602 list_318) (xs_789 list_318) (ys_220 list_318))
	(=> (and true (diseqlist_315 x_70601 x_70602) (union_4 x_70601 xs_789 ys_220) (union_4 x_70602 ys_220 xs_789)) false)))
(check-sat)