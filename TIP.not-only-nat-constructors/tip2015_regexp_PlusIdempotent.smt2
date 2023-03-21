
(set-logic HORN)
(declare-datatypes ((Bool_198 0)) (((false_198) (true_198))))
(declare-fun diseqBool_86 (Bool_198 Bool_198) Bool)
(declare-fun isfalse_86 (Bool_198) Bool)
(declare-fun istrue_86 (Bool_198) Bool)
(assert (isfalse_86 false_198))
(assert (istrue_86 true_198))
(assert (diseqBool_86 false_198 true_198))
(assert (diseqBool_86 true_198 false_198))
(declare-fun and_198 (Bool_198 Bool_198 Bool_198) Bool)
(declare-fun or_201 (Bool_198 Bool_198 Bool_198) Bool)
(declare-fun hence_198 (Bool_198 Bool_198 Bool_198) Bool)
(declare-fun not_200 (Bool_198 Bool_198) Bool)
(assert (and_198 false_198 false_198 false_198))
(assert (and_198 false_198 true_198 false_198))
(assert (and_198 false_198 false_198 true_198))
(assert (and_198 true_198 true_198 true_198))
(assert (or_201 false_198 false_198 false_198))
(assert (or_201 true_198 true_198 false_198))
(assert (or_201 true_198 false_198 true_198))
(assert (or_201 true_198 true_198 true_198))
(assert (hence_198 true_198 false_198 false_198))
(assert (hence_198 false_198 true_198 false_198))
(assert (hence_198 true_198 false_198 true_198))
(assert (hence_198 true_198 true_198 true_198))
(assert (not_200 true_198 false_198))
(assert (not_200 false_198 true_198))
(declare-datatypes ((A_32 0)) (((X_28709) (Y_1207))))
(declare-fun diseqA_7 (A_32 A_32) Bool)
(declare-fun isX_9 (A_32) Bool)
(declare-fun isY_7 (A_32) Bool)
(assert (isX_9 X_28709))
(assert (isY_7 Y_1207))
(assert (diseqA_7 X_28709 Y_1207))
(assert (diseqA_7 Y_1207 X_28709))
(declare-datatypes ((R_233 0)) (((Nil_151) (Eps_14) (Atom_7 (projAtom_14 A_32)) (Plus_65 (projPlus_28 R_233) (projPlus_29 R_233)) (Seq_14 (projSeq_28 R_233) (projSeq_29 R_233)) (Star_7 (projStar_14 R_233)))))
(declare-fun diseqR_7 (R_233 R_233) Bool)
(declare-fun projAtom_15 (A_32 R_233) Bool)
(declare-fun projPlus_30 (R_233 R_233) Bool)
(declare-fun projPlus_31 (R_233 R_233) Bool)
(declare-fun projSeq_30 (R_233 R_233) Bool)
(declare-fun projSeq_31 (R_233 R_233) Bool)
(declare-fun projStar_15 (R_233 R_233) Bool)
(declare-fun isNil_151 (R_233) Bool)
(declare-fun isEps_7 (R_233) Bool)
(declare-fun isAtom_7 (R_233) Bool)
(declare-fun isPlus_7 (R_233) Bool)
(declare-fun isSeq_7 (R_233) Bool)
(declare-fun isStar_7 (R_233) Bool)
(assert (forall ((x_30798 A_32))
	(projAtom_15 x_30798 (Atom_7 x_30798))))
(assert (forall ((x_30800 R_233) (x_30801 R_233))
	(projPlus_30 x_30800 (Plus_65 x_30800 x_30801))))
(assert (forall ((x_30800 R_233) (x_30801 R_233))
	(projPlus_31 x_30801 (Plus_65 x_30800 x_30801))))
(assert (forall ((x_30803 R_233) (x_30804 R_233))
	(projSeq_30 x_30803 (Seq_14 x_30803 x_30804))))
(assert (forall ((x_30803 R_233) (x_30804 R_233))
	(projSeq_31 x_30804 (Seq_14 x_30803 x_30804))))
(assert (forall ((x_30806 R_233))
	(projStar_15 x_30806 (Star_7 x_30806))))
(assert (isNil_151 Nil_151))
(assert (isEps_7 Eps_14))
(assert (forall ((x_30808 A_32))
	(isAtom_7 (Atom_7 x_30808))))
(assert (forall ((x_30809 R_233) (x_30810 R_233))
	(isPlus_7 (Plus_65 x_30809 x_30810))))
(assert (forall ((x_30811 R_233) (x_30812 R_233))
	(isSeq_7 (Seq_14 x_30811 x_30812))))
(assert (forall ((x_30813 R_233))
	(isStar_7 (Star_7 x_30813))))
(assert (diseqR_7 Nil_151 Eps_14))
(assert (forall ((x_30814 A_32))
	(diseqR_7 Nil_151 (Atom_7 x_30814))))
(assert (forall ((x_30815 R_233) (x_30816 R_233))
	(diseqR_7 Nil_151 (Plus_65 x_30815 x_30816))))
(assert (forall ((x_30817 R_233) (x_30818 R_233))
	(diseqR_7 Nil_151 (Seq_14 x_30817 x_30818))))
(assert (forall ((x_30819 R_233))
	(diseqR_7 Nil_151 (Star_7 x_30819))))
(assert (diseqR_7 Eps_14 Nil_151))
(assert (forall ((x_30820 A_32))
	(diseqR_7 (Atom_7 x_30820) Nil_151)))
(assert (forall ((x_30821 R_233) (x_30822 R_233))
	(diseqR_7 (Plus_65 x_30821 x_30822) Nil_151)))
(assert (forall ((x_30823 R_233) (x_30824 R_233))
	(diseqR_7 (Seq_14 x_30823 x_30824) Nil_151)))
(assert (forall ((x_30825 R_233))
	(diseqR_7 (Star_7 x_30825) Nil_151)))
(assert (forall ((x_30826 A_32))
	(diseqR_7 Eps_14 (Atom_7 x_30826))))
(assert (forall ((x_30827 R_233) (x_30828 R_233))
	(diseqR_7 Eps_14 (Plus_65 x_30827 x_30828))))
(assert (forall ((x_30829 R_233) (x_30830 R_233))
	(diseqR_7 Eps_14 (Seq_14 x_30829 x_30830))))
(assert (forall ((x_30831 R_233))
	(diseqR_7 Eps_14 (Star_7 x_30831))))
(assert (forall ((x_30832 A_32))
	(diseqR_7 (Atom_7 x_30832) Eps_14)))
(assert (forall ((x_30833 R_233) (x_30834 R_233))
	(diseqR_7 (Plus_65 x_30833 x_30834) Eps_14)))
(assert (forall ((x_30835 R_233) (x_30836 R_233))
	(diseqR_7 (Seq_14 x_30835 x_30836) Eps_14)))
(assert (forall ((x_30837 R_233))
	(diseqR_7 (Star_7 x_30837) Eps_14)))
(assert (forall ((x_30838 A_32) (x_30839 R_233) (x_30840 R_233))
	(diseqR_7 (Atom_7 x_30838) (Plus_65 x_30839 x_30840))))
(assert (forall ((x_30841 A_32) (x_30842 R_233) (x_30843 R_233))
	(diseqR_7 (Atom_7 x_30841) (Seq_14 x_30842 x_30843))))
(assert (forall ((x_30844 A_32) (x_30845 R_233))
	(diseqR_7 (Atom_7 x_30844) (Star_7 x_30845))))
(assert (forall ((x_30846 R_233) (x_30847 R_233) (x_30848 A_32))
	(diseqR_7 (Plus_65 x_30846 x_30847) (Atom_7 x_30848))))
(assert (forall ((x_30849 R_233) (x_30850 R_233) (x_30851 A_32))
	(diseqR_7 (Seq_14 x_30849 x_30850) (Atom_7 x_30851))))
(assert (forall ((x_30852 R_233) (x_30853 A_32))
	(diseqR_7 (Star_7 x_30852) (Atom_7 x_30853))))
(assert (forall ((x_30854 R_233) (x_30855 R_233) (x_30856 R_233) (x_30857 R_233))
	(diseqR_7 (Plus_65 x_30854 x_30855) (Seq_14 x_30856 x_30857))))
(assert (forall ((x_30858 R_233) (x_30859 R_233) (x_30860 R_233))
	(diseqR_7 (Plus_65 x_30858 x_30859) (Star_7 x_30860))))
(assert (forall ((x_30861 R_233) (x_30862 R_233) (x_30863 R_233) (x_30864 R_233))
	(diseqR_7 (Seq_14 x_30861 x_30862) (Plus_65 x_30863 x_30864))))
(assert (forall ((x_30865 R_233) (x_30866 R_233) (x_30867 R_233))
	(diseqR_7 (Star_7 x_30865) (Plus_65 x_30866 x_30867))))
(assert (forall ((x_30868 R_233) (x_30869 R_233) (x_30870 R_233))
	(diseqR_7 (Seq_14 x_30868 x_30869) (Star_7 x_30870))))
(assert (forall ((x_30871 R_233) (x_30872 R_233) (x_30873 R_233))
	(diseqR_7 (Star_7 x_30871) (Seq_14 x_30872 x_30873))))
(assert (forall ((x_30874 A_32) (x_30875 A_32))
	(=> (diseqA_7 x_30874 x_30875) (diseqR_7 (Atom_7 x_30874) (Atom_7 x_30875)))))
(assert (forall ((x_30876 R_233) (x_30877 R_233) (x_30878 R_233) (x_30879 R_233))
	(=> (diseqR_7 x_30876 x_30878) (diseqR_7 (Plus_65 x_30876 x_30877) (Plus_65 x_30878 x_30879)))))
(assert (forall ((x_30876 R_233) (x_30877 R_233) (x_30878 R_233) (x_30879 R_233))
	(=> (diseqR_7 x_30877 x_30879) (diseqR_7 (Plus_65 x_30876 x_30877) (Plus_65 x_30878 x_30879)))))
(assert (forall ((x_30880 R_233) (x_30881 R_233) (x_30882 R_233) (x_30883 R_233))
	(=> (diseqR_7 x_30880 x_30882) (diseqR_7 (Seq_14 x_30880 x_30881) (Seq_14 x_30882 x_30883)))))
(assert (forall ((x_30880 R_233) (x_30881 R_233) (x_30882 R_233) (x_30883 R_233))
	(=> (diseqR_7 x_30881 x_30883) (diseqR_7 (Seq_14 x_30880 x_30881) (Seq_14 x_30882 x_30883)))))
(assert (forall ((x_30884 R_233) (x_30885 R_233))
	(=> (diseqR_7 x_30884 x_30885) (diseqR_7 (Star_7 x_30884) (Star_7 x_30885)))))
(declare-datatypes ((list_136 0)) (((nil_152) (cons_136 (head_272 A_32) (tail_272 list_136)))))
(declare-fun diseqlist_136 (list_136 list_136) Bool)
(declare-fun head_273 (A_32 list_136) Bool)
(declare-fun tail_273 (list_136 list_136) Bool)
(declare-fun isnil_152 (list_136) Bool)
(declare-fun iscons_136 (list_136) Bool)
(assert (forall ((x_30887 A_32) (x_30888 list_136))
	(head_273 x_30887 (cons_136 x_30887 x_30888))))
(assert (forall ((x_30887 A_32) (x_30888 list_136))
	(tail_273 x_30888 (cons_136 x_30887 x_30888))))
(assert (isnil_152 nil_152))
(assert (forall ((x_30890 A_32) (x_30891 list_136))
	(iscons_136 (cons_136 x_30890 x_30891))))
(assert (forall ((x_30892 A_32) (x_30893 list_136))
	(diseqlist_136 nil_152 (cons_136 x_30892 x_30893))))
(assert (forall ((x_30894 A_32) (x_30895 list_136))
	(diseqlist_136 (cons_136 x_30894 x_30895) nil_152)))
(assert (forall ((x_30896 A_32) (x_30897 list_136) (x_30898 A_32) (x_30899 list_136))
	(=> (diseqA_7 x_30896 x_30898) (diseqlist_136 (cons_136 x_30896 x_30897) (cons_136 x_30898 x_30899)))))
(assert (forall ((x_30896 A_32) (x_30897 list_136) (x_30898 A_32) (x_30899 list_136))
	(=> (diseqlist_136 x_30897 x_30899) (diseqlist_136 (cons_136 x_30896 x_30897) (cons_136 x_30898 x_30899)))))
(declare-fun seq_15 (R_233 R_233 R_233) Bool)
(assert (forall ((y_1208 R_233))
	(seq_15 Nil_151 Nil_151 y_1208)))
(assert (forall ((x_28711 R_233) (x_28953 A_32))
	(seq_15 Nil_151 (Atom_7 x_28953) Nil_151)))
(assert (forall ((x_28711 R_233))
	(seq_15 Nil_151 Eps_14 Nil_151)))
(assert (forall ((x_28711 R_233) (x_28954 R_233) (x_28955 R_233))
	(seq_15 Nil_151 (Plus_65 x_28954 x_28955) Nil_151)))
(assert (forall ((x_28711 R_233) (x_28956 R_233) (x_28957 R_233))
	(seq_15 Nil_151 (Seq_14 x_28956 x_28957) Nil_151)))
(assert (forall ((x_28711 R_233) (x_28958 R_233))
	(seq_15 Nil_151 (Star_7 x_28958) Nil_151)))
(assert (forall ((x_28712 R_233) (x_28767 A_32) (x_28711 R_233))
	(seq_15 (Atom_7 x_28767) Eps_14 (Atom_7 x_28767))))
(assert (forall ((x_28712 R_233) (x_28711 R_233))
	(seq_15 Eps_14 Eps_14 Eps_14)))
(assert (forall ((x_28712 R_233) (x_28768 R_233) (x_28769 R_233) (x_28711 R_233))
	(seq_15 (Plus_65 x_28768 x_28769) Eps_14 (Plus_65 x_28768 x_28769))))
(assert (forall ((x_28712 R_233) (x_28770 R_233) (x_28771 R_233) (x_28711 R_233))
	(seq_15 (Seq_14 x_28770 x_28771) Eps_14 (Seq_14 x_28770 x_28771))))
(assert (forall ((x_28712 R_233) (x_28772 R_233) (x_28711 R_233))
	(seq_15 (Star_7 x_28772) Eps_14 (Star_7 x_28772))))
(assert (forall ((x_28713 R_233) (x_28731 A_32) (x_28712 R_233) (x_28711 R_233))
	(seq_15 (Atom_7 x_28731) (Atom_7 x_28731) Eps_14)))
(assert (forall ((x_28713 R_233) (x_28732 R_233) (x_28733 R_233) (x_28712 R_233) (x_28711 R_233))
	(seq_15 (Plus_65 x_28732 x_28733) (Plus_65 x_28732 x_28733) Eps_14)))
(assert (forall ((x_28713 R_233) (x_28734 R_233) (x_28735 R_233) (x_28712 R_233) (x_28711 R_233))
	(seq_15 (Seq_14 x_28734 x_28735) (Seq_14 x_28734 x_28735) Eps_14)))
(assert (forall ((x_28713 R_233) (x_28736 R_233) (x_28712 R_233) (x_28711 R_233))
	(seq_15 (Star_7 x_28736) (Star_7 x_28736) Eps_14)))
(assert (forall ((x_28714 R_233) (x_28725 A_32) (x_28713 R_233) (x_28737 A_32) (x_28712 R_233) (x_28711 R_233))
	(seq_15 (Seq_14 (Atom_7 x_28737) (Atom_7 x_28725)) (Atom_7 x_28737) (Atom_7 x_28725))))
(assert (forall ((x_28714 R_233) (x_28725 A_32) (x_28713 R_233) (x_28738 R_233) (x_28739 R_233) (x_28712 R_233) (x_28711 R_233))
	(seq_15 (Seq_14 (Plus_65 x_28738 x_28739) (Atom_7 x_28725)) (Plus_65 x_28738 x_28739) (Atom_7 x_28725))))
(assert (forall ((x_28714 R_233) (x_28725 A_32) (x_28713 R_233) (x_28740 R_233) (x_28741 R_233) (x_28712 R_233) (x_28711 R_233))
	(seq_15 (Seq_14 (Seq_14 x_28740 x_28741) (Atom_7 x_28725)) (Seq_14 x_28740 x_28741) (Atom_7 x_28725))))
(assert (forall ((x_28714 R_233) (x_28725 A_32) (x_28713 R_233) (x_28742 R_233) (x_28712 R_233) (x_28711 R_233))
	(seq_15 (Seq_14 (Star_7 x_28742) (Atom_7 x_28725)) (Star_7 x_28742) (Atom_7 x_28725))))
(assert (forall ((x_28714 R_233) (x_28726 R_233) (x_28727 R_233) (x_28713 R_233) (x_28749 A_32) (x_28712 R_233) (x_28711 R_233))
	(seq_15 (Seq_14 (Atom_7 x_28749) (Plus_65 x_28726 x_28727)) (Atom_7 x_28749) (Plus_65 x_28726 x_28727))))
(assert (forall ((x_28714 R_233) (x_28726 R_233) (x_28727 R_233) (x_28713 R_233) (x_28750 R_233) (x_28751 R_233) (x_28712 R_233) (x_28711 R_233))
	(seq_15 (Seq_14 (Plus_65 x_28750 x_28751) (Plus_65 x_28726 x_28727)) (Plus_65 x_28750 x_28751) (Plus_65 x_28726 x_28727))))
(assert (forall ((x_28714 R_233) (x_28726 R_233) (x_28727 R_233) (x_28713 R_233) (x_28752 R_233) (x_28753 R_233) (x_28712 R_233) (x_28711 R_233))
	(seq_15 (Seq_14 (Seq_14 x_28752 x_28753) (Plus_65 x_28726 x_28727)) (Seq_14 x_28752 x_28753) (Plus_65 x_28726 x_28727))))
(assert (forall ((x_28714 R_233) (x_28726 R_233) (x_28727 R_233) (x_28713 R_233) (x_28754 R_233) (x_28712 R_233) (x_28711 R_233))
	(seq_15 (Seq_14 (Star_7 x_28754) (Plus_65 x_28726 x_28727)) (Star_7 x_28754) (Plus_65 x_28726 x_28727))))
(assert (forall ((x_28714 R_233) (x_28728 R_233) (x_28729 R_233) (x_28713 R_233) (x_28755 A_32) (x_28712 R_233) (x_28711 R_233))
	(seq_15 (Seq_14 (Atom_7 x_28755) (Seq_14 x_28728 x_28729)) (Atom_7 x_28755) (Seq_14 x_28728 x_28729))))
(assert (forall ((x_28714 R_233) (x_28728 R_233) (x_28729 R_233) (x_28713 R_233) (x_28756 R_233) (x_28757 R_233) (x_28712 R_233) (x_28711 R_233))
	(seq_15 (Seq_14 (Plus_65 x_28756 x_28757) (Seq_14 x_28728 x_28729)) (Plus_65 x_28756 x_28757) (Seq_14 x_28728 x_28729))))
(assert (forall ((x_28714 R_233) (x_28728 R_233) (x_28729 R_233) (x_28713 R_233) (x_28758 R_233) (x_28759 R_233) (x_28712 R_233) (x_28711 R_233))
	(seq_15 (Seq_14 (Seq_14 x_28758 x_28759) (Seq_14 x_28728 x_28729)) (Seq_14 x_28758 x_28759) (Seq_14 x_28728 x_28729))))
(assert (forall ((x_28714 R_233) (x_28728 R_233) (x_28729 R_233) (x_28713 R_233) (x_28760 R_233) (x_28712 R_233) (x_28711 R_233))
	(seq_15 (Seq_14 (Star_7 x_28760) (Seq_14 x_28728 x_28729)) (Star_7 x_28760) (Seq_14 x_28728 x_28729))))
(assert (forall ((x_28714 R_233) (x_28730 R_233) (x_28713 R_233) (x_28761 A_32) (x_28712 R_233) (x_28711 R_233))
	(seq_15 (Seq_14 (Atom_7 x_28761) (Star_7 x_28730)) (Atom_7 x_28761) (Star_7 x_28730))))
(assert (forall ((x_28714 R_233) (x_28730 R_233) (x_28713 R_233) (x_28762 R_233) (x_28763 R_233) (x_28712 R_233) (x_28711 R_233))
	(seq_15 (Seq_14 (Plus_65 x_28762 x_28763) (Star_7 x_28730)) (Plus_65 x_28762 x_28763) (Star_7 x_28730))))
(assert (forall ((x_28714 R_233) (x_28730 R_233) (x_28713 R_233) (x_28764 R_233) (x_28765 R_233) (x_28712 R_233) (x_28711 R_233))
	(seq_15 (Seq_14 (Seq_14 x_28764 x_28765) (Star_7 x_28730)) (Seq_14 x_28764 x_28765) (Star_7 x_28730))))
(assert (forall ((x_28714 R_233) (x_28730 R_233) (x_28713 R_233) (x_28766 R_233) (x_28712 R_233) (x_28711 R_233))
	(seq_15 (Seq_14 (Star_7 x_28766) (Star_7 x_28730)) (Star_7 x_28766) (Star_7 x_28730))))
(declare-fun plus_66 (R_233 R_233 R_233) Bool)
(assert (forall ((x_30713 R_233))
	(plus_66 x_30713 Nil_151 x_30713)))
(assert (forall ((x_28716 R_233) (x_29895 A_32))
	(plus_66 (Atom_7 x_29895) (Atom_7 x_29895) Nil_151)))
(assert (forall ((x_28716 R_233))
	(plus_66 Eps_14 Eps_14 Nil_151)))
(assert (forall ((x_28716 R_233) (x_29896 R_233) (x_29897 R_233))
	(plus_66 (Plus_65 x_29896 x_29897) (Plus_65 x_29896 x_29897) Nil_151)))
(assert (forall ((x_28716 R_233) (x_29898 R_233) (x_29899 R_233))
	(plus_66 (Seq_14 x_29898 x_29899) (Seq_14 x_29898 x_29899) Nil_151)))
(assert (forall ((x_28716 R_233) (x_29900 R_233))
	(plus_66 (Star_7 x_29900) (Star_7 x_29900) Nil_151)))
(assert (forall ((x_28717 R_233) (x_29889 A_32) (x_28716 R_233) (x_29901 A_32))
	(plus_66 (Plus_65 (Atom_7 x_29901) (Atom_7 x_29889)) (Atom_7 x_29901) (Atom_7 x_29889))))
(assert (forall ((x_28717 R_233) (x_29889 A_32) (x_28716 R_233))
	(plus_66 (Plus_65 Eps_14 (Atom_7 x_29889)) Eps_14 (Atom_7 x_29889))))
(assert (forall ((x_28717 R_233) (x_29889 A_32) (x_28716 R_233) (x_29902 R_233) (x_29903 R_233))
	(plus_66 (Plus_65 (Plus_65 x_29902 x_29903) (Atom_7 x_29889)) (Plus_65 x_29902 x_29903) (Atom_7 x_29889))))
(assert (forall ((x_28717 R_233) (x_29889 A_32) (x_28716 R_233) (x_29904 R_233) (x_29905 R_233))
	(plus_66 (Plus_65 (Seq_14 x_29904 x_29905) (Atom_7 x_29889)) (Seq_14 x_29904 x_29905) (Atom_7 x_29889))))
(assert (forall ((x_28717 R_233) (x_29889 A_32) (x_28716 R_233) (x_29906 R_233))
	(plus_66 (Plus_65 (Star_7 x_29906) (Atom_7 x_29889)) (Star_7 x_29906) (Atom_7 x_29889))))
(assert (forall ((x_28717 R_233) (x_28716 R_233) (x_29907 A_32))
	(plus_66 (Plus_65 (Atom_7 x_29907) Eps_14) (Atom_7 x_29907) Eps_14)))
(assert (forall ((x_28717 R_233) (x_28716 R_233))
	(plus_66 (Plus_65 Eps_14 Eps_14) Eps_14 Eps_14)))
(assert (forall ((x_28717 R_233) (x_28716 R_233) (x_29908 R_233) (x_29909 R_233))
	(plus_66 (Plus_65 (Plus_65 x_29908 x_29909) Eps_14) (Plus_65 x_29908 x_29909) Eps_14)))
(assert (forall ((x_28717 R_233) (x_28716 R_233) (x_29910 R_233) (x_29911 R_233))
	(plus_66 (Plus_65 (Seq_14 x_29910 x_29911) Eps_14) (Seq_14 x_29910 x_29911) Eps_14)))
(assert (forall ((x_28717 R_233) (x_28716 R_233) (x_29912 R_233))
	(plus_66 (Plus_65 (Star_7 x_29912) Eps_14) (Star_7 x_29912) Eps_14)))
(assert (forall ((x_28717 R_233) (x_29890 R_233) (x_29891 R_233) (x_28716 R_233) (x_29913 A_32))
	(plus_66 (Plus_65 (Atom_7 x_29913) (Plus_65 x_29890 x_29891)) (Atom_7 x_29913) (Plus_65 x_29890 x_29891))))
(assert (forall ((x_28717 R_233) (x_29890 R_233) (x_29891 R_233) (x_28716 R_233))
	(plus_66 (Plus_65 Eps_14 (Plus_65 x_29890 x_29891)) Eps_14 (Plus_65 x_29890 x_29891))))
(assert (forall ((x_28717 R_233) (x_29890 R_233) (x_29891 R_233) (x_28716 R_233) (x_29914 R_233) (x_29915 R_233))
	(plus_66 (Plus_65 (Plus_65 x_29914 x_29915) (Plus_65 x_29890 x_29891)) (Plus_65 x_29914 x_29915) (Plus_65 x_29890 x_29891))))
(assert (forall ((x_28717 R_233) (x_29890 R_233) (x_29891 R_233) (x_28716 R_233) (x_29916 R_233) (x_29917 R_233))
	(plus_66 (Plus_65 (Seq_14 x_29916 x_29917) (Plus_65 x_29890 x_29891)) (Seq_14 x_29916 x_29917) (Plus_65 x_29890 x_29891))))
(assert (forall ((x_28717 R_233) (x_29890 R_233) (x_29891 R_233) (x_28716 R_233) (x_29918 R_233))
	(plus_66 (Plus_65 (Star_7 x_29918) (Plus_65 x_29890 x_29891)) (Star_7 x_29918) (Plus_65 x_29890 x_29891))))
(assert (forall ((x_28717 R_233) (x_29892 R_233) (x_29893 R_233) (x_28716 R_233) (x_29919 A_32))
	(plus_66 (Plus_65 (Atom_7 x_29919) (Seq_14 x_29892 x_29893)) (Atom_7 x_29919) (Seq_14 x_29892 x_29893))))
(assert (forall ((x_28717 R_233) (x_29892 R_233) (x_29893 R_233) (x_28716 R_233))
	(plus_66 (Plus_65 Eps_14 (Seq_14 x_29892 x_29893)) Eps_14 (Seq_14 x_29892 x_29893))))
(assert (forall ((x_28717 R_233) (x_29892 R_233) (x_29893 R_233) (x_28716 R_233) (x_29920 R_233) (x_29921 R_233))
	(plus_66 (Plus_65 (Plus_65 x_29920 x_29921) (Seq_14 x_29892 x_29893)) (Plus_65 x_29920 x_29921) (Seq_14 x_29892 x_29893))))
(assert (forall ((x_28717 R_233) (x_29892 R_233) (x_29893 R_233) (x_28716 R_233) (x_29922 R_233) (x_29923 R_233))
	(plus_66 (Plus_65 (Seq_14 x_29922 x_29923) (Seq_14 x_29892 x_29893)) (Seq_14 x_29922 x_29923) (Seq_14 x_29892 x_29893))))
(assert (forall ((x_28717 R_233) (x_29892 R_233) (x_29893 R_233) (x_28716 R_233) (x_29924 R_233))
	(plus_66 (Plus_65 (Star_7 x_29924) (Seq_14 x_29892 x_29893)) (Star_7 x_29924) (Seq_14 x_29892 x_29893))))
(assert (forall ((x_28717 R_233) (x_29894 R_233) (x_28716 R_233) (x_29925 A_32))
	(plus_66 (Plus_65 (Atom_7 x_29925) (Star_7 x_29894)) (Atom_7 x_29925) (Star_7 x_29894))))
(assert (forall ((x_28717 R_233) (x_29894 R_233) (x_28716 R_233))
	(plus_66 (Plus_65 Eps_14 (Star_7 x_29894)) Eps_14 (Star_7 x_29894))))
(assert (forall ((x_28717 R_233) (x_29894 R_233) (x_28716 R_233) (x_29926 R_233) (x_29927 R_233))
	(plus_66 (Plus_65 (Plus_65 x_29926 x_29927) (Star_7 x_29894)) (Plus_65 x_29926 x_29927) (Star_7 x_29894))))
(assert (forall ((x_28717 R_233) (x_29894 R_233) (x_28716 R_233) (x_29928 R_233) (x_29929 R_233))
	(plus_66 (Plus_65 (Seq_14 x_29928 x_29929) (Star_7 x_29894)) (Seq_14 x_29928 x_29929) (Star_7 x_29894))))
(assert (forall ((x_28717 R_233) (x_29894 R_233) (x_28716 R_233) (x_29930 R_233))
	(plus_66 (Plus_65 (Star_7 x_29930) (Star_7 x_29894)) (Star_7 x_29930) (Star_7 x_29894))))
(declare-fun eqA_7 (Bool_198 A_32 A_32) Bool)
(assert (eqA_7 true_198 Y_1207 Y_1207))
(assert (eqA_7 false_198 Y_1207 X_28709))
(assert (eqA_7 false_198 X_28709 Y_1207))
(assert (eqA_7 true_198 X_28709 X_28709))
(declare-fun eps_15 (Bool_198 R_233) Bool)
(assert (forall ((y_1211 R_233))
	(eps_15 true_198 (Star_7 y_1211))))
(assert (forall ((x_30749 Bool_198) (x_30750 Bool_198) (x_30751 Bool_198) (r_234 R_233) (q_62 R_233))
	(=> (and (eps_15 x_30750 r_234) (eps_15 x_30751 q_62) (and_198 x_30749 x_30750 x_30751)) (eps_15 x_30749 (Seq_14 r_234 q_62)))))
(assert (forall ((x_30752 Bool_198) (x_30753 Bool_198) (x_30754 Bool_198) (p_197 R_233) (q_63 R_233))
	(=> (and (eps_15 x_30753 p_197) (eps_15 x_30754 q_63) (or_201 x_30752 x_30753 x_30754)) (eps_15 x_30752 (Plus_65 p_197 q_63)))))
(assert (eps_15 true_198 Eps_14))
(assert (forall ((x_28720 R_233) (x_29931 A_32))
	(eps_15 false_198 (Atom_7 x_29931))))
(assert (forall ((x_28720 R_233))
	(eps_15 false_198 Nil_151)))
(declare-fun epsR_7 (R_233 R_233) Bool)
(assert (forall ((x_28721 R_233))
	(=> (eps_15 true_198 x_28721) (epsR_7 Eps_14 x_28721))))
(assert (forall ((x_28721 R_233))
	(=> (eps_15 false_198 x_28721) (epsR_7 Nil_151 x_28721))))
(declare-fun step_7 (R_233 R_233 A_32) Bool)
(assert (forall ((x_30762 R_233) (x_30763 R_233) (p_198 R_233) (y_1212 A_32))
	(=> (and (step_7 x_30763 p_198 y_1212) (seq_15 x_30762 x_30763 (Star_7 p_198))) (step_7 x_30762 (Star_7 p_198) y_1212))))
(assert (forall ((x_30765 R_233) (x_30766 R_233) (x_30767 R_233) (x_30768 R_233) (x_30769 R_233) (x_30770 R_233) (r_235 R_233) (q_64 R_233) (y_1212 A_32))
	(=> (and (step_7 x_30766 r_235 y_1212) (seq_15 x_30767 x_30766 q_64) (epsR_7 x_30768 r_235) (step_7 x_30769 q_64 y_1212) (seq_15 x_30770 x_30768 x_30769) (plus_66 x_30765 x_30767 x_30770)) (step_7 x_30765 (Seq_14 r_235 q_64) y_1212))))
(assert (forall ((x_30772 R_233) (x_30773 R_233) (x_30774 R_233) (p_199 R_233) (q_65 R_233) (y_1212 A_32))
	(=> (and (step_7 x_30773 p_199 y_1212) (step_7 x_30774 q_65 y_1212) (plus_66 x_30772 x_30773 x_30774)) (step_7 x_30772 (Plus_65 p_199 q_65) y_1212))))
(assert (forall ((a_33 A_32) (y_1212 A_32))
	(=> (eqA_7 true_198 a_33 y_1212) (step_7 Eps_14 (Atom_7 a_33) y_1212))))
(assert (forall ((a_33 A_32) (y_1212 A_32))
	(=> (eqA_7 false_198 a_33 y_1212) (step_7 Nil_151 (Atom_7 a_33) y_1212))))
(assert (forall ((x_28723 R_233) (y_1212 A_32))
	(step_7 Nil_151 Eps_14 y_1212)))
(assert (forall ((x_28723 R_233) (y_1212 A_32))
	(step_7 Nil_151 Nil_151 y_1212)))
(declare-fun recognise_7 (Bool_198 R_233 list_136) Bool)
(assert (forall ((x_30782 Bool_198) (x_30783 R_233) (z_1139 A_32) (xs_370 list_136) (x_28724 R_233))
	(=> (and (step_7 x_30783 x_28724 z_1139) (recognise_7 x_30782 x_30783 xs_370)) (recognise_7 x_30782 x_28724 (cons_136 z_1139 xs_370)))))
(assert (forall ((x_30785 Bool_198) (x_28724 R_233))
	(=> (eps_15 x_30785 x_28724) (recognise_7 x_30785 x_28724 nil_152))))
(assert (forall ((x_30787 Bool_198) (x_30788 Bool_198) (p_200 R_233) (s_290 list_136))
	(=> (and true (diseqBool_86 x_30787 x_30788) (recognise_7 x_30787 (Plus_65 p_200 p_200) s_290) (recognise_7 x_30788 p_200 s_290)) false)))
(check-sat)