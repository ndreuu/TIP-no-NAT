(set-logic HORN)
(declare-datatypes ((Bool_366 0)) (((false_366 ) (true_366 ))))
(declare-fun diseqBool_167 (Bool_366 Bool_366) Bool)
(declare-fun isfalse_167 (Bool_366) Bool)
(declare-fun istrue_167 (Bool_366) Bool)
(assert (isfalse_167 false_366))
(assert (istrue_167 true_366))
(assert (diseqBool_167 false_366 true_366))
(assert (diseqBool_167 true_366 false_366))
(declare-fun and_366 (Bool_366 Bool_366 Bool_366) Bool)
(declare-fun or_374 (Bool_366 Bool_366 Bool_366) Bool)
(declare-fun hence_366 (Bool_366 Bool_366 Bool_366) Bool)
(declare-fun not_371 (Bool_366 Bool_366) Bool)
(assert (and_366 false_366 false_366 false_366))
(assert (and_366 false_366 true_366 false_366))
(assert (and_366 false_366 false_366 true_366))
(assert (and_366 true_366 true_366 true_366))
(assert (or_374 false_366 false_366 false_366))
(assert (or_374 true_366 true_366 false_366))
(assert (or_374 true_366 false_366 true_366))
(assert (or_374 true_366 true_366 true_366))
(assert (hence_366 true_366 false_366 false_366))
(assert (hence_366 false_366 true_366 false_366))
(assert (hence_366 true_366 false_366 true_366))
(assert (hence_366 true_366 true_366 true_366))
(assert (not_371 true_366 false_366))
(assert (not_371 false_366 true_366))
(declare-datatypes ((T_1 0)) (((A_54 ) (B_37 ) (C_23 ))))
(declare-fun diseqT_1 (T_1 T_1) Bool)
(declare-fun isA_8 (T_1) Bool)
(declare-fun isB_8 (T_1) Bool)
(declare-fun isC_8 (T_1) Bool)
(assert (isA_8 A_54))
(assert (isB_8 B_37))
(assert (isC_8 C_23))
(assert (diseqT_1 A_54 B_37))
(assert (diseqT_1 A_54 C_23))
(assert (diseqT_1 B_37 A_54))
(assert (diseqT_1 C_23 A_54))
(assert (diseqT_1 B_37 C_23))
(assert (diseqT_1 C_23 B_37))
(declare-datatypes ((list_266 0)) (((nil_297 ) (cons_266 (head_532 T_1) (tail_532 list_266)))))
(declare-fun diseqlist_266 (list_266 list_266) Bool)
(declare-fun head_533 (T_1 list_266) Bool)
(declare-fun tail_533 (list_266 list_266) Bool)
(declare-fun isnil_297 (list_266) Bool)
(declare-fun iscons_266 (list_266) Bool)
(assert (forall ((x_56770 T_1) (x_56771 list_266))
	(head_533 x_56770 (cons_266 x_56770 x_56771))))
(assert (forall ((x_56770 T_1) (x_56771 list_266))
	(tail_533 x_56771 (cons_266 x_56770 x_56771))))
(assert (isnil_297 nil_297))
(assert (forall ((x_56773 T_1) (x_56774 list_266))
	(iscons_266 (cons_266 x_56773 x_56774))))
(assert (forall ((x_56775 T_1) (x_56776 list_266))
	(diseqlist_266 nil_297 (cons_266 x_56775 x_56776))))
(assert (forall ((x_56777 T_1) (x_56778 list_266))
	(diseqlist_266 (cons_266 x_56777 x_56778) nil_297)))
(assert (forall ((x_56779 T_1) (x_56780 list_266) (x_56781 T_1) (x_56782 list_266))
	(=> (diseqT_1 x_56779 x_56781)
	    (diseqlist_266 (cons_266 x_56779 x_56780) (cons_266 x_56781 x_56782)))))
(assert (forall ((x_56779 T_1) (x_56780 list_266) (x_56781 T_1) (x_56782 list_266))
	(=> (diseqlist_266 x_56780 x_56782)
	    (diseqlist_266 (cons_266 x_56779 x_56780) (cons_266 x_56781 x_56782)))))
(declare-datatypes ((R_444 0)) (((Nil_298 ) (Eps_30 ) (Atom_15 (projAtom_30 T_1)) (x_56720 (proj_28 R_444) (proj_29 R_444)) (x_56721 (proj_30 R_444) (proj_31 R_444)) (Star_15 (projStar_30 R_444)))))
(declare-fun diseqR_15 (R_444 R_444) Bool)
(declare-fun projAtom_31 (T_1 R_444) Bool)
(declare-fun proj_32 (R_444 R_444) Bool)
(declare-fun proj_33 (R_444 R_444) Bool)
(declare-fun proj_34 (R_444 R_444) Bool)
(declare-fun proj_35 (R_444 R_444) Bool)
(declare-fun projStar_31 (R_444 R_444) Bool)
(declare-fun isNil_298 (R_444) Bool)
(declare-fun isEps_15 (R_444) Bool)
(declare-fun isAtom_15 (R_444) Bool)
(declare-fun isx_21 (R_444) Bool)
(declare-fun isx_22 (R_444) Bool)
(declare-fun isStar_15 (R_444) Bool)
(assert (forall ((x_56785 T_1))
	(projAtom_31 x_56785 (Atom_15 x_56785))))
(assert (forall ((x_56787 R_444) (x_56788 R_444))
	(proj_32 x_56787 (x_56720 x_56787 x_56788))))
(assert (forall ((x_56787 R_444) (x_56788 R_444))
	(proj_33 x_56788 (x_56720 x_56787 x_56788))))
(assert (forall ((x_56790 R_444) (x_56791 R_444))
	(proj_34 x_56790 (x_56721 x_56790 x_56791))))
(assert (forall ((x_56790 R_444) (x_56791 R_444))
	(proj_35 x_56791 (x_56721 x_56790 x_56791))))
(assert (forall ((x_56793 R_444))
	(projStar_31 x_56793 (Star_15 x_56793))))
(assert (isNil_298 Nil_298))
(assert (isEps_15 Eps_30))
(assert (forall ((x_56795 T_1))
	(isAtom_15 (Atom_15 x_56795))))
(assert (forall ((x_56796 R_444) (x_56797 R_444))
	(isx_21 (x_56720 x_56796 x_56797))))
(assert (forall ((x_56798 R_444) (x_56799 R_444))
	(isx_22 (x_56721 x_56798 x_56799))))
(assert (forall ((x_56800 R_444))
	(isStar_15 (Star_15 x_56800))))
(assert (diseqR_15 Nil_298 Eps_30))
(assert (forall ((x_56801 T_1))
	(diseqR_15 Nil_298 (Atom_15 x_56801))))
(assert (forall ((x_56802 R_444) (x_56803 R_444))
	(diseqR_15 Nil_298 (x_56720 x_56802 x_56803))))
(assert (forall ((x_56804 R_444) (x_56805 R_444))
	(diseqR_15 Nil_298 (x_56721 x_56804 x_56805))))
(assert (forall ((x_56806 R_444))
	(diseqR_15 Nil_298 (Star_15 x_56806))))
(assert (diseqR_15 Eps_30 Nil_298))
(assert (forall ((x_56807 T_1))
	(diseqR_15 (Atom_15 x_56807) Nil_298)))
(assert (forall ((x_56808 R_444) (x_56809 R_444))
	(diseqR_15 (x_56720 x_56808 x_56809) Nil_298)))
(assert (forall ((x_56810 R_444) (x_56811 R_444))
	(diseqR_15 (x_56721 x_56810 x_56811) Nil_298)))
(assert (forall ((x_56812 R_444))
	(diseqR_15 (Star_15 x_56812) Nil_298)))
(assert (forall ((x_56813 T_1))
	(diseqR_15 Eps_30 (Atom_15 x_56813))))
(assert (forall ((x_56814 R_444) (x_56815 R_444))
	(diseqR_15 Eps_30 (x_56720 x_56814 x_56815))))
(assert (forall ((x_56816 R_444) (x_56817 R_444))
	(diseqR_15 Eps_30 (x_56721 x_56816 x_56817))))
(assert (forall ((x_56818 R_444))
	(diseqR_15 Eps_30 (Star_15 x_56818))))
(assert (forall ((x_56819 T_1))
	(diseqR_15 (Atom_15 x_56819) Eps_30)))
(assert (forall ((x_56820 R_444) (x_56821 R_444))
	(diseqR_15 (x_56720 x_56820 x_56821) Eps_30)))
(assert (forall ((x_56822 R_444) (x_56823 R_444))
	(diseqR_15 (x_56721 x_56822 x_56823) Eps_30)))
(assert (forall ((x_56824 R_444))
	(diseqR_15 (Star_15 x_56824) Eps_30)))
(assert (forall ((x_56825 T_1) (x_56826 R_444) (x_56827 R_444))
	(diseqR_15 (Atom_15 x_56825) (x_56720 x_56826 x_56827))))
(assert (forall ((x_56828 T_1) (x_56829 R_444) (x_56830 R_444))
	(diseqR_15 (Atom_15 x_56828) (x_56721 x_56829 x_56830))))
(assert (forall ((x_56831 T_1) (x_56832 R_444))
	(diseqR_15 (Atom_15 x_56831) (Star_15 x_56832))))
(assert (forall ((x_56833 R_444) (x_56834 R_444) (x_56835 T_1))
	(diseqR_15 (x_56720 x_56833 x_56834) (Atom_15 x_56835))))
(assert (forall ((x_56836 R_444) (x_56837 R_444) (x_56838 T_1))
	(diseqR_15 (x_56721 x_56836 x_56837) (Atom_15 x_56838))))
(assert (forall ((x_56839 R_444) (x_56840 T_1))
	(diseqR_15 (Star_15 x_56839) (Atom_15 x_56840))))
(assert (forall ((x_56841 R_444) (x_56842 R_444) (x_56843 R_444) (x_56844 R_444))
	(diseqR_15 (x_56720 x_56841 x_56842) (x_56721 x_56843 x_56844))))
(assert (forall ((x_56845 R_444) (x_56846 R_444) (x_56847 R_444))
	(diseqR_15 (x_56720 x_56845 x_56846) (Star_15 x_56847))))
(assert (forall ((x_56848 R_444) (x_56849 R_444) (x_56850 R_444) (x_56851 R_444))
	(diseqR_15 (x_56721 x_56848 x_56849) (x_56720 x_56850 x_56851))))
(assert (forall ((x_56852 R_444) (x_56853 R_444) (x_56854 R_444))
	(diseqR_15 (Star_15 x_56852) (x_56720 x_56853 x_56854))))
(assert (forall ((x_56855 R_444) (x_56856 R_444) (x_56857 R_444))
	(diseqR_15 (x_56721 x_56855 x_56856) (Star_15 x_56857))))
(assert (forall ((x_56858 R_444) (x_56859 R_444) (x_56860 R_444))
	(diseqR_15 (Star_15 x_56858) (x_56721 x_56859 x_56860))))
(assert (forall ((x_56861 T_1) (x_56862 T_1))
	(=> (diseqT_1 x_56861 x_56862)
	    (diseqR_15 (Atom_15 x_56861) (Atom_15 x_56862)))))
(assert (forall ((x_56863 R_444) (x_56864 R_444) (x_56865 R_444) (x_56866 R_444))
	(=> (diseqR_15 x_56863 x_56865)
	    (diseqR_15 (x_56720 x_56863 x_56864) (x_56720 x_56865 x_56866)))))
(assert (forall ((x_56863 R_444) (x_56864 R_444) (x_56865 R_444) (x_56866 R_444))
	(=> (diseqR_15 x_56864 x_56866)
	    (diseqR_15 (x_56720 x_56863 x_56864) (x_56720 x_56865 x_56866)))))
(assert (forall ((x_56867 R_444) (x_56868 R_444) (x_56869 R_444) (x_56870 R_444))
	(=> (diseqR_15 x_56867 x_56869)
	    (diseqR_15 (x_56721 x_56867 x_56868) (x_56721 x_56869 x_56870)))))
(assert (forall ((x_56867 R_444) (x_56868 R_444) (x_56869 R_444) (x_56870 R_444))
	(=> (diseqR_15 x_56868 x_56870)
	    (diseqR_15 (x_56721 x_56867 x_56868) (x_56721 x_56869 x_56870)))))
(assert (forall ((x_56871 R_444) (x_56872 R_444))
	(=> (diseqR_15 x_56871 x_56872)
	    (diseqR_15 (Star_15 x_56871) (Star_15 x_56872)))))
(declare-fun eps_31 (Bool_366 R_444) Bool)
(assert (forall ((y_2413 R_444))
	(eps_31 true_366 (Star_15 y_2413))))
(assert (forall ((x_56729 Bool_366) (x_56730 Bool_366) (x_56731 Bool_366) (r_445 R_444) (q_138 R_444))
	(=>	(and (eps_31 x_56730 r_445)
			(eps_31 x_56731 q_138)
			(and_366 x_56729 x_56730 x_56731))
		(eps_31 x_56729 (x_56721 r_445 q_138)))))
(assert (forall ((x_56732 Bool_366) (x_56733 Bool_366) (x_56734 Bool_366) (p_410 R_444) (q_139 R_444))
	(=>	(and (eps_31 x_56733 p_410)
			(eps_31 x_56734 q_139)
			(or_374 x_56732 x_56733 x_56734))
		(eps_31 x_56732 (x_56720 p_410 q_139)))))
(assert (eps_31 true_366 Eps_30))
(assert (forall ((x_56723 R_444) (x_56727 T_1))
	(eps_31 false_366 (Atom_15 x_56727))))
(assert (forall ((x_56723 R_444))
	(eps_31 false_366 Nil_298)))
(declare-fun step_15 (R_444 R_444 T_1) Bool)
(assert (forall ((x_56739 R_444) (p_411 R_444) (y_2414 T_1))
	(=> (step_15 x_56739 p_411 y_2414)
	    (step_15 (x_56721 x_56739 (Star_15 p_411)) (Star_15 p_411) y_2414))))
(assert (forall ((x_56742 R_444) (x_56743 R_444) (r_446 R_444) (q_140 R_444) (y_2414 T_1))
	(=>	(and (step_15 x_56742 r_446 y_2414)
			(step_15 x_56743 q_140 y_2414)
			(eps_31 true_366 r_446))
		(step_15 (x_56720 (x_56721 x_56742 q_140) x_56743) (x_56721 r_446 q_140) y_2414))))
(assert (forall ((x_56746 R_444) (r_446 R_444) (q_140 R_444) (y_2414 T_1))
	(=>	(and (step_15 x_56746 r_446 y_2414)
			(eps_31 false_366 r_446))
		(step_15 (x_56720 (x_56721 x_56746 q_140) Nil_298) (x_56721 r_446 q_140) y_2414))))
(assert (forall ((x_56748 R_444) (x_56749 R_444) (p_412 R_444) (q_141 R_444) (y_2414 T_1))
	(=>	(and (step_15 x_56748 p_412 y_2414)
			(step_15 x_56749 q_141 y_2414))
		(step_15 (x_56720 x_56748 x_56749) (x_56720 p_412 q_141) y_2414))))
(assert (forall ((b_38 T_1))
	(step_15 Eps_30 (Atom_15 b_38) b_38)))
(assert (forall ((b_38 T_1) (y_2414 T_1))
	(=> (diseqT_1 b_38 y_2414)
	    (step_15 Nil_298 (Atom_15 b_38) y_2414))))
(assert (forall ((x_56725 R_444) (y_2414 T_1))
	(step_15 Nil_298 Eps_30 y_2414)))
(assert (forall ((x_56725 R_444) (y_2414 T_1))
	(step_15 Nil_298 Nil_298 y_2414)))
(declare-fun rec_1 (Bool_366 R_444 list_266) Bool)
(assert (forall ((x_56754 Bool_366) (x_56755 R_444) (z_2176 T_1) (xs_700 list_266) (x_56726 R_444))
	(=>	(and (step_15 x_56755 x_56726 z_2176)
			(rec_1 x_56754 x_56755 xs_700))
		(rec_1 x_56754 x_56726 (cons_266 z_2176 xs_700)))))
(assert (forall ((x_56757 Bool_366) (x_56726 R_444))
	(=> (eps_31 x_56757 x_56726)
	    (rec_1 x_56757 x_56726 nil_297))))
(assert (forall ((x_56759 Bool_366) (x_56760 Bool_366) (p_413 R_444) (q_142 R_444) (a_55 T_1) (b_39 T_1))
	(=>	(and true
			(diseqBool_167 x_56759 x_56760)
			(rec_1 x_56759 (Star_15 (x_56720 p_413 q_142)) (cons_266 a_55 (cons_266 b_39 nil_297)))
			(rec_1 x_56760 (x_56720 (Star_15 p_413) (Star_15 q_142)) (cons_266 a_55 (cons_266 b_39 nil_297))))
		false)))
(check-sat)
