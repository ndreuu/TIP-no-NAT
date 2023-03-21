
(set-logic HORN)
(define-fun Z_290 () Int 0)
(define-fun S_102 ((x Int)) Int (+ x 1))
(declare-fun projS_99 (Int Int) Bool)
(declare-fun isZ_102 (Int) Bool)
(declare-fun isS_102 (Int) Bool)
(assert (forall ((x_2853 Int))
	(projS_99 x_2853 (S_102 x_2853))))
(assert (isZ_102 Z_290))
(assert (forall ((x_2855 Int))
	(isS_102 (S_102 x_2855))))
(declare-datatypes ((list_48 0)) (((nil_48) (cons_48 (head_96 Int) (tail_96 list_48)))))
(declare-fun diseqlist_48 (list_48 list_48) Bool)
(declare-fun head_97 (Int list_48) Bool)
(declare-fun tail_97 (list_48 list_48) Bool)
(declare-fun isnil_48 (list_48) Bool)
(declare-fun iscons_48 (list_48) Bool)
(assert (forall ((x_2861 Int) (x_2862 list_48))
	(head_97 x_2861 (cons_48 x_2861 x_2862))))
(assert (forall ((x_2861 Int) (x_2862 list_48))
	(tail_97 x_2862 (cons_48 x_2861 x_2862))))
(assert (isnil_48 nil_48))
(assert (forall ((x_2864 Int) (x_2865 list_48))
	(iscons_48 (cons_48 x_2864 x_2865))))
(assert (forall ((x_2866 Int) (x_2867 list_48))
	(diseqlist_48 nil_48 (cons_48 x_2866 x_2867))))
(assert (forall ((x_2868 Int) (x_2869 list_48))
	(diseqlist_48 (cons_48 x_2868 x_2869) nil_48)))
(assert (forall ((x_2870 Int) (x_2871 list_48) (x_2872 Int) (x_2873 list_48))
	(=> (distinct x_2870 x_2872) (diseqlist_48 (cons_48 x_2870 x_2871) (cons_48 x_2872 x_2873)))))
(assert (forall ((x_2870 Int) (x_2871 list_48) (x_2872 Int) (x_2873 list_48))
	(=> (diseqlist_48 x_2871 x_2873) (diseqlist_48 (cons_48 x_2870 x_2871) (cons_48 x_2872 x_2873)))))
(declare-fun last_4 (Int list_48) Bool)
(assert (forall ((x_2842 Int) (x_2837 Int) (x_2838 list_48) (y_230 Int))
	(=> (last_4 x_2842 (cons_48 x_2837 x_2838)) (last_4 x_2842 (cons_48 y_230 (cons_48 x_2837 x_2838))))))
(assert (forall ((x_2844 Int))
	(last_4 x_2844 (cons_48 x_2844 nil_48))))
(assert (last_4 Z_290 nil_48))
(declare-fun x_2839 (list_48 list_48 list_48) Bool)
(assert (forall ((x_2847 list_48) (z_292 Int) (xs_85 list_48) (y_231 list_48))
	(=> (x_2839 x_2847 xs_85 y_231) (x_2839 (cons_48 z_292 x_2847) (cons_48 z_292 xs_85) y_231))))
(assert (forall ((x_2848 list_48))
	(x_2839 x_2848 nil_48 x_2848)))
(assert (forall ((x_2849 list_48) (x_2850 Int) (x_2841 Int) (xs_86 list_48))
	(=> (and true (distinct x_2850 x_2841) (x_2839 x_2849 xs_86 (cons_48 x_2841 nil_48)) (last_4 x_2850 x_2849)) false)))
(check-sat)