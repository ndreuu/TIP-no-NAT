(set-logic HORN)
(declare-datatypes ((Bool_266 0)) (((false_266 ) (true_266 ))))
(declare-fun diseqBool_125 (Bool_266 Bool_266) Bool)
(declare-fun isfalse_125 (Bool_266) Bool)
(declare-fun istrue_125 (Bool_266) Bool)
(assert (isfalse_125 false_266))
(assert (istrue_125 true_266))
(assert (diseqBool_125 false_266 true_266))
(assert (diseqBool_125 true_266 false_266))
(declare-fun and_266 (Bool_266 Bool_266 Bool_266) Bool)
(declare-fun or_272 (Bool_266 Bool_266 Bool_266) Bool)
(declare-fun hence_266 (Bool_266 Bool_266 Bool_266) Bool)
(declare-fun not_270 (Bool_266 Bool_266) Bool)
(assert (and_266 false_266 false_266 false_266))
(assert (and_266 false_266 true_266 false_266))
(assert (and_266 false_266 false_266 true_266))
(assert (and_266 true_266 true_266 true_266))
(assert (or_272 false_266 false_266 false_266))
(assert (or_272 true_266 true_266 false_266))
(assert (or_272 true_266 false_266 true_266))
(assert (or_272 true_266 true_266 true_266))
(assert (hence_266 true_266 false_266 false_266))
(assert (hence_266 false_266 true_266 false_266))
(assert (hence_266 true_266 false_266 true_266))
(assert (hence_266 true_266 true_266 true_266))
(assert (not_270 true_266 false_266))
(assert (not_270 false_266 true_266))
(declare-datatypes ((Nat_448 0)) (((zero_112 ) (succ_109 (p_316 Nat_448)))))
(declare-fun diseqNat_448 (Nat_448 Nat_448) Bool)
(declare-fun p_317 (Nat_448 Nat_448) Bool)
(declare-fun iszero_109 (Nat_448) Bool)
(declare-fun issucc_109 (Nat_448) Bool)
(assert (forall ((x_49944 Nat_448))
	(p_317 x_49944 (succ_109 x_49944))))
(assert (iszero_109 zero_112))
(assert (forall ((x_49946 Nat_448))
	(issucc_109 (succ_109 x_49946))))
(assert (forall ((x_49947 Nat_448))
	(diseqNat_448 zero_112 (succ_109 x_49947))))
(assert (forall ((x_49948 Nat_448))
	(diseqNat_448 (succ_109 x_49948) zero_112)))
(assert (forall ((x_49949 Nat_448) (x_49950 Nat_448))
	(=> (diseqNat_448 x_49949 x_49950)
	    (diseqNat_448 (succ_109 x_49949) (succ_109 x_49950)))))
(declare-fun leq_42 (Bool_266 Nat_448 Nat_448) Bool)
(assert (forall ((x_49934 Bool_266) (x_49932 Nat_448) (z_1586 Nat_448))
	(=> (leq_42 x_49934 z_1586 x_49932)
	    (leq_42 x_49934 (succ_109 z_1586) (succ_109 x_49932)))))
(assert (forall ((z_1586 Nat_448))
	(leq_42 false_266 (succ_109 z_1586) zero_112)))
(assert (forall ((y_1777 Nat_448))
	(leq_42 true_266 zero_112 y_1777)))
(assert (forall ((x_49933 Nat_448))
	(=>	(and true
			(diseqNat_448 x_49933 x_49933)
			(leq_42 true_266 x_49933 x_49933))
		false)))
(assert (forall ((x_49933 Nat_448))
	(=>	(and true
			(diseqNat_448 x_49933 x_49933)
			(leq_42 false_266 x_49933 x_49933))
		false)))
(check-sat)
