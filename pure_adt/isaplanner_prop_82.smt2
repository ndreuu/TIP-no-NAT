(set-logic HORN)
(declare-datatypes ((Nat_26 0)) (((Z_75 ) (S_26 (unS_26 Nat_26)))))
(declare-fun diseqNat_26 (Nat_26 Nat_26) Bool)
(declare-fun unS_27 (Nat_26 Nat_26) Bool)
(declare-fun isZ_26 (Nat_26) Bool)
(declare-fun isS_26 (Nat_26) Bool)
(assert (forall ((x_820 Nat_26))
	(unS_27 x_820 (S_26 x_820))))
(assert (isZ_26 Z_75))
(assert (forall ((x_822 Nat_26))
	(isS_26 (S_26 x_822))))
(assert (forall ((x_823 Nat_26))
	(diseqNat_26 Z_75 (S_26 x_823))))
(assert (forall ((x_824 Nat_26))
	(diseqNat_26 (S_26 x_824) Z_75)))
(assert (forall ((x_825 Nat_26) (x_826 Nat_26))
	(=> (diseqNat_26 x_825 x_826)
	    (diseqNat_26 (S_26 x_825) (S_26 x_826)))))
(declare-fun add_13 (Nat_26 Nat_26 Nat_26) Bool)
(declare-fun minus_13 (Nat_26 Nat_26 Nat_26) Bool)
(declare-fun le_13 (Nat_26 Nat_26) Bool)
(declare-fun ge_13 (Nat_26 Nat_26) Bool)
(declare-fun lt_13 (Nat_26 Nat_26) Bool)
(declare-fun gt_13 (Nat_26 Nat_26) Bool)
(declare-fun mult_13 (Nat_26 Nat_26 Nat_26) Bool)
(declare-fun div_13 (Nat_26 Nat_26 Nat_26) Bool)
(declare-fun mod_13 (Nat_26 Nat_26 Nat_26) Bool)
(assert (forall ((y_62 Nat_26))
	(add_13 y_62 Z_75 y_62)))
(assert (forall ((x_773 Nat_26) (y_62 Nat_26) (r_13 Nat_26))
	(=> (add_13 r_13 x_773 y_62)
	    (add_13 (S_26 r_13) (S_26 x_773) y_62))))
(assert (forall ((y_62 Nat_26))
	(minus_13 Z_75 Z_75 y_62)))
(assert (forall ((x_773 Nat_26) (y_62 Nat_26) (r_13 Nat_26))
	(=> (minus_13 r_13 x_773 y_62)
	    (minus_13 (S_26 r_13) (S_26 x_773) y_62))))
(assert (forall ((y_62 Nat_26))
	(le_13 Z_75 y_62)))
(assert (forall ((x_773 Nat_26) (y_62 Nat_26))
	(=> (le_13 x_773 y_62)
	    (le_13 (S_26 x_773) (S_26 y_62)))))
(assert (forall ((y_62 Nat_26))
	(ge_13 y_62 Z_75)))
(assert (forall ((x_773 Nat_26) (y_62 Nat_26))
	(=> (ge_13 x_773 y_62)
	    (ge_13 (S_26 x_773) (S_26 y_62)))))
(assert (forall ((y_62 Nat_26))
	(lt_13 Z_75 (S_26 y_62))))
(assert (forall ((x_773 Nat_26) (y_62 Nat_26))
	(=> (lt_13 x_773 y_62)
	    (lt_13 (S_26 x_773) (S_26 y_62)))))
(assert (forall ((y_62 Nat_26))
	(gt_13 (S_26 y_62) Z_75)))
(assert (forall ((x_773 Nat_26) (y_62 Nat_26))
	(=> (gt_13 x_773 y_62)
	    (gt_13 (S_26 x_773) (S_26 y_62)))))
(assert (forall ((y_62 Nat_26))
	(mult_13 Z_75 Z_75 y_62)))
(assert (forall ((x_773 Nat_26) (y_62 Nat_26) (r_13 Nat_26) (z_76 Nat_26))
	(=>	(and (mult_13 r_13 x_773 y_62)
			(add_13 z_76 r_13 y_62))
		(mult_13 z_76 (S_26 x_773) y_62))))
(assert (forall ((x_773 Nat_26) (y_62 Nat_26))
	(=> (lt_13 x_773 y_62)
	    (div_13 Z_75 x_773 y_62))))
(assert (forall ((x_773 Nat_26) (y_62 Nat_26) (r_13 Nat_26) (z_76 Nat_26))
	(=>	(and (ge_13 x_773 y_62)
			(minus_13 z_76 x_773 y_62)
			(div_13 r_13 z_76 y_62))
		(div_13 (S_26 r_13) x_773 y_62))))
(assert (forall ((x_773 Nat_26) (y_62 Nat_26))
	(=> (lt_13 x_773 y_62)
	    (mod_13 x_773 x_773 y_62))))
(assert (forall ((x_773 Nat_26) (y_62 Nat_26) (r_13 Nat_26) (z_76 Nat_26))
	(=>	(and (ge_13 x_773 y_62)
			(minus_13 z_76 x_773 y_62)
			(mod_13 r_13 z_76 y_62))
		(mod_13 r_13 x_773 y_62))))
(declare-datatypes ((pair_6 0)) (((pair_7 (projpair_12 Nat_26) (projpair_13 Nat_26)))))
(declare-fun diseqpair_3 (pair_6 pair_6) Bool)
(declare-fun projpair_14 (Nat_26 pair_6) Bool)
(declare-fun projpair_15 (Nat_26 pair_6) Bool)
(declare-fun ispair_3 (pair_6) Bool)
(assert (forall ((x_774 Nat_26) (x_775 Nat_26))
	(projpair_14 x_774 (pair_7 x_774 x_775))))
(assert (forall ((x_774 Nat_26) (x_775 Nat_26))
	(projpair_15 x_775 (pair_7 x_774 x_775))))
(assert (forall ((x_777 Nat_26) (x_778 Nat_26))
	(ispair_3 (pair_7 x_777 x_778))))
(assert (forall ((x_779 Nat_26) (x_780 Nat_26) (x_781 Nat_26) (x_782 Nat_26))
	(=> (diseqNat_26 x_779 x_781)
	    (diseqpair_3 (pair_7 x_779 x_780) (pair_7 x_781 x_782)))))
(assert (forall ((x_779 Nat_26) (x_780 Nat_26) (x_781 Nat_26) (x_782 Nat_26))
	(=> (diseqNat_26 x_780 x_782)
	    (diseqpair_3 (pair_7 x_779 x_780) (pair_7 x_781 x_782)))))
(declare-datatypes ((list_14 0)) (((nil_14 ) (cons_14 (head_28 Nat_26) (tail_28 list_14)))))
(declare-fun diseqlist_14 (list_14 list_14) Bool)
(declare-fun head_30 (Nat_26 list_14) Bool)
(declare-fun tail_30 (list_14 list_14) Bool)
(declare-fun isnil_14 (list_14) Bool)
(declare-fun iscons_14 (list_14) Bool)
(assert (forall ((x_784 Nat_26) (x_785 list_14))
	(head_30 x_784 (cons_14 x_784 x_785))))
(assert (forall ((x_784 Nat_26) (x_785 list_14))
	(tail_30 x_785 (cons_14 x_784 x_785))))
(assert (isnil_14 nil_14))
(assert (forall ((x_787 Nat_26) (x_788 list_14))
	(iscons_14 (cons_14 x_787 x_788))))
(assert (forall ((x_789 Nat_26) (x_790 list_14))
	(diseqlist_14 nil_14 (cons_14 x_789 x_790))))
(assert (forall ((x_791 Nat_26) (x_792 list_14))
	(diseqlist_14 (cons_14 x_791 x_792) nil_14)))
(assert (forall ((x_793 Nat_26) (x_794 list_14) (x_795 Nat_26) (x_796 list_14))
	(=> (diseqNat_26 x_793 x_795)
	    (diseqlist_14 (cons_14 x_793 x_794) (cons_14 x_795 x_796)))))
(assert (forall ((x_793 Nat_26) (x_794 list_14) (x_795 Nat_26) (x_796 list_14))
	(=> (diseqlist_14 x_794 x_796)
	    (diseqlist_14 (cons_14 x_793 x_794) (cons_14 x_795 x_796)))))
(declare-datatypes ((list_15 0)) (((nil_15 ) (cons_15 (head_29 pair_6) (tail_29 list_15)))))
(declare-fun diseqlist_15 (list_15 list_15) Bool)
(declare-fun head_31 (pair_6 list_15) Bool)
(declare-fun tail_31 (list_15 list_15) Bool)
(declare-fun isnil_15 (list_15) Bool)
(declare-fun iscons_15 (list_15) Bool)
(assert (forall ((x_798 pair_6) (x_799 list_15))
	(head_31 x_798 (cons_15 x_798 x_799))))
(assert (forall ((x_798 pair_6) (x_799 list_15))
	(tail_31 x_799 (cons_15 x_798 x_799))))
(assert (isnil_15 nil_15))
(assert (forall ((x_801 pair_6) (x_802 list_15))
	(iscons_15 (cons_15 x_801 x_802))))
(assert (forall ((x_803 pair_6) (x_804 list_15))
	(diseqlist_15 nil_15 (cons_15 x_803 x_804))))
(assert (forall ((x_805 pair_6) (x_806 list_15))
	(diseqlist_15 (cons_15 x_805 x_806) nil_15)))
(assert (forall ((x_807 pair_6) (x_808 list_15) (x_809 pair_6) (x_810 list_15))
	(=> (diseqpair_3 x_807 x_809)
	    (diseqlist_15 (cons_15 x_807 x_808) (cons_15 x_809 x_810)))))
(assert (forall ((x_807 pair_6) (x_808 list_15) (x_809 pair_6) (x_810 list_15))
	(=> (diseqlist_15 x_808 x_810)
	    (diseqlist_15 (cons_15 x_807 x_808) (cons_15 x_809 x_810)))))
(declare-datatypes ((Nat_25 0)) (((Z_71 ) (S_25 (projS_24 Nat_25)))))
(declare-fun diseqNat_25 (Nat_25 Nat_25) Bool)
(declare-fun projS_25 (Nat_25 Nat_25) Bool)
(declare-fun isZ_25 (Nat_25) Bool)
(declare-fun isS_25 (Nat_25) Bool)
(assert (forall ((x_812 Nat_25))
	(projS_25 x_812 (S_25 x_812))))
(assert (isZ_25 Z_71))
(assert (forall ((x_814 Nat_25))
	(isS_25 (S_25 x_814))))
(assert (forall ((x_815 Nat_25))
	(diseqNat_25 Z_71 (S_25 x_815))))
(assert (forall ((x_816 Nat_25))
	(diseqNat_25 (S_25 x_816) Z_71)))
(assert (forall ((x_817 Nat_25) (x_818 Nat_25))
	(=> (diseqNat_25 x_817 x_818)
	    (diseqNat_25 (S_25 x_817) (S_25 x_818)))))
(declare-fun zip_3 (list_15 list_14 list_14) Bool)
(assert (forall ((x_757 list_15) (x_748 Nat_26) (x_749 list_14) (z_72 Nat_26) (x_747 list_14))
	(=> (zip_3 x_757 x_747 x_749)
	    (zip_3 (cons_15 (pair_7 z_72 x_748) x_757) (cons_14 z_72 x_747) (cons_14 x_748 x_749)))))
(assert (forall ((z_72 Nat_26) (x_747 list_14))
	(zip_3 nil_15 (cons_14 z_72 x_747) nil_14)))
(assert (forall ((y_59 list_14))
	(zip_3 nil_15 nil_14 y_59)))
(declare-fun take_1 (list_14 Nat_25 list_14) Bool)
(assert (forall ((x_761 list_14) (x_751 Nat_26) (x_752 list_14) (z_73 Nat_25))
	(=> (take_1 x_761 z_73 x_752)
	    (take_1 (cons_14 x_751 x_761) (S_25 z_73) (cons_14 x_751 x_752)))))
(assert (forall ((z_73 Nat_25))
	(take_1 nil_14 (S_25 z_73) nil_14)))
(assert (forall ((y_60 list_14))
	(take_1 nil_14 Z_71 y_60)))
(declare-fun take_2 (list_15 Nat_25 list_15) Bool)
(assert (forall ((x_765 list_15) (x_754 pair_6) (x_755 list_15) (z_74 Nat_25))
	(=> (take_2 x_765 z_74 x_755)
	    (take_2 (cons_15 x_754 x_765) (S_25 z_74) (cons_15 x_754 x_755)))))
(assert (forall ((z_74 Nat_25))
	(take_2 nil_15 (S_25 z_74) nil_15)))
(assert (forall ((y_61 list_15))
	(take_2 nil_15 Z_71 y_61)))
(assert (forall ((x_768 list_15) (x_769 list_15) (x_770 list_14) (x_771 list_14) (x_772 list_15) (n_6 Nat_25) (xs_21 list_14) (ys_8 list_14))
	(=>	(and true
			(diseqlist_15 x_769 x_772)
			(zip_3 x_768 xs_21 ys_8)
			(take_2 x_769 n_6 x_768)
			(take_1 x_770 n_6 xs_21)
			(take_1 x_771 n_6 ys_8)
			(zip_3 x_772 x_770 x_771))
		false)))
(check-sat)