(set-logic HORN)
(declare-datatypes ((Nat_33 0)) (((Z_94 ) (S_33 (unS_34 Nat_33)))))
(declare-fun diseqNat_33 (Nat_33 Nat_33) Bool)
(declare-fun unS_35 (Nat_33 Nat_33) Bool)
(declare-fun isZ_33 (Nat_33) Bool)
(declare-fun isS_33 (Nat_33) Bool)
(assert (forall ((x_1038 Nat_33))
	(unS_35 x_1038 (S_33 x_1038))))
(assert (isZ_33 Z_94))
(assert (forall ((x_1040 Nat_33))
	(isS_33 (S_33 x_1040))))
(assert (forall ((x_1041 Nat_33))
	(diseqNat_33 Z_94 (S_33 x_1041))))
(assert (forall ((x_1042 Nat_33))
	(diseqNat_33 (S_33 x_1042) Z_94)))
(assert (forall ((x_1043 Nat_33) (x_1044 Nat_33))
	(=> (diseqNat_33 x_1043 x_1044)
	    (diseqNat_33 (S_33 x_1043) (S_33 x_1044)))))
(declare-fun add_17 (Nat_33 Nat_33 Nat_33) Bool)
(declare-fun minus_17 (Nat_33 Nat_33 Nat_33) Bool)
(declare-fun le_17 (Nat_33 Nat_33) Bool)
(declare-fun ge_17 (Nat_33 Nat_33) Bool)
(declare-fun lt_17 (Nat_33 Nat_33) Bool)
(declare-fun gt_17 (Nat_33 Nat_33) Bool)
(declare-fun mult_17 (Nat_33 Nat_33 Nat_33) Bool)
(declare-fun div_17 (Nat_33 Nat_33 Nat_33) Bool)
(declare-fun mod_17 (Nat_33 Nat_33 Nat_33) Bool)
(assert (forall ((y_75 Nat_33))
	(add_17 y_75 Z_94 y_75)))
(assert (forall ((x_1014 Nat_33) (y_75 Nat_33) (r_17 Nat_33))
	(=> (add_17 r_17 x_1014 y_75)
	    (add_17 (S_33 r_17) (S_33 x_1014) y_75))))
(assert (forall ((y_75 Nat_33))
	(minus_17 Z_94 Z_94 y_75)))
(assert (forall ((x_1014 Nat_33) (y_75 Nat_33) (r_17 Nat_33))
	(=> (minus_17 r_17 x_1014 y_75)
	    (minus_17 (S_33 r_17) (S_33 x_1014) y_75))))
(assert (forall ((y_75 Nat_33))
	(le_17 Z_94 y_75)))
(assert (forall ((x_1014 Nat_33) (y_75 Nat_33))
	(=> (le_17 x_1014 y_75)
	    (le_17 (S_33 x_1014) (S_33 y_75)))))
(assert (forall ((y_75 Nat_33))
	(ge_17 y_75 Z_94)))
(assert (forall ((x_1014 Nat_33) (y_75 Nat_33))
	(=> (ge_17 x_1014 y_75)
	    (ge_17 (S_33 x_1014) (S_33 y_75)))))
(assert (forall ((y_75 Nat_33))
	(lt_17 Z_94 (S_33 y_75))))
(assert (forall ((x_1014 Nat_33) (y_75 Nat_33))
	(=> (lt_17 x_1014 y_75)
	    (lt_17 (S_33 x_1014) (S_33 y_75)))))
(assert (forall ((y_75 Nat_33))
	(gt_17 (S_33 y_75) Z_94)))
(assert (forall ((x_1014 Nat_33) (y_75 Nat_33))
	(=> (gt_17 x_1014 y_75)
	    (gt_17 (S_33 x_1014) (S_33 y_75)))))
(assert (forall ((y_75 Nat_33))
	(mult_17 Z_94 Z_94 y_75)))
(assert (forall ((x_1014 Nat_33) (y_75 Nat_33) (r_17 Nat_33) (z_95 Nat_33))
	(=>	(and (mult_17 r_17 x_1014 y_75)
			(add_17 z_95 r_17 y_75))
		(mult_17 z_95 (S_33 x_1014) y_75))))
(assert (forall ((x_1014 Nat_33) (y_75 Nat_33))
	(=> (lt_17 x_1014 y_75)
	    (div_17 Z_94 x_1014 y_75))))
(assert (forall ((x_1014 Nat_33) (y_75 Nat_33) (r_17 Nat_33) (z_95 Nat_33))
	(=>	(and (ge_17 x_1014 y_75)
			(minus_17 z_95 x_1014 y_75)
			(div_17 r_17 z_95 y_75))
		(div_17 (S_33 r_17) x_1014 y_75))))
(assert (forall ((x_1014 Nat_33) (y_75 Nat_33))
	(=> (lt_17 x_1014 y_75)
	    (mod_17 x_1014 x_1014 y_75))))
(assert (forall ((x_1014 Nat_33) (y_75 Nat_33) (r_17 Nat_33) (z_95 Nat_33))
	(=>	(and (ge_17 x_1014 y_75)
			(minus_17 z_95 x_1014 y_75)
			(mod_17 r_17 z_95 y_75))
		(mod_17 r_17 x_1014 y_75))))
(declare-datatypes ((list_20 0)) (((nil_20 ) (cons_20 (head_40 Nat_33) (tail_40 list_20)))))
(declare-fun diseqlist_20 (list_20 list_20) Bool)
(declare-fun head_41 (Nat_33 list_20) Bool)
(declare-fun tail_41 (list_20 list_20) Bool)
(declare-fun isnil_20 (list_20) Bool)
(declare-fun iscons_20 (list_20) Bool)
(assert (forall ((x_1016 Nat_33) (x_1017 list_20))
	(head_41 x_1016 (cons_20 x_1016 x_1017))))
(assert (forall ((x_1016 Nat_33) (x_1017 list_20))
	(tail_41 x_1017 (cons_20 x_1016 x_1017))))
(assert (isnil_20 nil_20))
(assert (forall ((x_1019 Nat_33) (x_1020 list_20))
	(iscons_20 (cons_20 x_1019 x_1020))))
(assert (forall ((x_1021 Nat_33) (x_1022 list_20))
	(diseqlist_20 nil_20 (cons_20 x_1021 x_1022))))
(assert (forall ((x_1023 Nat_33) (x_1024 list_20))
	(diseqlist_20 (cons_20 x_1023 x_1024) nil_20)))
(assert (forall ((x_1025 Nat_33) (x_1026 list_20) (x_1027 Nat_33) (x_1028 list_20))
	(=> (diseqNat_33 x_1025 x_1027)
	    (diseqlist_20 (cons_20 x_1025 x_1026) (cons_20 x_1027 x_1028)))))
(assert (forall ((x_1025 Nat_33) (x_1026 list_20) (x_1027 Nat_33) (x_1028 list_20))
	(=> (diseqlist_20 x_1026 x_1028)
	    (diseqlist_20 (cons_20 x_1025 x_1026) (cons_20 x_1027 x_1028)))))
(declare-datatypes ((Nat_32 0)) (((Z_90 ) (S_32 (projS_30 Nat_32)))))
(declare-fun diseqNat_32 (Nat_32 Nat_32) Bool)
(declare-fun projS_31 (Nat_32 Nat_32) Bool)
(declare-fun isZ_32 (Nat_32) Bool)
(declare-fun isS_32 (Nat_32) Bool)
(assert (forall ((x_1030 Nat_32))
	(projS_31 x_1030 (S_32 x_1030))))
(assert (isZ_32 Z_90))
(assert (forall ((x_1032 Nat_32))
	(isS_32 (S_32 x_1032))))
(assert (forall ((x_1033 Nat_32))
	(diseqNat_32 Z_90 (S_32 x_1033))))
(assert (forall ((x_1034 Nat_32))
	(diseqNat_32 (S_32 x_1034) Z_90)))
(assert (forall ((x_1035 Nat_32) (x_1036 Nat_32))
	(=> (diseqNat_32 x_1035 x_1036)
	    (diseqNat_32 (S_32 x_1035) (S_32 x_1036)))))
(declare-fun take_3 (list_20 Nat_32 list_20) Bool)
(assert (forall ((x_996 list_20) (x_986 Nat_33) (x_987 list_20) (z_91 Nat_32))
	(=> (take_3 x_996 z_91 x_987)
	    (take_3 (cons_20 x_986 x_996) (S_32 z_91) (cons_20 x_986 x_987)))))
(assert (forall ((z_91 Nat_32))
	(take_3 nil_20 (S_32 z_91) nil_20)))
(assert (forall ((y_71 list_20))
	(take_3 nil_20 Z_90 y_71)))
(declare-fun len_3 (Nat_32 list_20) Bool)
(assert (forall ((x_1000 Nat_32) (y_72 Nat_33) (xs_23 list_20))
	(=> (len_3 x_1000 xs_23)
	    (len_3 (S_32 x_1000) (cons_20 y_72 xs_23)))))
(assert (len_3 Z_90 nil_20))
(declare-fun butlast_0 (list_20 list_20) Bool)
(assert (forall ((x_1003 list_20) (x_990 Nat_33) (x_991 list_20) (y_73 Nat_33))
	(=> (butlast_0 x_1003 (cons_20 x_990 x_991))
	    (butlast_0 (cons_20 y_73 x_1003) (cons_20 y_73 (cons_20 x_990 x_991))))))
(assert (forall ((y_73 Nat_33))
	(butlast_0 nil_20 (cons_20 y_73 nil_20))))
(assert (butlast_0 nil_20 nil_20))
(declare-fun x_992 (Nat_32 Nat_32 Nat_32) Bool)
(assert (forall ((x_1006 Nat_32) (x_994 Nat_32) (z_93 Nat_32))
	(=> (x_992 x_1006 z_93 x_994)
	    (x_992 x_1006 (S_32 z_93) (S_32 x_994)))))
(assert (forall ((z_93 Nat_32))
	(x_992 (S_32 z_93) (S_32 z_93) Z_90)))
(assert (forall ((y_74 Nat_32))
	(x_992 Z_90 Z_90 y_74)))
(assert (forall ((x_1010 list_20) (x_1011 Nat_32) (x_1012 Nat_32) (x_1013 list_20) (xs_24 list_20))
	(=>	(and true
			(diseqlist_20 x_1010 x_1013)
			(butlast_0 x_1010 xs_24)
			(len_3 x_1011 xs_24)
			(x_992 x_1012 x_1011 (S_32 Z_90))
			(take_3 x_1013 x_1012 xs_24))
		false)))
(check-sat)
