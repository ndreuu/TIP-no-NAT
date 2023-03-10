(set-logic HORN)
(declare-datatypes ((Bool_122 0)) (((false_122 ) (true_122 ))))
(declare-fun diseqBool_54 (Bool_122 Bool_122) Bool)
(declare-fun isfalse_54 (Bool_122) Bool)
(declare-fun istrue_54 (Bool_122) Bool)
(assert (isfalse_54 false_122))
(assert (istrue_54 true_122))
(assert (diseqBool_54 false_122 true_122))
(assert (diseqBool_54 true_122 false_122))
(declare-fun and_122 (Bool_122 Bool_122 Bool_122) Bool)
(declare-fun or_123 (Bool_122 Bool_122 Bool_122) Bool)
(declare-fun hence_122 (Bool_122 Bool_122 Bool_122) Bool)
(declare-fun not_122 (Bool_122 Bool_122) Bool)
(assert (and_122 false_122 false_122 false_122))
(assert (and_122 false_122 true_122 false_122))
(assert (and_122 false_122 false_122 true_122))
(assert (and_122 true_122 true_122 true_122))
(assert (or_123 false_122 false_122 false_122))
(assert (or_123 true_122 true_122 false_122))
(assert (or_123 true_122 false_122 true_122))
(assert (or_123 true_122 true_122 true_122))
(assert (hence_122 true_122 false_122 false_122))
(assert (hence_122 false_122 true_122 false_122))
(assert (hence_122 true_122 false_122 true_122))
(assert (hence_122 true_122 true_122 true_122))
(assert (not_122 true_122 false_122))
(assert (not_122 false_122 true_122))
(declare-datatypes ((Nat_222 0)) (((zero_27 ) (succ_27 (p_77 Nat_222)))))
(declare-fun diseqNat_222 (Nat_222 Nat_222) Bool)
(declare-fun p_78 (Nat_222 Nat_222) Bool)
(declare-fun iszero_27 (Nat_222) Bool)
(declare-fun issucc_27 (Nat_222) Bool)
(assert (forall ((x_17947 Nat_222))
	(p_78 x_17947 (succ_27 x_17947))))
(assert (iszero_27 zero_27))
(assert (forall ((x_17949 Nat_222))
	(issucc_27 (succ_27 x_17949))))
(assert (forall ((x_17950 Nat_222))
	(diseqNat_222 zero_27 (succ_27 x_17950))))
(assert (forall ((x_17951 Nat_222))
	(diseqNat_222 (succ_27 x_17951) zero_27)))
(assert (forall ((x_17952 Nat_222) (x_17953 Nat_222))
	(=> (diseqNat_222 x_17952 x_17953)
	    (diseqNat_222 (succ_27 x_17952) (succ_27 x_17953)))))
(declare-fun leq_10 (Bool_122 Nat_222 Nat_222) Bool)
(assert (forall ((x_17938 Bool_122) (x_17936 Nat_222) (z_687 Nat_222))
	(=> (leq_10 x_17938 z_687 x_17936)
	    (leq_10 x_17938 (succ_27 z_687) (succ_27 x_17936)))))
(assert (forall ((z_687 Nat_222))
	(leq_10 false_122 (succ_27 z_687) zero_27)))
(assert (forall ((y_665 Nat_222))
	(leq_10 true_122 zero_27 y_665)))
(assert (forall ((x_17937 Nat_222))
	(=>	(and true
			(leq_10 false_122 x_17937 x_17937))
		false)))
(check-sat)
