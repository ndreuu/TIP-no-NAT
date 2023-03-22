(set-logic HORN)
(define-fun Z_515 () Int 0)
(define-fun S_174 ((x Int)) Int (+ x 1))
(declare-fun unS_193 (Int Int) Bool)
(declare-fun isZ_169 (Int) Bool)
(declare-fun isS_169 (Int) Bool)
(assert (forall ((x_9545 Int))
	(unS_193 x_9545 (S_174 x_9545))))
(assert (isZ_169 Z_515))
(assert (forall ((x_9547 Int))
	(isS_169 (S_174 x_9547))))
(declare-fun le_96 (Int Int) Bool)
(declare-fun gt_97 (Int Int) Bool)
(assert (forall ((x Int) (y Int)) (=> (<= x y) (le_96 x y))))
(assert (forall ((x Int) (y Int)) (=> (> x y) (gt_97 x y))))
(declare-datatypes ((Bool_96 0)) (((false_96) (true_96))))
(declare-fun diseqBool_44 (Bool_96 Bool_96) Bool)
(declare-fun isfalse_44 (Bool_96) Bool)
(declare-fun istrue_44 (Bool_96) Bool)
(assert (isfalse_44 false_96))
(assert (istrue_44 true_96))
(assert (diseqBool_44 false_96 true_96))
(assert (diseqBool_44 true_96 false_96))
(declare-fun and_96 (Bool_96 Bool_96 Bool_96) Bool)
(declare-fun or_97 (Bool_96 Bool_96 Bool_96) Bool)
(declare-fun hence_96 (Bool_96 Bool_96 Bool_96) Bool)
(declare-fun not_96 (Bool_96 Bool_96) Bool)
(assert (and_96 false_96 false_96 false_96))
(assert (and_96 false_96 true_96 false_96))
(assert (and_96 false_96 false_96 true_96))
(assert (and_96 true_96 true_96 true_96))
(assert (or_97 false_96 false_96 false_96))
(assert (or_97 true_96 true_96 false_96))
(assert (or_97 true_96 false_96 true_96))
(assert (or_97 true_96 true_96 true_96))
(assert (hence_96 true_96 false_96 false_96))
(assert (hence_96 false_96 true_96 false_96))
(assert (hence_96 true_96 false_96 true_96))
(assert (hence_96 true_96 true_96 true_96))
(assert (not_96 true_96 false_96))
(assert (not_96 false_96 true_96))
(declare-datatypes ((list_77 0)) (((nil_81) (cons_77 (head_154 Int) (tail_154 list_77)))))
(declare-fun diseqlist_77 (list_77 list_77) Bool)
(declare-fun head_155 (Int list_77) Bool)
(declare-fun tail_155 (list_77 list_77) Bool)
(declare-fun isnil_81 (list_77) Bool)
(declare-fun iscons_77 (list_77) Bool)
(assert (forall ((x_9555 Int) (x_9556 list_77))
	(head_155 x_9555 (cons_77 x_9555 x_9556))))
(assert (forall ((x_9555 Int) (x_9556 list_77))
	(tail_155 x_9556 (cons_77 x_9555 x_9556))))
(assert (isnil_81 nil_81))
(assert (forall ((x_9558 Int) (x_9559 list_77))
	(iscons_77 (cons_77 x_9558 x_9559))))
(assert (forall ((x_9560 Int) (x_9561 list_77))
	(diseqlist_77 nil_81 (cons_77 x_9560 x_9561))))
(assert (forall ((x_9562 Int) (x_9563 list_77))
	(diseqlist_77 (cons_77 x_9562 x_9563) nil_81)))
(assert (forall ((x_9564 Int) (x_9565 list_77) (x_9566 Int) (x_9567 list_77))
	(=> (distinct x_9564 x_9566) (diseqlist_77 (cons_77 x_9564 x_9565) (cons_77 x_9566 x_9567)))))
(assert (forall ((x_9564 Int) (x_9565 list_77) (x_9566 Int) (x_9567 list_77))
	(=> (diseqlist_77 x_9565 x_9567) (diseqlist_77 (cons_77 x_9564 x_9565) (cons_77 x_9566 x_9567)))))
(declare-datatypes ((pair_22 0)) (((pair_23 (projpair_44 Bool_96) (projpair_45 list_77)))))
(declare-fun diseqpair_11 (pair_22 pair_22) Bool)
(declare-fun projpair_46 (Bool_96 pair_22) Bool)
(declare-fun projpair_47 (list_77 pair_22) Bool)
(declare-fun ispair_11 (pair_22) Bool)
(assert (forall ((x_9568 Bool_96) (x_9569 list_77))
	(projpair_46 x_9568 (pair_23 x_9568 x_9569))))
(assert (forall ((x_9568 Bool_96) (x_9569 list_77))
	(projpair_47 x_9569 (pair_23 x_9568 x_9569))))
(assert (forall ((x_9571 Bool_96) (x_9572 list_77))
	(ispair_11 (pair_23 x_9571 x_9572))))
(assert (forall ((x_9573 Bool_96) (x_9574 list_77) (x_9575 Bool_96) (x_9576 list_77))
	(=> (diseqBool_44 x_9573 x_9575) (diseqpair_11 (pair_23 x_9573 x_9574) (pair_23 x_9575 x_9576)))))
(assert (forall ((x_9573 Bool_96) (x_9574 list_77) (x_9575 Bool_96) (x_9576 list_77))
	(=> (diseqlist_77 x_9574 x_9576) (diseqpair_11 (pair_23 x_9573 x_9574) (pair_23 x_9575 x_9576)))))
(declare-fun ordered_1 (Bool_96 list_77) Bool)
(assert (forall ((x_9525 Bool_96) (y_446 Int) (xs_154 list_77) (y_445 Int))
	(=> (and (le_96 y_445 y_446) (ordered_1 x_9525 (cons_77 y_446 xs_154))) (ordered_1 x_9525 (cons_77 y_445 (cons_77 y_446 xs_154))))))
(assert (forall ((y_446 Int) (xs_154 list_77) (y_445 Int))
	(=> (gt_97 y_445 y_446) (ordered_1 false_96 (cons_77 y_445 (cons_77 y_446 xs_154))))))
(assert (forall ((y_445 Int))
	(ordered_1 true_96 (cons_77 y_445 nil_81))))
(assert (ordered_1 true_96 nil_81))
(declare-fun bubble_0 (pair_22 list_77) Bool)
(assert (forall ((b_10 Bool_96) (ys_37 list_77) (y_448 Int) (xs_155 list_77) (y_447 Int))
	(=> (and (le_96 y_447 y_448) (bubble_0 (pair_23 b_10 ys_37) (cons_77 y_448 xs_155))) (bubble_0 (pair_23 b_10 (cons_77 y_447 ys_37)) (cons_77 y_447 (cons_77 y_448 xs_155))))))
(assert (forall ((b_11 Bool_96) (ys_38 list_77) (y_448 Int) (xs_155 list_77) (y_447 Int))
	(=> (and (gt_97 y_447 y_448) (bubble_0 (pair_23 b_11 ys_38) (cons_77 y_447 xs_155))) (bubble_0 (pair_23 true_96 (cons_77 y_448 ys_38)) (cons_77 y_447 (cons_77 y_448 xs_155))))))
(assert (forall ((y_447 Int))
	(bubble_0 (pair_23 false_96 (cons_77 y_447 nil_81)) (cons_77 y_447 nil_81))))
(assert (bubble_0 (pair_23 false_96 nil_81) nil_81))
(declare-fun bubsort_0 (list_77 list_77) Bool)
(assert (forall ((x_9537 list_77) (ys_39 list_77) (x_9524 list_77))
	(=> (and (bubsort_0 x_9537 ys_39) (bubble_0 (pair_23 true_96 ys_39) x_9524)) (bubsort_0 x_9537 x_9524))))
(assert (forall ((ys_39 list_77) (x_9524 list_77))
	(=> (bubble_0 (pair_23 false_96 ys_39) x_9524) (bubsort_0 x_9524 x_9524))))
(assert (forall ((x_9541 list_77) (xs_156 list_77))
	(=> (and true (bubsort_0 x_9541 xs_156) (ordered_1 false_96 x_9541)) false)))
(check-sat)
