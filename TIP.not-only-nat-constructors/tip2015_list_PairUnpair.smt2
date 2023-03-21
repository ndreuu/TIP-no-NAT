
(set-logic HORN)
(define-fun Z_1468 () Int 0)
(define-fun S_346 ((x Int)) Int (+ x 1))
(declare-fun unS_493 (Int Int) Bool)
(declare-fun isZ_319 (Int) Bool)
(declare-fun isS_319 (Int) Bool)
(assert (forall ((x_45879 Int))
	(unS_493 x_45879 (S_346 x_45879))))
(assert (isZ_319 Z_1468))
(assert (forall ((x_45881 Int))
	(isS_319 (S_346 x_45881))))
(declare-fun add_263 (Int Int Int) Bool)
(declare-fun minus_261 (Int Int Int) Bool)
(declare-fun le_246 (Int Int) Bool)
(declare-fun ge_246 (Int Int) Bool)
(declare-fun lt_262 (Int Int) Bool)
(declare-fun gt_249 (Int Int) Bool)
(declare-fun mult_246 (Int Int Int) Bool)
(declare-fun div_246 (Int Int Int) Bool)
(declare-fun mod_248 (Int Int Int) Bool)
(assert (forall ((y_1633 Int))
	(add_263 y_1633 Z_1468 y_1633)))
(assert (forall ((x_45875 Int) (y_1633 Int) (r_307 Int))
	(=> (add_263 r_307 x_45875 y_1633) (add_263 (S_346 r_307) (S_346 x_45875) y_1633))))
(assert (forall ((y_1633 Int))
	(minus_261 Z_1468 Z_1468 y_1633)))
(assert (forall ((x_45875 Int) (y_1633 Int) (r_307 Int))
	(=> (minus_261 r_307 x_45875 y_1633) (minus_261 (S_346 r_307) (S_346 x_45875) y_1633))))
(assert (forall ((y_1633 Int))
	(le_246 Z_1468 y_1633)))
(assert (forall ((x_45875 Int) (y_1633 Int))
	(=> (le_246 x_45875 y_1633) (le_246 (S_346 x_45875) (S_346 y_1633)))))
(assert (forall ((y_1633 Int))
	(ge_246 y_1633 Z_1468)))
(assert (forall ((x_45875 Int) (y_1633 Int))
	(=> (ge_246 x_45875 y_1633) (ge_246 (S_346 x_45875) (S_346 y_1633)))))
(assert (forall ((y_1633 Int))
	(lt_262 Z_1468 (S_346 y_1633))))
(assert (forall ((x_45875 Int) (y_1633 Int))
	(=> (lt_262 x_45875 y_1633) (lt_262 (S_346 x_45875) (S_346 y_1633)))))
(assert (forall ((y_1633 Int))
	(gt_249 (S_346 y_1633) Z_1468)))
(assert (forall ((x_45875 Int) (y_1633 Int))
	(=> (gt_249 x_45875 y_1633) (gt_249 (S_346 x_45875) (S_346 y_1633)))))
(assert (forall ((y_1633 Int))
	(mult_246 Z_1468 Z_1468 y_1633)))
(assert (forall ((x_45875 Int) (y_1633 Int) (r_307 Int) (z_1469 Int))
	(=> (and (mult_246 r_307 x_45875 y_1633) (add_263 z_1469 r_307 y_1633)) (mult_246 z_1469 (S_346 x_45875) y_1633))))
(assert (forall ((x_45875 Int) (y_1633 Int))
	(=> (lt_262 x_45875 y_1633) (div_246 Z_1468 x_45875 y_1633))))
(assert (forall ((x_45875 Int) (y_1633 Int) (r_307 Int) (z_1469 Int))
	(=> (and (ge_246 x_45875 y_1633) (minus_261 z_1469 x_45875 y_1633) (div_246 r_307 z_1469 y_1633)) (div_246 (S_346 r_307) x_45875 y_1633))))
(assert (forall ((x_45875 Int) (y_1633 Int))
	(=> (lt_262 x_45875 y_1633) (mod_248 x_45875 x_45875 y_1633))))
(assert (forall ((x_45875 Int) (y_1633 Int) (r_307 Int) (z_1469 Int))
	(=> (and (ge_246 x_45875 y_1633) (minus_261 z_1469 x_45875 y_1633) (mod_248 r_307 z_1469 y_1633)) (mod_248 r_307 x_45875 y_1633))))
(declare-datatypes ((pair_72 0)) (((pair_73 (projpair_144 Int) (projpair_145 Int)))))
(declare-fun diseqpair_36 (pair_72 pair_72) Bool)
(declare-fun projpair_146 (Int pair_72) Bool)
(declare-fun projpair_147 (Int pair_72) Bool)
(declare-fun ispair_36 (pair_72) Bool)
(assert (forall ((x_45886 Int) (x_45887 Int))
	(projpair_146 x_45886 (pair_73 x_45886 x_45887))))
(assert (forall ((x_45886 Int) (x_45887 Int))
	(projpair_147 x_45887 (pair_73 x_45886 x_45887))))
(assert (forall ((x_45889 Int) (x_45890 Int))
	(ispair_36 (pair_73 x_45889 x_45890))))
(assert (forall ((x_45891 Int) (x_45892 Int) (x_45893 Int) (x_45894 Int))
	(=> (distinct x_45891 x_45893) (diseqpair_36 (pair_73 x_45891 x_45892) (pair_73 x_45893 x_45894)))))
(assert (forall ((x_45891 Int) (x_45892 Int) (x_45893 Int) (x_45894 Int))
	(=> (distinct x_45892 x_45894) (diseqpair_36 (pair_73 x_45891 x_45892) (pair_73 x_45893 x_45894)))))
(declare-datatypes ((list_179 0)) (((nil_204) (cons_179 (head_358 Int) (tail_358 list_179)))))
(declare-fun diseqlist_179 (list_179 list_179) Bool)
(declare-fun head_360 (Int list_179) Bool)
(declare-fun tail_360 (list_179 list_179) Bool)
(declare-fun isnil_204 (list_179) Bool)
(declare-fun iscons_179 (list_179) Bool)
(assert (forall ((x_45896 Int) (x_45897 list_179))
	(head_360 x_45896 (cons_179 x_45896 x_45897))))
(assert (forall ((x_45896 Int) (x_45897 list_179))
	(tail_360 x_45897 (cons_179 x_45896 x_45897))))
(assert (isnil_204 nil_204))
(assert (forall ((x_45899 Int) (x_45900 list_179))
	(iscons_179 (cons_179 x_45899 x_45900))))
(assert (forall ((x_45901 Int) (x_45902 list_179))
	(diseqlist_179 nil_204 (cons_179 x_45901 x_45902))))
(assert (forall ((x_45903 Int) (x_45904 list_179))
	(diseqlist_179 (cons_179 x_45903 x_45904) nil_204)))
(assert (forall ((x_45905 Int) (x_45906 list_179) (x_45907 Int) (x_45908 list_179))
	(=> (distinct x_45905 x_45907) (diseqlist_179 (cons_179 x_45905 x_45906) (cons_179 x_45907 x_45908)))))
(assert (forall ((x_45905 Int) (x_45906 list_179) (x_45907 Int) (x_45908 list_179))
	(=> (diseqlist_179 x_45906 x_45908) (diseqlist_179 (cons_179 x_45905 x_45906) (cons_179 x_45907 x_45908)))))
(declare-datatypes ((list_180 0)) (((nil_205) (cons_180 (head_359 pair_72) (tail_359 list_180)))))
(declare-fun diseqlist_180 (list_180 list_180) Bool)
(declare-fun head_361 (pair_72 list_180) Bool)
(declare-fun tail_361 (list_180 list_180) Bool)
(declare-fun isnil_205 (list_180) Bool)
(declare-fun iscons_180 (list_180) Bool)
(assert (forall ((x_45910 pair_72) (x_45911 list_180))
	(head_361 x_45910 (cons_180 x_45910 x_45911))))
(assert (forall ((x_45910 pair_72) (x_45911 list_180))
	(tail_361 x_45911 (cons_180 x_45910 x_45911))))
(assert (isnil_205 nil_205))
(assert (forall ((x_45913 pair_72) (x_45914 list_180))
	(iscons_180 (cons_180 x_45913 x_45914))))
(assert (forall ((x_45915 pair_72) (x_45916 list_180))
	(diseqlist_180 nil_205 (cons_180 x_45915 x_45916))))
(assert (forall ((x_45917 pair_72) (x_45918 list_180))
	(diseqlist_180 (cons_180 x_45917 x_45918) nil_205)))
(assert (forall ((x_45919 pair_72) (x_45920 list_180) (x_45921 pair_72) (x_45922 list_180))
	(=> (diseqpair_36 x_45919 x_45921) (diseqlist_180 (cons_180 x_45919 x_45920) (cons_180 x_45921 x_45922)))))
(assert (forall ((x_45919 pair_72) (x_45920 list_180) (x_45921 pair_72) (x_45922 list_180))
	(=> (diseqlist_180 x_45920 x_45922) (diseqlist_180 (cons_180 x_45919 x_45920) (cons_180 x_45921 x_45922)))))
(declare-fun unpair_1 (list_179 list_180) Bool)
(assert (forall ((x_45863 list_179) (z_1466 Int) (y_1629 Int) (xys_1 list_180))
	(=> (unpair_1 x_45863 xys_1) (unpair_1 (cons_179 z_1466 (cons_179 y_1629 x_45863)) (cons_180 (pair_73 z_1466 y_1629) xys_1)))))
(assert (unpair_1 nil_204 nil_205))
(declare-fun pairs_7 (list_180 list_179) Bool)
(assert (forall ((x_45866 list_180) (y_1631 Int) (xs_485 list_179) (y_1630 Int))
	(=> (pairs_7 x_45866 xs_485) (pairs_7 (cons_180 (pair_73 y_1630 y_1631) x_45866) (cons_179 y_1630 (cons_179 y_1631 xs_485))))))
(assert (forall ((y_1630 Int))
	(pairs_7 nil_205 (cons_179 y_1630 nil_204))))
(assert (pairs_7 nil_205 nil_204))
(declare-fun length_29 (Int list_179) Bool)
(assert (forall ((x_45869 Int) (x_45870 Int) (y_1632 Int) (l_31 list_179))
	(=> (and (length_29 x_45870 l_31) (add_263 x_45869 (S_346 Z_1468) x_45870)) (length_29 x_45869 (cons_179 y_1632 l_31)))))
(assert (length_29 Z_1468 nil_204))
(assert (forall ((x_45874 Int) (x_45872 list_180) (x_45873 list_179) (xs_486 list_179))
	(=> (and true (diseqlist_179 x_45873 xs_486) (length_29 x_45874 xs_486) (pairs_7 x_45872 xs_486) (unpair_1 x_45873 x_45872) (mod_248 Z_1468 x_45874 (S_346 (S_346 Z_1468)))) false)))
(check-sat)