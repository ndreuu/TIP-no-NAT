(set-logic HORN)
(declare-datatypes ((Bool_264 0)) (((false_264 ) (true_264 ))))
(declare-fun diseqBool_123 (Bool_264 Bool_264) Bool)
(declare-fun isfalse_123 (Bool_264) Bool)
(declare-fun istrue_123 (Bool_264) Bool)
(assert (isfalse_123 false_264))
(assert (istrue_123 true_264))
(assert (diseqBool_123 false_264 true_264))
(assert (diseqBool_123 true_264 false_264))
(declare-fun and_264 (Bool_264 Bool_264 Bool_264) Bool)
(declare-fun or_270 (Bool_264 Bool_264 Bool_264) Bool)
(declare-fun hence_264 (Bool_264 Bool_264 Bool_264) Bool)
(declare-fun not_268 (Bool_264 Bool_264) Bool)
(assert (and_264 false_264 false_264 false_264))
(assert (and_264 false_264 true_264 false_264))
(assert (and_264 false_264 false_264 true_264))
(assert (and_264 true_264 true_264 true_264))
(assert (or_270 false_264 false_264 false_264))
(assert (or_270 true_264 true_264 false_264))
(assert (or_270 true_264 false_264 true_264))
(assert (or_270 true_264 true_264 true_264))
(assert (hence_264 true_264 false_264 false_264))
(assert (hence_264 false_264 true_264 false_264))
(assert (hence_264 true_264 false_264 true_264))
(assert (hence_264 true_264 true_264 true_264))
(assert (not_268 true_264 false_264))
(assert (not_268 false_264 true_264))
(declare-datatypes ((Nat_444 0)) (((zero_110 ) (succ_107 (p_312 Nat_444)))))
(declare-fun diseqNat_444 (Nat_444 Nat_444) Bool)
(declare-fun p_313 (Nat_444 Nat_444) Bool)
(declare-fun iszero_107 (Nat_444) Bool)
(declare-fun issucc_107 (Nat_444) Bool)
(assert (forall ((x_49816 Nat_444))
	(p_313 x_49816 (succ_107 x_49816))))
(assert (iszero_107 zero_110))
(assert (forall ((x_49818 Nat_444))
	(issucc_107 (succ_107 x_49818))))
(assert (forall ((x_49819 Nat_444))
	(diseqNat_444 zero_110 (succ_107 x_49819))))
(assert (forall ((x_49820 Nat_444))
	(diseqNat_444 (succ_107 x_49820) zero_110)))
(assert (forall ((x_49821 Nat_444) (x_49822 Nat_444))
	(=> (diseqNat_444 x_49821 x_49822)
	    (diseqNat_444 (succ_107 x_49821) (succ_107 x_49822)))))
(declare-datatypes ((list_192 0)) (((nil_218 ) (cons_192 (head_384 Nat_444) (tail_384 list_192)))))
(declare-fun diseqlist_192 (list_192 list_192) Bool)
(declare-fun head_386 (Nat_444 list_192) Bool)
(declare-fun tail_386 (list_192 list_192) Bool)
(declare-fun isnil_218 (list_192) Bool)
(declare-fun iscons_192 (list_192) Bool)
(assert (forall ((x_49824 Nat_444) (x_49825 list_192))
	(head_386 x_49824 (cons_192 x_49824 x_49825))))
(assert (forall ((x_49824 Nat_444) (x_49825 list_192))
	(tail_386 x_49825 (cons_192 x_49824 x_49825))))
(assert (isnil_218 nil_218))
(assert (forall ((x_49827 Nat_444) (x_49828 list_192))
	(iscons_192 (cons_192 x_49827 x_49828))))
(assert (forall ((x_49829 Nat_444) (x_49830 list_192))
	(diseqlist_192 nil_218 (cons_192 x_49829 x_49830))))
(assert (forall ((x_49831 Nat_444) (x_49832 list_192))
	(diseqlist_192 (cons_192 x_49831 x_49832) nil_218)))
(assert (forall ((x_49833 Nat_444) (x_49834 list_192) (x_49835 Nat_444) (x_49836 list_192))
	(=> (diseqNat_444 x_49833 x_49835)
	    (diseqlist_192 (cons_192 x_49833 x_49834) (cons_192 x_49835 x_49836)))))
(assert (forall ((x_49833 Nat_444) (x_49834 list_192) (x_49835 Nat_444) (x_49836 list_192))
	(=> (diseqlist_192 x_49834 x_49836)
	    (diseqlist_192 (cons_192 x_49833 x_49834) (cons_192 x_49835 x_49836)))))
(declare-datatypes ((list_193 0)) (((nil_219 ) (cons_193 (head_385 list_192) (tail_385 list_193)))))
(declare-fun diseqlist_193 (list_193 list_193) Bool)
(declare-fun head_387 (list_192 list_193) Bool)
(declare-fun tail_387 (list_193 list_193) Bool)
(declare-fun isnil_219 (list_193) Bool)
(declare-fun iscons_193 (list_193) Bool)
(assert (forall ((x_49838 list_192) (x_49839 list_193))
	(head_387 x_49838 (cons_193 x_49838 x_49839))))
(assert (forall ((x_49838 list_192) (x_49839 list_193))
	(tail_387 x_49839 (cons_193 x_49838 x_49839))))
(assert (isnil_219 nil_219))
(assert (forall ((x_49841 list_192) (x_49842 list_193))
	(iscons_193 (cons_193 x_49841 x_49842))))
(assert (forall ((x_49843 list_192) (x_49844 list_193))
	(diseqlist_193 nil_219 (cons_193 x_49843 x_49844))))
(assert (forall ((x_49845 list_192) (x_49846 list_193))
	(diseqlist_193 (cons_193 x_49845 x_49846) nil_219)))
(assert (forall ((x_49847 list_192) (x_49848 list_193) (x_49849 list_192) (x_49850 list_193))
	(=> (diseqlist_192 x_49847 x_49849)
	    (diseqlist_193 (cons_193 x_49847 x_49848) (cons_193 x_49849 x_49850)))))
(assert (forall ((x_49847 list_192) (x_49848 list_193) (x_49849 list_192) (x_49850 list_193))
	(=> (diseqlist_193 x_49848 x_49850)
	    (diseqlist_193 (cons_193 x_49847 x_49848) (cons_193 x_49849 x_49850)))))
(declare-fun plus_110 (Nat_444 Nat_444 Nat_444) Bool)
(assert (forall ((x_49754 Nat_444) (z_1572 Nat_444) (y_1760 Nat_444))
	(=> (plus_110 x_49754 z_1572 y_1760)
	    (plus_110 (succ_107 x_49754) (succ_107 z_1572) y_1760))))
(assert (forall ((x_49755 Nat_444))
	(plus_110 x_49755 zero_110 x_49755)))
(declare-fun leq_40 (Bool_264 Nat_444 Nat_444) Bool)
(assert (forall ((x_49756 Bool_264) (x_49737 Nat_444) (z_1573 Nat_444))
	(=> (leq_40 x_49756 z_1573 x_49737)
	    (leq_40 x_49756 (succ_107 z_1573) (succ_107 x_49737)))))
(assert (forall ((z_1573 Nat_444))
	(leq_40 false_264 (succ_107 z_1573) zero_110)))
(assert (forall ((y_1761 Nat_444))
	(leq_40 true_264 zero_110 y_1761)))
(declare-fun lmerge_11 (list_192 list_192 list_192) Bool)
(assert (forall ((x_49762 list_192) (x_49740 Nat_444) (x_49741 list_192) (z_1574 Nat_444) (x_49739 list_192))
	(=>	(and (lmerge_11 x_49762 x_49739 (cons_192 x_49740 x_49741))
			(leq_40 true_264 z_1574 x_49740))
		(lmerge_11 (cons_192 z_1574 x_49762) (cons_192 z_1574 x_49739) (cons_192 x_49740 x_49741)))))
(assert (forall ((x_49765 list_192) (x_49740 Nat_444) (x_49741 list_192) (z_1574 Nat_444) (x_49739 list_192))
	(=>	(and (lmerge_11 x_49765 (cons_192 z_1574 x_49739) x_49741)
			(leq_40 false_264 z_1574 x_49740))
		(lmerge_11 (cons_192 x_49740 x_49765) (cons_192 z_1574 x_49739) (cons_192 x_49740 x_49741)))))
(assert (forall ((z_1574 Nat_444) (x_49739 list_192))
	(lmerge_11 (cons_192 z_1574 x_49739) (cons_192 z_1574 x_49739) nil_218)))
(assert (forall ((x_49767 list_192))
	(lmerge_11 x_49767 nil_218 x_49767)))
(declare-fun pairwise_4 (list_193 list_193) Bool)
(assert (forall ((x_49769 list_192) (x_49770 list_193) (ys_165 list_192) (xss_6 list_193) (xs_523 list_192))
	(=>	(and (lmerge_11 x_49769 xs_523 ys_165)
			(pairwise_4 x_49770 xss_6))
		(pairwise_4 (cons_193 x_49769 x_49770) (cons_193 xs_523 (cons_193 ys_165 xss_6))))))
(assert (forall ((xs_523 list_192))
	(pairwise_4 (cons_193 xs_523 nil_219) (cons_193 xs_523 nil_219))))
(assert (pairwise_4 nil_219 nil_219))
(declare-fun mergingbu_4 (list_192 list_193) Bool)
(assert (forall ((x_49773 list_192) (x_49774 list_193) (z_1575 list_192) (x_49744 list_193) (xs_524 list_192))
	(=>	(and (pairwise_4 x_49774 (cons_193 xs_524 (cons_193 z_1575 x_49744)))
			(mergingbu_4 x_49773 x_49774))
		(mergingbu_4 x_49773 (cons_193 xs_524 (cons_193 z_1575 x_49744))))))
(assert (forall ((x_49776 list_192))
	(mergingbu_4 x_49776 (cons_193 x_49776 nil_219))))
(assert (mergingbu_4 nil_218 nil_219))
(declare-fun risers_4 (list_193 list_192) Bool)
(assert (forall ((ys_166 list_192) (yss_4 list_193) (y_1766 Nat_444) (xs_525 list_192) (y_1765 Nat_444))
	(=>	(and (risers_4 (cons_193 ys_166 yss_4) (cons_192 y_1766 xs_525))
			(leq_40 true_264 y_1765 y_1766))
		(risers_4 (cons_193 (cons_192 y_1765 ys_166) yss_4) (cons_192 y_1765 (cons_192 y_1766 xs_525))))))
(assert (forall ((x_49783 list_193) (y_1766 Nat_444) (xs_525 list_192) (y_1765 Nat_444))
	(=>	(and (risers_4 x_49783 (cons_192 y_1766 xs_525))
			(leq_40 false_264 y_1765 y_1766))
		(risers_4 (cons_193 (cons_192 y_1765 nil_218) x_49783) (cons_192 y_1765 (cons_192 y_1766 xs_525))))))
(assert (forall ((y_1766 Nat_444) (xs_525 list_192) (y_1765 Nat_444))
	(=>	(and (risers_4 nil_219 (cons_192 y_1766 xs_525))
			(leq_40 true_264 y_1765 y_1766))
		(risers_4 nil_219 (cons_192 y_1765 (cons_192 y_1766 xs_525))))))
(assert (forall ((x_49789 list_193) (y_1766 Nat_444) (xs_525 list_192) (y_1765 Nat_444))
	(=>	(and (risers_4 x_49789 (cons_192 y_1766 xs_525))
			(leq_40 false_264 y_1765 y_1766))
		(risers_4 (cons_193 (cons_192 y_1765 nil_218) x_49789) (cons_192 y_1765 (cons_192 y_1766 xs_525))))))
(assert (forall ((y_1765 Nat_444))
	(risers_4 (cons_193 (cons_192 y_1765 nil_218) nil_219) (cons_192 y_1765 nil_218))))
(assert (risers_4 nil_219 nil_218))
(declare-fun msortbu_4 (list_192 list_192) Bool)
(assert (forall ((x_49792 list_192) (x_49793 list_193) (x_49746 list_192))
	(=>	(and (risers_4 x_49793 x_49746)
			(mergingbu_4 x_49792 x_49793))
		(msortbu_4 x_49792 x_49746))))
(declare-fun count_29 (Nat_444 Nat_444 list_192) Bool)
(assert (forall ((x_49795 Nat_444) (x_49796 Nat_444) (ys_167 list_192) (x_49747 Nat_444))
	(=>	(and (count_29 x_49796 x_49747 ys_167)
			(plus_110 x_49795 (succ_107 zero_110) x_49796))
		(count_29 x_49795 x_49747 (cons_192 x_49747 ys_167)))))
(assert (forall ((x_49798 Nat_444) (z_1577 Nat_444) (ys_167 list_192) (x_49747 Nat_444))
	(=>	(and (diseqNat_444 x_49747 z_1577)
			(count_29 x_49798 x_49747 ys_167))
		(count_29 x_49798 x_49747 (cons_192 z_1577 ys_167)))))
(assert (forall ((x_49747 Nat_444))
	(count_29 zero_110 x_49747 nil_218)))
(assert (forall ((x_49801 Nat_444) (x_49802 Nat_444) (x_49803 Nat_444) (x_49804 Nat_444) (x_49748 Nat_444) (y_1768 Nat_444) (z_1578 Nat_444))
	(=>	(and true
			(diseqNat_444 x_49802 x_49804)
			(plus_110 x_49801 y_1768 z_1578)
			(plus_110 x_49802 x_49748 x_49801)
			(plus_110 x_49803 x_49748 y_1768)
			(plus_110 x_49804 x_49803 z_1578))
		false)))
(assert (forall ((x_49805 Nat_444) (x_49806 Nat_444) (x_49749 Nat_444) (y_1769 Nat_444))
	(=>	(and true
			(diseqNat_444 x_49805 x_49806)
			(plus_110 x_49805 x_49749 y_1769)
			(plus_110 x_49806 y_1769 x_49749))
		false)))
(assert (forall ((x_49807 Nat_444) (x_49750 Nat_444))
	(=>	(and true
			(diseqNat_444 x_49807 x_49750)
			(plus_110 x_49807 x_49750 zero_110))
		false)))
(assert (forall ((x_49808 Nat_444) (x_49751 Nat_444))
	(=>	(and true
			(diseqNat_444 x_49808 x_49751)
			(plus_110 x_49808 zero_110 x_49751))
		false)))
(assert (forall ((x_49809 list_192) (x_49810 Nat_444) (x_49811 Nat_444) (x_49752 Nat_444) (xs_526 list_192))
	(=>	(and true
			(diseqNat_444 x_49810 x_49811)
			(msortbu_4 x_49809 xs_526)
			(count_29 x_49810 x_49752 x_49809)
			(count_29 x_49811 x_49752 xs_526))
		false)))
(check-sat)
