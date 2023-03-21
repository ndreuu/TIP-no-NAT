
(set-logic HORN)
(define-fun Z_2101 () Int 0)
(define-fun S_486 ((x Int)) Int (+ x 1))
(declare-datatypes ((Bool_352 0)) (((false_352) (true_352))))
(declare-fun diseqBool_160 (Bool_352 Bool_352) Bool)
(declare-fun isfalse_160 (Bool_352) Bool)
(declare-fun istrue_160 (Bool_352) Bool)
(assert (isfalse_160 false_352))
(assert (istrue_160 true_352))
(assert (diseqBool_160 false_352 true_352))
(assert (diseqBool_160 true_352 false_352))
(declare-fun and_352 (Bool_352 Bool_352 Bool_352) Bool)
(declare-fun or_359 (Bool_352 Bool_352 Bool_352) Bool)
(declare-fun hence_352 (Bool_352 Bool_352 Bool_352) Bool)
(declare-fun not_357 (Bool_352 Bool_352) Bool)
(assert (and_352 false_352 false_352 false_352))
(assert (and_352 false_352 true_352 false_352))
(assert (and_352 false_352 false_352 true_352))
(assert (and_352 true_352 true_352 true_352))
(assert (or_359 false_352 false_352 false_352))
(assert (or_359 true_352 true_352 false_352))
(assert (or_359 true_352 false_352 true_352))
(assert (or_359 true_352 true_352 true_352))
(assert (hence_352 true_352 false_352 false_352))
(assert (hence_352 false_352 true_352 false_352))
(assert (hence_352 true_352 false_352 true_352))
(assert (hence_352 true_352 true_352 true_352))
(assert (not_357 true_352 false_352))
(assert (not_357 false_352 true_352))
(declare-fun projS_203 (Int Int) Bool)
(declare-fun isZ_453 (Int) Bool)
(declare-fun isS_453 (Int) Bool)
(assert (forall ((x_55862 Int))
	(projS_203 x_55862 (S_486 x_55862))))
(assert (isZ_453 Z_2101))
(assert (forall ((x_55864 Int))
	(isS_453 (S_486 x_55864))))
(declare-datatypes ((list_253 0)) (((nil_283) (cons_253 (head_506 Int) (tail_506 list_253)))))
(declare-fun diseqlist_253 (list_253 list_253) Bool)
(declare-fun head_507 (Int list_253) Bool)
(declare-fun tail_507 (list_253 list_253) Bool)
(declare-fun isnil_283 (list_253) Bool)
(declare-fun iscons_253 (list_253) Bool)
(assert (forall ((x_55870 Int) (x_55871 list_253))
	(head_507 x_55870 (cons_253 x_55870 x_55871))))
(assert (forall ((x_55870 Int) (x_55871 list_253))
	(tail_507 x_55871 (cons_253 x_55870 x_55871))))
(assert (isnil_283 nil_283))
(assert (forall ((x_55873 Int) (x_55874 list_253))
	(iscons_253 (cons_253 x_55873 x_55874))))
(assert (forall ((x_55875 Int) (x_55876 list_253))
	(diseqlist_253 nil_283 (cons_253 x_55875 x_55876))))
(assert (forall ((x_55877 Int) (x_55878 list_253))
	(diseqlist_253 (cons_253 x_55877 x_55878) nil_283)))
(assert (forall ((x_55879 Int) (x_55880 list_253) (x_55881 Int) (x_55882 list_253))
	(=> (distinct x_55879 x_55881) (diseqlist_253 (cons_253 x_55879 x_55880) (cons_253 x_55881 x_55882)))))
(assert (forall ((x_55879 Int) (x_55880 list_253) (x_55881 Int) (x_55882 list_253))
	(=> (diseqlist_253 x_55880 x_55882) (diseqlist_253 (cons_253 x_55879 x_55880) (cons_253 x_55881 x_55882)))))
(declare-fun barbar_9 (Bool_352 Bool_352 Bool_352) Bool)
(assert (forall ((y_2335 Bool_352))
	(barbar_9 true_352 true_352 y_2335)))
(assert (forall ((x_55831 Bool_352))
	(barbar_9 x_55831 false_352 x_55831)))
(declare-fun x_55821 (Bool_352 Int Int) Bool)
(assert (forall ((x_55832 Bool_352) (y_2337 Int) (x_55823 Int))
	(=> (x_55821 x_55832 x_55823 y_2337) (x_55821 x_55832 (S_486 x_55823) (S_486 y_2337)))))
(assert (forall ((x_55823 Int))
	(x_55821 false_352 (S_486 x_55823) Z_2101)))
(assert (forall ((z_2102 Int))
	(x_55821 false_352 Z_2101 (S_486 z_2102))))
(assert (x_55821 true_352 Z_2101 Z_2101))
(declare-fun elem_21 (Bool_352 Int list_253) Bool)
(assert (forall ((x_55837 Bool_352) (x_55838 Bool_352) (x_55839 Bool_352) (z_2103 Int) (xs_676 list_253) (x_55824 Int))
	(=> (and (x_55821 x_55838 x_55824 z_2103) (elem_21 x_55839 x_55824 xs_676) (barbar_9 x_55837 x_55838 x_55839)) (elem_21 x_55837 x_55824 (cons_253 z_2103 xs_676)))))
(assert (forall ((x_55824 Int))
	(elem_21 false_352 x_55824 nil_283)))
(declare-fun intersect_1 (list_253 list_253 list_253) Bool)
(assert (forall ((x_55844 list_253) (z_2104 Int) (xs_677 list_253) (y_2339 list_253))
	(=> (and (intersect_1 x_55844 xs_677 y_2339) (elem_21 true_352 z_2104 y_2339)) (intersect_1 (cons_253 z_2104 x_55844) (cons_253 z_2104 xs_677) y_2339))))
(assert (forall ((x_55846 list_253) (z_2104 Int) (xs_677 list_253) (y_2339 list_253))
	(=> (and (intersect_1 x_55846 xs_677 y_2339) (elem_21 false_352 z_2104 y_2339)) (intersect_1 x_55846 (cons_253 z_2104 xs_677) y_2339))))
(assert (forall ((y_2339 list_253))
	(intersect_1 nil_283 nil_283 y_2339)))
(declare-fun x_55826 (Bool_352 Bool_352 Bool_352) Bool)
(assert (forall ((x_55849 Bool_352))
	(x_55826 x_55849 true_352 x_55849)))
(assert (forall ((y_2340 Bool_352))
	(x_55826 false_352 false_352 y_2340)))
(declare-fun subset_1 (Bool_352 list_253 list_253) Bool)
(assert (forall ((x_55851 Bool_352) (x_55852 Bool_352) (x_55853 Bool_352) (z_2105 Int) (xs_678 list_253) (y_2341 list_253))
	(=> (and (elem_21 x_55852 z_2105 y_2341) (subset_1 x_55853 xs_678 y_2341) (x_55826 x_55851 x_55852 x_55853)) (subset_1 x_55851 (cons_253 z_2105 xs_678) y_2341))))
(assert (forall ((y_2341 list_253))
	(subset_1 true_352 nil_283 y_2341)))
(assert (forall ((x_55856 list_253) (x_55829 list_253) (y_2342 list_253))
	(=> (and true (diseqlist_253 x_55856 x_55829) (subset_1 true_352 x_55829 y_2342) (intersect_1 x_55856 x_55829 y_2342)) false)))
(check-sat)