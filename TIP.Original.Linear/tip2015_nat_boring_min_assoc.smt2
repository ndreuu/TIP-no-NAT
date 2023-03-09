(set-logic HORN)
(declare-datatypes ((Bool_253 0)) (((false_253 ) (true_253 ))))
(declare-fun diseqBool_115 (Bool_253 Bool_253) Bool)
(declare-fun isfalse_115 (Bool_253) Bool)
(declare-fun istrue_115 (Bool_253) Bool)
(assert (isfalse_115 false_253))
(assert (istrue_115 true_253))
(assert (diseqBool_115 false_253 true_253))
(assert (diseqBool_115 true_253 false_253))
(declare-fun and_253 (Bool_253 Bool_253 Bool_253) Bool)
(declare-fun or_258 (Bool_253 Bool_253 Bool_253) Bool)
(declare-fun hence_253 (Bool_253 Bool_253 Bool_253) Bool)
(declare-fun not_256 (Bool_253 Bool_253) Bool)
(assert (and_253 false_253 false_253 false_253))
(assert (and_253 false_253 true_253 false_253))
(assert (and_253 false_253 false_253 true_253))
(assert (and_253 true_253 true_253 true_253))
(assert (or_258 false_253 false_253 false_253))
(assert (or_258 true_253 true_253 false_253))
(assert (or_258 true_253 false_253 true_253))
(assert (or_258 true_253 true_253 true_253))
(assert (hence_253 true_253 false_253 false_253))
(assert (hence_253 false_253 true_253 false_253))
(assert (hence_253 true_253 false_253 true_253))
(assert (hence_253 true_253 true_253 true_253))
(assert (not_256 true_253 false_253))
(assert (not_256 false_253 true_253))
(declare-datatypes ((Nat_426 0)) (((zero_102 ) (succ_100 (p_288 Nat_426)))))
(declare-fun diseqNat_426 (Nat_426 Nat_426) Bool)
(declare-fun p_289 (Nat_426 Nat_426) Bool)
(declare-fun iszero_100 (Nat_426) Bool)
(declare-fun issucc_100 (Nat_426) Bool)
(assert (forall ((x_46505 Nat_426))
	(p_289 x_46505 (succ_100 x_46505))))
(assert (iszero_100 zero_102))
(assert (forall ((x_46507 Nat_426))
	(issucc_100 (succ_100 x_46507))))
(assert (forall ((x_46508 Nat_426))
	(diseqNat_426 zero_102 (succ_100 x_46508))))
(assert (forall ((x_46509 Nat_426))
	(diseqNat_426 (succ_100 x_46509) zero_102)))
(assert (forall ((x_46510 Nat_426) (x_46511 Nat_426))
	(=> (diseqNat_426 x_46510 x_46511)
	    (diseqNat_426 (succ_100 x_46510) (succ_100 x_46511)))))
(declare-fun leq_36 (Bool_253 Nat_426 Nat_426) Bool)
(assert (forall ((x_46433 Bool_253) (x_46430 Nat_426) (z_1500 Nat_426))
	(=> (leq_36 x_46433 z_1500 x_46430)
	    (leq_36 x_46433 (succ_100 z_1500) (succ_100 x_46430)))))
(assert (forall ((z_1500 Nat_426))
	(leq_36 false_253 (succ_100 z_1500) zero_102)))
(assert (forall ((y_1664 Nat_426))
	(leq_36 true_253 zero_102 y_1664)))
(assert (forall ((x_46431 Nat_426) (y_1665 Nat_426) (z_1501 Nat_426))
	(=>	(and true
			(diseqNat_426 x_46431 x_46431)
			(leq_36 true_253 x_46431 z_1501)
			(leq_36 true_253 x_46431 y_1665)
			(leq_36 true_253 x_46431 y_1665)
			(leq_36 true_253 y_1665 z_1501))
		false)))
(assert (forall ((x_46431 Nat_426) (y_1665 Nat_426) (z_1501 Nat_426))
	(=>	(and true
			(diseqNat_426 y_1665 x_46431)
			(leq_36 true_253 x_46431 z_1501)
			(leq_36 false_253 x_46431 y_1665)
			(leq_36 true_253 x_46431 y_1665)
			(leq_36 true_253 y_1665 z_1501))
		false)))
(assert (forall ((x_46431 Nat_426) (y_1665 Nat_426) (z_1501 Nat_426))
	(=>	(and true
			(diseqNat_426 x_46431 z_1501)
			(leq_36 false_253 x_46431 z_1501)
			(leq_36 true_253 x_46431 y_1665)
			(leq_36 true_253 x_46431 y_1665)
			(leq_36 true_253 y_1665 z_1501))
		false)))
(assert (forall ((x_46431 Nat_426) (y_1665 Nat_426) (z_1501 Nat_426))
	(=>	(and true
			(diseqNat_426 y_1665 z_1501)
			(leq_36 false_253 x_46431 z_1501)
			(leq_36 false_253 x_46431 y_1665)
			(leq_36 true_253 x_46431 y_1665)
			(leq_36 true_253 y_1665 z_1501))
		false)))
(assert (forall ((y_1666 Nat_426) (x_46431 Nat_426) (y_1665 Nat_426))
	(=>	(and true
			(diseqNat_426 x_46431 x_46431)
			(leq_36 true_253 x_46431 y_1666)
			(leq_36 true_253 x_46431 y_1666)
			(leq_36 true_253 x_46431 y_1665)
			(leq_36 false_253 y_1665 y_1666))
		false)))
(assert (forall ((y_1666 Nat_426) (x_46431 Nat_426) (y_1665 Nat_426))
	(=>	(and true
			(diseqNat_426 y_1666 x_46431)
			(leq_36 true_253 x_46431 y_1666)
			(leq_36 false_253 x_46431 y_1666)
			(leq_36 true_253 x_46431 y_1665)
			(leq_36 false_253 y_1665 y_1666))
		false)))
(assert (forall ((y_1666 Nat_426) (x_46431 Nat_426) (y_1665 Nat_426))
	(=>	(and true
			(diseqNat_426 x_46431 y_1666)
			(leq_36 false_253 x_46431 y_1666)
			(leq_36 true_253 x_46431 y_1666)
			(leq_36 true_253 x_46431 y_1665)
			(leq_36 false_253 y_1665 y_1666))
		false)))
(assert (forall ((y_1666 Nat_426) (x_46431 Nat_426) (y_1665 Nat_426))
	(=>	(and true
			(diseqNat_426 y_1666 y_1666)
			(leq_36 false_253 x_46431 y_1666)
			(leq_36 false_253 x_46431 y_1666)
			(leq_36 true_253 x_46431 y_1665)
			(leq_36 false_253 y_1665 y_1666))
		false)))
(assert (forall ((x_46432 Nat_426) (x_46431 Nat_426) (z_1501 Nat_426))
	(=>	(and true
			(diseqNat_426 x_46431 x_46432)
			(leq_36 true_253 x_46432 z_1501)
			(leq_36 true_253 x_46431 x_46432)
			(leq_36 false_253 x_46431 x_46432)
			(leq_36 true_253 x_46432 z_1501))
		false)))
(assert (forall ((x_46432 Nat_426) (x_46431 Nat_426) (z_1501 Nat_426))
	(=>	(and true
			(diseqNat_426 x_46432 x_46432)
			(leq_36 true_253 x_46432 z_1501)
			(leq_36 false_253 x_46431 x_46432)
			(leq_36 false_253 x_46431 x_46432)
			(leq_36 true_253 x_46432 z_1501))
		false)))
(assert (forall ((x_46432 Nat_426) (x_46431 Nat_426) (z_1501 Nat_426))
	(=>	(and true
			(diseqNat_426 x_46431 z_1501)
			(leq_36 false_253 x_46432 z_1501)
			(leq_36 true_253 x_46431 x_46432)
			(leq_36 false_253 x_46431 x_46432)
			(leq_36 true_253 x_46432 z_1501))
		false)))
(assert (forall ((x_46432 Nat_426) (x_46431 Nat_426) (z_1501 Nat_426))
	(=>	(and true
			(diseqNat_426 x_46432 z_1501)
			(leq_36 false_253 x_46432 z_1501)
			(leq_36 false_253 x_46431 x_46432)
			(leq_36 false_253 x_46431 x_46432)
			(leq_36 true_253 x_46432 z_1501))
		false)))
(assert (forall ((x_46432 Nat_426) (y_1666 Nat_426) (x_46431 Nat_426))
	(=>	(and true
			(diseqNat_426 x_46431 x_46432)
			(leq_36 true_253 x_46432 y_1666)
			(leq_36 true_253 x_46431 y_1666)
			(leq_36 false_253 x_46431 x_46432)
			(leq_36 false_253 x_46432 y_1666))
		false)))
(assert (forall ((x_46432 Nat_426) (y_1666 Nat_426) (x_46431 Nat_426))
	(=>	(and true
			(diseqNat_426 y_1666 x_46432)
			(leq_36 true_253 x_46432 y_1666)
			(leq_36 false_253 x_46431 y_1666)
			(leq_36 false_253 x_46431 x_46432)
			(leq_36 false_253 x_46432 y_1666))
		false)))
(assert (forall ((x_46432 Nat_426) (y_1666 Nat_426) (x_46431 Nat_426))
	(=>	(and true
			(diseqNat_426 x_46431 y_1666)
			(leq_36 false_253 x_46432 y_1666)
			(leq_36 true_253 x_46431 y_1666)
			(leq_36 false_253 x_46431 x_46432)
			(leq_36 false_253 x_46432 y_1666))
		false)))
(assert (forall ((x_46432 Nat_426) (y_1666 Nat_426) (x_46431 Nat_426))
	(=>	(and true
			(diseqNat_426 y_1666 y_1666)
			(leq_36 false_253 x_46432 y_1666)
			(leq_36 false_253 x_46431 y_1666)
			(leq_36 false_253 x_46431 x_46432)
			(leq_36 false_253 x_46432 y_1666))
		false)))
(check-sat)
