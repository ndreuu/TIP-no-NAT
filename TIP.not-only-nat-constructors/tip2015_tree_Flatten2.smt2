
(set-logic HORN)
(define-fun Z_738 () Int 0)
(define-fun S_215 ((x Int)) Int (+ x 1))
(declare-fun unS_265 (Int Int) Bool)
(declare-fun isZ_205 (Int) Bool)
(declare-fun isS_205 (Int) Bool)
(assert (forall ((x_18662 Int))
	(unS_265 x_18662 (S_215 x_18662))))
(assert (isZ_205 Z_738))
(assert (forall ((x_18664 Int))
	(isS_205 (S_215 x_18664))))
(declare-fun add_137 (Int Int Int) Bool)
(declare-fun minus_135 (Int Int Int) Bool)
(declare-fun le_132 (Int Int) Bool)
(declare-fun ge_132 (Int Int) Bool)
(declare-fun lt_136 (Int Int) Bool)
(declare-fun gt_133 (Int Int) Bool)
(declare-fun mult_132 (Int Int Int) Bool)
(declare-fun div_132 (Int Int Int) Bool)
(declare-fun mod_132 (Int Int Int) Bool)
(assert (forall ((y_724 Int))
	(add_137 y_724 Z_738 y_724)))
(assert (forall ((x_18626 Int) (y_724 Int) (r_153 Int))
	(=> (add_137 r_153 x_18626 y_724) (add_137 (S_215 r_153) (S_215 x_18626) y_724))))
(assert (forall ((y_724 Int))
	(minus_135 Z_738 Z_738 y_724)))
(assert (forall ((x_18626 Int) (y_724 Int) (r_153 Int))
	(=> (minus_135 r_153 x_18626 y_724) (minus_135 (S_215 r_153) (S_215 x_18626) y_724))))
(assert (forall ((y_724 Int))
	(le_132 Z_738 y_724)))
(assert (forall ((x_18626 Int) (y_724 Int))
	(=> (le_132 x_18626 y_724) (le_132 (S_215 x_18626) (S_215 y_724)))))
(assert (forall ((y_724 Int))
	(ge_132 y_724 Z_738)))
(assert (forall ((x_18626 Int) (y_724 Int))
	(=> (ge_132 x_18626 y_724) (ge_132 (S_215 x_18626) (S_215 y_724)))))
(assert (forall ((y_724 Int))
	(lt_136 Z_738 (S_215 y_724))))
(assert (forall ((x_18626 Int) (y_724 Int))
	(=> (lt_136 x_18626 y_724) (lt_136 (S_215 x_18626) (S_215 y_724)))))
(assert (forall ((y_724 Int))
	(gt_133 (S_215 y_724) Z_738)))
(assert (forall ((x_18626 Int) (y_724 Int))
	(=> (gt_133 x_18626 y_724) (gt_133 (S_215 x_18626) (S_215 y_724)))))
(assert (forall ((y_724 Int))
	(mult_132 Z_738 Z_738 y_724)))
(assert (forall ((x_18626 Int) (y_724 Int) (r_153 Int) (z_739 Int))
	(=> (and (mult_132 r_153 x_18626 y_724) (add_137 z_739 r_153 y_724)) (mult_132 z_739 (S_215 x_18626) y_724))))
(assert (forall ((x_18626 Int) (y_724 Int))
	(=> (lt_136 x_18626 y_724) (div_132 Z_738 x_18626 y_724))))
(assert (forall ((x_18626 Int) (y_724 Int) (r_153 Int) (z_739 Int))
	(=> (and (ge_132 x_18626 y_724) (minus_135 z_739 x_18626 y_724) (div_132 r_153 z_739 y_724)) (div_132 (S_215 r_153) x_18626 y_724))))
(assert (forall ((x_18626 Int) (y_724 Int))
	(=> (lt_136 x_18626 y_724) (mod_132 x_18626 x_18626 y_724))))
(assert (forall ((x_18626 Int) (y_724 Int) (r_153 Int) (z_739 Int))
	(=> (and (ge_132 x_18626 y_724) (minus_135 z_739 x_18626 y_724) (mod_132 r_153 z_739 y_724)) (mod_132 r_153 x_18626 y_724))))
(declare-datatypes ((list_98 0)) (((nil_106) (cons_98 (head_196 Int) (tail_196 list_98)))))
(declare-fun diseqlist_98 (list_98 list_98) Bool)
(declare-fun head_197 (Int list_98) Bool)
(declare-fun tail_197 (list_98 list_98) Bool)
(declare-fun isnil_106 (list_98) Bool)
(declare-fun iscons_98 (list_98) Bool)
(assert (forall ((x_18628 Int) (x_18629 list_98))
	(head_197 x_18628 (cons_98 x_18628 x_18629))))
(assert (forall ((x_18628 Int) (x_18629 list_98))
	(tail_197 x_18629 (cons_98 x_18628 x_18629))))
(assert (isnil_106 nil_106))
(assert (forall ((x_18631 Int) (x_18632 list_98))
	(iscons_98 (cons_98 x_18631 x_18632))))
(assert (forall ((x_18633 Int) (x_18634 list_98))
	(diseqlist_98 nil_106 (cons_98 x_18633 x_18634))))
(assert (forall ((x_18635 Int) (x_18636 list_98))
	(diseqlist_98 (cons_98 x_18635 x_18636) nil_106)))
(assert (forall ((x_18637 Int) (x_18638 list_98) (x_18639 Int) (x_18640 list_98))
	(=> (distinct x_18637 x_18639) (diseqlist_98 (cons_98 x_18637 x_18638) (cons_98 x_18639 x_18640)))))
(assert (forall ((x_18637 Int) (x_18638 list_98) (x_18639 Int) (x_18640 list_98))
	(=> (diseqlist_98 x_18638 x_18640) (diseqlist_98 (cons_98 x_18637 x_18638) (cons_98 x_18639 x_18640)))))
(declare-datatypes ((Tree_2 0)) (((Node_4 (projNode_24 Tree_2) (projNode_25 Int) (projNode_26 Tree_2)) (Nil_107))))
(declare-fun diseqTree_2 (Tree_2 Tree_2) Bool)
(declare-fun projNode_27 (Tree_2 Tree_2) Bool)
(declare-fun projNode_28 (Int Tree_2) Bool)
(declare-fun projNode_29 (Tree_2 Tree_2) Bool)
(declare-fun isNode_4 (Tree_2) Bool)
(declare-fun isNil_107 (Tree_2) Bool)
(assert (forall ((x_18641 Tree_2) (x_18642 Int) (x_18643 Tree_2))
	(projNode_27 x_18641 (Node_4 x_18641 x_18642 x_18643))))
(assert (forall ((x_18641 Tree_2) (x_18642 Int) (x_18643 Tree_2))
	(projNode_28 x_18642 (Node_4 x_18641 x_18642 x_18643))))
(assert (forall ((x_18641 Tree_2) (x_18642 Int) (x_18643 Tree_2))
	(projNode_29 x_18643 (Node_4 x_18641 x_18642 x_18643))))
(assert (forall ((x_18646 Tree_2) (x_18647 Int) (x_18648 Tree_2))
	(isNode_4 (Node_4 x_18646 x_18647 x_18648))))
(assert (isNil_107 Nil_107))
(assert (forall ((x_18649 Tree_2) (x_18650 Int) (x_18651 Tree_2))
	(diseqTree_2 (Node_4 x_18649 x_18650 x_18651) Nil_107)))
(assert (forall ((x_18652 Tree_2) (x_18653 Int) (x_18654 Tree_2))
	(diseqTree_2 Nil_107 (Node_4 x_18652 x_18653 x_18654))))
(assert (forall ((x_18655 Tree_2) (x_18656 Int) (x_18657 Tree_2) (x_18658 Tree_2) (x_18659 Int) (x_18660 Tree_2))
	(=> (diseqTree_2 x_18655 x_18658) (diseqTree_2 (Node_4 x_18655 x_18656 x_18657) (Node_4 x_18658 x_18659 x_18660)))))
(assert (forall ((x_18655 Tree_2) (x_18656 Int) (x_18657 Tree_2) (x_18658 Tree_2) (x_18659 Int) (x_18660 Tree_2))
	(=> (distinct x_18656 x_18659) (diseqTree_2 (Node_4 x_18655 x_18656 x_18657) (Node_4 x_18658 x_18659 x_18660)))))
(assert (forall ((x_18655 Tree_2) (x_18656 Int) (x_18657 Tree_2) (x_18658 Tree_2) (x_18659 Int) (x_18660 Tree_2))
	(=> (diseqTree_2 x_18657 x_18660) (diseqTree_2 (Node_4 x_18655 x_18656 x_18657) (Node_4 x_18658 x_18659 x_18660)))))
(declare-fun flatten_1 (list_98 Tree_2 list_98) Bool)
(assert (forall ((x_18611 list_98))
	(flatten_1 x_18611 Nil_107 x_18611)))
(assert (forall ((x_18612 list_98) (x_18613 list_98) (p_86 Tree_2) (z_736 Int) (q_30 Tree_2) (y_721 list_98))
	(=> (and (flatten_1 x_18613 q_30 y_721) (flatten_1 x_18612 p_86 (cons_98 z_736 x_18613))) (flatten_1 x_18612 (Node_4 p_86 z_736 q_30) y_721))))
(declare-fun x_18608 (list_98 list_98 list_98) Bool)
(assert (forall ((x_18616 list_98) (z_737 Int) (xs_232 list_98) (y_722 list_98))
	(=> (x_18608 x_18616 xs_232 y_722) (x_18608 (cons_98 z_737 x_18616) (cons_98 z_737 xs_232) y_722))))
(assert (forall ((x_18617 list_98))
	(x_18608 x_18617 nil_106 x_18617)))
(declare-fun flatten_2 (list_98 Tree_2) Bool)
(assert (flatten_2 nil_106 Nil_107))
(assert (forall ((x_18619 list_98) (x_18620 list_98) (x_18621 list_98) (x_18622 list_98) (p_87 Tree_2) (y_723 Int) (q_31 Tree_2))
	(=> (and (flatten_2 x_18620 p_87) (flatten_2 x_18621 q_31) (x_18608 x_18622 (cons_98 y_723 nil_106) x_18621) (x_18608 x_18619 x_18620 x_18622)) (flatten_2 x_18619 (Node_4 p_87 y_723 q_31)))))
(assert (forall ((x_18624 list_98) (x_18625 list_98) (p_88 Tree_2))
	(=> (and true (diseqlist_98 x_18624 x_18625) (flatten_1 x_18624 p_88 nil_106) (flatten_2 x_18625 p_88)) false)))
(check-sat)