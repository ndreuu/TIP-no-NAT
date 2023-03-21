
(set-logic HORN)
(declare-datatypes ((Tok_4 0)) (((C_90) (D_10) (X_127941) (Y_3281) (Pl_3))))
(declare-fun diseqTok_4 (Tok_4 Tok_4) Bool)
(declare-fun isC_49 (Tok_4) Bool)
(declare-fun isD_6 (Tok_4) Bool)
(declare-fun isX_114 (Tok_4) Bool)
(declare-fun isY_18 (Tok_4) Bool)
(declare-fun isPl_3 (Tok_4) Bool)
(assert (isC_49 C_90))
(assert (isD_6 D_10))
(assert (isX_114 X_127941))
(assert (isY_18 Y_3281))
(assert (isPl_3 Pl_3))
(assert (diseqTok_4 C_90 D_10))
(assert (diseqTok_4 C_90 X_127941))
(assert (diseqTok_4 C_90 Y_3281))
(assert (diseqTok_4 C_90 Pl_3))
(assert (diseqTok_4 D_10 C_90))
(assert (diseqTok_4 X_127941 C_90))
(assert (diseqTok_4 Y_3281 C_90))
(assert (diseqTok_4 Pl_3 C_90))
(assert (diseqTok_4 D_10 X_127941))
(assert (diseqTok_4 D_10 Y_3281))
(assert (diseqTok_4 D_10 Pl_3))
(assert (diseqTok_4 X_127941 D_10))
(assert (diseqTok_4 Y_3281 D_10))
(assert (diseqTok_4 Pl_3 D_10))
(assert (diseqTok_4 X_127941 Y_3281))
(assert (diseqTok_4 X_127941 Pl_3))
(assert (diseqTok_4 Y_3281 X_127941))
(assert (diseqTok_4 Pl_3 X_127941))
(assert (diseqTok_4 Y_3281 Pl_3))
(assert (diseqTok_4 Pl_3 Y_3281))
(declare-datatypes ((list_420 0)) (((nil_482) (cons_414 (head_828 Tok_4) (tail_834 list_420)))))
(declare-fun diseqlist_414 (list_420 list_420) Bool)
(declare-fun head_829 (Tok_4 list_420) Bool)
(declare-fun tail_835 (list_420 list_420) Bool)
(declare-fun isnil_482 (list_420) Bool)
(declare-fun iscons_414 (list_420) Bool)
(assert (forall ((x_127966 Tok_4) (x_127967 list_420))
	(head_829 x_127966 (cons_414 x_127966 x_127967))))
(assert (forall ((x_127966 Tok_4) (x_127967 list_420))
	(tail_835 x_127967 (cons_414 x_127966 x_127967))))
(assert (isnil_482 nil_482))
(assert (forall ((x_127969 Tok_4) (x_127970 list_420))
	(iscons_414 (cons_414 x_127969 x_127970))))
(assert (forall ((x_127971 Tok_4) (x_127972 list_420))
	(diseqlist_414 nil_482 (cons_414 x_127971 x_127972))))
(assert (forall ((x_127973 Tok_4) (x_127974 list_420))
	(diseqlist_414 (cons_414 x_127973 x_127974) nil_482)))
(assert (forall ((x_127975 Tok_4) (x_127976 list_420) (x_127977 Tok_4) (x_127978 list_420))
	(=> (diseqTok_4 x_127975 x_127977) (diseqlist_414 (cons_414 x_127975 x_127976) (cons_414 x_127977 x_127978)))))
(assert (forall ((x_127975 Tok_4) (x_127976 list_420) (x_127977 Tok_4) (x_127978 list_420))
	(=> (diseqlist_414 x_127976 x_127978) (diseqlist_414 (cons_414 x_127975 x_127976) (cons_414 x_127977 x_127978)))))
(declare-datatypes ((E_71 0)) (((Plus_141 (projPlus_68 E_71) (projPlus_69 E_71)) (EX_3) (EY_3))))
(declare-fun diseqE_11 (E_71 E_71) Bool)
(declare-fun projPlus_70 (E_71 E_71) Bool)
(declare-fun projPlus_71 (E_71 E_71) Bool)
(declare-fun isPlus_18 (E_71) Bool)
(declare-fun isEX_3 (E_71) Bool)
(declare-fun isEY_3 (E_71) Bool)
(assert (forall ((x_127979 E_71) (x_127980 E_71))
	(projPlus_70 x_127979 (Plus_141 x_127979 x_127980))))
(assert (forall ((x_127979 E_71) (x_127980 E_71))
	(projPlus_71 x_127980 (Plus_141 x_127979 x_127980))))
(assert (forall ((x_127984 E_71) (x_127985 E_71))
	(isPlus_18 (Plus_141 x_127984 x_127985))))
(assert (isEX_3 EX_3))
(assert (isEY_3 EY_3))
(assert (forall ((x_127986 E_71) (x_127987 E_71))
	(diseqE_11 (Plus_141 x_127986 x_127987) EX_3)))
(assert (forall ((x_127988 E_71) (x_127989 E_71))
	(diseqE_11 (Plus_141 x_127988 x_127989) EY_3)))
(assert (forall ((x_127990 E_71) (x_127991 E_71))
	(diseqE_11 EX_3 (Plus_141 x_127990 x_127991))))
(assert (forall ((x_127992 E_71) (x_127993 E_71))
	(diseqE_11 EY_3 (Plus_141 x_127992 x_127993))))
(assert (diseqE_11 EX_3 EY_3))
(assert (diseqE_11 EY_3 EX_3))
(assert (forall ((x_127994 E_71) (x_127995 E_71) (x_127996 E_71) (x_127997 E_71))
	(=> (diseqE_11 x_127994 x_127996) (diseqE_11 (Plus_141 x_127994 x_127995) (Plus_141 x_127996 x_127997)))))
(assert (forall ((x_127994 E_71) (x_127995 E_71) (x_127996 E_71) (x_127997 E_71))
	(=> (diseqE_11 x_127995 x_127997) (diseqE_11 (Plus_141 x_127994 x_127995) (Plus_141 x_127996 x_127997)))))
(declare-fun x_127942 (list_420 list_420 list_420) Bool)
(assert (forall ((x_127946 list_420) (z_2812 Tok_4) (xs_918 list_420) (y_3282 list_420))
	(=> (x_127942 x_127946 xs_918 y_3282) (x_127942 (cons_414 z_2812 x_127946) (cons_414 z_2812 xs_918) y_3282))))
(assert (forall ((x_127947 list_420))
	(x_127942 x_127947 nil_482 x_127947)))
(declare-fun lin_4 (list_420 E_71) Bool)
(assert (lin_4 (cons_414 Y_3281 nil_482) EY_3))
(assert (lin_4 (cons_414 X_127941 nil_482) EX_3))
(assert (forall ((x_127950 list_420) (x_127951 list_420) (x_127952 list_420) (x_127953 list_420) (x_127954 list_420) (x_127955 list_420) (a_134 E_71) (b_151 E_71))
	(=> (and (lin_4 x_127951 a_134) (lin_4 x_127952 b_151) (x_127942 x_127953 x_127952 (cons_414 D_10 nil_482)) (x_127942 x_127954 (cons_414 Pl_3 nil_482) x_127953) (x_127942 x_127955 x_127951 x_127954) (x_127942 x_127950 (cons_414 C_90 nil_482) x_127955)) (lin_4 x_127950 (Plus_141 a_134 b_151)))))
(assert (forall ((x_127957 list_420) (u_38 E_71) (v_39 E_71))
	(=> (and true (diseqE_11 u_38 v_39) (lin_4 x_127957 u_38) (lin_4 x_127957 v_39)) false)))
(check-sat)