(set-logic HORN)
(declare-datatypes ((Nat_40 0)) (((Z_115 ) (S_40 (unS_42 Nat_40)))))
(declare-fun diseqNat_40 (Nat_40 Nat_40) Bool)
(declare-fun unS_43 (Nat_40 Nat_40) Bool)
(declare-fun isZ_40 (Nat_40) Bool)
(declare-fun isS_40 (Nat_40) Bool)
(assert (forall ((x_1218 Nat_40))
	(unS_43 x_1218 (S_40 x_1218))))
(assert (isZ_40 Z_115))
(assert (forall ((x_1220 Nat_40))
	(isS_40 (S_40 x_1220))))
(assert (forall ((x_1221 Nat_40))
	(diseqNat_40 Z_115 (S_40 x_1221))))
(assert (forall ((x_1222 Nat_40))
	(diseqNat_40 (S_40 x_1222) Z_115)))
(assert (forall ((x_1223 Nat_40) (x_1224 Nat_40))
	(=> (diseqNat_40 x_1223 x_1224)
	    (diseqNat_40 (S_40 x_1223) (S_40 x_1224)))))
(declare-fun add_21 (Nat_40 Nat_40 Nat_40) Bool)
(declare-fun minus_21 (Nat_40 Nat_40 Nat_40) Bool)
(declare-fun le_21 (Nat_40 Nat_40) Bool)
(declare-fun ge_21 (Nat_40 Nat_40) Bool)
(declare-fun lt_21 (Nat_40 Nat_40) Bool)
(declare-fun gt_21 (Nat_40 Nat_40) Bool)
(declare-fun mult_21 (Nat_40 Nat_40 Nat_40) Bool)
(declare-fun div_21 (Nat_40 Nat_40 Nat_40) Bool)
(declare-fun mod_21 (Nat_40 Nat_40 Nat_40) Bool)
(assert (forall ((y_91 Nat_40))
	(add_21 y_91 Z_115 y_91)))
(assert (forall ((x_1194 Nat_40) (y_91 Nat_40) (r_21 Nat_40))
	(=> (add_21 r_21 x_1194 y_91)
	    (add_21 (S_40 r_21) (S_40 x_1194) y_91))))
(assert (forall ((y_91 Nat_40))
	(minus_21 Z_115 Z_115 y_91)))
(assert (forall ((x_1194 Nat_40) (y_91 Nat_40) (r_21 Nat_40))
	(=> (minus_21 r_21 x_1194 y_91)
	    (minus_21 (S_40 r_21) (S_40 x_1194) y_91))))
(assert (forall ((y_91 Nat_40))
	(le_21 Z_115 y_91)))
(assert (forall ((x_1194 Nat_40) (y_91 Nat_40))
	(=> (le_21 x_1194 y_91)
	    (le_21 (S_40 x_1194) (S_40 y_91)))))
(assert (forall ((y_91 Nat_40))
	(ge_21 y_91 Z_115)))
(assert (forall ((x_1194 Nat_40) (y_91 Nat_40))
	(=> (ge_21 x_1194 y_91)
	    (ge_21 (S_40 x_1194) (S_40 y_91)))))
(assert (forall ((y_91 Nat_40))
	(lt_21 Z_115 (S_40 y_91))))
(assert (forall ((x_1194 Nat_40) (y_91 Nat_40))
	(=> (lt_21 x_1194 y_91)
	    (lt_21 (S_40 x_1194) (S_40 y_91)))))
(assert (forall ((y_91 Nat_40))
	(gt_21 (S_40 y_91) Z_115)))
(assert (forall ((x_1194 Nat_40) (y_91 Nat_40))
	(=> (gt_21 x_1194 y_91)
	    (gt_21 (S_40 x_1194) (S_40 y_91)))))
(assert (forall ((y_91 Nat_40))
	(mult_21 Z_115 Z_115 y_91)))
(assert (forall ((x_1194 Nat_40) (y_91 Nat_40) (r_21 Nat_40) (z_116 Nat_40))
	(=>	(and (mult_21 r_21 x_1194 y_91)
			(add_21 z_116 r_21 y_91))
		(mult_21 z_116 (S_40 x_1194) y_91))))
(assert (forall ((x_1194 Nat_40) (y_91 Nat_40))
	(=> (lt_21 x_1194 y_91)
	    (div_21 Z_115 x_1194 y_91))))
(assert (forall ((x_1194 Nat_40) (y_91 Nat_40) (r_21 Nat_40) (z_116 Nat_40))
	(=>	(and (ge_21 x_1194 y_91)
			(minus_21 z_116 x_1194 y_91)
			(div_21 r_21 z_116 y_91))
		(div_21 (S_40 r_21) x_1194 y_91))))
(assert (forall ((x_1194 Nat_40) (y_91 Nat_40))
	(=> (lt_21 x_1194 y_91)
	    (mod_21 x_1194 x_1194 y_91))))
(assert (forall ((x_1194 Nat_40) (y_91 Nat_40) (r_21 Nat_40) (z_116 Nat_40))
	(=>	(and (ge_21 x_1194 y_91)
			(minus_21 z_116 x_1194 y_91)
			(mod_21 r_21 z_116 y_91))
		(mod_21 r_21 x_1194 y_91))))
(declare-datatypes ((list_23 0)) (((nil_23 ) (cons_23 (head_46 Nat_40) (tail_46 list_23)))))
(declare-fun diseqlist_23 (list_23 list_23) Bool)
(declare-fun head_47 (Nat_40 list_23) Bool)
(declare-fun tail_47 (list_23 list_23) Bool)
(declare-fun isnil_23 (list_23) Bool)
(declare-fun iscons_23 (list_23) Bool)
(assert (forall ((x_1196 Nat_40) (x_1197 list_23))
	(head_47 x_1196 (cons_23 x_1196 x_1197))))
(assert (forall ((x_1196 Nat_40) (x_1197 list_23))
	(tail_47 x_1197 (cons_23 x_1196 x_1197))))
(assert (isnil_23 nil_23))
(assert (forall ((x_1199 Nat_40) (x_1200 list_23))
	(iscons_23 (cons_23 x_1199 x_1200))))
(assert (forall ((x_1201 Nat_40) (x_1202 list_23))
	(diseqlist_23 nil_23 (cons_23 x_1201 x_1202))))
(assert (forall ((x_1203 Nat_40) (x_1204 list_23))
	(diseqlist_23 (cons_23 x_1203 x_1204) nil_23)))
(assert (forall ((x_1205 Nat_40) (x_1206 list_23) (x_1207 Nat_40) (x_1208 list_23))
	(=> (diseqNat_40 x_1205 x_1207)
	    (diseqlist_23 (cons_23 x_1205 x_1206) (cons_23 x_1207 x_1208)))))
(assert (forall ((x_1205 Nat_40) (x_1206 list_23) (x_1207 Nat_40) (x_1208 list_23))
	(=> (diseqlist_23 x_1206 x_1208)
	    (diseqlist_23 (cons_23 x_1205 x_1206) (cons_23 x_1207 x_1208)))))
(declare-datatypes ((Nat_39 0)) (((Z_113 ) (S_39 (projS_36 Nat_39)))))
(declare-fun diseqNat_39 (Nat_39 Nat_39) Bool)
(declare-fun projS_37 (Nat_39 Nat_39) Bool)
(declare-fun isZ_39 (Nat_39) Bool)
(declare-fun isS_39 (Nat_39) Bool)
(assert (forall ((x_1210 Nat_39))
	(projS_37 x_1210 (S_39 x_1210))))
(assert (isZ_39 Z_113))
(assert (forall ((x_1212 Nat_39))
	(isS_39 (S_39 x_1212))))
(assert (forall ((x_1213 Nat_39))
	(diseqNat_39 Z_113 (S_39 x_1213))))
(assert (forall ((x_1214 Nat_39))
	(diseqNat_39 (S_39 x_1214) Z_113)))
(assert (forall ((x_1215 Nat_39) (x_1216 Nat_39))
	(=> (diseqNat_39 x_1215 x_1216)
	    (diseqNat_39 (S_39 x_1215) (S_39 x_1216)))))
(declare-fun take_4 (list_23 Nat_39 list_23) Bool)
(assert (forall ((x_1189 list_23) (x_1185 Nat_40) (x_1186 list_23) (z_114 Nat_39))
	(=> (take_4 x_1189 z_114 x_1186)
	    (take_4 (cons_23 x_1185 x_1189) (S_39 z_114) (cons_23 x_1185 x_1186)))))
(assert (forall ((z_114 Nat_39))
	(take_4 nil_23 (S_39 z_114) nil_23)))
(assert (forall ((y_90 list_23))
	(take_4 nil_23 Z_113 y_90)))
(assert (forall ((x_1192 list_23) (x_1193 list_23) (n_8 Nat_39) (x_1187 Nat_40) (xs_29 list_23))
	(=>	(and true
			(diseqlist_23 x_1192 (cons_23 x_1187 x_1193))
			(take_4 x_1192 (S_39 n_8) (cons_23 x_1187 xs_29))
			(take_4 x_1193 n_8 xs_29))
		false)))
(check-sat)