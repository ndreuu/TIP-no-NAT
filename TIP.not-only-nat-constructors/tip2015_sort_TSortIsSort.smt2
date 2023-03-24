(set-logic HORN)
(define-fun Z_1127 () Int 0)
(define-fun S_285 ((x Int)) Int (+ x 1))
(declare-fun unS_389 (Int Int) Bool)
(declare-fun isZ_267 (Int) Bool)
(declare-fun isS_267 (Int) Bool)
(assert (forall ((x_28550 Int))
	(unS_389 x_28550 (S_285 x_28550))))
(assert (isZ_267 Z_1127))
(assert (forall ((x_28552 Int))
	(isS_267 (S_285 x_28552))))
(declare-fun add_209 (Int Int Int) Bool)
(declare-fun minus_201 (Int Int Int) Bool)
(declare-fun le_194 (Int Int) Bool)
(declare-fun ge_194 (Int Int) Bool)
(declare-fun lt_204 (Int Int) Bool)
(declare-fun gt_196 (Int Int) Bool)
(declare-fun mult_194 (Int Int Int) Bool)
(declare-fun div_194 (Int Int Int) Bool)
(declare-fun mod_194 (Int Int Int) Bool)
(assert (forall ((y_1195 Int))
	(add_209 y_1195 Z_1127 y_1195)))
(assert (forall ((x_28548 Int) (y_1195 Int) (r_229 Int))
	(=> (add_209 r_229 x_28548 y_1195) (add_209 (S_285 r_229) (S_285 x_28548) y_1195))))
(assert (forall ((y_1195 Int))
	(minus_201 Z_1127 Z_1127 y_1195)))
(assert (forall ((x_28548 Int) (y_1195 Int) (r_229 Int))
	(=> (minus_201 r_229 x_28548 y_1195) (minus_201 (S_285 r_229) (S_285 x_28548) y_1195))))
(assert (forall ((y_1195 Int))
	(le_194 Z_1127 y_1195)))
(assert (forall ((x_28548 Int) (y_1195 Int))
	(=> (le_194 x_28548 y_1195) (le_194 (S_285 x_28548) (S_285 y_1195)))))
(assert (forall ((y_1195 Int))
	(ge_194 y_1195 Z_1127)))
(assert (forall ((x_28548 Int) (y_1195 Int))
	(=> (ge_194 x_28548 y_1195) (ge_194 (S_285 x_28548) (S_285 y_1195)))))
(assert (forall ((y_1195 Int))
	(lt_204 Z_1127 (S_285 y_1195))))
(assert (forall ((x_28548 Int) (y_1195 Int))
	(=> (lt_204 x_28548 y_1195) (lt_204 (S_285 x_28548) (S_285 y_1195)))))
(assert (forall ((y_1195 Int))
	(gt_196 (S_285 y_1195) Z_1127)))
(assert (forall ((x_28548 Int) (y_1195 Int))
	(=> (gt_196 x_28548 y_1195) (gt_196 (S_285 x_28548) (S_285 y_1195)))))
(assert (forall ((y_1195 Int))
	(mult_194 Z_1127 Z_1127 y_1195)))
(assert (forall ((x_28548 Int) (y_1195 Int) (r_229 Int) (z_1128 Int))
	(=> (and (mult_194 r_229 x_28548 y_1195) (add_209 z_1128 r_229 y_1195)) (mult_194 z_1128 (S_285 x_28548) y_1195))))
(assert (forall ((x_28548 Int) (y_1195 Int))
	(=> (lt_204 x_28548 y_1195) (div_194 Z_1127 x_28548 y_1195))))
(assert (forall ((x_28548 Int) (y_1195 Int) (r_229 Int) (z_1128 Int))
	(=> (and (ge_194 x_28548 y_1195) (minus_201 z_1128 x_28548 y_1195) (div_194 r_229 z_1128 y_1195)) (div_194 (S_285 r_229) x_28548 y_1195))))
(assert (forall ((x_28548 Int) (y_1195 Int))
	(=> (lt_204 x_28548 y_1195) (mod_194 x_28548 x_28548 y_1195))))
(assert (forall ((x_28548 Int) (y_1195 Int) (r_229 Int) (z_1128 Int))
	(=> (and (ge_194 x_28548 y_1195) (minus_201 z_1128 x_28548 y_1195) (mod_194 r_229 z_1128 y_1195)) (mod_194 r_229 x_28548 y_1195))))
(declare-datatypes ((list_135 0)) (((nil_150) (cons_135 (head_270 Int) (tail_270 list_135)))))
(declare-fun diseqlist_135 (list_135 list_135) Bool)
(declare-fun head_271 (Int list_135) Bool)
(declare-fun tail_271 (list_135 list_135) Bool)
(declare-fun isnil_150 (list_135) Bool)
(declare-fun iscons_135 (list_135) Bool)
(assert (forall ((x_28558 Int) (x_28559 list_135))
	(head_271 x_28558 (cons_135 x_28558 x_28559))))
(assert (forall ((x_28558 Int) (x_28559 list_135))
	(tail_271 x_28559 (cons_135 x_28558 x_28559))))
(assert (isnil_150 nil_150))
(assert (forall ((x_28561 Int) (x_28562 list_135))
	(iscons_135 (cons_135 x_28561 x_28562))))
(assert (forall ((x_28563 Int) (x_28564 list_135))
	(diseqlist_135 nil_150 (cons_135 x_28563 x_28564))))
(assert (forall ((x_28565 Int) (x_28566 list_135))
	(diseqlist_135 (cons_135 x_28565 x_28566) nil_150)))
(assert (forall ((x_28567 Int) (x_28568 list_135) (x_28569 Int) (x_28570 list_135))
	(=> (distinct x_28567 x_28569) (diseqlist_135 (cons_135 x_28567 x_28568) (cons_135 x_28569 x_28570)))))
(assert (forall ((x_28567 Int) (x_28568 list_135) (x_28569 Int) (x_28570 list_135))
	(=> (diseqlist_135 x_28568 x_28570) (diseqlist_135 (cons_135 x_28567 x_28568) (cons_135 x_28569 x_28570)))))
(declare-datatypes ((Tree_5 0)) (((TNode_2 (projTNode_12 Tree_5) (projTNode_13 Int) (projTNode_14 Tree_5)) (TNil_2))))
(declare-fun diseqTree_5 (Tree_5 Tree_5) Bool)
(declare-fun projTNode_15 (Tree_5 Tree_5) Bool)
(declare-fun projTNode_16 (Int Tree_5) Bool)
(declare-fun projTNode_17 (Tree_5 Tree_5) Bool)
(declare-fun isTNode_2 (Tree_5) Bool)
(declare-fun isTNil_2 (Tree_5) Bool)
(assert (forall ((x_28571 Tree_5) (x_28572 Int) (x_28573 Tree_5))
	(projTNode_15 x_28571 (TNode_2 x_28571 x_28572 x_28573))))
(assert (forall ((x_28571 Tree_5) (x_28572 Int) (x_28573 Tree_5))
	(projTNode_16 x_28572 (TNode_2 x_28571 x_28572 x_28573))))
(assert (forall ((x_28571 Tree_5) (x_28572 Int) (x_28573 Tree_5))
	(projTNode_17 x_28573 (TNode_2 x_28571 x_28572 x_28573))))
(assert (forall ((x_28576 Tree_5) (x_28577 Int) (x_28578 Tree_5))
	(isTNode_2 (TNode_2 x_28576 x_28577 x_28578))))
(assert (isTNil_2 TNil_2))
(assert (forall ((x_28579 Tree_5) (x_28580 Int) (x_28581 Tree_5))
	(diseqTree_5 (TNode_2 x_28579 x_28580 x_28581) TNil_2)))
(assert (forall ((x_28582 Tree_5) (x_28583 Int) (x_28584 Tree_5))
	(diseqTree_5 TNil_2 (TNode_2 x_28582 x_28583 x_28584))))
(assert (forall ((x_28585 Tree_5) (x_28586 Int) (x_28587 Tree_5) (x_28588 Tree_5) (x_28589 Int) (x_28590 Tree_5))
	(=> (diseqTree_5 x_28585 x_28588) (diseqTree_5 (TNode_2 x_28585 x_28586 x_28587) (TNode_2 x_28588 x_28589 x_28590)))))
(assert (forall ((x_28585 Tree_5) (x_28586 Int) (x_28587 Tree_5) (x_28588 Tree_5) (x_28589 Int) (x_28590 Tree_5))
	(=> (distinct x_28586 x_28589) (diseqTree_5 (TNode_2 x_28585 x_28586 x_28587) (TNode_2 x_28588 x_28589 x_28590)))))
(assert (forall ((x_28585 Tree_5) (x_28586 Int) (x_28587 Tree_5) (x_28588 Tree_5) (x_28589 Int) (x_28590 Tree_5))
	(=> (diseqTree_5 x_28587 x_28590) (diseqTree_5 (TNode_2 x_28585 x_28586 x_28587) (TNode_2 x_28588 x_28589 x_28590)))))
(declare-fun insert_16 (list_135 Int list_135) Bool)
(assert (forall ((z_1124 Int) (xs_362 list_135) (x_28516 Int))
	(=> (le_194 x_28516 z_1124) (insert_16 (cons_135 x_28516 (cons_135 z_1124 xs_362)) x_28516 (cons_135 z_1124 xs_362)))))
(assert (forall ((x_28524 list_135) (z_1124 Int) (xs_362 list_135) (x_28516 Int))
	(=> (and (gt_196 x_28516 z_1124) (insert_16 x_28524 x_28516 xs_362)) (insert_16 (cons_135 z_1124 x_28524) x_28516 (cons_135 z_1124 xs_362)))))
(assert (forall ((x_28516 Int))
	(insert_16 (cons_135 x_28516 nil_150) x_28516 nil_150)))
(declare-fun isort_16 (list_135 list_135) Bool)
(assert (forall ((x_28526 list_135) (x_28527 list_135) (y_1191 Int) (xs_363 list_135))
	(=> (and (isort_16 x_28527 xs_363) (insert_16 x_28526 y_1191 x_28527)) (isort_16 x_28526 (cons_135 y_1191 xs_363)))))
(assert (isort_16 nil_150 nil_150))
(declare-fun flatten_5 (list_135 Tree_5 list_135) Bool)
(assert (forall ((x_28530 list_135))
	(flatten_5 x_28530 TNil_2 x_28530)))
(assert (forall ((x_28531 list_135) (x_28532 list_135) (p_191 Tree_5) (z_1125 Int) (q_60 Tree_5) (y_1192 list_135))
	(=> (and (flatten_5 x_28532 q_60 y_1192) (flatten_5 x_28531 p_191 (cons_135 z_1125 x_28532))) (flatten_5 x_28531 (TNode_2 p_191 z_1125 q_60) y_1192))))
(declare-fun add_208 (Tree_5 Int Tree_5) Bool)
(assert (forall ((x_28519 Int))
	(add_208 (TNode_2 TNil_2 x_28519 TNil_2) x_28519 TNil_2)))
(assert (forall ((x_28536 Tree_5) (p_192 Tree_5) (z_1126 Int) (q_61 Tree_5) (x_28519 Int))
	(=> (and (le_194 x_28519 z_1126) (add_208 x_28536 x_28519 p_192)) (add_208 (TNode_2 x_28536 z_1126 q_61) x_28519 (TNode_2 p_192 z_1126 q_61)))))
(assert (forall ((x_28538 Tree_5) (p_192 Tree_5) (z_1126 Int) (q_61 Tree_5) (x_28519 Int))
	(=> (and (gt_196 x_28519 z_1126) (add_208 x_28538 x_28519 q_61)) (add_208 (TNode_2 p_192 z_1126 x_28538) x_28519 (TNode_2 p_192 z_1126 q_61)))))
(declare-fun toTree_2 (Tree_5 list_135) Bool)
(assert (forall ((x_28539 Tree_5) (x_28540 Tree_5) (y_1194 Int) (xs_364 list_135))
	(=> (and (toTree_2 x_28540 xs_364) (add_208 x_28539 y_1194 x_28540)) (toTree_2 x_28539 (cons_135 y_1194 xs_364)))))
(assert (toTree_2 TNil_2 nil_150))
(declare-fun tsort_2 (list_135 list_135) Bool)
(assert (forall ((x_28543 list_135) (x_28544 Tree_5) (x_28521 list_135))
	(=> (and (toTree_2 x_28544 x_28521) (flatten_5 x_28543 x_28544 nil_150)) (tsort_2 x_28543 x_28521))))
(assert (forall ((x_28546 list_135) (x_28547 list_135) (xs_365 list_135))
	(=> (and (diseqlist_135 x_28546 x_28547) (tsort_2 x_28546 xs_365) (isort_16 x_28547 xs_365)) false)))
(check-sat)
