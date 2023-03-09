(set-logic HORN)
(declare-datatypes ((Nat_720 0)) (((Z_2776 ) (S_640 (unS_892 Nat_720)))))
(declare-fun diseqNat_720 (Nat_720 Nat_720) Bool)
(declare-fun unS_893 (Nat_720 Nat_720) Bool)
(declare-fun isZ_576 (Nat_720) Bool)
(declare-fun isS_576 (Nat_720) Bool)
(assert (forall ((x_126945 Nat_720))
	(unS_893 x_126945 (S_640 x_126945))))
(assert (isZ_576 Z_2776))
(assert (forall ((x_126947 Nat_720))
	(isS_576 (S_640 x_126947))))
(assert (forall ((x_126948 Nat_720))
	(diseqNat_720 Z_2776 (S_640 x_126948))))
(assert (forall ((x_126949 Nat_720))
	(diseqNat_720 (S_640 x_126949) Z_2776)))
(assert (forall ((x_126950 Nat_720) (x_126951 Nat_720))
	(=> (diseqNat_720 x_126950 x_126951)
	    (diseqNat_720 (S_640 x_126950) (S_640 x_126951)))))
(declare-fun add_481 (Nat_720 Nat_720 Nat_720) Bool)
(declare-fun minus_467 (Nat_720 Nat_720 Nat_720) Bool)
(declare-fun le_446 (Nat_720 Nat_720) Bool)
(declare-fun ge_446 (Nat_720 Nat_720) Bool)
(declare-fun lt_466 (Nat_720 Nat_720) Bool)
(declare-fun gt_449 (Nat_720 Nat_720) Bool)
(declare-fun mult_447 (Nat_720 Nat_720 Nat_720) Bool)
(declare-fun div_446 (Nat_720 Nat_720 Nat_720) Bool)
(declare-fun mod_448 (Nat_720 Nat_720 Nat_720) Bool)
(assert (forall ((y_3240 Nat_720))
	(add_481 y_3240 Z_2776 y_3240)))
(assert (forall ((x_126938 Nat_720) (y_3240 Nat_720) (r_673 Nat_720))
	(=> (add_481 r_673 x_126938 y_3240)
	    (add_481 (S_640 r_673) (S_640 x_126938) y_3240))))
(assert (forall ((y_3240 Nat_720))
	(minus_467 Z_2776 Z_2776 y_3240)))
(assert (forall ((x_126938 Nat_720) (y_3240 Nat_720) (r_673 Nat_720))
	(=> (minus_467 r_673 x_126938 y_3240)
	    (minus_467 (S_640 r_673) (S_640 x_126938) y_3240))))
(assert (forall ((y_3240 Nat_720))
	(le_446 Z_2776 y_3240)))
(assert (forall ((x_126938 Nat_720) (y_3240 Nat_720))
	(=> (le_446 x_126938 y_3240)
	    (le_446 (S_640 x_126938) (S_640 y_3240)))))
(assert (forall ((y_3240 Nat_720))
	(ge_446 y_3240 Z_2776)))
(assert (forall ((x_126938 Nat_720) (y_3240 Nat_720))
	(=> (ge_446 x_126938 y_3240)
	    (ge_446 (S_640 x_126938) (S_640 y_3240)))))
(assert (forall ((y_3240 Nat_720))
	(lt_466 Z_2776 (S_640 y_3240))))
(assert (forall ((x_126938 Nat_720) (y_3240 Nat_720))
	(=> (lt_466 x_126938 y_3240)
	    (lt_466 (S_640 x_126938) (S_640 y_3240)))))
(assert (forall ((y_3240 Nat_720))
	(gt_449 (S_640 y_3240) Z_2776)))
(assert (forall ((x_126938 Nat_720) (y_3240 Nat_720))
	(=> (gt_449 x_126938 y_3240)
	    (gt_449 (S_640 x_126938) (S_640 y_3240)))))
(assert (forall ((y_3240 Nat_720))
	(mult_447 Z_2776 Z_2776 y_3240)))
(assert (forall ((x_126938 Nat_720) (y_3240 Nat_720) (r_673 Nat_720) (z_2777 Nat_720))
	(=>	(and (mult_447 r_673 x_126938 y_3240)
			(add_481 z_2777 r_673 y_3240))
		(mult_447 z_2777 (S_640 x_126938) y_3240))))
(assert (forall ((x_126938 Nat_720) (y_3240 Nat_720))
	(=> (lt_466 x_126938 y_3240)
	    (div_446 Z_2776 x_126938 y_3240))))
(assert (forall ((x_126938 Nat_720) (y_3240 Nat_720) (r_673 Nat_720) (z_2777 Nat_720))
	(=>	(and (ge_446 x_126938 y_3240)
			(minus_467 z_2777 x_126938 y_3240)
			(div_446 r_673 z_2777 y_3240))
		(div_446 (S_640 r_673) x_126938 y_3240))))
(assert (forall ((x_126938 Nat_720) (y_3240 Nat_720))
	(=> (lt_466 x_126938 y_3240)
	    (mod_448 x_126938 x_126938 y_3240))))
(assert (forall ((x_126938 Nat_720) (y_3240 Nat_720) (r_673 Nat_720) (z_2777 Nat_720))
	(=>	(and (ge_446 x_126938 y_3240)
			(minus_467 z_2777 x_126938 y_3240)
			(mod_448 r_673 z_2777 y_3240))
		(mod_448 r_673 x_126938 y_3240))))
(declare-datatypes ((list_407 0)) (((nil_468 ) (cons_401 (head_802 Nat_720) (tail_808 list_407)))))
(declare-fun diseqlist_401 (list_407 list_407) Bool)
(declare-fun head_804 (Nat_720 list_407) Bool)
(declare-fun tail_810 (list_407 list_407) Bool)
(declare-fun isnil_468 (list_407) Bool)
(declare-fun iscons_401 (list_407) Bool)
(assert (forall ((x_126953 Nat_720) (x_126954 list_407))
	(head_804 x_126953 (cons_401 x_126953 x_126954))))
(assert (forall ((x_126953 Nat_720) (x_126954 list_407))
	(tail_810 x_126954 (cons_401 x_126953 x_126954))))
(assert (isnil_468 nil_468))
(assert (forall ((x_126956 Nat_720) (x_126957 list_407))
	(iscons_401 (cons_401 x_126956 x_126957))))
(assert (forall ((x_126958 Nat_720) (x_126959 list_407))
	(diseqlist_401 nil_468 (cons_401 x_126958 x_126959))))
(assert (forall ((x_126960 Nat_720) (x_126961 list_407))
	(diseqlist_401 (cons_401 x_126960 x_126961) nil_468)))
(assert (forall ((x_126962 Nat_720) (x_126963 list_407) (x_126964 Nat_720) (x_126965 list_407))
	(=> (diseqNat_720 x_126962 x_126964)
	    (diseqlist_401 (cons_401 x_126962 x_126963) (cons_401 x_126964 x_126965)))))
(assert (forall ((x_126962 Nat_720) (x_126963 list_407) (x_126964 Nat_720) (x_126965 list_407))
	(=> (diseqlist_401 x_126963 x_126965)
	    (diseqlist_401 (cons_401 x_126962 x_126963) (cons_401 x_126964 x_126965)))))
(declare-datatypes ((E_62 0)) (((N_120 (projN_24 Nat_720)) (Add_480 (projAdd_0 E_62) (projAdd_1 E_62)) (Mul_13 (projMul_0 E_62) (projMul_1 E_62)) (Eq_0 (projEq_0 E_62) (projEq_1 E_62)) (V_32 (projV_0 Nat_720)))))
(declare-fun diseqE_7 (E_62 E_62) Bool)
(declare-fun projN_25 (Nat_720 E_62) Bool)
(declare-fun projAdd_2 (E_62 E_62) Bool)
(declare-fun projAdd_3 (E_62 E_62) Bool)
(declare-fun projMul_2 (E_62 E_62) Bool)
(declare-fun projMul_3 (E_62 E_62) Bool)
(declare-fun projEq_2 (E_62 E_62) Bool)
(declare-fun projEq_3 (E_62 E_62) Bool)
(declare-fun projV_1 (Nat_720 E_62) Bool)
(declare-fun isN_12 (E_62) Bool)
(declare-fun isAdd_0 (E_62) Bool)
(declare-fun isMul_1 (E_62) Bool)
(declare-fun isEq_0 (E_62) Bool)
(declare-fun isV_0 (E_62) Bool)
(assert (forall ((x_126966 Nat_720))
	(projN_25 x_126966 (N_120 x_126966))))
(assert (forall ((x_126968 E_62) (x_126969 E_62))
	(projAdd_2 x_126968 (Add_480 x_126968 x_126969))))
(assert (forall ((x_126968 E_62) (x_126969 E_62))
	(projAdd_3 x_126969 (Add_480 x_126968 x_126969))))
(assert (forall ((x_126971 E_62) (x_126972 E_62))
	(projMul_2 x_126971 (Mul_13 x_126971 x_126972))))
(assert (forall ((x_126971 E_62) (x_126972 E_62))
	(projMul_3 x_126972 (Mul_13 x_126971 x_126972))))
(assert (forall ((x_126974 E_62) (x_126975 E_62))
	(projEq_2 x_126974 (Eq_0 x_126974 x_126975))))
(assert (forall ((x_126974 E_62) (x_126975 E_62))
	(projEq_3 x_126975 (Eq_0 x_126974 x_126975))))
(assert (forall ((x_126977 Nat_720))
	(projV_1 x_126977 (V_32 x_126977))))
(assert (forall ((x_126979 Nat_720))
	(isN_12 (N_120 x_126979))))
(assert (forall ((x_126980 E_62) (x_126981 E_62))
	(isAdd_0 (Add_480 x_126980 x_126981))))
(assert (forall ((x_126982 E_62) (x_126983 E_62))
	(isMul_1 (Mul_13 x_126982 x_126983))))
(assert (forall ((x_126984 E_62) (x_126985 E_62))
	(isEq_0 (Eq_0 x_126984 x_126985))))
(assert (forall ((x_126986 Nat_720))
	(isV_0 (V_32 x_126986))))
(assert (forall ((x_126987 Nat_720) (x_126988 E_62) (x_126989 E_62))
	(diseqE_7 (N_120 x_126987) (Add_480 x_126988 x_126989))))
(assert (forall ((x_126990 Nat_720) (x_126991 E_62) (x_126992 E_62))
	(diseqE_7 (N_120 x_126990) (Mul_13 x_126991 x_126992))))
(assert (forall ((x_126993 Nat_720) (x_126994 E_62) (x_126995 E_62))
	(diseqE_7 (N_120 x_126993) (Eq_0 x_126994 x_126995))))
(assert (forall ((x_126996 Nat_720) (x_126997 Nat_720))
	(diseqE_7 (N_120 x_126996) (V_32 x_126997))))
(assert (forall ((x_126998 E_62) (x_126999 E_62) (x_127000 Nat_720))
	(diseqE_7 (Add_480 x_126998 x_126999) (N_120 x_127000))))
(assert (forall ((x_127001 E_62) (x_127002 E_62) (x_127003 Nat_720))
	(diseqE_7 (Mul_13 x_127001 x_127002) (N_120 x_127003))))
(assert (forall ((x_127004 E_62) (x_127005 E_62) (x_127006 Nat_720))
	(diseqE_7 (Eq_0 x_127004 x_127005) (N_120 x_127006))))
(assert (forall ((x_127007 Nat_720) (x_127008 Nat_720))
	(diseqE_7 (V_32 x_127007) (N_120 x_127008))))
(assert (forall ((x_127009 E_62) (x_127010 E_62) (x_127011 E_62) (x_127012 E_62))
	(diseqE_7 (Add_480 x_127009 x_127010) (Mul_13 x_127011 x_127012))))
(assert (forall ((x_127013 E_62) (x_127014 E_62) (x_127015 E_62) (x_127016 E_62))
	(diseqE_7 (Add_480 x_127013 x_127014) (Eq_0 x_127015 x_127016))))
(assert (forall ((x_127017 E_62) (x_127018 E_62) (x_127019 Nat_720))
	(diseqE_7 (Add_480 x_127017 x_127018) (V_32 x_127019))))
(assert (forall ((x_127020 E_62) (x_127021 E_62) (x_127022 E_62) (x_127023 E_62))
	(diseqE_7 (Mul_13 x_127020 x_127021) (Add_480 x_127022 x_127023))))
(assert (forall ((x_127024 E_62) (x_127025 E_62) (x_127026 E_62) (x_127027 E_62))
	(diseqE_7 (Eq_0 x_127024 x_127025) (Add_480 x_127026 x_127027))))
(assert (forall ((x_127028 Nat_720) (x_127029 E_62) (x_127030 E_62))
	(diseqE_7 (V_32 x_127028) (Add_480 x_127029 x_127030))))
(assert (forall ((x_127031 E_62) (x_127032 E_62) (x_127033 E_62) (x_127034 E_62))
	(diseqE_7 (Mul_13 x_127031 x_127032) (Eq_0 x_127033 x_127034))))
(assert (forall ((x_127035 E_62) (x_127036 E_62) (x_127037 Nat_720))
	(diseqE_7 (Mul_13 x_127035 x_127036) (V_32 x_127037))))
(assert (forall ((x_127038 E_62) (x_127039 E_62) (x_127040 E_62) (x_127041 E_62))
	(diseqE_7 (Eq_0 x_127038 x_127039) (Mul_13 x_127040 x_127041))))
(assert (forall ((x_127042 Nat_720) (x_127043 E_62) (x_127044 E_62))
	(diseqE_7 (V_32 x_127042) (Mul_13 x_127043 x_127044))))
(assert (forall ((x_127045 E_62) (x_127046 E_62) (x_127047 Nat_720))
	(diseqE_7 (Eq_0 x_127045 x_127046) (V_32 x_127047))))
(assert (forall ((x_127048 Nat_720) (x_127049 E_62) (x_127050 E_62))
	(diseqE_7 (V_32 x_127048) (Eq_0 x_127049 x_127050))))
(assert (forall ((x_127051 Nat_720) (x_127052 Nat_720))
	(=> (diseqNat_720 x_127051 x_127052)
	    (diseqE_7 (N_120 x_127051) (N_120 x_127052)))))
(assert (forall ((x_127053 E_62) (x_127054 E_62) (x_127055 E_62) (x_127056 E_62))
	(=> (diseqE_7 x_127053 x_127055)
	    (diseqE_7 (Add_480 x_127053 x_127054) (Add_480 x_127055 x_127056)))))
(assert (forall ((x_127053 E_62) (x_127054 E_62) (x_127055 E_62) (x_127056 E_62))
	(=> (diseqE_7 x_127054 x_127056)
	    (diseqE_7 (Add_480 x_127053 x_127054) (Add_480 x_127055 x_127056)))))
(assert (forall ((x_127057 E_62) (x_127058 E_62) (x_127059 E_62) (x_127060 E_62))
	(=> (diseqE_7 x_127057 x_127059)
	    (diseqE_7 (Mul_13 x_127057 x_127058) (Mul_13 x_127059 x_127060)))))
(assert (forall ((x_127057 E_62) (x_127058 E_62) (x_127059 E_62) (x_127060 E_62))
	(=> (diseqE_7 x_127058 x_127060)
	    (diseqE_7 (Mul_13 x_127057 x_127058) (Mul_13 x_127059 x_127060)))))
(assert (forall ((x_127061 E_62) (x_127062 E_62) (x_127063 E_62) (x_127064 E_62))
	(=> (diseqE_7 x_127061 x_127063)
	    (diseqE_7 (Eq_0 x_127061 x_127062) (Eq_0 x_127063 x_127064)))))
(assert (forall ((x_127061 E_62) (x_127062 E_62) (x_127063 E_62) (x_127064 E_62))
	(=> (diseqE_7 x_127062 x_127064)
	    (diseqE_7 (Eq_0 x_127061 x_127062) (Eq_0 x_127063 x_127064)))))
(assert (forall ((x_127065 Nat_720) (x_127066 Nat_720))
	(=> (diseqNat_720 x_127065 x_127066)
	    (diseqE_7 (V_32 x_127065) (V_32 x_127066)))))
(declare-datatypes ((P_616 0) (list_408 0)) (((Print_0 (projPrint_0 E_62)) (x_126870 (proj_372 Nat_720) (proj_373 E_62)) (While_0 (projWhile_0 E_62) (projWhile_1 list_408)) (If_0 (projIf_0 E_62) (projIf_1 list_408) (projIf_2 list_408))) ((nil_469 ) (cons_402 (head_803 P_616) (tail_809 list_408)))))
(declare-fun diseqP_0 (P_616 P_616) Bool)
(declare-fun projPrint_1 (E_62 P_616) Bool)
(declare-fun proj_374 (Nat_720 P_616) Bool)
(declare-fun proj_375 (E_62 P_616) Bool)
(declare-fun projWhile_2 (E_62 P_616) Bool)
(declare-fun projWhile_3 (list_408 P_616) Bool)
(declare-fun projIf_3 (E_62 P_616) Bool)
(declare-fun projIf_4 (list_408 P_616) Bool)
(declare-fun projIf_5 (list_408 P_616) Bool)
(declare-fun isPrint_0 (P_616) Bool)
(declare-fun isx_108 (P_616) Bool)
(declare-fun isWhile_0 (P_616) Bool)
(declare-fun isIf_0 (P_616) Bool)
(declare-fun diseqlist_402 (list_408 list_408) Bool)
(declare-fun head_805 (P_616 list_408) Bool)
(declare-fun tail_811 (list_408 list_408) Bool)
(declare-fun isnil_469 (list_408) Bool)
(declare-fun iscons_402 (list_408) Bool)
(assert (forall ((x_127067 E_62))
	(projPrint_1 x_127067 (Print_0 x_127067))))
(assert (forall ((x_127069 Nat_720) (x_127070 E_62))
	(proj_374 x_127069 (x_126870 x_127069 x_127070))))
(assert (forall ((x_127069 Nat_720) (x_127070 E_62))
	(proj_375 x_127070 (x_126870 x_127069 x_127070))))
(assert (forall ((x_127072 E_62) (x_127073 list_408))
	(projWhile_2 x_127072 (While_0 x_127072 x_127073))))
(assert (forall ((x_127072 E_62) (x_127073 list_408))
	(projWhile_3 x_127073 (While_0 x_127072 x_127073))))
(assert (forall ((x_127075 E_62) (x_127076 list_408) (x_127077 list_408))
	(projIf_3 x_127075 (If_0 x_127075 x_127076 x_127077))))
(assert (forall ((x_127075 E_62) (x_127076 list_408) (x_127077 list_408))
	(projIf_4 x_127076 (If_0 x_127075 x_127076 x_127077))))
(assert (forall ((x_127075 E_62) (x_127076 list_408) (x_127077 list_408))
	(projIf_5 x_127077 (If_0 x_127075 x_127076 x_127077))))
(assert (forall ((x_127079 E_62))
	(isPrint_0 (Print_0 x_127079))))
(assert (forall ((x_127080 Nat_720) (x_127081 E_62))
	(isx_108 (x_126870 x_127080 x_127081))))
(assert (forall ((x_127082 E_62) (x_127083 list_408))
	(isWhile_0 (While_0 x_127082 x_127083))))
(assert (forall ((x_127084 E_62) (x_127085 list_408) (x_127086 list_408))
	(isIf_0 (If_0 x_127084 x_127085 x_127086))))
(assert (forall ((x_127087 E_62) (x_127088 Nat_720) (x_127089 E_62))
	(diseqP_0 (Print_0 x_127087) (x_126870 x_127088 x_127089))))
(assert (forall ((x_127090 E_62) (x_127091 E_62) (x_127092 list_408))
	(diseqP_0 (Print_0 x_127090) (While_0 x_127091 x_127092))))
(assert (forall ((x_127093 E_62) (x_127094 E_62) (x_127095 list_408) (x_127096 list_408))
	(diseqP_0 (Print_0 x_127093) (If_0 x_127094 x_127095 x_127096))))
(assert (forall ((x_127097 Nat_720) (x_127098 E_62) (x_127099 E_62))
	(diseqP_0 (x_126870 x_127097 x_127098) (Print_0 x_127099))))
(assert (forall ((x_127100 E_62) (x_127101 list_408) (x_127102 E_62))
	(diseqP_0 (While_0 x_127100 x_127101) (Print_0 x_127102))))
(assert (forall ((x_127103 E_62) (x_127104 list_408) (x_127105 list_408) (x_127106 E_62))
	(diseqP_0 (If_0 x_127103 x_127104 x_127105) (Print_0 x_127106))))
(assert (forall ((x_127107 Nat_720) (x_127108 E_62) (x_127109 E_62) (x_127110 list_408))
	(diseqP_0 (x_126870 x_127107 x_127108) (While_0 x_127109 x_127110))))
(assert (forall ((x_127111 Nat_720) (x_127112 E_62) (x_127113 E_62) (x_127114 list_408) (x_127115 list_408))
	(diseqP_0 (x_126870 x_127111 x_127112) (If_0 x_127113 x_127114 x_127115))))
(assert (forall ((x_127116 E_62) (x_127117 list_408) (x_127118 Nat_720) (x_127119 E_62))
	(diseqP_0 (While_0 x_127116 x_127117) (x_126870 x_127118 x_127119))))
(assert (forall ((x_127120 E_62) (x_127121 list_408) (x_127122 list_408) (x_127123 Nat_720) (x_127124 E_62))
	(diseqP_0 (If_0 x_127120 x_127121 x_127122) (x_126870 x_127123 x_127124))))
(assert (forall ((x_127125 E_62) (x_127126 list_408) (x_127127 E_62) (x_127128 list_408) (x_127129 list_408))
	(diseqP_0 (While_0 x_127125 x_127126) (If_0 x_127127 x_127128 x_127129))))
(assert (forall ((x_127130 E_62) (x_127131 list_408) (x_127132 list_408) (x_127133 E_62) (x_127134 list_408))
	(diseqP_0 (If_0 x_127130 x_127131 x_127132) (While_0 x_127133 x_127134))))
(assert (forall ((x_127135 E_62) (x_127136 E_62))
	(=> (diseqE_7 x_127135 x_127136)
	    (diseqP_0 (Print_0 x_127135) (Print_0 x_127136)))))
(assert (forall ((x_127137 Nat_720) (x_127138 E_62) (x_127139 Nat_720) (x_127140 E_62))
	(=> (diseqNat_720 x_127137 x_127139)
	    (diseqP_0 (x_126870 x_127137 x_127138) (x_126870 x_127139 x_127140)))))
(assert (forall ((x_127137 Nat_720) (x_127138 E_62) (x_127139 Nat_720) (x_127140 E_62))
	(=> (diseqE_7 x_127138 x_127140)
	    (diseqP_0 (x_126870 x_127137 x_127138) (x_126870 x_127139 x_127140)))))
(assert (forall ((x_127141 E_62) (x_127142 list_408) (x_127143 E_62) (x_127144 list_408))
	(=> (diseqE_7 x_127141 x_127143)
	    (diseqP_0 (While_0 x_127141 x_127142) (While_0 x_127143 x_127144)))))
(assert (forall ((x_127141 E_62) (x_127142 list_408) (x_127143 E_62) (x_127144 list_408))
	(=> (diseqlist_402 x_127142 x_127144)
	    (diseqP_0 (While_0 x_127141 x_127142) (While_0 x_127143 x_127144)))))
(assert (forall ((x_127145 E_62) (x_127146 list_408) (x_127147 list_408) (x_127148 E_62) (x_127149 list_408) (x_127150 list_408))
	(=> (diseqE_7 x_127145 x_127148)
	    (diseqP_0 (If_0 x_127145 x_127146 x_127147) (If_0 x_127148 x_127149 x_127150)))))
(assert (forall ((x_127145 E_62) (x_127146 list_408) (x_127147 list_408) (x_127148 E_62) (x_127149 list_408) (x_127150 list_408))
	(=> (diseqlist_402 x_127146 x_127149)
	    (diseqP_0 (If_0 x_127145 x_127146 x_127147) (If_0 x_127148 x_127149 x_127150)))))
(assert (forall ((x_127145 E_62) (x_127146 list_408) (x_127147 list_408) (x_127148 E_62) (x_127149 list_408) (x_127150 list_408))
	(=> (diseqlist_402 x_127147 x_127150)
	    (diseqP_0 (If_0 x_127145 x_127146 x_127147) (If_0 x_127148 x_127149 x_127150)))))
(assert (forall ((x_127152 P_616) (x_127153 list_408))
	(head_805 x_127152 (cons_402 x_127152 x_127153))))
(assert (forall ((x_127152 P_616) (x_127153 list_408))
	(tail_811 x_127153 (cons_402 x_127152 x_127153))))
(assert (isnil_469 nil_469))
(assert (forall ((x_127155 P_616) (x_127156 list_408))
	(iscons_402 (cons_402 x_127155 x_127156))))
(assert (forall ((x_127157 P_616) (x_127158 list_408))
	(diseqlist_402 nil_469 (cons_402 x_127157 x_127158))))
(assert (forall ((x_127159 P_616) (x_127160 list_408))
	(diseqlist_402 (cons_402 x_127159 x_127160) nil_469)))
(assert (forall ((x_127161 P_616) (x_127162 list_408) (x_127163 P_616) (x_127164 list_408))
	(=> (diseqP_0 x_127161 x_127163)
	    (diseqlist_402 (cons_402 x_127161 x_127162) (cons_402 x_127163 x_127164)))))
(assert (forall ((x_127161 P_616) (x_127162 list_408) (x_127163 P_616) (x_127164 list_408))
	(=> (diseqlist_402 x_127162 x_127164)
	    (diseqlist_402 (cons_402 x_127161 x_127162) (cons_402 x_127163 x_127164)))))
(declare-fun store_0 (list_407 list_407 Nat_720 Nat_720) Bool)
(assert (forall ((n_121 Nat_720) (st_0 list_407) (z_2772 Nat_720))
	(store_0 (cons_401 z_2772 st_0) (cons_401 n_121 st_0) Z_2776 z_2772)))
(assert (forall ((x_126939 Nat_720) (x_126885 list_407) (n_121 Nat_720) (st_0 list_407) (y_3235 Nat_720) (z_2772 Nat_720))
	(=>	(and (diseqNat_720 y_3235 Z_2776)
			(store_0 x_126885 st_0 x_126939 z_2772)
			(minus_467 x_126939 y_3235 (S_640 Z_2776)))
		(store_0 (cons_401 n_121 x_126885) (cons_401 n_121 st_0) y_3235 z_2772))))
(assert (forall ((z_2772 Nat_720))
	(store_0 (cons_401 z_2772 nil_468) nil_468 Z_2776 z_2772)))
(assert (forall ((x_126940 Nat_720) (x_126888 list_407) (y_3235 Nat_720) (z_2772 Nat_720))
	(=>	(and (diseqNat_720 y_3235 Z_2776)
			(store_0 x_126888 nil_468 x_126940 z_2772)
			(minus_467 x_126940 y_3235 (S_640 Z_2776)))
		(store_0 (cons_401 Z_2776 x_126888) nil_468 y_3235 z_2772))))
(declare-fun fetch_0 (Nat_720 list_407 Nat_720) Bool)
(assert (forall ((n_122 Nat_720) (st_1 list_407))
	(fetch_0 n_122 (cons_401 n_122 st_1) Z_2776)))
(assert (forall ((x_126941 Nat_720) (x_126890 Nat_720) (n_122 Nat_720) (st_1 list_407) (y_3236 Nat_720))
	(=>	(and (diseqNat_720 y_3236 Z_2776)
			(fetch_0 x_126890 st_1 x_126941)
			(minus_467 x_126941 y_3236 (S_640 Z_2776)))
		(fetch_0 x_126890 (cons_401 n_122 st_1) y_3236))))
(assert (forall ((y_3236 Nat_720))
	(fetch_0 Z_2776 nil_468 y_3236)))
(declare-fun eval_0 (Nat_720 list_407 E_62) Bool)
(assert (forall ((x_126893 Nat_720) (z_2773 Nat_720) (x_126873 list_407))
	(=> (fetch_0 x_126893 x_126873 z_2773)
	    (eval_0 x_126893 x_126873 (V_32 z_2773)))))
(assert (forall ((x_126895 Nat_720) (a_124 E_62) (b_143 E_62) (x_126873 list_407))
	(=>	(and (eval_0 x_126895 x_126873 a_124)
			(eval_0 x_126895 x_126873 b_143))
		(eval_0 (S_640 Z_2776) x_126873 (Eq_0 a_124 b_143)))))
(assert (forall ((x_126898 Nat_720) (x_126899 Nat_720) (a_124 E_62) (b_143 E_62) (x_126873 list_407))
	(=>	(and (diseqNat_720 x_126898 x_126899)
			(eval_0 x_126898 x_126873 a_124)
			(eval_0 x_126899 x_126873 b_143))
		(eval_0 Z_2776 x_126873 (Eq_0 a_124 b_143)))))
(assert (forall ((x_126901 Nat_720) (x_126902 Nat_720) (x_126903 Nat_720) (c_80 E_62) (b_144 E_62) (x_126873 list_407))
	(=>	(and (eval_0 x_126902 x_126873 c_80)
			(eval_0 x_126903 x_126873 b_144)
			(mult_447 x_126901 x_126902 x_126903))
		(eval_0 x_126901 x_126873 (Mul_13 c_80 b_144)))))
(assert (forall ((x_126904 Nat_720) (x_126905 Nat_720) (x_126906 Nat_720) (a_125 E_62) (b_145 E_62) (x_126873 list_407))
	(=>	(and (eval_0 x_126905 x_126873 a_125)
			(eval_0 x_126906 x_126873 b_145)
			(add_481 x_126904 x_126905 x_126906))
		(eval_0 x_126904 x_126873 (Add_480 a_125 b_145)))))
(assert (forall ((n_123 Nat_720) (x_126873 list_407))
	(eval_0 n_123 x_126873 (N_120 n_123))))
(declare-fun x_126874 (list_408 list_408 list_408) Bool)
(assert (forall ((x_126909 list_408) (z_2774 P_616) (xs_906 list_408) (y_3238 list_408))
	(=> (x_126874 x_126909 xs_906 y_3238)
	    (x_126874 (cons_402 z_2774 x_126909) (cons_402 z_2774 xs_906) y_3238))))
(assert (forall ((x_126910 list_408))
	(x_126874 x_126910 nil_469 x_126910)))
(declare-fun opti_0 (P_616 P_616) Bool)
(assert (forall ((c_81 E_62) (q_384 list_408) (r_671 list_408))
	(opti_0 (If_0 c_81 r_671 q_384) (If_0 c_81 q_384 r_671))))
(assert (forall ((x_126913 list_408) (e_63 E_62) (p_617 list_408))
	(=> (x_126874 x_126913 p_617 p_617)
	    (opti_0 (While_0 e_63 x_126913) (While_0 e_63 p_617)))))
(assert (forall ((x_126877 P_616) (x_126880 E_62))
	(opti_0 (Print_0 x_126880) (Print_0 x_126880))))
(assert (forall ((x_126877 P_616) (x_126881 Nat_720) (x_126882 E_62))
	(opti_0 (x_126870 x_126881 x_126882) (x_126870 x_126881 x_126882))))
(declare-fun run_0 (list_407 list_407 list_408) Bool)
(assert (forall ((x_126917 list_407) (x_126918 list_408) (e_64 E_62) (q_385 list_408) (q_386 list_408) (r_672 list_408) (x_126878 list_407))
	(=>	(and (x_126874 x_126918 q_386 r_672)
			(run_0 x_126917 x_126878 x_126918)
			(eval_0 Z_2776 x_126878 e_64))
		(run_0 x_126917 x_126878 (cons_402 (If_0 e_64 q_385 q_386) r_672)))))
(assert (forall ((x_126921 list_407) (x_126922 list_408) (x_126920 Nat_720) (e_64 E_62) (q_385 list_408) (q_386 list_408) (r_672 list_408) (x_126878 list_407))
	(=>	(and (diseqNat_720 x_126920 Z_2776)
			(x_126874 x_126922 q_385 r_672)
			(run_0 x_126921 x_126878 x_126922)
			(eval_0 x_126920 x_126878 e_64))
		(run_0 x_126921 x_126878 (cons_402 (If_0 e_64 q_385 q_386) r_672)))))
(assert (forall ((x_126924 list_407) (x_126925 list_408) (e_65 E_62) (p_618 list_408) (r_672 list_408) (x_126878 list_407))
	(=>	(and (x_126874 x_126925 p_618 (cons_402 (While_0 e_65 p_618) nil_469))
			(run_0 x_126924 x_126878 (cons_402 (If_0 e_65 x_126925 nil_469) r_672)))
		(run_0 x_126924 x_126878 (cons_402 (While_0 e_65 p_618) r_672)))))
(assert (forall ((x_126927 list_407) (x_126928 Nat_720) (x_126929 list_407) (x_126879 Nat_720) (e_66 E_62) (r_672 list_408) (x_126878 list_407))
	(=>	(and (eval_0 x_126928 x_126878 e_66)
			(store_0 x_126929 x_126878 x_126879 x_126928)
			(run_0 x_126927 x_126929 r_672))
		(run_0 x_126927 x_126878 (cons_402 (x_126870 x_126879 e_66) r_672)))))
(assert (forall ((x_126932 Nat_720) (x_126933 list_407) (e_67 E_62) (r_672 list_408) (x_126878 list_407))
	(=>	(and (eval_0 x_126932 x_126878 e_67)
			(run_0 x_126933 x_126878 r_672))
		(run_0 (cons_401 x_126932 x_126933) x_126878 (cons_402 (Print_0 e_67) r_672)))))
(assert (forall ((x_126878 list_407))
	(run_0 nil_468 x_126878 nil_469)))
(assert (forall ((x_126935 list_407) (x_126936 P_616) (x_126937 list_407) (p_619 P_616))
	(=>	(and true
			(diseqlist_401 x_126935 x_126937)
			(run_0 x_126935 nil_468 (cons_402 p_619 nil_469))
			(opti_0 x_126936 p_619)
			(run_0 x_126937 nil_468 (cons_402 x_126936 nil_469)))
		false)))
(check-sat)
