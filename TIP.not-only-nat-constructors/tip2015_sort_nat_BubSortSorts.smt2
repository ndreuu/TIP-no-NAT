
(set-logic HORN)
(define-fun zero_111 () Int 0)
(define-fun succ_108 ((x Int)) Int (+ x 1))
(declare-datatypes ((Bool_265 0)) (((false_265) (true_265))))
(declare-fun diseqBool_124 (Bool_265 Bool_265) Bool)
(declare-fun isfalse_124 (Bool_265) Bool)
(declare-fun istrue_124 (Bool_265) Bool)
(assert (isfalse_124 false_265))
(assert (istrue_124 true_265))
(assert (diseqBool_124 false_265 true_265))
(assert (diseqBool_124 true_265 false_265))
(declare-fun and_265 (Bool_265 Bool_265 Bool_265) Bool)
(declare-fun or_271 (Bool_265 Bool_265 Bool_265) Bool)
(declare-fun hence_265 (Bool_265 Bool_265 Bool_265) Bool)
(declare-fun not_269 (Bool_265 Bool_265) Bool)
(assert (and_265 false_265 false_265 false_265))
(assert (and_265 false_265 true_265 false_265))
(assert (and_265 false_265 false_265 true_265))
(assert (and_265 true_265 true_265 true_265))
(assert (or_271 false_265 false_265 false_265))
(assert (or_271 true_265 true_265 false_265))
(assert (or_271 true_265 false_265 true_265))
(assert (or_271 true_265 true_265 true_265))
(assert (hence_265 true_265 false_265 false_265))
(assert (hence_265 false_265 true_265 false_265))
(assert (hence_265 true_265 false_265 true_265))
(assert (hence_265 true_265 true_265 true_265))
(assert (not_269 true_265 false_265))
(assert (not_269 false_265 true_265))
(declare-fun p_315 (Int Int) Bool)
(declare-fun iszero_108 (Int) Bool)
(declare-fun issucc_108 (Int) Bool)
(assert (forall ((x_49893 Int))
	(p_315 x_49893 (succ_108 x_49893))))
(assert (iszero_108 zero_111))
(assert (forall ((x_49895 Int))
	(issucc_108 (succ_108 x_49895))))
(declare-datatypes ((list_194 0)) (((nil_220) (cons_194 (head_388 Int) (tail_388 list_194)))))
(declare-fun diseqlist_194 (list_194 list_194) Bool)
(declare-fun head_389 (Int list_194) Bool)
(declare-fun tail_389 (list_194 list_194) Bool)
(declare-fun isnil_220 (list_194) Bool)
(declare-fun iscons_194 (list_194) Bool)
(assert (forall ((x_49901 Int) (x_49902 list_194))
	(head_389 x_49901 (cons_194 x_49901 x_49902))))
(assert (forall ((x_49901 Int) (x_49902 list_194))
	(tail_389 x_49902 (cons_194 x_49901 x_49902))))
(assert (isnil_220 nil_220))
(assert (forall ((x_49904 Int) (x_49905 list_194))
	(iscons_194 (cons_194 x_49904 x_49905))))
(assert (forall ((x_49906 Int) (x_49907 list_194))
	(diseqlist_194 nil_220 (cons_194 x_49906 x_49907))))
(assert (forall ((x_49908 Int) (x_49909 list_194))
	(diseqlist_194 (cons_194 x_49908 x_49909) nil_220)))
(assert (forall ((x_49910 Int) (x_49911 list_194) (x_49912 Int) (x_49913 list_194))
	(=> (distinct x_49910 x_49912) (diseqlist_194 (cons_194 x_49910 x_49911) (cons_194 x_49912 x_49913)))))
(assert (forall ((x_49910 Int) (x_49911 list_194) (x_49912 Int) (x_49913 list_194))
	(=> (diseqlist_194 x_49911 x_49913) (diseqlist_194 (cons_194 x_49910 x_49911) (cons_194 x_49912 x_49913)))))
(declare-datatypes ((pair_82 0)) (((pair_83 (projpair_164 Bool_265) (projpair_165 list_194)))))
(declare-fun diseqpair_41 (pair_82 pair_82) Bool)
(declare-fun projpair_166 (Bool_265 pair_82) Bool)
(declare-fun projpair_167 (list_194 pair_82) Bool)
(declare-fun ispair_41 (pair_82) Bool)
(assert (forall ((x_49914 Bool_265) (x_49915 list_194))
	(projpair_166 x_49914 (pair_83 x_49914 x_49915))))
(assert (forall ((x_49914 Bool_265) (x_49915 list_194))
	(projpair_167 x_49915 (pair_83 x_49914 x_49915))))
(assert (forall ((x_49917 Bool_265) (x_49918 list_194))
	(ispair_41 (pair_83 x_49917 x_49918))))
(assert (forall ((x_49919 Bool_265) (x_49920 list_194) (x_49921 Bool_265) (x_49922 list_194))
	(=> (diseqBool_124 x_49919 x_49921) (diseqpair_41 (pair_83 x_49919 x_49920) (pair_83 x_49921 x_49922)))))
(assert (forall ((x_49919 Bool_265) (x_49920 list_194) (x_49921 Bool_265) (x_49922 list_194))
	(=> (diseqlist_194 x_49920 x_49922) (diseqpair_41 (pair_83 x_49919 x_49920) (pair_83 x_49921 x_49922)))))
(declare-fun leq_41 (Bool_265 Int Int) Bool)
(assert (forall ((x_49864 Bool_265) (x_49860 Int) (z_1581 Int))
	(=> (leq_41 x_49864 z_1581 x_49860) (leq_41 x_49864 (succ_108 z_1581) (succ_108 x_49860)))))
(assert (forall ((z_1581 Int))
	(leq_41 false_265 (succ_108 z_1581) zero_111)))
(assert (forall ((y_1771 Int))
	(leq_41 true_265 zero_111 y_1771)))
(declare-fun ordered_18 (Bool_265 list_194) Bool)
(assert (forall ((x_49868 Bool_265) (x_49869 Bool_265) (x_49870 Bool_265) (y_1773 Int) (xs_527 list_194) (y_1772 Int))
	(=> (and (leq_41 x_49869 y_1772 y_1773) (ordered_18 x_49870 (cons_194 y_1773 xs_527)) (and_265 x_49868 x_49869 x_49870)) (ordered_18 x_49868 (cons_194 y_1772 (cons_194 y_1773 xs_527))))))
(assert (forall ((y_1772 Int))
	(ordered_18 true_265 (cons_194 y_1772 nil_220))))
(assert (ordered_18 true_265 nil_220))
(declare-fun bubble_4 (pair_82 list_194) Bool)
(assert (forall ((b_29 Bool_265) (ys_168 list_194) (y_1775 Int) (xs_528 list_194) (y_1774 Int))
	(=> (and (bubble_4 (pair_83 b_29 ys_168) (cons_194 y_1775 xs_528)) (leq_41 true_265 y_1774 y_1775)) (bubble_4 (pair_83 b_29 (cons_194 y_1774 ys_168)) (cons_194 y_1774 (cons_194 y_1775 xs_528))))))
(assert (forall ((b_30 Bool_265) (ys_169 list_194) (y_1775 Int) (xs_528 list_194) (y_1774 Int))
	(=> (and (bubble_4 (pair_83 b_30 ys_169) (cons_194 y_1774 xs_528)) (leq_41 false_265 y_1774 y_1775)) (bubble_4 (pair_83 true_265 (cons_194 y_1775 ys_169)) (cons_194 y_1774 (cons_194 y_1775 xs_528))))))
(assert (forall ((y_1774 Int))
	(bubble_4 (pair_83 false_265 (cons_194 y_1774 nil_220)) (cons_194 y_1774 nil_220))))
(assert (bubble_4 (pair_83 false_265 nil_220) nil_220))
(declare-fun bubsort_4 (list_194 list_194) Bool)
(assert (forall ((x_49882 list_194) (ys_170 list_194) (x_49863 list_194))
	(=> (and (bubsort_4 x_49882 ys_170) (bubble_4 (pair_83 true_265 ys_170) x_49863)) (bubsort_4 x_49882 x_49863))))
(assert (forall ((ys_170 list_194) (x_49863 list_194))
	(=> (bubble_4 (pair_83 false_265 ys_170) x_49863) (bubsort_4 x_49863 x_49863))))
(assert (forall ((x_49886 list_194) (xs_529 list_194))
	(=> (and true (bubsort_4 x_49886 xs_529) (ordered_18 false_265 x_49886)) false)))
(check-sat)