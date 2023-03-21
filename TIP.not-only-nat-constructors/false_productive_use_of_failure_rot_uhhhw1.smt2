
(set-logic HORN)
(define-fun S_523 ((x Int)) Int (+ x 1))
(define-fun Z_2244 () Int 0)
(declare-fun projS_231 (Int Int) Bool)
(declare-fun isS_490 (Int) Bool)
(declare-fun isZ_490 (Int) Bool)
(assert (forall ((x_58254 Int))
	(projS_231 x_58254 (S_523 x_58254))))
(assert (forall ((x_58257 Int))
	(isS_490 (S_523 x_58257))))
(assert (isZ_490 Z_2244))
(declare-datatypes ((list_286 0)) (((nil_318) (cons_285 (head_570 Int) (tail_571 list_286)))))
(declare-fun diseqlist_285 (list_286 list_286) Bool)
(declare-fun head_571 (Int list_286) Bool)
(declare-fun tail_572 (list_286 list_286) Bool)
(declare-fun isnil_318 (list_286) Bool)
(declare-fun iscons_285 (list_286) Bool)
(assert (forall ((x_58263 Int) (x_58264 list_286))
	(head_571 x_58263 (cons_285 x_58263 x_58264))))
(assert (forall ((x_58263 Int) (x_58264 list_286))
	(tail_572 x_58264 (cons_285 x_58263 x_58264))))
(assert (isnil_318 nil_318))
(assert (forall ((x_58266 Int) (x_58267 list_286))
	(iscons_285 (cons_285 x_58266 x_58267))))
(assert (forall ((x_58268 Int) (x_58269 list_286))
	(diseqlist_285 nil_318 (cons_285 x_58268 x_58269))))
(assert (forall ((x_58270 Int) (x_58271 list_286))
	(diseqlist_285 (cons_285 x_58270 x_58271) nil_318)))
(assert (forall ((x_58272 Int) (x_58273 list_286) (x_58274 Int) (x_58275 list_286))
	(=> (distinct x_58272 x_58274) (diseqlist_285 (cons_285 x_58272 x_58273) (cons_285 x_58274 x_58275)))))
(assert (forall ((x_58272 Int) (x_58273 list_286) (x_58274 Int) (x_58275 list_286))
	(=> (diseqlist_285 x_58273 x_58275) (diseqlist_285 (cons_285 x_58272 x_58273) (cons_285 x_58274 x_58275)))))
(declare-fun length_57 (Int list_286) Bool)
(assert (forall ((x_58239 Int) (y_2497 Int) (xs_731 list_286))
	(=> (length_57 x_58239 xs_731) (length_57 (S_523 x_58239) (cons_285 y_2497 xs_731)))))
(assert (length_57 Z_2244 nil_318))
(declare-fun x_58233 (list_286 list_286 list_286) Bool)
(assert (forall ((x_58242 list_286) (z_2245 Int) (xs_732 list_286) (y_2498 list_286))
	(=> (x_58233 x_58242 xs_732 y_2498) (x_58233 (cons_285 z_2245 x_58242) (cons_285 z_2245 xs_732) y_2498))))
(assert (forall ((x_58243 list_286))
	(x_58233 x_58243 nil_318 x_58243)))
(declare-fun rotate_8 (list_286 Int list_286) Bool)
(assert (forall ((x_58244 list_286))
	(rotate_8 x_58244 Z_2244 x_58244)))
(assert (forall ((x_58245 list_286) (x_58246 list_286) (x_58236 Int) (x_58237 list_286) (z_2246 Int))
	(=> (and (x_58233 x_58246 x_58237 (cons_285 x_58236 nil_318)) (rotate_8 x_58245 z_2246 x_58246)) (rotate_8 x_58245 (S_523 z_2246) (cons_285 x_58236 x_58237)))))
(assert (forall ((z_2246 Int))
	(rotate_8 nil_318 (S_523 z_2246) nil_318)))
(assert (forall ((x_58249 Int) (x_58250 list_286) (x_58251 list_286) (xs_733 list_286) (ys_208 list_286))
	(=> (and true (diseqlist_285 xs_733 ys_208) (length_57 x_58249 xs_733) (x_58233 x_58250 xs_733 ys_208) (rotate_8 x_58251 x_58249 x_58250) (x_58233 x_58251 xs_733 ys_208)) false)))
(check-sat)