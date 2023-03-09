(set-logic HORN)
(declare-datatypes ((Nat_327 0)) (((Z_1093 ) (S_279 (unS_376 Nat_327)))))
(declare-fun diseqNat_327 (Nat_327 Nat_327) Bool)
(declare-fun unS_377 (Nat_327 Nat_327) Bool)
(declare-fun isZ_261 (Nat_327) Bool)
(declare-fun isS_261 (Nat_327) Bool)
(assert (forall ((x_27952 Nat_327))
	(unS_377 x_27952 (S_279 x_27952))))
(assert (isZ_261 Z_1093))
(assert (forall ((x_27954 Nat_327))
	(isS_261 (S_279 x_27954))))
(assert (forall ((x_27955 Nat_327))
	(diseqNat_327 Z_1093 (S_279 x_27955))))
(assert (forall ((x_27956 Nat_327))
	(diseqNat_327 (S_279 x_27956) Z_1093)))
(assert (forall ((x_27957 Nat_327) (x_27958 Nat_327))
	(=> (diseqNat_327 x_27957 x_27958)
	    (diseqNat_327 (S_279 x_27957) (S_279 x_27958)))))
(declare-fun add_202 (Nat_327 Nat_327 Nat_327) Bool)
(declare-fun minus_194 (Nat_327 Nat_327 Nat_327) Bool)
(declare-fun le_188 (Nat_327 Nat_327) Bool)
(declare-fun ge_188 (Nat_327 Nat_327) Bool)
(declare-fun lt_198 (Nat_327 Nat_327) Bool)
(declare-fun gt_190 (Nat_327 Nat_327) Bool)
(declare-fun mult_188 (Nat_327 Nat_327 Nat_327) Bool)
(declare-fun div_188 (Nat_327 Nat_327 Nat_327) Bool)
(declare-fun mod_188 (Nat_327 Nat_327 Nat_327) Bool)
(assert (forall ((y_1151 Nat_327))
	(add_202 y_1151 Z_1093 y_1151)))
(assert (forall ((x_27942 Nat_327) (y_1151 Nat_327) (r_223 Nat_327))
	(=> (add_202 r_223 x_27942 y_1151)
	    (add_202 (S_279 r_223) (S_279 x_27942) y_1151))))
(assert (forall ((y_1151 Nat_327))
	(minus_194 Z_1093 Z_1093 y_1151)))
(assert (forall ((x_27942 Nat_327) (y_1151 Nat_327) (r_223 Nat_327))
	(=> (minus_194 r_223 x_27942 y_1151)
	    (minus_194 (S_279 r_223) (S_279 x_27942) y_1151))))
(assert (forall ((y_1151 Nat_327))
	(le_188 Z_1093 y_1151)))
(assert (forall ((x_27942 Nat_327) (y_1151 Nat_327))
	(=> (le_188 x_27942 y_1151)
	    (le_188 (S_279 x_27942) (S_279 y_1151)))))
(assert (forall ((y_1151 Nat_327))
	(ge_188 y_1151 Z_1093)))
(assert (forall ((x_27942 Nat_327) (y_1151 Nat_327))
	(=> (ge_188 x_27942 y_1151)
	    (ge_188 (S_279 x_27942) (S_279 y_1151)))))
(assert (forall ((y_1151 Nat_327))
	(lt_198 Z_1093 (S_279 y_1151))))
(assert (forall ((x_27942 Nat_327) (y_1151 Nat_327))
	(=> (lt_198 x_27942 y_1151)
	    (lt_198 (S_279 x_27942) (S_279 y_1151)))))
(assert (forall ((y_1151 Nat_327))
	(gt_190 (S_279 y_1151) Z_1093)))
(assert (forall ((x_27942 Nat_327) (y_1151 Nat_327))
	(=> (gt_190 x_27942 y_1151)
	    (gt_190 (S_279 x_27942) (S_279 y_1151)))))
(assert (forall ((y_1151 Nat_327))
	(mult_188 Z_1093 Z_1093 y_1151)))
(assert (forall ((x_27942 Nat_327) (y_1151 Nat_327) (r_223 Nat_327) (z_1094 Nat_327))
	(=>	(and (mult_188 r_223 x_27942 y_1151)
			(add_202 z_1094 r_223 y_1151))
		(mult_188 z_1094 (S_279 x_27942) y_1151))))
(assert (forall ((x_27942 Nat_327) (y_1151 Nat_327))
	(=> (lt_198 x_27942 y_1151)
	    (div_188 Z_1093 x_27942 y_1151))))
(assert (forall ((x_27942 Nat_327) (y_1151 Nat_327) (r_223 Nat_327) (z_1094 Nat_327))
	(=>	(and (ge_188 x_27942 y_1151)
			(minus_194 z_1094 x_27942 y_1151)
			(div_188 r_223 z_1094 y_1151))
		(div_188 (S_279 r_223) x_27942 y_1151))))
(assert (forall ((x_27942 Nat_327) (y_1151 Nat_327))
	(=> (lt_198 x_27942 y_1151)
	    (mod_188 x_27942 x_27942 y_1151))))
(assert (forall ((x_27942 Nat_327) (y_1151 Nat_327) (r_223 Nat_327) (z_1094 Nat_327))
	(=>	(and (ge_188 x_27942 y_1151)
			(minus_194 z_1094 x_27942 y_1151)
			(mod_188 r_223 z_1094 y_1151))
		(mod_188 r_223 x_27942 y_1151))))
(declare-datatypes ((list_132 0)) (((nil_146 ) (cons_132 (head_264 Nat_327) (tail_264 list_132)))))
(declare-fun diseqlist_132 (list_132 list_132) Bool)
(declare-fun head_265 (Nat_327 list_132) Bool)
(declare-fun tail_265 (list_132 list_132) Bool)
(declare-fun isnil_146 (list_132) Bool)
(declare-fun iscons_132 (list_132) Bool)
(assert (forall ((x_27960 Nat_327) (x_27961 list_132))
	(head_265 x_27960 (cons_132 x_27960 x_27961))))
(assert (forall ((x_27960 Nat_327) (x_27961 list_132))
	(tail_265 x_27961 (cons_132 x_27960 x_27961))))
(assert (isnil_146 nil_146))
(assert (forall ((x_27963 Nat_327) (x_27964 list_132))
	(iscons_132 (cons_132 x_27963 x_27964))))
(assert (forall ((x_27965 Nat_327) (x_27966 list_132))
	(diseqlist_132 nil_146 (cons_132 x_27965 x_27966))))
(assert (forall ((x_27967 Nat_327) (x_27968 list_132))
	(diseqlist_132 (cons_132 x_27967 x_27968) nil_146)))
(assert (forall ((x_27969 Nat_327) (x_27970 list_132) (x_27971 Nat_327) (x_27972 list_132))
	(=> (diseqNat_327 x_27969 x_27971)
	    (diseqlist_132 (cons_132 x_27969 x_27970) (cons_132 x_27971 x_27972)))))
(assert (forall ((x_27969 Nat_327) (x_27970 list_132) (x_27971 Nat_327) (x_27972 list_132))
	(=> (diseqlist_132 x_27970 x_27972)
	    (diseqlist_132 (cons_132 x_27969 x_27970) (cons_132 x_27971 x_27972)))))
(declare-datatypes ((pair_54 0)) (((pair_55 (projpair_108 list_132) (projpair_109 list_132)))))
(declare-fun diseqpair_27 (pair_54 pair_54) Bool)
(declare-fun projpair_110 (list_132 pair_54) Bool)
(declare-fun projpair_111 (list_132 pair_54) Bool)
(declare-fun ispair_27 (pair_54) Bool)
(assert (forall ((x_27973 list_132) (x_27974 list_132))
	(projpair_110 x_27973 (pair_55 x_27973 x_27974))))
(assert (forall ((x_27973 list_132) (x_27974 list_132))
	(projpair_111 x_27974 (pair_55 x_27973 x_27974))))
(assert (forall ((x_27976 list_132) (x_27977 list_132))
	(ispair_27 (pair_55 x_27976 x_27977))))
(assert (forall ((x_27978 list_132) (x_27979 list_132) (x_27980 list_132) (x_27981 list_132))
	(=> (diseqlist_132 x_27978 x_27980)
	    (diseqpair_27 (pair_55 x_27978 x_27979) (pair_55 x_27980 x_27981)))))
(assert (forall ((x_27978 list_132) (x_27979 list_132) (x_27980 list_132) (x_27981 list_132))
	(=> (diseqlist_132 x_27979 x_27981)
	    (diseqpair_27 (pair_55 x_27978 x_27979) (pair_55 x_27980 x_27981)))))
(declare-fun twoThirds_1 (Nat_327 Nat_327) Bool)
(assert (twoThirds_1 (S_279 Z_1093) (S_279 (S_279 Z_1093))))
(assert (=> (diseqNat_327 (S_279 Z_1093) (S_279 (S_279 Z_1093)))
	    (twoThirds_1 (S_279 Z_1093) (S_279 Z_1093))))
(assert (twoThirds_1 (S_279 Z_1093) (S_279 (S_279 Z_1093))))
(assert (=>	(and (diseqNat_327 Z_1093 (S_279 (S_279 Z_1093)))
			(diseqNat_327 Z_1093 (S_279 Z_1093)))
		(twoThirds_1 Z_1093 Z_1093)))
(assert (twoThirds_1 (S_279 Z_1093) (S_279 (S_279 Z_1093))))
(assert (=> (diseqNat_327 (S_279 Z_1093) (S_279 (S_279 Z_1093)))
	    (twoThirds_1 (S_279 Z_1093) (S_279 Z_1093))))
(assert (twoThirds_1 (S_279 Z_1093) (S_279 (S_279 Z_1093))))
(assert (forall ((x_27944 Nat_327) (x_27882 Nat_327) (x_27883 Nat_327) (x_27858 Nat_327))
	(=>	(and (diseqNat_327 x_27858 (S_279 (S_279 Z_1093)))
			(diseqNat_327 x_27858 (S_279 Z_1093))
			(diseqNat_327 x_27858 Z_1093)
			(twoThirds_1 x_27883 x_27944)
			(minus_194 x_27944 x_27858 (S_279 (S_279 (S_279 Z_1093))))
			(add_202 x_27882 (S_279 (S_279 Z_1093)) x_27883))
		(twoThirds_1 x_27882 x_27858))))
(declare-fun third_3 (Nat_327 Nat_327) Bool)
(assert (third_3 Z_1093 (S_279 (S_279 Z_1093))))
(assert (=> (diseqNat_327 (S_279 Z_1093) (S_279 (S_279 Z_1093)))
	    (third_3 Z_1093 (S_279 Z_1093))))
(assert (third_3 Z_1093 (S_279 (S_279 Z_1093))))
(assert (=>	(and (diseqNat_327 Z_1093 (S_279 (S_279 Z_1093)))
			(diseqNat_327 Z_1093 (S_279 Z_1093)))
		(third_3 Z_1093 Z_1093)))
(assert (third_3 Z_1093 (S_279 (S_279 Z_1093))))
(assert (=> (diseqNat_327 (S_279 Z_1093) (S_279 (S_279 Z_1093)))
	    (third_3 Z_1093 (S_279 Z_1093))))
(assert (third_3 Z_1093 (S_279 (S_279 Z_1093))))
(assert (forall ((x_27946 Nat_327) (x_27891 Nat_327) (x_27892 Nat_327) (x_27859 Nat_327))
	(=>	(and (diseqNat_327 x_27859 (S_279 (S_279 Z_1093)))
			(diseqNat_327 x_27859 (S_279 Z_1093))
			(diseqNat_327 x_27859 Z_1093)
			(third_3 x_27892 x_27946)
			(minus_194 x_27946 x_27859 (S_279 (S_279 (S_279 Z_1093))))
			(add_202 x_27891 (S_279 Z_1093) x_27892))
		(third_3 x_27891 x_27859))))
(declare-fun take_28 (list_132 Nat_327 list_132) Bool)
(assert (forall ((x_27860 Nat_327) (y_1142 list_132))
	(=> (le_188 x_27860 Z_1093)
	    (take_28 nil_146 x_27860 y_1142))))
(assert (forall ((x_27947 Nat_327) (x_27895 list_132) (z_1088 Nat_327) (xs_351 list_132) (x_27860 Nat_327))
	(=>	(and (gt_190 x_27860 Z_1093)
			(take_28 x_27895 x_27947 xs_351)
			(minus_194 x_27947 x_27860 (S_279 Z_1093)))
		(take_28 (cons_132 z_1088 x_27895) x_27860 (cons_132 z_1088 xs_351)))))
(assert (forall ((x_27860 Nat_327) (y_1142 list_132))
	(=> (le_188 x_27860 Z_1093)
	    (take_28 nil_146 x_27860 y_1142))))
(assert (forall ((x_27860 Nat_327))
	(=> (gt_190 x_27860 Z_1093)
	    (take_28 nil_146 x_27860 nil_146))))
(declare-fun sort_19 (list_132 Nat_327 Nat_327) Bool)
(assert (forall ((x_27861 Nat_327) (y_1143 Nat_327))
	(=> (le_188 x_27861 y_1143)
	    (sort_19 (cons_132 x_27861 (cons_132 y_1143 nil_146)) x_27861 y_1143))))
(assert (forall ((x_27861 Nat_327) (y_1143 Nat_327))
	(=> (gt_190 x_27861 y_1143)
	    (sort_19 (cons_132 y_1143 (cons_132 x_27861 nil_146)) x_27861 y_1143))))
(declare-fun length_16 (Nat_327 list_132) Bool)
(assert (forall ((x_27900 Nat_327) (x_27901 Nat_327) (y_1144 Nat_327) (l_18 list_132))
	(=>	(and (length_16 x_27901 l_18)
			(add_202 x_27900 (S_279 Z_1093) x_27901))
		(length_16 x_27900 (cons_132 y_1144 l_18)))))
(assert (length_16 Z_1093 nil_146))
(declare-fun drop_30 (list_132 Nat_327 list_132) Bool)
(assert (forall ((x_27903 list_132) (x_27863 Nat_327))
	(=> (le_188 x_27863 Z_1093)
	    (drop_30 x_27903 x_27863 x_27903))))
(assert (forall ((x_27949 Nat_327) (x_27904 list_132) (z_1089 Nat_327) (xs_352 list_132) (x_27863 Nat_327))
	(=>	(and (gt_190 x_27863 Z_1093)
			(drop_30 x_27904 x_27949 xs_352)
			(minus_194 x_27949 x_27863 (S_279 Z_1093)))
		(drop_30 x_27904 x_27863 (cons_132 z_1089 xs_352)))))
(assert (forall ((x_27906 list_132) (x_27863 Nat_327))
	(=> (le_188 x_27863 Z_1093)
	    (drop_30 x_27906 x_27863 x_27906))))
(assert (forall ((x_27863 Nat_327))
	(=> (gt_190 x_27863 Z_1093)
	    (drop_30 nil_146 x_27863 nil_146))))
(declare-fun splitAt_11 (pair_54 Nat_327 list_132) Bool)
(assert (forall ((x_27909 list_132) (x_27910 list_132) (x_27864 Nat_327) (y_1146 list_132))
	(=>	(and (take_28 x_27909 x_27864 y_1146)
			(drop_30 x_27910 x_27864 y_1146))
		(splitAt_11 (pair_55 x_27909 x_27910) x_27864 y_1146))))
(declare-fun count_22 (Nat_327 Nat_327 list_132) Bool)
(assert (forall ((x_27911 Nat_327) (x_27912 Nat_327) (ys_112 list_132) (x_27865 Nat_327))
	(=>	(and (count_22 x_27912 x_27865 ys_112)
			(add_202 x_27911 (S_279 Z_1093) x_27912))
		(count_22 x_27911 x_27865 (cons_132 x_27865 ys_112)))))
(assert (forall ((x_27913 Nat_327) (z_1090 Nat_327) (ys_112 list_132) (x_27865 Nat_327))
	(=>	(and (diseqNat_327 x_27865 z_1090)
			(count_22 x_27913 x_27865 ys_112))
		(count_22 x_27913 x_27865 (cons_132 z_1090 ys_112)))))
(assert (forall ((x_27865 Nat_327))
	(count_22 Z_1093 x_27865 nil_146)))
(declare-fun x_27866 (list_132 list_132 list_132) Bool)
(assert (forall ((x_27917 list_132) (z_1091 Nat_327) (xs_353 list_132) (y_1148 list_132))
	(=> (x_27866 x_27917 xs_353 y_1148)
	    (x_27866 (cons_132 z_1091 x_27917) (cons_132 z_1091 xs_353) y_1148))))
(assert (forall ((x_27918 list_132))
	(x_27866 x_27918 nil_146 x_27918)))
(declare-fun nstoogesort_9 (list_132 list_132) Bool)
(declare-fun nstoogesort_10 (list_132 list_132) Bool)
(declare-fun nstoogesort_11 (list_132 list_132) Bool)
(assert (forall ((x_27922 list_132) (x_27923 list_132) (x_27919 Nat_327) (x_27920 Nat_327) (ys_113 list_132) (zs_34 list_132) (x_27868 list_132))
	(=>	(and (nstoogesort_10 x_27923 ys_113)
			(x_27866 x_27922 x_27923 zs_34)
			(length_16 x_27919 x_27868)
			(twoThirds_1 x_27920 x_27919)
			(splitAt_11 (pair_55 ys_113 zs_34) x_27920 x_27868))
		(nstoogesort_9 x_27922 x_27868))))
(assert (forall ((x_27925 list_132) (x_27926 list_132) (x_27927 list_132) (x_27871 Nat_327) (x_27872 list_132) (y_1150 Nat_327) (y_1149 Nat_327))
	(=>	(and (nstoogesort_9 x_27926 (cons_132 y_1149 (cons_132 y_1150 (cons_132 x_27871 x_27872))))
			(nstoogesort_11 x_27927 x_27926)
			(nstoogesort_9 x_27925 x_27927))
		(nstoogesort_10 x_27925 (cons_132 y_1149 (cons_132 y_1150 (cons_132 x_27871 x_27872)))))))
(assert (forall ((x_27929 list_132) (y_1150 Nat_327) (y_1149 Nat_327))
	(=> (sort_19 x_27929 y_1149 y_1150)
	    (nstoogesort_10 x_27929 (cons_132 y_1149 (cons_132 y_1150 nil_146))))))
(assert (forall ((y_1149 Nat_327))
	(nstoogesort_10 (cons_132 y_1149 nil_146) (cons_132 y_1149 nil_146))))
(assert (nstoogesort_10 nil_146 nil_146))
(assert (forall ((x_27936 list_132) (x_27937 list_132) (x_27933 Nat_327) (x_27934 Nat_327) (ys_114 list_132) (zs_35 list_132) (x_27873 list_132))
	(=>	(and (nstoogesort_10 x_27937 zs_35)
			(x_27866 x_27936 ys_114 x_27937)
			(length_16 x_27933 x_27873)
			(third_3 x_27934 x_27933)
			(splitAt_11 (pair_55 ys_114 zs_35) x_27934 x_27873))
		(nstoogesort_11 x_27936 x_27873))))
(assert (forall ((x_27939 list_132) (x_27940 Nat_327) (x_27941 Nat_327) (x_27874 Nat_327) (xs_354 list_132))
	(=>	(and true
			(diseqNat_327 x_27940 x_27941)
			(nstoogesort_10 x_27939 xs_354)
			(count_22 x_27940 x_27874 x_27939)
			(count_22 x_27941 x_27874 xs_354))
		false)))
(check-sat)
