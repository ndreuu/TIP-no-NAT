(set-logic HORN)
(declare-datatypes ((Bool_20 0)) (((false_20 ) (true_20 ))))
(declare-fun diseqBool_6 (Bool_20 Bool_20) Bool)
(declare-fun isfalse_6 (Bool_20) Bool)
(declare-fun istrue_6 (Bool_20) Bool)
(assert (isfalse_6 false_20))
(assert (istrue_6 true_20))
(assert (diseqBool_6 false_20 true_20))
(assert (diseqBool_6 true_20 false_20))
(declare-fun and_20 (Bool_20 Bool_20 Bool_20) Bool)
(declare-fun or_20 (Bool_20 Bool_20 Bool_20) Bool)
(declare-fun hence_20 (Bool_20 Bool_20 Bool_20) Bool)
(declare-fun not_20 (Bool_20 Bool_20) Bool)
(assert (and_20 false_20 false_20 false_20))
(assert (and_20 false_20 true_20 false_20))
(assert (and_20 false_20 false_20 true_20))
(assert (and_20 true_20 true_20 true_20))
(assert (or_20 false_20 false_20 false_20))
(assert (or_20 true_20 true_20 false_20))
(assert (or_20 true_20 false_20 true_20))
(assert (or_20 true_20 true_20 true_20))
(assert (hence_20 true_20 false_20 false_20))
(assert (hence_20 false_20 true_20 false_20))
(assert (hence_20 true_20 false_20 true_20))
(assert (hence_20 true_20 true_20 true_20))
(assert (not_20 true_20 false_20))
(assert (not_20 false_20 true_20))
(declare-datatypes ((Nat_37 0)) (((Z_107 ) (S_37 (projS_34 Nat_37)))))
(declare-fun diseqNat_37 (Nat_37 Nat_37) Bool)
(declare-fun projS_35 (Nat_37 Nat_37) Bool)
(declare-fun isZ_37 (Nat_37) Bool)
(declare-fun isS_37 (Nat_37) Bool)
(assert (forall ((x_1169 Nat_37))
	(projS_35 x_1169 (S_37 x_1169))))
(assert (isZ_37 Z_107))
(assert (forall ((x_1171 Nat_37))
	(isS_37 (S_37 x_1171))))
(assert (forall ((x_1172 Nat_37))
	(diseqNat_37 Z_107 (S_37 x_1172))))
(assert (forall ((x_1173 Nat_37))
	(diseqNat_37 (S_37 x_1173) Z_107)))
(assert (forall ((x_1174 Nat_37) (x_1175 Nat_37))
	(=> (diseqNat_37 x_1174 x_1175)
	    (diseqNat_37 (S_37 x_1174) (S_37 x_1175)))))
(declare-fun min_1 (Nat_37 Nat_37 Nat_37) Bool)
(assert (forall ((x_1150 Nat_37) (y_85 Nat_37) (z_108 Nat_37))
	(=> (min_1 x_1150 z_108 y_85)
	    (min_1 (S_37 x_1150) (S_37 z_108) (S_37 y_85)))))
(assert (forall ((z_108 Nat_37))
	(min_1 Z_107 (S_37 z_108) Z_107)))
(assert (forall ((y_84 Nat_37))
	(min_1 Z_107 Z_107 y_84)))
(declare-fun x_1143 (Bool_20 Nat_37 Nat_37) Bool)
(assert (forall ((x_1153 Bool_20) (y_87 Nat_37) (x_1145 Nat_37))
	(=> (x_1143 x_1153 x_1145 y_87)
	    (x_1143 x_1153 (S_37 x_1145) (S_37 y_87)))))
(assert (forall ((x_1145 Nat_37))
	(x_1143 false_20 (S_37 x_1145) Z_107)))
(assert (forall ((z_109 Nat_37))
	(x_1143 false_20 Z_107 (S_37 z_109))))
(assert (x_1143 true_20 Z_107 Z_107))
(declare-fun x_1146 (Bool_20 Nat_37 Nat_37) Bool)
(assert (forall ((x_1158 Bool_20) (x_1148 Nat_37) (z_110 Nat_37))
	(=> (x_1146 x_1158 z_110 x_1148)
	    (x_1146 x_1158 (S_37 z_110) (S_37 x_1148)))))
(assert (forall ((z_110 Nat_37))
	(x_1146 false_20 (S_37 z_110) Z_107)))
(assert (forall ((y_88 Nat_37))
	(x_1146 true_20 Z_107 y_88)))
(assert (forall ((x_1162 Nat_37) (x_1163 Bool_20) (x_1164 Bool_20) (a_2 Nat_37) (b_2 Nat_37))
	(=>	(and true
			(diseqBool_6 x_1163 x_1164)
			(min_1 x_1162 a_2 b_2)
			(x_1143 x_1163 x_1162 a_2)
			(x_1146 x_1164 a_2 b_2))
		false)))
(check-sat)