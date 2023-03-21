(set-logic HORN)
(define-fun Z_728 () Int 0)
(define-fun S_211 ((x Int)) Int (+ x 1))
(declare-fun unS_259 (Int Int) Bool)
(declare-fun isZ_202 (Int) Bool)
(declare-fun isS_202 (Int) Bool)
(assert (forall ((x_18488 Int))
	(unS_259 x_18488 (S_211 x_18488))))
(assert (isZ_202 Z_728))
(assert (forall ((x_18490 Int))
	(isS_202 (S_211 x_18490))))
(declare-fun add_134 (Int Int Int) Bool)
(declare-fun minus_132 (Int Int Int) Bool)
(declare-fun le_129 (Int Int) Bool)
(declare-fun ge_129 (Int Int) Bool)
(declare-fun lt_133 (Int Int) Bool)
(declare-fun gt_130 (Int Int) Bool)
(declare-fun mult_129 (Int Int Int) Bool)
(declare-fun div_129 (Int Int Int) Bool)
(declare-fun mod_129 (Int Int Int) Bool)
(assert (forall ((y_715 Int))
	(add_134 y_715 Z_728 y_715)))
(assert (forall ((x_18486 Int) (y_715 Int) (r_150 Int))
	(=> (add_134 r_150 x_18486 y_715) (add_134 (S_211 r_150) (S_211 x_18486) y_715))))
(assert (forall ((y_715 Int))
	(minus_132 Z_728 Z_728 y_715)))
(assert (forall ((x_18486 Int) (y_715 Int) (r_150 Int))
	(=> (minus_132 r_150 x_18486 y_715) (minus_132 (S_211 r_150) (S_211 x_18486) y_715))))
(assert (forall ((y_715 Int))
	(le_129 Z_728 y_715)))
(assert (forall ((x_18486 Int) (y_715 Int))
	(=> (le_129 x_18486 y_715) (le_129 (S_211 x_18486) (S_211 y_715)))))
(assert (forall ((y_715 Int))
	(ge_129 y_715 Z_728)))
(assert (forall ((x_18486 Int) (y_715 Int))
	(=> (ge_129 x_18486 y_715) (ge_129 (S_211 x_18486) (S_211 y_715)))))
(assert (forall ((y_715 Int))
	(lt_133 Z_728 (S_211 y_715))))
(assert (forall ((x_18486 Int) (y_715 Int))
	(=> (lt_133 x_18486 y_715) (lt_133 (S_211 x_18486) (S_211 y_715)))))
(assert (forall ((y_715 Int))
	(gt_130 (S_211 y_715) Z_728)))
(assert (forall ((x_18486 Int) (y_715 Int))
	(=> (gt_130 x_18486 y_715) (gt_130 (S_211 x_18486) (S_211 y_715)))))
(assert (forall ((y_715 Int))
	(mult_129 Z_728 Z_728 y_715)))
(assert (forall ((x_18486 Int) (y_715 Int) (r_150 Int) (z_729 Int))
	(=> (and (mult_129 r_150 x_18486 y_715) (add_134 z_729 r_150 y_715)) (mult_129 z_729 (S_211 x_18486) y_715))))
(assert (forall ((x_18486 Int) (y_715 Int))
	(=> (lt_133 x_18486 y_715) (div_129 Z_728 x_18486 y_715))))
(assert (forall ((x_18486 Int) (y_715 Int) (r_150 Int) (z_729 Int))
	(=> (and (ge_129 x_18486 y_715) (minus_132 z_729 x_18486 y_715) (div_129 r_150 z_729 y_715)) (div_129 (S_211 r_150) x_18486 y_715))))
(assert (forall ((x_18486 Int) (y_715 Int))
	(=> (lt_133 x_18486 y_715) (mod_129 x_18486 x_18486 y_715))))
(assert (forall ((x_18486 Int) (y_715 Int) (r_150 Int) (z_729 Int))
	(=> (and (ge_129 x_18486 y_715) (minus_132 z_729 x_18486 y_715) (mod_129 r_150 z_729 y_715)) (mod_129 r_150 x_18486 y_715))))
(declare-datatypes ((Bool_129 0)) (((false_129) (true_129))))
(declare-fun diseqBool_56 (Bool_129 Bool_129) Bool)
(declare-fun isfalse_56 (Bool_129) Bool)
(declare-fun istrue_56 (Bool_129) Bool)
(assert (isfalse_56 false_129))
(assert (istrue_56 true_129))
(assert (diseqBool_56 false_129 true_129))
(assert (diseqBool_56 true_129 false_129))
(declare-fun and_129 (Bool_129 Bool_129 Bool_129) Bool)
(declare-fun or_130 (Bool_129 Bool_129 Bool_129) Bool)
(declare-fun hence_129 (Bool_129 Bool_129 Bool_129) Bool)
(declare-fun not_129 (Bool_129 Bool_129) Bool)
(assert (and_129 false_129 false_129 false_129))
(assert (and_129 false_129 true_129 false_129))
(assert (and_129 false_129 false_129 true_129))
(assert (and_129 true_129 true_129 true_129))
(assert (or_130 false_129 false_129 false_129))
(assert (or_130 true_129 true_129 false_129))
(assert (or_130 true_129 false_129 true_129))
(assert (or_130 true_129 true_129 true_129))
(assert (hence_129 true_129 false_129 false_129))
(assert (hence_129 false_129 true_129 false_129))
(assert (hence_129 true_129 false_129 true_129))
(assert (hence_129 true_129 true_129 true_129))
(assert (not_129 true_129 false_129))
(assert (not_129 false_129 true_129))
(declare-datatypes ((list_97 0)) (((nil_105) (cons_97 (head_194 Int) (tail_194 list_97)))))
(declare-fun diseqlist_97 (list_97 list_97) Bool)
(declare-fun head_195 (Int list_97) Bool)
(declare-fun tail_195 (list_97 list_97) Bool)
(declare-fun isnil_105 (list_97) Bool)
(declare-fun iscons_97 (list_97) Bool)
(assert (forall ((x_18498 Int) (x_18499 list_97))
	(head_195 x_18498 (cons_97 x_18498 x_18499))))
(assert (forall ((x_18498 Int) (x_18499 list_97))
	(tail_195 x_18499 (cons_97 x_18498 x_18499))))
(assert (isnil_105 nil_105))
(assert (forall ((x_18501 Int) (x_18502 list_97))
	(iscons_97 (cons_97 x_18501 x_18502))))
(assert (forall ((x_18503 Int) (x_18504 list_97))
	(diseqlist_97 nil_105 (cons_97 x_18503 x_18504))))
(assert (forall ((x_18505 Int) (x_18506 list_97))
	(diseqlist_97 (cons_97 x_18505 x_18506) nil_105)))
(assert (forall ((x_18507 Int) (x_18508 list_97) (x_18509 Int) (x_18510 list_97))
	(=> (distinct x_18507 x_18509) (diseqlist_97 (cons_97 x_18507 x_18508) (cons_97 x_18509 x_18510)))))
(assert (forall ((x_18507 Int) (x_18508 list_97) (x_18509 Int) (x_18510 list_97))
	(=> (diseqlist_97 x_18508 x_18510) (diseqlist_97 (cons_97 x_18507 x_18508) (cons_97 x_18509 x_18510)))))
(declare-datatypes ((pair_32 0)) (((pair_33 (projpair_64 Bool_129) (projpair_65 list_97)))))
(declare-fun diseqpair_16 (pair_32 pair_32) Bool)
(declare-fun projpair_66 (Bool_129 pair_32) Bool)
(declare-fun projpair_67 (list_97 pair_32) Bool)
(declare-fun ispair_16 (pair_32) Bool)
(assert (forall ((x_18511 Bool_129) (x_18512 list_97))
	(projpair_66 x_18511 (pair_33 x_18511 x_18512))))
(assert (forall ((x_18511 Bool_129) (x_18512 list_97))
	(projpair_67 x_18512 (pair_33 x_18511 x_18512))))
(assert (forall ((x_18514 Bool_129) (x_18515 list_97))
	(ispair_16 (pair_33 x_18514 x_18515))))
(assert (forall ((x_18516 Bool_129) (x_18517 list_97) (x_18518 Bool_129) (x_18519 list_97))
	(=> (diseqBool_56 x_18516 x_18518) (diseqpair_16 (pair_33 x_18516 x_18517) (pair_33 x_18518 x_18519)))))
(assert (forall ((x_18516 Bool_129) (x_18517 list_97) (x_18518 Bool_129) (x_18519 list_97))
	(=> (diseqlist_97 x_18517 x_18519) (diseqpair_16 (pair_33 x_18516 x_18517) (pair_33 x_18518 x_18519)))))
(declare-fun insert_7 (list_97 Int list_97) Bool)
(assert (forall ((z_726 Int) (xs_226 list_97) (x_18461 Int))
	(=> (le_129 x_18461 z_726) (insert_7 (cons_97 x_18461 (cons_97 z_726 xs_226)) x_18461 (cons_97 z_726 xs_226)))))
(assert (forall ((x_18467 list_97) (z_726 Int) (xs_226 list_97) (x_18461 Int))
	(=> (and (gt_130 x_18461 z_726) (insert_7 x_18467 x_18461 xs_226)) (insert_7 (cons_97 z_726 x_18467) x_18461 (cons_97 z_726 xs_226)))))
(assert (forall ((x_18461 Int))
	(insert_7 (cons_97 x_18461 nil_105) x_18461 nil_105)))
(declare-fun isort_7 (list_97 list_97) Bool)
(assert (forall ((x_18469 list_97) (x_18470 list_97) (y_712 Int) (xs_227 list_97))
	(=> (and (isort_7 x_18470 xs_227) (insert_7 x_18469 y_712 x_18470)) (isort_7 x_18469 (cons_97 y_712 xs_227)))))
(assert (isort_7 nil_105 nil_105))
(declare-fun bubble_1 (pair_32 list_97) Bool)
(assert (forall ((b_15 Bool_129) (ys_60 list_97) (y_714 Int) (xs_228 list_97) (y_713 Int))
	(=> (and (le_129 y_713 y_714) (bubble_1 (pair_33 b_15 ys_60) (cons_97 y_714 xs_228))) (bubble_1 (pair_33 b_15 (cons_97 y_713 ys_60)) (cons_97 y_713 (cons_97 y_714 xs_228))))))
(assert (forall ((b_16 Bool_129) (ys_61 list_97) (y_714 Int) (xs_228 list_97) (y_713 Int))
	(=> (and (gt_130 y_713 y_714) (bubble_1 (pair_33 b_16 ys_61) (cons_97 y_713 xs_228))) (bubble_1 (pair_33 true_129 (cons_97 y_714 ys_61)) (cons_97 y_713 (cons_97 y_714 xs_228))))))
(assert (forall ((y_713 Int))
	(bubble_1 (pair_33 false_129 (cons_97 y_713 nil_105)) (cons_97 y_713 nil_105))))
(assert (bubble_1 (pair_33 false_129 nil_105) nil_105))
(declare-fun bubsort_1 (list_97 list_97) Bool)
(assert (forall ((x_18480 list_97) (ys_62 list_97) (x_18464 list_97))
	(=> (and (bubsort_1 x_18480 ys_62) (bubble_1 (pair_33 true_129 ys_62) x_18464)) (bubsort_1 x_18480 x_18464))))
(assert (forall ((ys_62 list_97) (x_18464 list_97))
	(=> (bubble_1 (pair_33 false_129 ys_62) x_18464) (bubsort_1 x_18464 x_18464))))
(assert (forall ((x_18484 list_97) (x_18485 list_97) (xs_229 list_97))
	(=> (and true (diseqlist_97 x_18484 x_18485) (bubsort_1 x_18484 xs_229) (isort_7 x_18485 xs_229)) false)))
(check-sat)