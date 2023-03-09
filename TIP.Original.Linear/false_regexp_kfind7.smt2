(set-logic HORN)
(declare-datatypes ((Bool_436 0)) (((false_436 ) (true_436 ))))
(declare-fun diseqBool_219 (Bool_436 Bool_436) Bool)
(declare-fun isfalse_219 (Bool_436) Bool)
(declare-fun istrue_219 (Bool_436) Bool)
(assert (isfalse_219 false_436))
(assert (istrue_219 true_436))
(assert (diseqBool_219 false_436 true_436))
(assert (diseqBool_219 true_436 false_436))
(declare-fun and_442 (Bool_436 Bool_436 Bool_436) Bool)
(declare-fun or_456 (Bool_436 Bool_436 Bool_436) Bool)
(declare-fun hence_436 (Bool_436 Bool_436 Bool_436) Bool)
(declare-fun not_441 (Bool_436 Bool_436) Bool)
(assert (and_442 false_436 false_436 false_436))
(assert (and_442 false_436 true_436 false_436))
(assert (and_442 false_436 false_436 true_436))
(assert (and_442 true_436 true_436 true_436))
(assert (or_456 false_436 false_436 false_436))
(assert (or_456 true_436 true_436 false_436))
(assert (or_456 true_436 false_436 true_436))
(assert (or_456 true_436 true_436 true_436))
(assert (hence_436 true_436 false_436 false_436))
(assert (hence_436 false_436 true_436 false_436))
(assert (hence_436 true_436 false_436 true_436))
(assert (hence_436 true_436 true_436 true_436))
(assert (not_441 true_436 false_436))
(assert (not_441 false_436 true_436))
(declare-datatypes ((list_391 0)) (((nil_449 ) (cons_385 (head_770 Bool_436) (tail_776 list_391)))))
(declare-fun diseqlist_385 (list_391 list_391) Bool)
(declare-fun head_773 (Bool_436 list_391) Bool)
(declare-fun tail_779 (list_391 list_391) Bool)
(declare-fun isnil_449 (list_391) Bool)
(declare-fun iscons_385 (list_391) Bool)
(assert (forall ((x_125737 Bool_436) (x_125738 list_391))
	(head_773 x_125737 (cons_385 x_125737 x_125738))))
(assert (forall ((x_125737 Bool_436) (x_125738 list_391))
	(tail_779 x_125738 (cons_385 x_125737 x_125738))))
(assert (isnil_449 nil_449))
(assert (forall ((x_125740 Bool_436) (x_125741 list_391))
	(iscons_385 (cons_385 x_125740 x_125741))))
(assert (forall ((x_125742 Bool_436) (x_125743 list_391))
	(diseqlist_385 nil_449 (cons_385 x_125742 x_125743))))
(assert (forall ((x_125744 Bool_436) (x_125745 list_391))
	(diseqlist_385 (cons_385 x_125744 x_125745) nil_449)))
(assert (forall ((x_125746 Bool_436) (x_125747 list_391) (x_125748 Bool_436) (x_125749 list_391))
	(=> (diseqBool_219 x_125746 x_125748)
	    (diseqlist_385 (cons_385 x_125746 x_125747) (cons_385 x_125748 x_125749)))))
(assert (forall ((x_125746 Bool_436) (x_125747 list_391) (x_125748 Bool_436) (x_125749 list_391))
	(=> (diseqlist_385 x_125747 x_125749)
	    (diseqlist_385 (cons_385 x_125746 x_125747) (cons_385 x_125748 x_125749)))))
(declare-datatypes ((T_38 0)) (((A_121 ) (B_135 ) (C_75 ))))
(declare-fun diseqT_34 (T_38 T_38) Bool)
(declare-fun isA_41 (T_38) Bool)
(declare-fun isB_41 (T_38) Bool)
(declare-fun isC_42 (T_38) Bool)
(assert (isA_41 A_121))
(assert (isB_41 B_135))
(assert (isC_42 C_75))
(assert (diseqT_34 A_121 B_135))
(assert (diseqT_34 A_121 C_75))
(assert (diseqT_34 B_135 A_121))
(assert (diseqT_34 C_75 A_121))
(assert (diseqT_34 B_135 C_75))
(assert (diseqT_34 C_75 B_135))
(declare-datatypes ((list_392 0)) (((nil_450 ) (cons_386 (head_771 T_38) (tail_777 list_392)))))
(declare-fun diseqlist_386 (list_392 list_392) Bool)
(declare-fun head_774 (T_38 list_392) Bool)
(declare-fun tail_780 (list_392 list_392) Bool)
(declare-fun isnil_450 (list_392) Bool)
(declare-fun iscons_386 (list_392) Bool)
(assert (forall ((x_125754 T_38) (x_125755 list_392))
	(head_774 x_125754 (cons_386 x_125754 x_125755))))
(assert (forall ((x_125754 T_38) (x_125755 list_392))
	(tail_780 x_125755 (cons_386 x_125754 x_125755))))
(assert (isnil_450 nil_450))
(assert (forall ((x_125757 T_38) (x_125758 list_392))
	(iscons_386 (cons_386 x_125757 x_125758))))
(assert (forall ((x_125759 T_38) (x_125760 list_392))
	(diseqlist_386 nil_450 (cons_386 x_125759 x_125760))))
(assert (forall ((x_125761 T_38) (x_125762 list_392))
	(diseqlist_386 (cons_386 x_125761 x_125762) nil_450)))
(assert (forall ((x_125763 T_38) (x_125764 list_392) (x_125765 T_38) (x_125766 list_392))
	(=> (diseqT_34 x_125763 x_125765)
	    (diseqlist_386 (cons_386 x_125763 x_125764) (cons_386 x_125765 x_125766)))))
(assert (forall ((x_125763 T_38) (x_125764 list_392) (x_125765 T_38) (x_125766 list_392))
	(=> (diseqlist_386 x_125764 x_125766)
	    (diseqlist_386 (cons_386 x_125763 x_125764) (cons_386 x_125765 x_125766)))))
(declare-datatypes ((pair_202 0)) (((pair_203 (projpair_404 list_392) (projpair_405 list_392)))))
(declare-fun diseqpair_101 (pair_202 pair_202) Bool)
(declare-fun projpair_406 (list_392 pair_202) Bool)
(declare-fun projpair_407 (list_392 pair_202) Bool)
(declare-fun ispair_101 (pair_202) Bool)
(assert (forall ((x_125767 list_392) (x_125768 list_392))
	(projpair_406 x_125767 (pair_203 x_125767 x_125768))))
(assert (forall ((x_125767 list_392) (x_125768 list_392))
	(projpair_407 x_125768 (pair_203 x_125767 x_125768))))
(assert (forall ((x_125770 list_392) (x_125771 list_392))
	(ispair_101 (pair_203 x_125770 x_125771))))
(assert (forall ((x_125772 list_392) (x_125773 list_392) (x_125774 list_392) (x_125775 list_392))
	(=> (diseqlist_386 x_125772 x_125774)
	    (diseqpair_101 (pair_203 x_125772 x_125773) (pair_203 x_125774 x_125775)))))
(assert (forall ((x_125772 list_392) (x_125773 list_392) (x_125774 list_392) (x_125775 list_392))
	(=> (diseqlist_386 x_125773 x_125775)
	    (diseqpair_101 (pair_203 x_125772 x_125773) (pair_203 x_125774 x_125775)))))
(declare-datatypes ((list_393 0)) (((nil_451 ) (cons_387 (head_772 pair_202) (tail_778 list_393)))))
(declare-fun diseqlist_387 (list_393 list_393) Bool)
(declare-fun head_775 (pair_202 list_393) Bool)
(declare-fun tail_781 (list_393 list_393) Bool)
(declare-fun isnil_451 (list_393) Bool)
(declare-fun iscons_387 (list_393) Bool)
(assert (forall ((x_125777 pair_202) (x_125778 list_393))
	(head_775 x_125777 (cons_387 x_125777 x_125778))))
(assert (forall ((x_125777 pair_202) (x_125778 list_393))
	(tail_781 x_125778 (cons_387 x_125777 x_125778))))
(assert (isnil_451 nil_451))
(assert (forall ((x_125780 pair_202) (x_125781 list_393))
	(iscons_387 (cons_387 x_125780 x_125781))))
(assert (forall ((x_125782 pair_202) (x_125783 list_393))
	(diseqlist_387 nil_451 (cons_387 x_125782 x_125783))))
(assert (forall ((x_125784 pair_202) (x_125785 list_393))
	(diseqlist_387 (cons_387 x_125784 x_125785) nil_451)))
(assert (forall ((x_125786 pair_202) (x_125787 list_393) (x_125788 pair_202) (x_125789 list_393))
	(=> (diseqpair_101 x_125786 x_125788)
	    (diseqlist_387 (cons_387 x_125786 x_125787) (cons_387 x_125788 x_125789)))))
(assert (forall ((x_125786 pair_202) (x_125787 list_393) (x_125788 pair_202) (x_125789 list_393))
	(=> (diseqlist_387 x_125787 x_125789)
	    (diseqlist_387 (cons_387 x_125786 x_125787) (cons_387 x_125788 x_125789)))))
(declare-datatypes ((R_648 0)) (((Nil_452 ) (Eps_96 ) (Atom_48 (projAtom_96 T_38)) (x_125641 (proj_348 R_648) (proj_349 R_648)) (x_125642 (proj_350 R_648) (proj_351 R_648)) (Star_48 (projStar_96 R_648)))))
(declare-fun diseqR_48 (R_648 R_648) Bool)
(declare-fun projAtom_97 (T_38 R_648) Bool)
(declare-fun proj_352 (R_648 R_648) Bool)
(declare-fun proj_353 (R_648 R_648) Bool)
(declare-fun proj_354 (R_648 R_648) Bool)
(declare-fun proj_355 (R_648 R_648) Bool)
(declare-fun projStar_97 (R_648 R_648) Bool)
(declare-fun isNil_452 (R_648) Bool)
(declare-fun isEps_48 (R_648) Bool)
(declare-fun isAtom_48 (R_648) Bool)
(declare-fun isx_102 (R_648) Bool)
(declare-fun isx_103 (R_648) Bool)
(declare-fun isStar_48 (R_648) Bool)
(assert (forall ((x_125792 T_38))
	(projAtom_97 x_125792 (Atom_48 x_125792))))
(assert (forall ((x_125794 R_648) (x_125795 R_648))
	(proj_352 x_125794 (x_125641 x_125794 x_125795))))
(assert (forall ((x_125794 R_648) (x_125795 R_648))
	(proj_353 x_125795 (x_125641 x_125794 x_125795))))
(assert (forall ((x_125797 R_648) (x_125798 R_648))
	(proj_354 x_125797 (x_125642 x_125797 x_125798))))
(assert (forall ((x_125797 R_648) (x_125798 R_648))
	(proj_355 x_125798 (x_125642 x_125797 x_125798))))
(assert (forall ((x_125800 R_648))
	(projStar_97 x_125800 (Star_48 x_125800))))
(assert (isNil_452 Nil_452))
(assert (isEps_48 Eps_96))
(assert (forall ((x_125802 T_38))
	(isAtom_48 (Atom_48 x_125802))))
(assert (forall ((x_125803 R_648) (x_125804 R_648))
	(isx_102 (x_125641 x_125803 x_125804))))
(assert (forall ((x_125805 R_648) (x_125806 R_648))
	(isx_103 (x_125642 x_125805 x_125806))))
(assert (forall ((x_125807 R_648))
	(isStar_48 (Star_48 x_125807))))
(assert (diseqR_48 Nil_452 Eps_96))
(assert (forall ((x_125808 T_38))
	(diseqR_48 Nil_452 (Atom_48 x_125808))))
(assert (forall ((x_125809 R_648) (x_125810 R_648))
	(diseqR_48 Nil_452 (x_125641 x_125809 x_125810))))
(assert (forall ((x_125811 R_648) (x_125812 R_648))
	(diseqR_48 Nil_452 (x_125642 x_125811 x_125812))))
(assert (forall ((x_125813 R_648))
	(diseqR_48 Nil_452 (Star_48 x_125813))))
(assert (diseqR_48 Eps_96 Nil_452))
(assert (forall ((x_125814 T_38))
	(diseqR_48 (Atom_48 x_125814) Nil_452)))
(assert (forall ((x_125815 R_648) (x_125816 R_648))
	(diseqR_48 (x_125641 x_125815 x_125816) Nil_452)))
(assert (forall ((x_125817 R_648) (x_125818 R_648))
	(diseqR_48 (x_125642 x_125817 x_125818) Nil_452)))
(assert (forall ((x_125819 R_648))
	(diseqR_48 (Star_48 x_125819) Nil_452)))
(assert (forall ((x_125820 T_38))
	(diseqR_48 Eps_96 (Atom_48 x_125820))))
(assert (forall ((x_125821 R_648) (x_125822 R_648))
	(diseqR_48 Eps_96 (x_125641 x_125821 x_125822))))
(assert (forall ((x_125823 R_648) (x_125824 R_648))
	(diseqR_48 Eps_96 (x_125642 x_125823 x_125824))))
(assert (forall ((x_125825 R_648))
	(diseqR_48 Eps_96 (Star_48 x_125825))))
(assert (forall ((x_125826 T_38))
	(diseqR_48 (Atom_48 x_125826) Eps_96)))
(assert (forall ((x_125827 R_648) (x_125828 R_648))
	(diseqR_48 (x_125641 x_125827 x_125828) Eps_96)))
(assert (forall ((x_125829 R_648) (x_125830 R_648))
	(diseqR_48 (x_125642 x_125829 x_125830) Eps_96)))
(assert (forall ((x_125831 R_648))
	(diseqR_48 (Star_48 x_125831) Eps_96)))
(assert (forall ((x_125832 T_38) (x_125833 R_648) (x_125834 R_648))
	(diseqR_48 (Atom_48 x_125832) (x_125641 x_125833 x_125834))))
(assert (forall ((x_125835 T_38) (x_125836 R_648) (x_125837 R_648))
	(diseqR_48 (Atom_48 x_125835) (x_125642 x_125836 x_125837))))
(assert (forall ((x_125838 T_38) (x_125839 R_648))
	(diseqR_48 (Atom_48 x_125838) (Star_48 x_125839))))
(assert (forall ((x_125840 R_648) (x_125841 R_648) (x_125842 T_38))
	(diseqR_48 (x_125641 x_125840 x_125841) (Atom_48 x_125842))))
(assert (forall ((x_125843 R_648) (x_125844 R_648) (x_125845 T_38))
	(diseqR_48 (x_125642 x_125843 x_125844) (Atom_48 x_125845))))
(assert (forall ((x_125846 R_648) (x_125847 T_38))
	(diseqR_48 (Star_48 x_125846) (Atom_48 x_125847))))
(assert (forall ((x_125848 R_648) (x_125849 R_648) (x_125850 R_648) (x_125851 R_648))
	(diseqR_48 (x_125641 x_125848 x_125849) (x_125642 x_125850 x_125851))))
(assert (forall ((x_125852 R_648) (x_125853 R_648) (x_125854 R_648))
	(diseqR_48 (x_125641 x_125852 x_125853) (Star_48 x_125854))))
(assert (forall ((x_125855 R_648) (x_125856 R_648) (x_125857 R_648) (x_125858 R_648))
	(diseqR_48 (x_125642 x_125855 x_125856) (x_125641 x_125857 x_125858))))
(assert (forall ((x_125859 R_648) (x_125860 R_648) (x_125861 R_648))
	(diseqR_48 (Star_48 x_125859) (x_125641 x_125860 x_125861))))
(assert (forall ((x_125862 R_648) (x_125863 R_648) (x_125864 R_648))
	(diseqR_48 (x_125642 x_125862 x_125863) (Star_48 x_125864))))
(assert (forall ((x_125865 R_648) (x_125866 R_648) (x_125867 R_648))
	(diseqR_48 (Star_48 x_125865) (x_125642 x_125866 x_125867))))
(assert (forall ((x_125868 T_38) (x_125869 T_38))
	(=> (diseqT_34 x_125868 x_125869)
	    (diseqR_48 (Atom_48 x_125868) (Atom_48 x_125869)))))
(assert (forall ((x_125870 R_648) (x_125871 R_648) (x_125872 R_648) (x_125873 R_648))
	(=> (diseqR_48 x_125870 x_125872)
	    (diseqR_48 (x_125641 x_125870 x_125871) (x_125641 x_125872 x_125873)))))
(assert (forall ((x_125870 R_648) (x_125871 R_648) (x_125872 R_648) (x_125873 R_648))
	(=> (diseqR_48 x_125871 x_125873)
	    (diseqR_48 (x_125641 x_125870 x_125871) (x_125641 x_125872 x_125873)))))
(assert (forall ((x_125874 R_648) (x_125875 R_648) (x_125876 R_648) (x_125877 R_648))
	(=> (diseqR_48 x_125874 x_125876)
	    (diseqR_48 (x_125642 x_125874 x_125875) (x_125642 x_125876 x_125877)))))
(assert (forall ((x_125874 R_648) (x_125875 R_648) (x_125876 R_648) (x_125877 R_648))
	(=> (diseqR_48 x_125875 x_125877)
	    (diseqR_48 (x_125642 x_125874 x_125875) (x_125642 x_125876 x_125877)))))
(assert (forall ((x_125878 R_648) (x_125879 R_648))
	(=> (diseqR_48 x_125878 x_125879)
	    (diseqR_48 (Star_48 x_125878) (Star_48 x_125879)))))
(declare-fun splits_12 (list_393 T_38 list_393) Bool)
(assert (forall ((x_125662 list_393) (bs_22 list_392) (cs_8 list_392) (x_125644 list_393) (x_125643 T_38))
	(=> (splits_12 x_125662 x_125643 x_125644)
	    (splits_12 (cons_387 (pair_203 (cons_386 x_125643 bs_22) cs_8) x_125662) x_125643 (cons_387 (pair_203 bs_22 cs_8) x_125644)))))
(assert (forall ((x_125643 T_38))
	(splits_12 nil_451 x_125643 nil_451)))
(declare-fun splits_13 (list_393 list_392) Bool)
(assert (forall ((x_125665 list_393) (x_125666 list_393) (y_3177 T_38) (xs_883 list_392))
	(=>	(and (splits_13 x_125665 xs_883)
			(splits_12 x_125666 y_3177 x_125665))
		(splits_13 (cons_387 (pair_203 nil_450 (cons_386 y_3177 xs_883)) x_125666) (cons_386 y_3177 xs_883)))))
(assert (splits_13 (cons_387 (pair_203 nil_450 nil_450) nil_451) nil_450))
(declare-fun or_455 (Bool_436 list_391) Bool)
(assert (forall ((x_125668 Bool_436) (x_125669 Bool_436) (y_3178 Bool_436) (xs_884 list_391))
	(=>	(and (or_455 x_125669 xs_884)
			(or_456 x_125668 y_3178 x_125669))
		(or_455 x_125668 (cons_385 y_3178 xs_884)))))
(assert (or_455 false_436 nil_449))
(declare-fun eps_97 (Bool_436 R_648) Bool)
(assert (forall ((y_3179 R_648))
	(eps_97 true_436 (Star_48 y_3179))))
(assert (forall ((x_125672 Bool_436) (x_125673 Bool_436) (x_125674 Bool_436) (r_649 R_648) (q_366 R_648))
	(=>	(and (eps_97 x_125673 r_649)
			(eps_97 x_125674 q_366)
			(and_442 x_125672 x_125673 x_125674))
		(eps_97 x_125672 (x_125642 r_649 q_366)))))
(assert (forall ((x_125675 Bool_436) (x_125676 Bool_436) (x_125677 Bool_436) (p_597 R_648) (q_367 R_648))
	(=>	(and (eps_97 x_125676 p_597)
			(eps_97 x_125677 q_367)
			(or_456 x_125675 x_125676 x_125677))
		(eps_97 x_125675 (x_125641 p_597 q_367)))))
(assert (eps_97 true_436 Eps_96))
(assert (forall ((x_125648 R_648) (x_125660 T_38))
	(eps_97 false_436 (Atom_48 x_125660))))
(assert (forall ((x_125648 R_648))
	(eps_97 false_436 Nil_452)))
(declare-fun step_48 (R_648 R_648 T_38) Bool)
(assert (forall ((x_125682 R_648) (p_598 R_648) (y_3180 T_38))
	(=> (step_48 x_125682 p_598 y_3180)
	    (step_48 (x_125642 x_125682 (Star_48 p_598)) (Star_48 p_598) y_3180))))
(assert (forall ((x_125685 R_648) (x_125686 R_648) (r_650 R_648) (q_368 R_648) (y_3180 T_38))
	(=>	(and (step_48 x_125685 r_650 y_3180)
			(step_48 x_125686 q_368 y_3180)
			(eps_97 true_436 r_650))
		(step_48 (x_125641 (x_125642 x_125685 q_368) x_125686) (x_125642 r_650 q_368) y_3180))))
(assert (forall ((x_125689 R_648) (r_650 R_648) (q_368 R_648) (y_3180 T_38))
	(=>	(and (step_48 x_125689 r_650 y_3180)
			(eps_97 false_436 r_650))
		(step_48 (x_125641 (x_125642 x_125689 q_368) Nil_452) (x_125642 r_650 q_368) y_3180))))
(assert (forall ((x_125691 R_648) (x_125692 R_648) (p_599 R_648) (q_369 R_648) (y_3180 T_38))
	(=>	(and (step_48 x_125691 p_599 y_3180)
			(step_48 x_125692 q_369 y_3180))
		(step_48 (x_125641 x_125691 x_125692) (x_125641 p_599 q_369) y_3180))))
(assert (forall ((b_136 T_38))
	(step_48 Eps_96 (Atom_48 b_136) b_136)))
(assert (forall ((b_136 T_38) (y_3180 T_38))
	(=> (diseqT_34 b_136 y_3180)
	    (step_48 Nil_452 (Atom_48 b_136) y_3180))))
(assert (forall ((x_125650 R_648) (y_3180 T_38))
	(step_48 Nil_452 Eps_96 y_3180)))
(assert (forall ((x_125650 R_648) (y_3180 T_38))
	(step_48 Nil_452 Nil_452 y_3180)))
(declare-fun rec_34 (Bool_436 R_648 list_392) Bool)
(assert (forall ((x_125697 Bool_436) (x_125698 R_648) (z_2717 T_38) (xs_885 list_392) (x_125651 R_648))
	(=>	(and (step_48 x_125698 x_125651 z_2717)
			(rec_34 x_125697 x_125698 xs_885))
		(rec_34 x_125697 x_125651 (cons_386 z_2717 xs_885)))))
(assert (forall ((x_125700 Bool_436) (x_125651 R_648))
	(=> (eps_97 x_125700 x_125651)
	    (rec_34 x_125700 x_125651 nil_450))))
(declare-fun reck_12 (Bool_436 R_648 list_392) Bool)
(declare-fun reck_13 (list_391 R_648 R_648 list_393) Bool)
(assert (forall ((x_125703 Bool_436) (x_125653 T_38) (x_125654 list_392) (p_600 R_648))
	(=>	(and (rec_34 x_125703 (x_125642 p_600 (Star_48 p_600)) (cons_386 x_125653 x_125654))
			(eps_97 false_436 p_600))
		(reck_12 x_125703 (Star_48 p_600) (cons_386 x_125653 x_125654)))))
(assert (forall ((x_125653 T_38) (x_125654 list_392) (p_600 R_648))
	(=> (eps_97 true_436 p_600)
	    (reck_12 false_436 (Star_48 p_600) (cons_386 x_125653 x_125654)))))
(assert (forall ((p_600 R_648))
	(reck_12 true_436 (Star_48 p_600) nil_450)))
(assert (forall ((x_125708 Bool_436) (x_125709 list_393) (x_125710 list_391) (r_651 R_648) (q_370 R_648) (y_3182 list_392))
	(=>	(and (splits_13 x_125709 y_3182)
			(reck_13 x_125710 r_651 q_370 x_125709)
			(or_455 x_125708 x_125710))
		(reck_12 x_125708 (x_125642 r_651 q_370) y_3182))))
(assert (forall ((x_125712 Bool_436) (x_125713 Bool_436) (x_125714 Bool_436) (p_601 R_648) (q_371 R_648) (y_3182 list_392))
	(=>	(and (reck_12 x_125713 p_601 y_3182)
			(reck_12 x_125714 q_371 y_3182)
			(or_456 x_125712 x_125713 x_125714))
		(reck_12 x_125712 (x_125641 p_601 q_371) y_3182))))
(assert (forall ((x_125656 T_38) (x_125657 list_392) (b_137 T_38) (c_76 T_38))
	(reck_12 false_436 (Atom_48 c_76) (cons_386 b_137 (cons_386 x_125656 x_125657)))))
(assert (forall ((b_137 T_38))
	(reck_12 true_436 (Atom_48 b_137) (cons_386 b_137 nil_450))))
(assert (forall ((b_137 T_38) (c_76 T_38))
	(=> (diseqT_34 c_76 b_137)
	    (reck_12 false_436 (Atom_48 c_76) (cons_386 b_137 nil_450)))))
(assert (forall ((c_76 T_38))
	(reck_12 false_436 (Atom_48 c_76) nil_450)))
(assert (forall ((z_2718 T_38) (x_125658 list_392))
	(reck_12 false_436 Eps_96 (cons_386 z_2718 x_125658))))
(assert (reck_12 true_436 Eps_96 nil_450))
(assert (forall ((y_3182 list_392))
	(reck_12 false_436 Nil_452 y_3182)))
(assert (forall ((x_125732 Bool_436) (x_125723 Bool_436) (x_125724 Bool_436) (x_125725 list_391) (l_61 list_392) (r_652 list_392) (z_2719 list_393) (p_602 R_648) (q_372 R_648))
	(=>	(and (reck_12 x_125723 p_602 l_61)
			(rec_34 x_125724 q_372 r_652)
			(reck_13 x_125725 p_602 q_372 z_2719)
			(and_442 x_125732 x_125723 x_125724))
		(reck_13 (cons_385 x_125732 x_125725) p_602 q_372 (cons_387 (pair_203 l_61 r_652) z_2719)))))
(assert (forall ((p_602 R_648) (q_372 R_648))
	(reck_13 nil_449 p_602 q_372 nil_451)))
(assert (forall ((p_603 R_648))
	(=>	(and true
			(reck_12 true_436 p_603 (cons_386 A_121 (cons_386 B_135 (cons_386 A_121 (cons_386 B_135 (cons_386 A_121 (cons_386 B_135 nil_450))))))))
		false)))
(check-sat)
