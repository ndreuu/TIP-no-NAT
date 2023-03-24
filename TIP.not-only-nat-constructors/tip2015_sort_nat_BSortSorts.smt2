(set-logic HORN)
(define-fun zero_38 () Int 0)
(define-fun succ_38 ((x Int)) Int (+ x 1))
(declare-datatypes ((Bool_144 0)) (((false_144) (true_144))))
(declare-fun diseqBool_64 (Bool_144 Bool_144) Bool)
(declare-fun isfalse_64 (Bool_144) Bool)
(declare-fun istrue_64 (Bool_144) Bool)
(assert (isfalse_64 false_144))
(assert (istrue_64 true_144))
(assert (diseqBool_64 false_144 true_144))
(assert (diseqBool_64 true_144 false_144))
(declare-fun and_144 (Bool_144 Bool_144 Bool_144) Bool)
(declare-fun or_146 (Bool_144 Bool_144 Bool_144) Bool)
(declare-fun hence_144 (Bool_144 Bool_144 Bool_144) Bool)
(declare-fun not_145 (Bool_144 Bool_144) Bool)
(assert (and_144 false_144 false_144 false_144))
(assert (and_144 false_144 true_144 false_144))
(assert (and_144 false_144 false_144 true_144))
(assert (and_144 true_144 true_144 true_144))
(assert (or_146 false_144 false_144 false_144))
(assert (or_146 true_144 true_144 false_144))
(assert (or_146 true_144 false_144 true_144))
(assert (or_146 true_144 true_144 true_144))
(assert (hence_144 true_144 false_144 false_144))
(assert (hence_144 false_144 true_144 false_144))
(assert (hence_144 true_144 false_144 true_144))
(assert (hence_144 true_144 true_144 true_144))
(assert (not_145 true_144 false_144))
(assert (not_145 false_144 true_144))
(declare-fun p_116 (Int Int) Bool)
(declare-fun iszero_38 (Int) Bool)
(declare-fun issucc_38 (Int) Bool)
(assert (forall ((x_21741 Int))
	(p_116 x_21741 (succ_38 x_21741))))
(assert (iszero_38 zero_38))
(assert (forall ((x_21743 Int))
	(issucc_38 (succ_38 x_21743))))
(declare-datatypes ((list_108 0)) (((nil_119) (cons_108 (head_216 Int) (tail_216 list_108)))))
(declare-fun diseqlist_108 (list_108 list_108) Bool)
(declare-fun head_217 (Int list_108) Bool)
(declare-fun tail_217 (list_108 list_108) Bool)
(declare-fun isnil_119 (list_108) Bool)
(declare-fun iscons_108 (list_108) Bool)
(assert (forall ((x_21749 Int) (x_21750 list_108))
	(head_217 x_21749 (cons_108 x_21749 x_21750))))
(assert (forall ((x_21749 Int) (x_21750 list_108))
	(tail_217 x_21750 (cons_108 x_21749 x_21750))))
(assert (isnil_119 nil_119))
(assert (forall ((x_21752 Int) (x_21753 list_108))
	(iscons_108 (cons_108 x_21752 x_21753))))
(assert (forall ((x_21754 Int) (x_21755 list_108))
	(diseqlist_108 nil_119 (cons_108 x_21754 x_21755))))
(assert (forall ((x_21756 Int) (x_21757 list_108))
	(diseqlist_108 (cons_108 x_21756 x_21757) nil_119)))
(assert (forall ((x_21758 Int) (x_21759 list_108) (x_21760 Int) (x_21761 list_108))
	(=> (distinct x_21758 x_21760) (diseqlist_108 (cons_108 x_21758 x_21759) (cons_108 x_21760 x_21761)))))
(assert (forall ((x_21758 Int) (x_21759 list_108) (x_21760 Int) (x_21761 list_108))
	(=> (diseqlist_108 x_21759 x_21761) (diseqlist_108 (cons_108 x_21758 x_21759) (cons_108 x_21760 x_21761)))))
(declare-fun leq_15 (Bool_144 Int Int) Bool)
(assert (forall ((x Int) (y Int)) (=> (<= x y) (leq_15 true_144 x y))))
(assert (forall ((x Int) (y Int)) (=> (not (<= x y)) (leq_15 false_144 x y))))
(declare-fun ordered_6 (Bool_144 list_108) Bool)
(assert (forall ((x_21672 Bool_144) (x_21673 Bool_144) (x_21674 Bool_144) (y_804 Int) (xs_251 list_108) (y_803 Int))
	(=> (and (leq_15 x_21673 y_803 y_804) (ordered_6 x_21674 (cons_108 y_804 xs_251)) (and_144 x_21672 x_21673 x_21674)) (ordered_6 x_21672 (cons_108 y_803 (cons_108 y_804 xs_251))))))
(assert (forall ((y_803 Int))
	(ordered_6 true_144 (cons_108 y_803 nil_119))))
(assert (ordered_6 true_144 nil_119))
(declare-fun sort_10 (list_108 Int Int) Bool)
(assert (forall ((x_21647 Int) (y_805 Int))
	(=> (leq_15 true_144 x_21647 y_805) (sort_10 (cons_108 x_21647 (cons_108 y_805 nil_119)) x_21647 y_805))))
(assert (forall ((x_21647 Int) (y_805 Int))
	(=> (leq_15 false_144 x_21647 y_805) (sort_10 (cons_108 y_805 (cons_108 x_21647 nil_119)) x_21647 y_805))))
(declare-fun evens_3 (list_108 list_108) Bool)
(declare-fun odds_3 (list_108 list_108) Bool)
(assert (forall ((x_21682 list_108) (y_806 Int) (xs_252 list_108))
	(=> (odds_3 x_21682 xs_252) (evens_3 (cons_108 y_806 x_21682) (cons_108 y_806 xs_252)))))
(assert (evens_3 nil_119 nil_119))
(assert (forall ((x_21684 list_108) (y_807 Int) (xs_253 list_108))
	(=> (evens_3 x_21684 xs_253) (odds_3 x_21684 (cons_108 y_807 xs_253)))))
(assert (odds_3 nil_119 nil_119))
(declare-fun x_21650 (list_108 list_108 list_108) Bool)
(assert (forall ((x_21688 list_108) (z_808 Int) (xs_254 list_108) (y_808 list_108))
	(=> (x_21650 x_21688 xs_254 y_808) (x_21650 (cons_108 z_808 x_21688) (cons_108 z_808 xs_254) y_808))))
(assert (forall ((x_21689 list_108))
	(x_21650 x_21689 nil_119 x_21689)))
(declare-fun pairs_2 (list_108 list_108 list_108) Bool)
(assert (forall ((x_21690 list_108) (x_21691 list_108) (x_21692 list_108) (x_21654 Int) (x_21655 list_108) (z_809 Int) (x_21653 list_108))
	(=> (and (sort_10 x_21691 z_809 x_21654) (pairs_2 x_21692 x_21653 x_21655) (x_21650 x_21690 x_21691 x_21692)) (pairs_2 x_21690 (cons_108 z_809 x_21653) (cons_108 x_21654 x_21655)))))
(assert (forall ((z_809 Int) (x_21653 list_108))
	(pairs_2 (cons_108 z_809 x_21653) (cons_108 z_809 x_21653) nil_119)))
(assert (forall ((x_21695 list_108))
	(pairs_2 x_21695 nil_119 x_21695)))
(declare-fun stitch_2 (list_108 list_108 list_108) Bool)
(assert (forall ((x_21697 list_108) (z_810 Int) (xs_255 list_108) (y_810 list_108))
	(=> (pairs_2 x_21697 xs_255 y_810) (stitch_2 (cons_108 z_810 x_21697) (cons_108 z_810 xs_255) y_810))))
(assert (forall ((x_21698 list_108))
	(stitch_2 x_21698 nil_119 x_21698)))
(declare-fun bmerge_2 (list_108 list_108 list_108) Bool)
(assert (forall ((x_21699 list_108) (x_21700 list_108) (x_21701 list_108) (x_21702 list_108) (x_21703 list_108) (x_21704 list_108) (x_21661 Int) (x_21662 list_108) (fail_4 list_108) (x_21659 Int) (x_21660 list_108) (z_811 Int))
	(=> (and (evens_3 x_21699 (cons_108 z_811 (cons_108 x_21661 x_21662))) (evens_3 x_21700 (cons_108 x_21659 x_21660)) (bmerge_2 x_21701 x_21699 x_21700) (odds_3 x_21702 (cons_108 z_811 (cons_108 x_21661 x_21662))) (odds_3 x_21703 (cons_108 x_21659 x_21660)) (bmerge_2 x_21704 x_21702 x_21703) (stitch_2 fail_4 x_21701 x_21704)) (bmerge_2 fail_4 (cons_108 z_811 (cons_108 x_21661 x_21662)) (cons_108 x_21659 x_21660)))))
(assert (forall ((x_21707 list_108) (x_21708 list_108) (x_21709 list_108) (x_21710 list_108) (x_21711 list_108) (x_21712 list_108) (x_21663 Int) (x_21664 list_108) (fail_4 list_108) (x_21659 Int) (z_811 Int))
	(=> (and (evens_3 x_21707 (cons_108 z_811 nil_119)) (evens_3 x_21708 (cons_108 x_21659 (cons_108 x_21663 x_21664))) (bmerge_2 x_21709 x_21707 x_21708) (odds_3 x_21710 (cons_108 z_811 nil_119)) (odds_3 x_21711 (cons_108 x_21659 (cons_108 x_21663 x_21664))) (bmerge_2 x_21712 x_21710 x_21711) (stitch_2 fail_4 x_21709 x_21712)) (bmerge_2 fail_4 (cons_108 z_811 nil_119) (cons_108 x_21659 (cons_108 x_21663 x_21664))))))
(assert (forall ((x_21722 list_108) (x_21715 list_108) (x_21716 list_108) (x_21717 list_108) (x_21718 list_108) (x_21719 list_108) (x_21720 list_108) (fail_4 list_108) (x_21659 Int) (z_811 Int))
	(=> (and (sort_10 x_21722 z_811 x_21659) (evens_3 x_21715 (cons_108 z_811 nil_119)) (evens_3 x_21716 (cons_108 x_21659 nil_119)) (bmerge_2 x_21717 x_21715 x_21716) (odds_3 x_21718 (cons_108 z_811 nil_119)) (odds_3 x_21719 (cons_108 x_21659 nil_119)) (bmerge_2 x_21720 x_21718 x_21719) (stitch_2 fail_4 x_21717 x_21720)) (bmerge_2 x_21722 (cons_108 z_811 nil_119) (cons_108 x_21659 nil_119)))))
(assert (forall ((z_811 Int) (x_21658 list_108))
	(bmerge_2 (cons_108 z_811 x_21658) (cons_108 z_811 x_21658) nil_119)))
(assert (forall ((y_811 list_108))
	(bmerge_2 nil_119 nil_119 y_811)))
(declare-fun bsort_2 (list_108 list_108) Bool)
(assert (forall ((x_21726 list_108) (x_21727 list_108) (x_21728 list_108) (x_21729 list_108) (x_21730 list_108) (x_21666 Int) (x_21667 list_108) (y_812 Int))
	(=> (and (evens_3 x_21727 (cons_108 y_812 (cons_108 x_21666 x_21667))) (bsort_2 x_21728 x_21727) (odds_3 x_21729 (cons_108 y_812 (cons_108 x_21666 x_21667))) (bsort_2 x_21730 x_21729) (bmerge_2 x_21726 x_21728 x_21730)) (bsort_2 x_21726 (cons_108 y_812 (cons_108 x_21666 x_21667))))))
(assert (forall ((y_812 Int))
	(bsort_2 (cons_108 y_812 nil_119) (cons_108 y_812 nil_119))))
(assert (bsort_2 nil_119 nil_119))
(assert (forall ((x_21734 list_108) (xs_256 list_108))
	(=> (and true (bsort_2 x_21734 xs_256) (ordered_6 false_144 x_21734)) false)))
(check-sat)
