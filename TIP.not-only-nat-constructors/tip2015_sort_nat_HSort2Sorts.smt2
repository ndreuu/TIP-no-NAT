
(set-logic HORN)
(define-fun zero_122 () Int 0)
(define-fun succ_119 ((x Int)) Int (+ x 1))
(declare-datatypes ((Bool_277 0)) (((false_277) (true_277))))
(declare-fun diseqBool_132 (Bool_277 Bool_277) Bool)
(declare-fun isfalse_132 (Bool_277) Bool)
(declare-fun istrue_132 (Bool_277) Bool)
(assert (isfalse_132 false_277))
(assert (istrue_132 true_277))
(assert (diseqBool_132 false_277 true_277))
(assert (diseqBool_132 true_277 false_277))
(declare-fun and_277 (Bool_277 Bool_277 Bool_277) Bool)
(declare-fun or_283 (Bool_277 Bool_277 Bool_277) Bool)
(declare-fun hence_277 (Bool_277 Bool_277 Bool_277) Bool)
(declare-fun not_281 (Bool_277 Bool_277) Bool)
(assert (and_277 false_277 false_277 false_277))
(assert (and_277 false_277 true_277 false_277))
(assert (and_277 false_277 false_277 true_277))
(assert (and_277 true_277 true_277 true_277))
(assert (or_283 false_277 false_277 false_277))
(assert (or_283 true_277 true_277 false_277))
(assert (or_283 true_277 false_277 true_277))
(assert (or_283 true_277 true_277 true_277))
(assert (hence_277 true_277 false_277 false_277))
(assert (hence_277 false_277 true_277 false_277))
(assert (hence_277 true_277 false_277 true_277))
(assert (hence_277 true_277 true_277 true_277))
(assert (not_281 true_277 false_277))
(assert (not_281 false_277 true_277))
(declare-fun p_338 (Int Int) Bool)
(declare-fun iszero_119 (Int) Bool)
(declare-fun issucc_119 (Int) Bool)
(assert (forall ((x_50725 Int))
	(p_338 x_50725 (succ_119 x_50725))))
(assert (iszero_119 zero_122))
(assert (forall ((x_50727 Int))
	(issucc_119 (succ_119 x_50727))))
(declare-datatypes ((list_198 0)) (((nil_224) (cons_198 (head_396 Int) (tail_396 list_198)))))
(declare-fun diseqlist_198 (list_198 list_198) Bool)
(declare-fun head_397 (Int list_198) Bool)
(declare-fun tail_397 (list_198 list_198) Bool)
(declare-fun isnil_224 (list_198) Bool)
(declare-fun iscons_198 (list_198) Bool)
(assert (forall ((x_50733 Int) (x_50734 list_198))
	(head_397 x_50733 (cons_198 x_50733 x_50734))))
(assert (forall ((x_50733 Int) (x_50734 list_198))
	(tail_397 x_50734 (cons_198 x_50733 x_50734))))
(assert (isnil_224 nil_224))
(assert (forall ((x_50736 Int) (x_50737 list_198))
	(iscons_198 (cons_198 x_50736 x_50737))))
(assert (forall ((x_50738 Int) (x_50739 list_198))
	(diseqlist_198 nil_224 (cons_198 x_50738 x_50739))))
(assert (forall ((x_50740 Int) (x_50741 list_198))
	(diseqlist_198 (cons_198 x_50740 x_50741) nil_224)))
(assert (forall ((x_50742 Int) (x_50743 list_198) (x_50744 Int) (x_50745 list_198))
	(=> (distinct x_50742 x_50744) (diseqlist_198 (cons_198 x_50742 x_50743) (cons_198 x_50744 x_50745)))))
(assert (forall ((x_50742 Int) (x_50743 list_198) (x_50744 Int) (x_50745 list_198))
	(=> (diseqlist_198 x_50743 x_50745) (diseqlist_198 (cons_198 x_50742 x_50743) (cons_198 x_50744 x_50745)))))
(declare-datatypes ((Heap_9 0)) (((Node_13 (projNode_78 Heap_9) (projNode_79 Int) (projNode_80 Heap_9)) (Nil_225))))
(declare-fun diseqHeap_9 (Heap_9 Heap_9) Bool)
(declare-fun projNode_81 (Heap_9 Heap_9) Bool)
(declare-fun projNode_82 (Int Heap_9) Bool)
(declare-fun projNode_83 (Heap_9 Heap_9) Bool)
(declare-fun isNode_13 (Heap_9) Bool)
(declare-fun isNil_225 (Heap_9) Bool)
(assert (forall ((x_50746 Heap_9) (x_50747 Int) (x_50748 Heap_9))
	(projNode_81 x_50746 (Node_13 x_50746 x_50747 x_50748))))
(assert (forall ((x_50746 Heap_9) (x_50747 Int) (x_50748 Heap_9))
	(projNode_82 x_50747 (Node_13 x_50746 x_50747 x_50748))))
(assert (forall ((x_50746 Heap_9) (x_50747 Int) (x_50748 Heap_9))
	(projNode_83 x_50748 (Node_13 x_50746 x_50747 x_50748))))
(assert (forall ((x_50751 Heap_9) (x_50752 Int) (x_50753 Heap_9))
	(isNode_13 (Node_13 x_50751 x_50752 x_50753))))
(assert (isNil_225 Nil_225))
(assert (forall ((x_50754 Heap_9) (x_50755 Int) (x_50756 Heap_9))
	(diseqHeap_9 (Node_13 x_50754 x_50755 x_50756) Nil_225)))
(assert (forall ((x_50757 Heap_9) (x_50758 Int) (x_50759 Heap_9))
	(diseqHeap_9 Nil_225 (Node_13 x_50757 x_50758 x_50759))))
(assert (forall ((x_50760 Heap_9) (x_50761 Int) (x_50762 Heap_9) (x_50763 Heap_9) (x_50764 Int) (x_50765 Heap_9))
	(=> (diseqHeap_9 x_50760 x_50763) (diseqHeap_9 (Node_13 x_50760 x_50761 x_50762) (Node_13 x_50763 x_50764 x_50765)))))
(assert (forall ((x_50760 Heap_9) (x_50761 Int) (x_50762 Heap_9) (x_50763 Heap_9) (x_50764 Int) (x_50765 Heap_9))
	(=> (distinct x_50761 x_50764) (diseqHeap_9 (Node_13 x_50760 x_50761 x_50762) (Node_13 x_50763 x_50764 x_50765)))))
(assert (forall ((x_50760 Heap_9) (x_50761 Int) (x_50762 Heap_9) (x_50763 Heap_9) (x_50764 Int) (x_50765 Heap_9))
	(=> (diseqHeap_9 x_50762 x_50765) (diseqHeap_9 (Node_13 x_50760 x_50761 x_50762) (Node_13 x_50763 x_50764 x_50765)))))
(declare-fun leq_47 (Bool_277 Int Int) Bool)
(assert (forall ((x_50688 Bool_277) (x_50676 Int) (z_1667 Int))
	(=> (leq_47 x_50688 z_1667 x_50676) (leq_47 x_50688 (succ_119 z_1667) (succ_119 x_50676)))))
(assert (forall ((z_1667 Int))
	(leq_47 false_277 (succ_119 z_1667) zero_122)))
(assert (forall ((y_1868 Int))
	(leq_47 true_277 zero_122 y_1868)))
(declare-fun ordered_20 (Bool_277 list_198) Bool)
(assert (forall ((x_50692 Bool_277) (x_50693 Bool_277) (x_50694 Bool_277) (y_1870 Int) (xs_538 list_198) (y_1869 Int))
	(=> (and (leq_47 x_50693 y_1869 y_1870) (ordered_20 x_50694 (cons_198 y_1870 xs_538)) (and_277 x_50692 x_50693 x_50694)) (ordered_20 x_50692 (cons_198 y_1869 (cons_198 y_1870 xs_538))))))
(assert (forall ((y_1869 Int))
	(ordered_20 true_277 (cons_198 y_1869 nil_224))))
(assert (ordered_20 true_277 nil_224))
(declare-fun hmerge_9 (Heap_9 Heap_9 Heap_9) Bool)
(assert (forall ((x_50697 Heap_9))
	(hmerge_9 x_50697 Nil_225 x_50697)))
(assert (forall ((z_1669 Heap_9) (x_50679 Int) (x_50680 Heap_9))
	(hmerge_9 (Node_13 z_1669 x_50679 x_50680) (Node_13 z_1669 x_50679 x_50680) Nil_225)))
(assert (forall ((x_50701 Heap_9) (x_50681 Heap_9) (x_50682 Int) (x_50683 Heap_9) (z_1669 Heap_9) (x_50679 Int) (x_50680 Heap_9))
	(=> (and (hmerge_9 x_50701 x_50680 (Node_13 x_50681 x_50682 x_50683)) (leq_47 true_277 x_50679 x_50682)) (hmerge_9 (Node_13 x_50701 x_50679 z_1669) (Node_13 z_1669 x_50679 x_50680) (Node_13 x_50681 x_50682 x_50683)))))
(assert (forall ((x_50704 Heap_9) (x_50681 Heap_9) (x_50682 Int) (x_50683 Heap_9) (z_1669 Heap_9) (x_50679 Int) (x_50680 Heap_9))
	(=> (and (hmerge_9 x_50704 (Node_13 z_1669 x_50679 x_50680) x_50683) (leq_47 false_277 x_50679 x_50682)) (hmerge_9 (Node_13 x_50704 x_50682 x_50681) (Node_13 z_1669 x_50679 x_50680) (Node_13 x_50681 x_50682 x_50683)))))
(declare-fun toList_9 (list_198 Heap_9) Bool)
(assert (toList_9 nil_224 Nil_225))
(assert (forall ((x_50707 Heap_9) (x_50708 list_198) (q_115 Heap_9) (y_1872 Int) (r_345 Heap_9))
	(=> (and (hmerge_9 x_50707 q_115 r_345) (toList_9 x_50708 x_50707)) (toList_9 (cons_198 y_1872 x_50708) (Node_13 q_115 y_1872 r_345)))))
(declare-fun hinsert_5 (Heap_9 Int Heap_9) Bool)
(assert (forall ((x_50709 Heap_9) (x_50685 Int) (y_1873 Heap_9))
	(=> (hmerge_9 x_50709 (Node_13 Nil_225 x_50685 Nil_225) y_1873) (hinsert_5 x_50709 x_50685 y_1873))))
(declare-fun toHeap_13 (Heap_9 list_198) Bool)
(assert (forall ((x_50711 Heap_9) (x_50712 Heap_9) (y_1874 Int) (xs_539 list_198))
	(=> (and (toHeap_13 x_50712 xs_539) (hinsert_5 x_50711 y_1874 x_50712)) (toHeap_13 x_50711 (cons_198 y_1874 xs_539)))))
(assert (toHeap_13 Nil_225 nil_224))
(declare-fun hsort_9 (list_198 list_198) Bool)
(assert (forall ((x_50715 list_198) (x_50716 Heap_9) (x_50687 list_198))
	(=> (and (toHeap_13 x_50716 x_50687) (toList_9 x_50715 x_50716)) (hsort_9 x_50715 x_50687))))
(assert (forall ((x_50718 list_198) (xs_540 list_198))
	(=> (and true (hsort_9 x_50718 xs_540) (ordered_20 false_277 x_50718)) false)))
(check-sat)