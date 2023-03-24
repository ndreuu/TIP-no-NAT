(set-logic HORN)
(define-fun Z_531 () Int 0)
(define-fun S_179 ((x Int)) Int (+ x 1))
(declare-fun unS_201 (Int Int) Bool)
(declare-fun isZ_173 (Int) Bool)
(declare-fun isS_173 (Int) Bool)
(assert (forall ((x_11904 Int))
	(unS_201 x_11904 (S_179 x_11904))))
(assert (isZ_173 Z_531))
(assert (forall ((x_11906 Int))
	(isS_173 (S_179 x_11906))))
(declare-fun add_101 (Int Int Int) Bool)
(declare-fun minus_100 (Int Int Int) Bool)
(declare-fun le_100 (Int Int) Bool)
(declare-fun ge_100 (Int Int) Bool)
(declare-fun lt_101 (Int Int) Bool)
(declare-fun gt_101 (Int Int) Bool)
(declare-fun mult_100 (Int Int Int) Bool)
(declare-fun div_100 (Int Int Int) Bool)
(declare-fun mod_100 (Int Int Int) Bool)
(assert (forall ((y_470 Int))
	(add_101 y_470 Z_531 y_470)))
(assert (forall ((x_11888 Int) (y_470 Int) (r_114 Int))
	(=> (add_101 r_114 x_11888 y_470) (add_101 (S_179 r_114) (S_179 x_11888) y_470))))
(assert (forall ((y_470 Int))
	(minus_100 Z_531 Z_531 y_470)))
(assert (forall ((x_11888 Int) (y_470 Int) (r_114 Int))
	(=> (minus_100 r_114 x_11888 y_470) (minus_100 (S_179 r_114) (S_179 x_11888) y_470))))
(assert (forall ((y_470 Int))
	(le_100 Z_531 y_470)))
(assert (forall ((x_11888 Int) (y_470 Int))
	(=> (le_100 x_11888 y_470) (le_100 (S_179 x_11888) (S_179 y_470)))))
(assert (forall ((y_470 Int))
	(ge_100 y_470 Z_531)))
(assert (forall ((x_11888 Int) (y_470 Int))
	(=> (ge_100 x_11888 y_470) (ge_100 (S_179 x_11888) (S_179 y_470)))))
(assert (forall ((y_470 Int))
	(lt_101 Z_531 (S_179 y_470))))
(assert (forall ((x_11888 Int) (y_470 Int))
	(=> (lt_101 x_11888 y_470) (lt_101 (S_179 x_11888) (S_179 y_470)))))
(assert (forall ((y_470 Int))
	(gt_101 (S_179 y_470) Z_531)))
(assert (forall ((x_11888 Int) (y_470 Int))
	(=> (gt_101 x_11888 y_470) (gt_101 (S_179 x_11888) (S_179 y_470)))))
(assert (forall ((y_470 Int))
	(mult_100 Z_531 Z_531 y_470)))
(assert (forall ((x_11888 Int) (y_470 Int) (r_114 Int) (z_532 Int))
	(=> (and (mult_100 r_114 x_11888 y_470) (add_101 z_532 r_114 y_470)) (mult_100 z_532 (S_179 x_11888) y_470))))
(assert (forall ((x_11888 Int) (y_470 Int))
	(=> (lt_101 x_11888 y_470) (div_100 Z_531 x_11888 y_470))))
(assert (forall ((x_11888 Int) (y_470 Int) (r_114 Int) (z_532 Int))
	(=> (and (ge_100 x_11888 y_470) (minus_100 z_532 x_11888 y_470) (div_100 r_114 z_532 y_470)) (div_100 (S_179 r_114) x_11888 y_470))))
(assert (forall ((x_11888 Int) (y_470 Int))
	(=> (lt_101 x_11888 y_470) (mod_100 x_11888 x_11888 y_470))))
(assert (forall ((x_11888 Int) (y_470 Int) (r_114 Int) (z_532 Int))
	(=> (and (ge_100 x_11888 y_470) (minus_100 z_532 x_11888 y_470) (mod_100 r_114 z_532 y_470)) (mod_100 r_114 x_11888 y_470))))
(declare-datatypes ((list_79 0)) (((nil_84) (cons_79 (head_158 Int) (tail_158 list_79)))))
(declare-fun diseqlist_79 (list_79 list_79) Bool)
(declare-fun head_159 (Int list_79) Bool)
(declare-fun tail_159 (list_79 list_79) Bool)
(declare-fun isnil_84 (list_79) Bool)
(declare-fun iscons_79 (list_79) Bool)
(assert (forall ((x_11890 Int) (x_11891 list_79))
	(head_159 x_11890 (cons_79 x_11890 x_11891))))
(assert (forall ((x_11890 Int) (x_11891 list_79))
	(tail_159 x_11891 (cons_79 x_11890 x_11891))))
(assert (isnil_84 nil_84))
(assert (forall ((x_11893 Int) (x_11894 list_79))
	(iscons_79 (cons_79 x_11893 x_11894))))
(assert (forall ((x_11895 Int) (x_11896 list_79))
	(diseqlist_79 nil_84 (cons_79 x_11895 x_11896))))
(assert (forall ((x_11897 Int) (x_11898 list_79))
	(diseqlist_79 (cons_79 x_11897 x_11898) nil_84)))
(assert (forall ((x_11899 Int) (x_11900 list_79) (x_11901 Int) (x_11902 list_79))
	(=> (distinct x_11899 x_11901) (diseqlist_79 (cons_79 x_11899 x_11900) (cons_79 x_11901 x_11902)))))
(assert (forall ((x_11899 Int) (x_11900 list_79) (x_11901 Int) (x_11902 list_79))
	(=> (diseqlist_79 x_11900 x_11902) (diseqlist_79 (cons_79 x_11899 x_11900) (cons_79 x_11901 x_11902)))))
(declare-fun x_11881 (list_79 list_79 list_79) Bool)
(assert (forall ((x_11884 list_79) (z_530 Int) (xs_160 list_79) (y_469 list_79))
	(=> (x_11881 x_11884 xs_160 y_469) (x_11881 (cons_79 z_530 x_11884) (cons_79 z_530 xs_160) y_469))))
(assert (forall ((x_11885 list_79))
	(x_11881 x_11885 nil_84 x_11885)))
(assert (forall ((x_11886 list_79) (xs_161 list_79) (ys_40 list_79) (zs_5 list_79))
	(=> (and (diseqlist_79 xs_161 ys_40) (x_11881 x_11886 xs_161 zs_5) (x_11881 x_11886 ys_40 zs_5)) false)))
(check-sat)
