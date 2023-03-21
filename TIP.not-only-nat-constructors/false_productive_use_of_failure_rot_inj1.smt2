(set-logic HORN)
(define-fun S_608 ((x Int)) Int (+ x 1))
(define-fun Z_2645 () Int 0)
(declare-fun projS_247 (Int Int) Bool)
(declare-fun isS_550 (Int) Bool)
(declare-fun isZ_550 (Int) Bool)
(assert (forall ((x_114565 Int))
	(projS_247 x_114565 (S_608 x_114565))))
(assert (forall ((x_114568 Int))
	(isS_550 (S_608 x_114568))))
(assert (isZ_550 Z_2645))
(declare-datatypes ((list_376 0)) (((nil_429) (cons_370 (head_740 Int) (tail_746 list_376)))))
(declare-fun diseqlist_370 (list_376 list_376) Bool)
(declare-fun head_741 (Int list_376) Bool)
(declare-fun tail_747 (list_376 list_376) Bool)
(declare-fun isnil_429 (list_376) Bool)
(declare-fun iscons_370 (list_376) Bool)
(assert (forall ((x_114574 Int) (x_114575 list_376))
	(head_741 x_114574 (cons_370 x_114574 x_114575))))
(assert (forall ((x_114574 Int) (x_114575 list_376))
	(tail_747 x_114575 (cons_370 x_114574 x_114575))))
(assert (isnil_429 nil_429))
(assert (forall ((x_114577 Int) (x_114578 list_376))
	(iscons_370 (cons_370 x_114577 x_114578))))
(assert (forall ((x_114579 Int) (x_114580 list_376))
	(diseqlist_370 nil_429 (cons_370 x_114579 x_114580))))
(assert (forall ((x_114581 Int) (x_114582 list_376))
	(diseqlist_370 (cons_370 x_114581 x_114582) nil_429)))
(assert (forall ((x_114583 Int) (x_114584 list_376) (x_114585 Int) (x_114586 list_376))
	(=> (distinct x_114583 x_114585) (diseqlist_370 (cons_370 x_114583 x_114584) (cons_370 x_114585 x_114586)))))
(assert (forall ((x_114583 Int) (x_114584 list_376) (x_114585 Int) (x_114586 list_376))
	(=> (diseqlist_370 x_114584 x_114586) (diseqlist_370 (cons_370 x_114583 x_114584) (cons_370 x_114585 x_114586)))))
(declare-fun x_114549 (list_376 list_376 list_376) Bool)
(assert (forall ((x_114555 list_376) (z_2646 Int) (xs_867 list_376) (y_3071 list_376))
	(=> (x_114549 x_114555 xs_867 y_3071) (x_114549 (cons_370 z_2646 x_114555) (cons_370 z_2646 xs_867) y_3071))))
(assert (forall ((x_114556 list_376))
	(x_114549 x_114556 nil_429 x_114556)))
(declare-fun rotate_11 (list_376 Int list_376) Bool)
(assert (forall ((x_114557 list_376))
	(rotate_11 x_114557 Z_2645 x_114557)))
(assert (forall ((x_114558 list_376) (x_114559 list_376) (x_114552 Int) (x_114553 list_376) (z_2647 Int))
	(=> (and (x_114549 x_114559 x_114553 (cons_370 x_114552 nil_429)) (rotate_11 x_114558 z_2647 x_114559)) (rotate_11 x_114558 (S_608 z_2647) (cons_370 x_114552 x_114553)))))
(assert (forall ((z_2647 Int))
	(rotate_11 nil_429 (S_608 z_2647) nil_429)))
(assert (forall ((x_114562 list_376) (n_115 Int) (ys_238 list_376) (xs_868 list_376))
	(=> (and true (diseqlist_370 xs_868 ys_238) (rotate_11 x_114562 n_115 xs_868) (rotate_11 x_114562 n_115 ys_238)) false)))
(check-sat)