(set-logic HORN)
(declare-datatypes ((Nat_113 0)) (((Z_319 ) (S_113 (unS_116 Nat_113)))))
(declare-fun diseqNat_113 (Nat_113 Nat_113) Bool)
(declare-fun unS_117 (Nat_113 Nat_113) Bool)
(declare-fun isZ_113 (Nat_113) Bool)
(declare-fun isS_113 (Nat_113) Bool)
(assert (forall ((x_3127 Nat_113))
	(unS_117 x_3127 (S_113 x_3127))))
(assert (isZ_113 Z_319))
(assert (forall ((x_3129 Nat_113))
	(isS_113 (S_113 x_3129))))
(assert (forall ((x_3130 Nat_113))
	(diseqNat_113 Z_319 (S_113 x_3130))))
(assert (forall ((x_3131 Nat_113))
	(diseqNat_113 (S_113 x_3131) Z_319)))
(assert (forall ((x_3132 Nat_113) (x_3133 Nat_113))
	(=> (diseqNat_113 x_3132 x_3133)
	    (diseqNat_113 (S_113 x_3132) (S_113 x_3133)))))
(declare-fun add_58 (Nat_113 Nat_113 Nat_113) Bool)
(declare-fun minus_58 (Nat_113 Nat_113 Nat_113) Bool)
(declare-fun le_58 (Nat_113 Nat_113) Bool)
(declare-fun ge_58 (Nat_113 Nat_113) Bool)
(declare-fun lt_58 (Nat_113 Nat_113) Bool)
(declare-fun gt_58 (Nat_113 Nat_113) Bool)
(declare-fun mult_58 (Nat_113 Nat_113 Nat_113) Bool)
(declare-fun div_58 (Nat_113 Nat_113 Nat_113) Bool)
(declare-fun mod_58 (Nat_113 Nat_113 Nat_113) Bool)
(assert (forall ((y_252 Nat_113))
	(add_58 y_252 Z_319 y_252)))
(assert (forall ((x_3103 Nat_113) (y_252 Nat_113) (r_58 Nat_113))
	(=> (add_58 r_58 x_3103 y_252)
	    (add_58 (S_113 r_58) (S_113 x_3103) y_252))))
(assert (forall ((y_252 Nat_113))
	(minus_58 Z_319 Z_319 y_252)))
(assert (forall ((x_3103 Nat_113) (y_252 Nat_113) (r_58 Nat_113))
	(=> (minus_58 r_58 x_3103 y_252)
	    (minus_58 (S_113 r_58) (S_113 x_3103) y_252))))
(assert (forall ((y_252 Nat_113))
	(le_58 Z_319 y_252)))
(assert (forall ((x_3103 Nat_113) (y_252 Nat_113))
	(=> (le_58 x_3103 y_252)
	    (le_58 (S_113 x_3103) (S_113 y_252)))))
(assert (forall ((y_252 Nat_113))
	(ge_58 y_252 Z_319)))
(assert (forall ((x_3103 Nat_113) (y_252 Nat_113))
	(=> (ge_58 x_3103 y_252)
	    (ge_58 (S_113 x_3103) (S_113 y_252)))))
(assert (forall ((y_252 Nat_113))
	(lt_58 Z_319 (S_113 y_252))))
(assert (forall ((x_3103 Nat_113) (y_252 Nat_113))
	(=> (lt_58 x_3103 y_252)
	    (lt_58 (S_113 x_3103) (S_113 y_252)))))
(assert (forall ((y_252 Nat_113))
	(gt_58 (S_113 y_252) Z_319)))
(assert (forall ((x_3103 Nat_113) (y_252 Nat_113))
	(=> (gt_58 x_3103 y_252)
	    (gt_58 (S_113 x_3103) (S_113 y_252)))))
(assert (forall ((y_252 Nat_113))
	(mult_58 Z_319 Z_319 y_252)))
(assert (forall ((x_3103 Nat_113) (y_252 Nat_113) (r_58 Nat_113) (z_320 Nat_113))
	(=>	(and (mult_58 r_58 x_3103 y_252)
			(add_58 z_320 r_58 y_252))
		(mult_58 z_320 (S_113 x_3103) y_252))))
(assert (forall ((x_3103 Nat_113) (y_252 Nat_113))
	(=> (lt_58 x_3103 y_252)
	    (div_58 Z_319 x_3103 y_252))))
(assert (forall ((x_3103 Nat_113) (y_252 Nat_113) (r_58 Nat_113) (z_320 Nat_113))
	(=>	(and (ge_58 x_3103 y_252)
			(minus_58 z_320 x_3103 y_252)
			(div_58 r_58 z_320 y_252))
		(div_58 (S_113 r_58) x_3103 y_252))))
(assert (forall ((x_3103 Nat_113) (y_252 Nat_113))
	(=> (lt_58 x_3103 y_252)
	    (mod_58 x_3103 x_3103 y_252))))
(assert (forall ((x_3103 Nat_113) (y_252 Nat_113) (r_58 Nat_113) (z_320 Nat_113))
	(=>	(and (ge_58 x_3103 y_252)
			(minus_58 z_320 x_3103 y_252)
			(mod_58 r_58 z_320 y_252))
		(mod_58 r_58 x_3103 y_252))))
(declare-datatypes ((list_52 0)) (((nil_52 ) (cons_52 (head_104 Nat_113) (tail_104 list_52)))))
(declare-fun diseqlist_52 (list_52 list_52) Bool)
(declare-fun head_105 (Nat_113 list_52) Bool)
(declare-fun tail_105 (list_52 list_52) Bool)
(declare-fun isnil_52 (list_52) Bool)
(declare-fun iscons_52 (list_52) Bool)
(assert (forall ((x_3105 Nat_113) (x_3106 list_52))
	(head_105 x_3105 (cons_52 x_3105 x_3106))))
(assert (forall ((x_3105 Nat_113) (x_3106 list_52))
	(tail_105 x_3106 (cons_52 x_3105 x_3106))))
(assert (isnil_52 nil_52))
(assert (forall ((x_3108 Nat_113) (x_3109 list_52))
	(iscons_52 (cons_52 x_3108 x_3109))))
(assert (forall ((x_3110 Nat_113) (x_3111 list_52))
	(diseqlist_52 nil_52 (cons_52 x_3110 x_3111))))
(assert (forall ((x_3112 Nat_113) (x_3113 list_52))
	(diseqlist_52 (cons_52 x_3112 x_3113) nil_52)))
(assert (forall ((x_3114 Nat_113) (x_3115 list_52) (x_3116 Nat_113) (x_3117 list_52))
	(=> (diseqNat_113 x_3114 x_3116)
	    (diseqlist_52 (cons_52 x_3114 x_3115) (cons_52 x_3116 x_3117)))))
(assert (forall ((x_3114 Nat_113) (x_3115 list_52) (x_3116 Nat_113) (x_3117 list_52))
	(=> (diseqlist_52 x_3115 x_3117)
	    (diseqlist_52 (cons_52 x_3114 x_3115) (cons_52 x_3116 x_3117)))))
(declare-datatypes ((Nat_112 0)) (((Z_317 ) (S_112 (projS_108 Nat_112)))))
(declare-fun diseqNat_112 (Nat_112 Nat_112) Bool)
(declare-fun projS_109 (Nat_112 Nat_112) Bool)
(declare-fun isZ_112 (Nat_112) Bool)
(declare-fun isS_112 (Nat_112) Bool)
(assert (forall ((x_3119 Nat_112))
	(projS_109 x_3119 (S_112 x_3119))))
(assert (isZ_112 Z_317))
(assert (forall ((x_3121 Nat_112))
	(isS_112 (S_112 x_3121))))
(assert (forall ((x_3122 Nat_112))
	(diseqNat_112 Z_317 (S_112 x_3122))))
(assert (forall ((x_3123 Nat_112))
	(diseqNat_112 (S_112 x_3123) Z_317)))
(assert (forall ((x_3124 Nat_112) (x_3125 Nat_112))
	(=> (diseqNat_112 x_3124 x_3125)
	    (diseqNat_112 (S_112 x_3124) (S_112 x_3125)))))
(declare-fun drop_11 (list_52 Nat_112 list_52) Bool)
(assert (forall ((x_3098 list_52) (x_3096 Nat_113) (x_3097 list_52) (z_318 Nat_112))
	(=> (drop_11 x_3098 z_318 x_3097)
	    (drop_11 x_3098 (S_112 z_318) (cons_52 x_3096 x_3097)))))
(assert (forall ((z_318 Nat_112))
	(drop_11 nil_52 (S_112 z_318) nil_52)))
(assert (forall ((x_3101 list_52))
	(drop_11 x_3101 Z_317 x_3101)))
(assert (forall ((x_3102 list_52) (xs_95 list_52))
	(=>	(and true
			(diseqlist_52 x_3102 xs_95)
			(drop_11 x_3102 Z_317 xs_95))
		false)))
(check-sat)
