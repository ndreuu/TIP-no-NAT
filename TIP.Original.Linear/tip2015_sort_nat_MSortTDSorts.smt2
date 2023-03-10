(set-logic HORN)
(declare-datatypes ((Bool_209 0)) (((false_209 ) (true_209 ))))
(declare-fun diseqBool_94 (Bool_209 Bool_209) Bool)
(declare-fun isfalse_94 (Bool_209) Bool)
(declare-fun istrue_94 (Bool_209) Bool)
(assert (isfalse_94 false_209))
(assert (istrue_94 true_209))
(assert (diseqBool_94 false_209 true_209))
(assert (diseqBool_94 true_209 false_209))
(declare-fun and_209 (Bool_209 Bool_209 Bool_209) Bool)
(declare-fun or_213 (Bool_209 Bool_209 Bool_209) Bool)
(declare-fun hence_209 (Bool_209 Bool_209 Bool_209) Bool)
(declare-fun not_212 (Bool_209 Bool_209) Bool)
(assert (and_209 false_209 false_209 false_209))
(assert (and_209 false_209 true_209 false_209))
(assert (and_209 false_209 false_209 true_209))
(assert (and_209 true_209 true_209 true_209))
(assert (or_213 false_209 false_209 false_209))
(assert (or_213 true_209 true_209 false_209))
(assert (or_213 true_209 false_209 true_209))
(assert (or_213 true_209 true_209 true_209))
(assert (hence_209 true_209 false_209 false_209))
(assert (hence_209 false_209 true_209 false_209))
(assert (hence_209 true_209 false_209 true_209))
(assert (hence_209 true_209 true_209 true_209))
(assert (not_212 true_209 false_209))
(assert (not_212 false_209 true_209))
(declare-datatypes ((Nat_361 0)) (((zero_81 ) (succ_79 (p_224 Nat_361)))))
(declare-fun diseqNat_361 (Nat_361 Nat_361) Bool)
(declare-fun p_225 (Nat_361 Nat_361) Bool)
(declare-fun iszero_79 (Nat_361) Bool)
(declare-fun issucc_79 (Nat_361) Bool)
(assert (forall ((x_34062 Nat_361))
	(p_225 x_34062 (succ_79 x_34062))))
(assert (iszero_79 zero_81))
(assert (forall ((x_34064 Nat_361))
	(issucc_79 (succ_79 x_34064))))
(assert (forall ((x_34065 Nat_361))
	(diseqNat_361 zero_81 (succ_79 x_34065))))
(assert (forall ((x_34066 Nat_361))
	(diseqNat_361 (succ_79 x_34066) zero_81)))
(assert (forall ((x_34067 Nat_361) (x_34068 Nat_361))
	(=> (diseqNat_361 x_34067 x_34068)
	    (diseqNat_361 (succ_79 x_34067) (succ_79 x_34068)))))
(declare-datatypes ((list_145 0)) (((nil_163 ) (cons_145 (head_290 Nat_361) (tail_290 list_145)))))
(declare-fun diseqlist_145 (list_145 list_145) Bool)
(declare-fun head_291 (Nat_361 list_145) Bool)
(declare-fun tail_291 (list_145 list_145) Bool)
(declare-fun isnil_163 (list_145) Bool)
(declare-fun iscons_145 (list_145) Bool)
(assert (forall ((x_34070 Nat_361) (x_34071 list_145))
	(head_291 x_34070 (cons_145 x_34070 x_34071))))
(assert (forall ((x_34070 Nat_361) (x_34071 list_145))
	(tail_291 x_34071 (cons_145 x_34070 x_34071))))
(assert (isnil_163 nil_163))
(assert (forall ((x_34073 Nat_361) (x_34074 list_145))
	(iscons_145 (cons_145 x_34073 x_34074))))
(assert (forall ((x_34075 Nat_361) (x_34076 list_145))
	(diseqlist_145 nil_163 (cons_145 x_34075 x_34076))))
(assert (forall ((x_34077 Nat_361) (x_34078 list_145))
	(diseqlist_145 (cons_145 x_34077 x_34078) nil_163)))
(assert (forall ((x_34079 Nat_361) (x_34080 list_145) (x_34081 Nat_361) (x_34082 list_145))
	(=> (diseqNat_361 x_34079 x_34081)
	    (diseqlist_145 (cons_145 x_34079 x_34080) (cons_145 x_34081 x_34082)))))
(assert (forall ((x_34079 Nat_361) (x_34080 list_145) (x_34081 Nat_361) (x_34082 list_145))
	(=> (diseqlist_145 x_34080 x_34082)
	    (diseqlist_145 (cons_145 x_34079 x_34080) (cons_145 x_34081 x_34082)))))
(declare-fun take_32 (list_145 Nat_361 list_145) Bool)
(assert (forall ((x_33992 list_145) (z_1219 Nat_361) (xs_387 list_145) (z_1218 Nat_361))
	(=> (take_32 x_33992 z_1218 xs_387)
	    (take_32 (cons_145 z_1219 x_33992) (succ_79 z_1218) (cons_145 z_1219 xs_387)))))
(assert (forall ((z_1218 Nat_361))
	(take_32 nil_163 (succ_79 z_1218) nil_163)))
(assert (forall ((y_1313 list_145))
	(take_32 nil_163 zero_81 y_1313)))
(declare-fun plus_72 (Nat_361 Nat_361 Nat_361) Bool)
(assert (forall ((x_33996 Nat_361) (z_1220 Nat_361) (y_1314 Nat_361))
	(=> (plus_72 x_33996 z_1220 y_1314)
	    (plus_72 (succ_79 x_33996) (succ_79 z_1220) y_1314))))
(assert (forall ((x_33997 Nat_361))
	(plus_72 x_33997 zero_81 x_33997)))
(declare-fun minus_218 (Nat_361 Nat_361 Nat_361) Bool)
(assert (forall ((x_33998 Nat_361) (y_1316 Nat_361) (z_1221 Nat_361))
	(=> (minus_218 x_33998 z_1221 y_1316)
	    (minus_218 x_33998 (succ_79 z_1221) (succ_79 y_1316)))))
(assert (forall ((z_1221 Nat_361))
	(minus_218 zero_81 (succ_79 z_1221) zero_81)))
(assert (forall ((y_1315 Nat_361))
	(minus_218 zero_81 zero_81 y_1315)))
(declare-fun lt_222 (Bool_209 Nat_361 Nat_361) Bool)
(assert (forall ((x_34002 Bool_209) (n_68 Nat_361) (z_1222 Nat_361))
	(=> (lt_222 x_34002 n_68 z_1222)
	    (lt_222 x_34002 (succ_79 n_68) (succ_79 z_1222)))))
(assert (forall ((z_1222 Nat_361))
	(lt_222 true_209 zero_81 (succ_79 z_1222))))
(assert (forall ((x_33973 Nat_361))
	(lt_222 false_209 x_33973 zero_81)))
(declare-fun leq_31 (Bool_209 Nat_361 Nat_361) Bool)
(assert (forall ((x_34006 Bool_209) (x_33975 Nat_361) (z_1223 Nat_361))
	(=> (leq_31 x_34006 z_1223 x_33975)
	    (leq_31 x_34006 (succ_79 z_1223) (succ_79 x_33975)))))
(assert (forall ((z_1223 Nat_361))
	(leq_31 false_209 (succ_79 z_1223) zero_81)))
(assert (forall ((y_1318 Nat_361))
	(leq_31 true_209 zero_81 y_1318)))
(declare-fun lmerge_6 (list_145 list_145 list_145) Bool)
(assert (forall ((x_34012 list_145) (x_33978 Nat_361) (x_33979 list_145) (z_1224 Nat_361) (x_33977 list_145))
	(=>	(and (lmerge_6 x_34012 x_33977 (cons_145 x_33978 x_33979))
			(leq_31 true_209 z_1224 x_33978))
		(lmerge_6 (cons_145 z_1224 x_34012) (cons_145 z_1224 x_33977) (cons_145 x_33978 x_33979)))))
(assert (forall ((x_34015 list_145) (x_33978 Nat_361) (x_33979 list_145) (z_1224 Nat_361) (x_33977 list_145))
	(=>	(and (lmerge_6 x_34015 (cons_145 z_1224 x_33977) x_33979)
			(leq_31 false_209 z_1224 x_33978))
		(lmerge_6 (cons_145 x_33978 x_34015) (cons_145 z_1224 x_33977) (cons_145 x_33978 x_33979)))))
(assert (forall ((z_1224 Nat_361) (x_33977 list_145))
	(lmerge_6 (cons_145 z_1224 x_33977) (cons_145 z_1224 x_33977) nil_163)))
(assert (forall ((x_34017 list_145))
	(lmerge_6 x_34017 nil_163 x_34017)))
(declare-fun ordered_11 (Bool_209 list_145) Bool)
(assert (forall ((x_34018 Bool_209) (x_34019 Bool_209) (x_34020 Bool_209) (y_1321 Nat_361) (xs_388 list_145) (y_1320 Nat_361))
	(=>	(and (leq_31 x_34019 y_1320 y_1321)
			(ordered_11 x_34020 (cons_145 y_1321 xs_388))
			(and_209 x_34018 x_34019 x_34020))
		(ordered_11 x_34018 (cons_145 y_1320 (cons_145 y_1321 xs_388))))))
(assert (forall ((y_1320 Nat_361))
	(ordered_11 true_209 (cons_145 y_1320 nil_163))))
(assert (ordered_11 true_209 nil_163))
(declare-fun length_20 (Nat_361 list_145) Bool)
(assert (forall ((x_34023 Nat_361) (x_34024 Nat_361) (y_1322 Nat_361) (l_22 list_145))
	(=>	(and (length_20 x_34024 l_22)
			(plus_72 x_34023 (succ_79 zero_81) x_34024))
		(length_20 x_34023 (cons_145 y_1322 l_22)))))
(assert (length_20 zero_81 nil_163))
(declare-fun idiv_6 (Nat_361 Nat_361 Nat_361) Bool)
(assert (forall ((x_33982 Nat_361) (y_1323 Nat_361))
	(=> (lt_222 true_209 x_33982 y_1323)
	    (idiv_6 zero_81 x_33982 y_1323))))
(assert (forall ((x_34031 Nat_361) (x_34032 Nat_361) (x_33982 Nat_361) (y_1323 Nat_361))
	(=>	(and (minus_218 x_34031 x_33982 y_1323)
			(idiv_6 x_34032 x_34031 y_1323)
			(lt_222 false_209 x_33982 y_1323))
		(idiv_6 (succ_79 x_34032) x_33982 y_1323))))
(declare-fun drop_34 (list_145 Nat_361 list_145) Bool)
(assert (forall ((x_34033 list_145) (z_1227 Nat_361) (xs_389 list_145) (z_1226 Nat_361))
	(=> (drop_34 x_34033 z_1226 xs_389)
	    (drop_34 x_34033 (succ_79 z_1226) (cons_145 z_1227 xs_389)))))
(assert (forall ((z_1226 Nat_361))
	(drop_34 nil_163 (succ_79 z_1226) nil_163)))
(assert (forall ((x_34036 list_145))
	(drop_34 x_34036 zero_81 x_34036)))
(declare-fun msorttd_3 (list_145 list_145) Bool)
(assert (forall ((x_34039 list_145) (x_34040 list_145) (x_34041 list_145) (x_34042 list_145) (x_34043 list_145) (x_34037 Nat_361) (k_7 Nat_361) (x_33985 Nat_361) (x_33986 list_145) (y_1325 Nat_361))
	(=>	(and (take_32 x_34040 k_7 (cons_145 y_1325 (cons_145 x_33985 x_33986)))
			(msorttd_3 x_34041 x_34040)
			(drop_34 x_34042 k_7 (cons_145 y_1325 (cons_145 x_33985 x_33986)))
			(msorttd_3 x_34043 x_34042)
			(lmerge_6 x_34039 x_34041 x_34043)
			(length_20 x_34037 (cons_145 y_1325 (cons_145 x_33985 x_33986)))
			(idiv_6 k_7 x_34037 (succ_79 (succ_79 zero_81))))
		(msorttd_3 x_34039 (cons_145 y_1325 (cons_145 x_33985 x_33986))))))
(assert (forall ((y_1325 Nat_361))
	(msorttd_3 (cons_145 y_1325 nil_163) (cons_145 y_1325 nil_163))))
(assert (msorttd_3 nil_163 nil_163))
(assert (forall ((x_34047 Nat_361) (x_34048 Nat_361) (x_34049 Nat_361) (x_34050 Nat_361) (x_33987 Nat_361) (y_1326 Nat_361) (z_1229 Nat_361))
	(=>	(and true
			(diseqNat_361 x_34048 x_34050)
			(plus_72 x_34047 y_1326 z_1229)
			(plus_72 x_34048 x_33987 x_34047)
			(plus_72 x_34049 x_33987 y_1326)
			(plus_72 x_34050 x_34049 z_1229))
		false)))
(assert (forall ((x_34051 Nat_361) (x_34052 Nat_361) (x_33988 Nat_361) (y_1327 Nat_361))
	(=>	(and true
			(diseqNat_361 x_34051 x_34052)
			(plus_72 x_34051 x_33988 y_1327)
			(plus_72 x_34052 y_1327 x_33988))
		false)))
(assert (forall ((x_34053 Nat_361) (x_33989 Nat_361))
	(=>	(and true
			(diseqNat_361 x_34053 x_33989)
			(plus_72 x_34053 x_33989 zero_81))
		false)))
(assert (forall ((x_34054 Nat_361) (x_33990 Nat_361))
	(=>	(and true
			(diseqNat_361 x_34054 x_33990)
			(plus_72 x_34054 zero_81 x_33990))
		false)))
(assert (forall ((x_34055 list_145) (xs_390 list_145))
	(=>	(and true
			(msorttd_3 x_34055 xs_390)
			(ordered_11 false_209 x_34055))
		false)))
(check-sat)
