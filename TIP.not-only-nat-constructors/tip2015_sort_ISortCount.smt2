
(set-logic HORN)
(define-fun Z_1770 () Int 0)
(define-fun S_395 ((x Int)) Int (+ x 1))
(declare-fun unS_583 (Int Int) Bool)
(declare-fun isZ_364 (Int) Bool)
(declare-fun isS_364 (Int) Bool)
(assert (forall ((x_52170 Int))
	(unS_583 x_52170 (S_395 x_52170))))
(assert (isZ_364 Z_1770))
(assert (forall ((x_52172 Int))
	(isS_364 (S_395 x_52172))))
(declare-fun add_313 (Int Int Int) Bool)
(declare-fun minus_309 (Int Int Int) Bool)
(declare-fun le_291 (Int Int) Bool)
(declare-fun ge_291 (Int Int) Bool)
(declare-fun lt_310 (Int Int) Bool)
(declare-fun gt_294 (Int Int) Bool)
(declare-fun mult_291 (Int Int Int) Bool)
(declare-fun div_291 (Int Int Int) Bool)
(declare-fun mod_293 (Int Int Int) Bool)
(assert (forall ((y_1991 Int))
	(add_313 y_1991 Z_1770 y_1991)))
(assert (forall ((x_52167 Int) (y_1991 Int) (r_360 Int))
	(=> (add_313 r_360 x_52167 y_1991) (add_313 (S_395 r_360) (S_395 x_52167) y_1991))))
(assert (forall ((y_1991 Int))
	(minus_309 Z_1770 Z_1770 y_1991)))
(assert (forall ((x_52167 Int) (y_1991 Int) (r_360 Int))
	(=> (minus_309 r_360 x_52167 y_1991) (minus_309 (S_395 r_360) (S_395 x_52167) y_1991))))
(assert (forall ((y_1991 Int))
	(le_291 Z_1770 y_1991)))
(assert (forall ((x_52167 Int) (y_1991 Int))
	(=> (le_291 x_52167 y_1991) (le_291 (S_395 x_52167) (S_395 y_1991)))))
(assert (forall ((y_1991 Int))
	(ge_291 y_1991 Z_1770)))
(assert (forall ((x_52167 Int) (y_1991 Int))
	(=> (ge_291 x_52167 y_1991) (ge_291 (S_395 x_52167) (S_395 y_1991)))))
(assert (forall ((y_1991 Int))
	(lt_310 Z_1770 (S_395 y_1991))))
(assert (forall ((x_52167 Int) (y_1991 Int))
	(=> (lt_310 x_52167 y_1991) (lt_310 (S_395 x_52167) (S_395 y_1991)))))
(assert (forall ((y_1991 Int))
	(gt_294 (S_395 y_1991) Z_1770)))
(assert (forall ((x_52167 Int) (y_1991 Int))
	(=> (gt_294 x_52167 y_1991) (gt_294 (S_395 x_52167) (S_395 y_1991)))))
(assert (forall ((y_1991 Int))
	(mult_291 Z_1770 Z_1770 y_1991)))
(assert (forall ((x_52167 Int) (y_1991 Int) (r_360 Int) (z_1771 Int))
	(=> (and (mult_291 r_360 x_52167 y_1991) (add_313 z_1771 r_360 y_1991)) (mult_291 z_1771 (S_395 x_52167) y_1991))))
(assert (forall ((x_52167 Int) (y_1991 Int))
	(=> (lt_310 x_52167 y_1991) (div_291 Z_1770 x_52167 y_1991))))
(assert (forall ((x_52167 Int) (y_1991 Int) (r_360 Int) (z_1771 Int))
	(=> (and (ge_291 x_52167 y_1991) (minus_309 z_1771 x_52167 y_1991) (div_291 r_360 z_1771 y_1991)) (div_291 (S_395 r_360) x_52167 y_1991))))
(assert (forall ((x_52167 Int) (y_1991 Int))
	(=> (lt_310 x_52167 y_1991) (mod_293 x_52167 x_52167 y_1991))))
(assert (forall ((x_52167 Int) (y_1991 Int) (r_360 Int) (z_1771 Int))
	(=> (and (ge_291 x_52167 y_1991) (minus_309 z_1771 x_52167 y_1991) (mod_293 r_360 z_1771 y_1991)) (mod_293 r_360 x_52167 y_1991))))
(declare-datatypes ((list_207 0)) (((nil_235) (cons_207 (head_414 Int) (tail_414 list_207)))))
(declare-fun diseqlist_207 (list_207 list_207) Bool)
(declare-fun head_415 (Int list_207) Bool)
(declare-fun tail_415 (list_207 list_207) Bool)
(declare-fun isnil_235 (list_207) Bool)
(declare-fun iscons_207 (list_207) Bool)
(assert (forall ((x_52178 Int) (x_52179 list_207))
	(head_415 x_52178 (cons_207 x_52178 x_52179))))
(assert (forall ((x_52178 Int) (x_52179 list_207))
	(tail_415 x_52179 (cons_207 x_52178 x_52179))))
(assert (isnil_235 nil_235))
(assert (forall ((x_52181 Int) (x_52182 list_207))
	(iscons_207 (cons_207 x_52181 x_52182))))
(assert (forall ((x_52183 Int) (x_52184 list_207))
	(diseqlist_207 nil_235 (cons_207 x_52183 x_52184))))
(assert (forall ((x_52185 Int) (x_52186 list_207))
	(diseqlist_207 (cons_207 x_52185 x_52186) nil_235)))
(assert (forall ((x_52187 Int) (x_52188 list_207) (x_52189 Int) (x_52190 list_207))
	(=> (distinct x_52187 x_52189) (diseqlist_207 (cons_207 x_52187 x_52188) (cons_207 x_52189 x_52190)))))
(assert (forall ((x_52187 Int) (x_52188 list_207) (x_52189 Int) (x_52190 list_207))
	(=> (diseqlist_207 x_52188 x_52190) (diseqlist_207 (cons_207 x_52187 x_52188) (cons_207 x_52189 x_52190)))))
(declare-fun insert_24 (list_207 Int list_207) Bool)
(assert (forall ((z_1768 Int) (xs_567 list_207) (x_52147 Int))
	(=> (le_291 x_52147 z_1768) (insert_24 (cons_207 x_52147 (cons_207 z_1768 xs_567)) x_52147 (cons_207 z_1768 xs_567)))))
(assert (forall ((x_52153 list_207) (z_1768 Int) (xs_567 list_207) (x_52147 Int))
	(=> (and (gt_294 x_52147 z_1768) (insert_24 x_52153 x_52147 xs_567)) (insert_24 (cons_207 z_1768 x_52153) x_52147 (cons_207 z_1768 xs_567)))))
(assert (forall ((x_52147 Int))
	(insert_24 (cons_207 x_52147 nil_235) x_52147 nil_235)))
(declare-fun isort_24 (list_207 list_207) Bool)
(assert (forall ((x_52155 list_207) (x_52156 list_207) (y_1989 Int) (xs_568 list_207))
	(=> (and (isort_24 x_52156 xs_568) (insert_24 x_52155 y_1989 x_52156)) (isort_24 x_52155 (cons_207 y_1989 xs_568)))))
(assert (isort_24 nil_235 nil_235))
(declare-fun count_33 (Int Int list_207) Bool)
(assert (forall ((x_52159 Int) (x_52160 Int) (ys_187 list_207) (x_52149 Int))
	(=> (and (count_33 x_52160 x_52149 ys_187) (add_313 x_52159 (S_395 Z_1770) x_52160)) (count_33 x_52159 x_52149 (cons_207 x_52149 ys_187)))))
(assert (forall ((x_52161 Int) (z_1769 Int) (ys_187 list_207) (x_52149 Int))
	(=> (and (distinct x_52149 z_1769) (count_33 x_52161 x_52149 ys_187)) (count_33 x_52161 x_52149 (cons_207 z_1769 ys_187)))))
(assert (forall ((x_52149 Int))
	(count_33 Z_1770 x_52149 nil_235)))
(assert (forall ((x_52164 list_207) (x_52165 Int) (x_52166 Int) (x_52150 Int) (xs_569 list_207))
	(=> (and true (distinct x_52165 x_52166) (isort_24 x_52164 xs_569) (count_33 x_52165 x_52150 x_52164) (count_33 x_52166 x_52150 xs_569)) false)))
(check-sat)