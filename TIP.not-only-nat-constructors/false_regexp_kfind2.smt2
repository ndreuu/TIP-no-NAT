
(set-logic HORN)
(declare-datatypes ((Bool_423 0)) (((false_423) (true_423))))
(declare-fun diseqBool_208 (Bool_423 Bool_423) Bool)
(declare-fun isfalse_208 (Bool_423) Bool)
(declare-fun istrue_208 (Bool_423) Bool)
(assert (isfalse_208 false_423))
(assert (istrue_208 true_423))
(assert (diseqBool_208 false_423 true_423))
(assert (diseqBool_208 true_423 false_423))
(declare-fun and_428 (Bool_423 Bool_423 Bool_423) Bool)
(declare-fun or_440 (Bool_423 Bool_423 Bool_423) Bool)
(declare-fun hence_423 (Bool_423 Bool_423 Bool_423) Bool)
(declare-fun not_428 (Bool_423 Bool_423) Bool)
(assert (and_428 false_423 false_423 false_423))
(assert (and_428 false_423 true_423 false_423))
(assert (and_428 false_423 false_423 true_423))
(assert (and_428 true_423 true_423 true_423))
(assert (or_440 false_423 false_423 false_423))
(assert (or_440 true_423 true_423 false_423))
(assert (or_440 true_423 false_423 true_423))
(assert (or_440 true_423 true_423 true_423))
(assert (hence_423 true_423 false_423 false_423))
(assert (hence_423 false_423 true_423 false_423))
(assert (hence_423 true_423 false_423 true_423))
(assert (hence_423 true_423 true_423 true_423))
(assert (not_428 true_423 false_423))
(assert (not_428 false_423 true_423))
(declare-datatypes ((list_368 0)) (((nil_419) (cons_362 (head_724 Bool_423) (tail_730 list_368)))))
(declare-fun diseqlist_362 (list_368 list_368) Bool)
(declare-fun head_727 (Bool_423 list_368) Bool)
(declare-fun tail_733 (list_368 list_368) Bool)
(declare-fun isnil_419 (list_368) Bool)
(declare-fun iscons_362 (list_368) Bool)
(assert (forall ((x_108725 Bool_423) (x_108726 list_368))
	(head_727 x_108725 (cons_362 x_108725 x_108726))))
(assert (forall ((x_108725 Bool_423) (x_108726 list_368))
	(tail_733 x_108726 (cons_362 x_108725 x_108726))))
(assert (isnil_419 nil_419))
(assert (forall ((x_108728 Bool_423) (x_108729 list_368))
	(iscons_362 (cons_362 x_108728 x_108729))))
(assert (forall ((x_108730 Bool_423) (x_108731 list_368))
	(diseqlist_362 nil_419 (cons_362 x_108730 x_108731))))
(assert (forall ((x_108732 Bool_423) (x_108733 list_368))
	(diseqlist_362 (cons_362 x_108732 x_108733) nil_419)))
(assert (forall ((x_108734 Bool_423) (x_108735 list_368) (x_108736 Bool_423) (x_108737 list_368))
	(=> (diseqBool_208 x_108734 x_108736) (diseqlist_362 (cons_362 x_108734 x_108735) (cons_362 x_108736 x_108737)))))
(assert (forall ((x_108734 Bool_423) (x_108735 list_368) (x_108736 Bool_423) (x_108737 list_368))
	(=> (diseqlist_362 x_108735 x_108737) (diseqlist_362 (cons_362 x_108734 x_108735) (cons_362 x_108736 x_108737)))))
(declare-datatypes ((T_29 0)) (((A_111) (B_117) (C_64))))
(declare-fun diseqT_27 (T_29 T_29) Bool)
(declare-fun isA_34 (T_29) Bool)
(declare-fun isB_34 (T_29) Bool)
(declare-fun isC_35 (T_29) Bool)
(assert (isA_34 A_111))
(assert (isB_34 B_117))
(assert (isC_35 C_64))
(assert (diseqT_27 A_111 B_117))
(assert (diseqT_27 A_111 C_64))
(assert (diseqT_27 B_117 A_111))
(assert (diseqT_27 C_64 A_111))
(assert (diseqT_27 B_117 C_64))
(assert (diseqT_27 C_64 B_117))
(declare-datatypes ((list_369 0)) (((nil_420) (cons_363 (head_725 T_29) (tail_731 list_369)))))
(declare-fun diseqlist_363 (list_369 list_369) Bool)
(declare-fun head_728 (T_29 list_369) Bool)
(declare-fun tail_734 (list_369 list_369) Bool)
(declare-fun isnil_420 (list_369) Bool)
(declare-fun iscons_363 (list_369) Bool)
(assert (forall ((x_108742 T_29) (x_108743 list_369))
	(head_728 x_108742 (cons_363 x_108742 x_108743))))
(assert (forall ((x_108742 T_29) (x_108743 list_369))
	(tail_734 x_108743 (cons_363 x_108742 x_108743))))
(assert (isnil_420 nil_420))
(assert (forall ((x_108745 T_29) (x_108746 list_369))
	(iscons_363 (cons_363 x_108745 x_108746))))
(assert (forall ((x_108747 T_29) (x_108748 list_369))
	(diseqlist_363 nil_420 (cons_363 x_108747 x_108748))))
(assert (forall ((x_108749 T_29) (x_108750 list_369))
	(diseqlist_363 (cons_363 x_108749 x_108750) nil_420)))
(assert (forall ((x_108751 T_29) (x_108752 list_369) (x_108753 T_29) (x_108754 list_369))
	(=> (diseqT_27 x_108751 x_108753) (diseqlist_363 (cons_363 x_108751 x_108752) (cons_363 x_108753 x_108754)))))
(assert (forall ((x_108751 T_29) (x_108752 list_369) (x_108753 T_29) (x_108754 list_369))
	(=> (diseqlist_363 x_108752 x_108754) (diseqlist_363 (cons_363 x_108751 x_108752) (cons_363 x_108753 x_108754)))))
(declare-datatypes ((pair_172 0)) (((pair_173 (projpair_344 list_369) (projpair_345 list_369)))))
(declare-fun diseqpair_86 (pair_172 pair_172) Bool)
(declare-fun projpair_346 (list_369 pair_172) Bool)
(declare-fun projpair_347 (list_369 pair_172) Bool)
(declare-fun ispair_86 (pair_172) Bool)
(assert (forall ((x_108755 list_369) (x_108756 list_369))
	(projpair_346 x_108755 (pair_173 x_108755 x_108756))))
(assert (forall ((x_108755 list_369) (x_108756 list_369))
	(projpair_347 x_108756 (pair_173 x_108755 x_108756))))
(assert (forall ((x_108758 list_369) (x_108759 list_369))
	(ispair_86 (pair_173 x_108758 x_108759))))
(assert (forall ((x_108760 list_369) (x_108761 list_369) (x_108762 list_369) (x_108763 list_369))
	(=> (diseqlist_363 x_108760 x_108762) (diseqpair_86 (pair_173 x_108760 x_108761) (pair_173 x_108762 x_108763)))))
(assert (forall ((x_108760 list_369) (x_108761 list_369) (x_108762 list_369) (x_108763 list_369))
	(=> (diseqlist_363 x_108761 x_108763) (diseqpair_86 (pair_173 x_108760 x_108761) (pair_173 x_108762 x_108763)))))
(declare-datatypes ((list_370 0)) (((nil_421) (cons_364 (head_726 pair_172) (tail_732 list_370)))))
(declare-fun diseqlist_364 (list_370 list_370) Bool)
(declare-fun head_729 (pair_172 list_370) Bool)
(declare-fun tail_735 (list_370 list_370) Bool)
(declare-fun isnil_421 (list_370) Bool)
(declare-fun iscons_364 (list_370) Bool)
(assert (forall ((x_108765 pair_172) (x_108766 list_370))
	(head_729 x_108765 (cons_364 x_108765 x_108766))))
(assert (forall ((x_108765 pair_172) (x_108766 list_370))
	(tail_735 x_108766 (cons_364 x_108765 x_108766))))
(assert (isnil_421 nil_421))
(assert (forall ((x_108768 pair_172) (x_108769 list_370))
	(iscons_364 (cons_364 x_108768 x_108769))))
(assert (forall ((x_108770 pair_172) (x_108771 list_370))
	(diseqlist_364 nil_421 (cons_364 x_108770 x_108771))))
(assert (forall ((x_108772 pair_172) (x_108773 list_370))
	(diseqlist_364 (cons_364 x_108772 x_108773) nil_421)))
(assert (forall ((x_108774 pair_172) (x_108775 list_370) (x_108776 pair_172) (x_108777 list_370))
	(=> (diseqpair_86 x_108774 x_108776) (diseqlist_364 (cons_364 x_108774 x_108775) (cons_364 x_108776 x_108777)))))
(assert (forall ((x_108774 pair_172) (x_108775 list_370) (x_108776 pair_172) (x_108777 list_370))
	(=> (diseqlist_364 x_108775 x_108777) (diseqlist_364 (cons_364 x_108774 x_108775) (cons_364 x_108776 x_108777)))))
(declare-datatypes ((R_602 0)) (((Nil_422) (Eps_82) (Atom_41 (projAtom_82 T_29)) (x_108629 (proj_280 R_602) (proj_281 R_602)) (x_108630 (proj_282 R_602) (proj_283 R_602)) (Star_41 (projStar_82 R_602)))))
(declare-fun diseqR_41 (R_602 R_602) Bool)
(declare-fun projAtom_83 (T_29 R_602) Bool)
(declare-fun proj_284 (R_602 R_602) Bool)
(declare-fun proj_285 (R_602 R_602) Bool)
(declare-fun proj_286 (R_602 R_602) Bool)
(declare-fun proj_287 (R_602 R_602) Bool)
(declare-fun projStar_83 (R_602 R_602) Bool)
(declare-fun isNil_422 (R_602) Bool)
(declare-fun isEps_41 (R_602) Bool)
(declare-fun isAtom_41 (R_602) Bool)
(declare-fun isx_85 (R_602) Bool)
(declare-fun isx_86 (R_602) Bool)
(declare-fun isStar_41 (R_602) Bool)
(assert (forall ((x_108780 T_29))
	(projAtom_83 x_108780 (Atom_41 x_108780))))
(assert (forall ((x_108782 R_602) (x_108783 R_602))
	(proj_284 x_108782 (x_108629 x_108782 x_108783))))
(assert (forall ((x_108782 R_602) (x_108783 R_602))
	(proj_285 x_108783 (x_108629 x_108782 x_108783))))
(assert (forall ((x_108785 R_602) (x_108786 R_602))
	(proj_286 x_108785 (x_108630 x_108785 x_108786))))
(assert (forall ((x_108785 R_602) (x_108786 R_602))
	(proj_287 x_108786 (x_108630 x_108785 x_108786))))
(assert (forall ((x_108788 R_602))
	(projStar_83 x_108788 (Star_41 x_108788))))
(assert (isNil_422 Nil_422))
(assert (isEps_41 Eps_82))
(assert (forall ((x_108790 T_29))
	(isAtom_41 (Atom_41 x_108790))))
(assert (forall ((x_108791 R_602) (x_108792 R_602))
	(isx_85 (x_108629 x_108791 x_108792))))
(assert (forall ((x_108793 R_602) (x_108794 R_602))
	(isx_86 (x_108630 x_108793 x_108794))))
(assert (forall ((x_108795 R_602))
	(isStar_41 (Star_41 x_108795))))
(assert (diseqR_41 Nil_422 Eps_82))
(assert (forall ((x_108796 T_29))
	(diseqR_41 Nil_422 (Atom_41 x_108796))))
(assert (forall ((x_108797 R_602) (x_108798 R_602))
	(diseqR_41 Nil_422 (x_108629 x_108797 x_108798))))
(assert (forall ((x_108799 R_602) (x_108800 R_602))
	(diseqR_41 Nil_422 (x_108630 x_108799 x_108800))))
(assert (forall ((x_108801 R_602))
	(diseqR_41 Nil_422 (Star_41 x_108801))))
(assert (diseqR_41 Eps_82 Nil_422))
(assert (forall ((x_108802 T_29))
	(diseqR_41 (Atom_41 x_108802) Nil_422)))
(assert (forall ((x_108803 R_602) (x_108804 R_602))
	(diseqR_41 (x_108629 x_108803 x_108804) Nil_422)))
(assert (forall ((x_108805 R_602) (x_108806 R_602))
	(diseqR_41 (x_108630 x_108805 x_108806) Nil_422)))
(assert (forall ((x_108807 R_602))
	(diseqR_41 (Star_41 x_108807) Nil_422)))
(assert (forall ((x_108808 T_29))
	(diseqR_41 Eps_82 (Atom_41 x_108808))))
(assert (forall ((x_108809 R_602) (x_108810 R_602))
	(diseqR_41 Eps_82 (x_108629 x_108809 x_108810))))
(assert (forall ((x_108811 R_602) (x_108812 R_602))
	(diseqR_41 Eps_82 (x_108630 x_108811 x_108812))))
(assert (forall ((x_108813 R_602))
	(diseqR_41 Eps_82 (Star_41 x_108813))))
(assert (forall ((x_108814 T_29))
	(diseqR_41 (Atom_41 x_108814) Eps_82)))
(assert (forall ((x_108815 R_602) (x_108816 R_602))
	(diseqR_41 (x_108629 x_108815 x_108816) Eps_82)))
(assert (forall ((x_108817 R_602) (x_108818 R_602))
	(diseqR_41 (x_108630 x_108817 x_108818) Eps_82)))
(assert (forall ((x_108819 R_602))
	(diseqR_41 (Star_41 x_108819) Eps_82)))
(assert (forall ((x_108820 T_29) (x_108821 R_602) (x_108822 R_602))
	(diseqR_41 (Atom_41 x_108820) (x_108629 x_108821 x_108822))))
(assert (forall ((x_108823 T_29) (x_108824 R_602) (x_108825 R_602))
	(diseqR_41 (Atom_41 x_108823) (x_108630 x_108824 x_108825))))
(assert (forall ((x_108826 T_29) (x_108827 R_602))
	(diseqR_41 (Atom_41 x_108826) (Star_41 x_108827))))
(assert (forall ((x_108828 R_602) (x_108829 R_602) (x_108830 T_29))
	(diseqR_41 (x_108629 x_108828 x_108829) (Atom_41 x_108830))))
(assert (forall ((x_108831 R_602) (x_108832 R_602) (x_108833 T_29))
	(diseqR_41 (x_108630 x_108831 x_108832) (Atom_41 x_108833))))
(assert (forall ((x_108834 R_602) (x_108835 T_29))
	(diseqR_41 (Star_41 x_108834) (Atom_41 x_108835))))
(assert (forall ((x_108836 R_602) (x_108837 R_602) (x_108838 R_602) (x_108839 R_602))
	(diseqR_41 (x_108629 x_108836 x_108837) (x_108630 x_108838 x_108839))))
(assert (forall ((x_108840 R_602) (x_108841 R_602) (x_108842 R_602))
	(diseqR_41 (x_108629 x_108840 x_108841) (Star_41 x_108842))))
(assert (forall ((x_108843 R_602) (x_108844 R_602) (x_108845 R_602) (x_108846 R_602))
	(diseqR_41 (x_108630 x_108843 x_108844) (x_108629 x_108845 x_108846))))
(assert (forall ((x_108847 R_602) (x_108848 R_602) (x_108849 R_602))
	(diseqR_41 (Star_41 x_108847) (x_108629 x_108848 x_108849))))
(assert (forall ((x_108850 R_602) (x_108851 R_602) (x_108852 R_602))
	(diseqR_41 (x_108630 x_108850 x_108851) (Star_41 x_108852))))
(assert (forall ((x_108853 R_602) (x_108854 R_602) (x_108855 R_602))
	(diseqR_41 (Star_41 x_108853) (x_108630 x_108854 x_108855))))
(assert (forall ((x_108856 T_29) (x_108857 T_29))
	(=> (diseqT_27 x_108856 x_108857) (diseqR_41 (Atom_41 x_108856) (Atom_41 x_108857)))))
(assert (forall ((x_108858 R_602) (x_108859 R_602) (x_108860 R_602) (x_108861 R_602))
	(=> (diseqR_41 x_108858 x_108860) (diseqR_41 (x_108629 x_108858 x_108859) (x_108629 x_108860 x_108861)))))
(assert (forall ((x_108858 R_602) (x_108859 R_602) (x_108860 R_602) (x_108861 R_602))
	(=> (diseqR_41 x_108859 x_108861) (diseqR_41 (x_108629 x_108858 x_108859) (x_108629 x_108860 x_108861)))))
(assert (forall ((x_108862 R_602) (x_108863 R_602) (x_108864 R_602) (x_108865 R_602))
	(=> (diseqR_41 x_108862 x_108864) (diseqR_41 (x_108630 x_108862 x_108863) (x_108630 x_108864 x_108865)))))
(assert (forall ((x_108862 R_602) (x_108863 R_602) (x_108864 R_602) (x_108865 R_602))
	(=> (diseqR_41 x_108863 x_108865) (diseqR_41 (x_108630 x_108862 x_108863) (x_108630 x_108864 x_108865)))))
(assert (forall ((x_108866 R_602) (x_108867 R_602))
	(=> (diseqR_41 x_108866 x_108867) (diseqR_41 (Star_41 x_108866) (Star_41 x_108867)))))
(declare-fun splits_8 (list_370 T_29 list_370) Bool)
(assert (forall ((x_108650 list_370) (bs_20 list_369) (cs_6 list_369) (x_108632 list_370) (x_108631 T_29))
	(=> (splits_8 x_108650 x_108631 x_108632) (splits_8 (cons_364 (pair_173 (cons_363 x_108631 bs_20) cs_6) x_108650) x_108631 (cons_364 (pair_173 bs_20 cs_6) x_108632)))))
(assert (forall ((x_108631 T_29))
	(splits_8 nil_421 x_108631 nil_421)))
(declare-fun splits_9 (list_370 list_369) Bool)
(assert (forall ((x_108653 list_370) (x_108654 list_370) (y_2999 T_29) (xs_859 list_369))
	(=> (and (splits_9 x_108653 xs_859) (splits_8 x_108654 y_2999 x_108653)) (splits_9 (cons_364 (pair_173 nil_420 (cons_363 y_2999 xs_859)) x_108654) (cons_363 y_2999 xs_859)))))
(assert (splits_9 (cons_364 (pair_173 nil_420 nil_420) nil_421) nil_420))
(declare-fun or_439 (Bool_423 list_368) Bool)
(assert (forall ((x_108656 Bool_423) (x_108657 Bool_423) (y_3000 Bool_423) (xs_860 list_368))
	(=> (and (or_439 x_108657 xs_860) (or_440 x_108656 y_3000 x_108657)) (or_439 x_108656 (cons_362 y_3000 xs_860)))))
(assert (or_439 false_423 nil_419))
(declare-fun eps_83 (Bool_423 R_602) Bool)
(assert (forall ((y_3001 R_602))
	(eps_83 true_423 (Star_41 y_3001))))
(assert (forall ((x_108660 Bool_423) (x_108661 Bool_423) (x_108662 Bool_423) (r_603 R_602) (q_312 R_602))
	(=> (and (eps_83 x_108661 r_603) (eps_83 x_108662 q_312) (and_428 x_108660 x_108661 x_108662)) (eps_83 x_108660 (x_108630 r_603 q_312)))))
(assert (forall ((x_108663 Bool_423) (x_108664 Bool_423) (x_108665 Bool_423) (p_552 R_602) (q_313 R_602))
	(=> (and (eps_83 x_108664 p_552) (eps_83 x_108665 q_313) (or_440 x_108663 x_108664 x_108665)) (eps_83 x_108663 (x_108629 p_552 q_313)))))
(assert (eps_83 true_423 Eps_82))
(assert (forall ((x_108636 R_602) (x_108648 T_29))
	(eps_83 false_423 (Atom_41 x_108648))))
(assert (forall ((x_108636 R_602))
	(eps_83 false_423 Nil_422)))
(declare-fun step_41 (R_602 R_602 T_29) Bool)
(assert (forall ((x_108670 R_602) (p_553 R_602) (y_3002 T_29))
	(=> (step_41 x_108670 p_553 y_3002) (step_41 (x_108630 x_108670 (Star_41 p_553)) (Star_41 p_553) y_3002))))
(assert (forall ((x_108673 R_602) (x_108674 R_602) (r_604 R_602) (q_314 R_602) (y_3002 T_29))
	(=> (and (step_41 x_108673 r_604 y_3002) (step_41 x_108674 q_314 y_3002) (eps_83 true_423 r_604)) (step_41 (x_108629 (x_108630 x_108673 q_314) x_108674) (x_108630 r_604 q_314) y_3002))))
(assert (forall ((x_108677 R_602) (r_604 R_602) (q_314 R_602) (y_3002 T_29))
	(=> (and (step_41 x_108677 r_604 y_3002) (eps_83 false_423 r_604)) (step_41 (x_108629 (x_108630 x_108677 q_314) Nil_422) (x_108630 r_604 q_314) y_3002))))
(assert (forall ((x_108679 R_602) (x_108680 R_602) (p_554 R_602) (q_315 R_602) (y_3002 T_29))
	(=> (and (step_41 x_108679 p_554 y_3002) (step_41 x_108680 q_315 y_3002)) (step_41 (x_108629 x_108679 x_108680) (x_108629 p_554 q_315) y_3002))))
(assert (forall ((b_118 T_29))
	(step_41 Eps_82 (Atom_41 b_118) b_118)))
(assert (forall ((b_118 T_29) (y_3002 T_29))
	(=> (diseqT_27 b_118 y_3002) (step_41 Nil_422 (Atom_41 b_118) y_3002))))
(assert (forall ((x_108638 R_602) (y_3002 T_29))
	(step_41 Nil_422 Eps_82 y_3002)))
(assert (forall ((x_108638 R_602) (y_3002 T_29))
	(step_41 Nil_422 Nil_422 y_3002)))
(declare-fun rec_27 (Bool_423 R_602 list_369) Bool)
(assert (forall ((x_108685 Bool_423) (x_108686 R_602) (z_2601 T_29) (xs_861 list_369) (x_108639 R_602))
	(=> (and (step_41 x_108686 x_108639 z_2601) (rec_27 x_108685 x_108686 xs_861)) (rec_27 x_108685 x_108639 (cons_363 z_2601 xs_861)))))
(assert (forall ((x_108688 Bool_423) (x_108639 R_602))
	(=> (eps_83 x_108688 x_108639) (rec_27 x_108688 x_108639 nil_420))))
(declare-fun reck_8 (Bool_423 R_602 list_369) Bool)
(declare-fun reck_9 (list_368 R_602 R_602 list_370) Bool)
(assert (forall ((x_108691 Bool_423) (x_108641 T_29) (x_108642 list_369) (p_555 R_602))
	(=> (and (rec_27 x_108691 (x_108630 p_555 (Star_41 p_555)) (cons_363 x_108641 x_108642)) (eps_83 false_423 p_555)) (reck_8 x_108691 (Star_41 p_555) (cons_363 x_108641 x_108642)))))
(assert (forall ((x_108641 T_29) (x_108642 list_369) (p_555 R_602))
	(=> (eps_83 true_423 p_555) (reck_8 false_423 (Star_41 p_555) (cons_363 x_108641 x_108642)))))
(assert (forall ((p_555 R_602))
	(reck_8 true_423 (Star_41 p_555) nil_420)))
(assert (forall ((x_108696 Bool_423) (x_108697 list_370) (x_108698 list_368) (r_605 R_602) (q_316 R_602) (y_3004 list_369))
	(=> (and (splits_9 x_108697 y_3004) (reck_9 x_108698 r_605 q_316 x_108697) (or_439 x_108696 x_108698)) (reck_8 x_108696 (x_108630 r_605 q_316) y_3004))))
(assert (forall ((x_108700 Bool_423) (x_108701 Bool_423) (x_108702 Bool_423) (p_556 R_602) (q_317 R_602) (y_3004 list_369))
	(=> (and (reck_8 x_108701 p_556 y_3004) (reck_8 x_108702 q_317 y_3004) (or_440 x_108700 x_108701 x_108702)) (reck_8 x_108700 (x_108629 p_556 q_317) y_3004))))
(assert (forall ((x_108644 T_29) (x_108645 list_369) (b_119 T_29) (c_65 T_29))
	(reck_8 false_423 (Atom_41 c_65) (cons_363 b_119 (cons_363 x_108644 x_108645)))))
(assert (forall ((b_119 T_29))
	(reck_8 true_423 (Atom_41 b_119) (cons_363 b_119 nil_420))))
(assert (forall ((b_119 T_29) (c_65 T_29))
	(=> (diseqT_27 c_65 b_119) (reck_8 false_423 (Atom_41 c_65) (cons_363 b_119 nil_420)))))
(assert (forall ((c_65 T_29))
	(reck_8 false_423 (Atom_41 c_65) nil_420)))
(assert (forall ((z_2602 T_29) (x_108646 list_369))
	(reck_8 false_423 Eps_82 (cons_363 z_2602 x_108646))))
(assert (reck_8 true_423 Eps_82 nil_420))
(assert (forall ((y_3004 list_369))
	(reck_8 false_423 Nil_422 y_3004)))
(assert (forall ((x_108720 Bool_423) (x_108711 Bool_423) (x_108712 Bool_423) (x_108713 list_368) (l_58 list_369) (r_606 list_369) (z_2603 list_370) (p_557 R_602) (q_318 R_602))
	(=> (and (reck_8 x_108711 p_557 l_58) (rec_27 x_108712 q_318 r_606) (reck_9 x_108713 p_557 q_318 z_2603) (and_428 x_108720 x_108711 x_108712)) (reck_9 (cons_362 x_108720 x_108713) p_557 q_318 (cons_364 (pair_173 l_58 r_606) z_2603)))))
(assert (forall ((p_557 R_602) (q_318 R_602))
	(reck_9 nil_419 p_557 q_318 nil_421)))
(assert (forall ((p_558 R_602))
	(=> (and true (reck_8 true_423 p_558 (cons_363 A_111 (cons_363 B_117 (cons_363 A_111 (cons_363 B_117 nil_420)))))) false)))
(check-sat)