(set-logic HORN)
(declare-datatypes ((Bool_185 0)) (((false_185 ) (true_185 ))))
(declare-fun diseqBool_80 (Bool_185 Bool_185) Bool)
(declare-fun isfalse_80 (Bool_185) Bool)
(declare-fun istrue_80 (Bool_185) Bool)
(assert (isfalse_80 false_185))
(assert (istrue_80 true_185))
(assert (diseqBool_80 false_185 true_185))
(assert (diseqBool_80 true_185 false_185))
(declare-fun and_185 (Bool_185 Bool_185 Bool_185) Bool)
(declare-fun or_188 (Bool_185 Bool_185 Bool_185) Bool)
(declare-fun hence_185 (Bool_185 Bool_185 Bool_185) Bool)
(declare-fun not_187 (Bool_185 Bool_185) Bool)
(assert (and_185 false_185 false_185 false_185))
(assert (and_185 false_185 true_185 false_185))
(assert (and_185 false_185 false_185 true_185))
(assert (and_185 true_185 true_185 true_185))
(assert (or_188 false_185 false_185 false_185))
(assert (or_188 true_185 true_185 false_185))
(assert (or_188 true_185 false_185 true_185))
(assert (or_188 true_185 true_185 true_185))
(assert (hence_185 true_185 false_185 false_185))
(assert (hence_185 false_185 true_185 false_185))
(assert (hence_185 true_185 false_185 true_185))
(assert (hence_185 true_185 true_185 true_185))
(assert (not_187 true_185 false_185))
(assert (not_187 false_185 true_185))
(declare-datatypes ((Nat_321 0)) (((zero_64 ) (succ_63 (p_175 Nat_321)))))
(declare-fun diseqNat_321 (Nat_321 Nat_321) Bool)
(declare-fun p_176 (Nat_321 Nat_321) Bool)
(declare-fun iszero_63 (Nat_321) Bool)
(declare-fun issucc_63 (Nat_321) Bool)
(assert (forall ((x_27503 Nat_321))
	(p_176 x_27503 (succ_63 x_27503))))
(assert (iszero_63 zero_64))
(assert (forall ((x_27505 Nat_321))
	(issucc_63 (succ_63 x_27505))))
(assert (forall ((x_27506 Nat_321))
	(diseqNat_321 zero_64 (succ_63 x_27506))))
(assert (forall ((x_27507 Nat_321))
	(diseqNat_321 (succ_63 x_27507) zero_64)))
(assert (forall ((x_27508 Nat_321) (x_27509 Nat_321))
	(=> (diseqNat_321 x_27508 x_27509)
	    (diseqNat_321 (succ_63 x_27508) (succ_63 x_27509)))))
(declare-fun leq_23 (Bool_185 Nat_321 Nat_321) Bool)
(assert (forall ((x_27431 Bool_185) (x_27428 Nat_321) (z_1055 Nat_321))
	(=> (leq_23 x_27431 z_1055 x_27428)
	    (leq_23 x_27431 (succ_63 z_1055) (succ_63 x_27428)))))
(assert (forall ((z_1055 Nat_321))
	(leq_23 false_185 (succ_63 z_1055) zero_64)))
(assert (forall ((y_1103 Nat_321))
	(leq_23 true_185 zero_64 y_1103)))
(assert (forall ((x_27430 Nat_321) (y_1105 Nat_321) (x_27429 Nat_321))
	(=>	(and true
			(diseqNat_321 y_1105 y_1105)
			(leq_23 true_185 x_27430 y_1105)
			(leq_23 true_185 x_27429 y_1105)
			(leq_23 true_185 x_27429 x_27430)
			(leq_23 true_185 x_27430 y_1105))
		false)))
(assert (forall ((x_27430 Nat_321) (y_1105 Nat_321) (x_27429 Nat_321))
	(=>	(and true
			(diseqNat_321 x_27429 y_1105)
			(leq_23 true_185 x_27430 y_1105)
			(leq_23 false_185 x_27429 y_1105)
			(leq_23 true_185 x_27429 x_27430)
			(leq_23 true_185 x_27430 y_1105))
		false)))
(assert (forall ((x_27430 Nat_321) (y_1105 Nat_321) (x_27429 Nat_321))
	(=>	(and true
			(diseqNat_321 y_1105 x_27430)
			(leq_23 false_185 x_27430 y_1105)
			(leq_23 true_185 x_27429 y_1105)
			(leq_23 true_185 x_27429 x_27430)
			(leq_23 true_185 x_27430 y_1105))
		false)))
(assert (forall ((x_27430 Nat_321) (y_1105 Nat_321) (x_27429 Nat_321))
	(=>	(and true
			(diseqNat_321 x_27429 x_27430)
			(leq_23 false_185 x_27430 y_1105)
			(leq_23 false_185 x_27429 y_1105)
			(leq_23 true_185 x_27429 x_27430)
			(leq_23 true_185 x_27430 y_1105))
		false)))
(assert (forall ((x_27430 Nat_321) (x_27429 Nat_321) (z_1056 Nat_321))
	(=>	(and true
			(diseqNat_321 x_27430 z_1056)
			(leq_23 true_185 x_27430 z_1056)
			(leq_23 true_185 x_27429 x_27430)
			(leq_23 true_185 x_27429 x_27430)
			(leq_23 false_185 x_27430 z_1056))
		false)))
(assert (forall ((x_27430 Nat_321) (x_27429 Nat_321) (z_1056 Nat_321))
	(=>	(and true
			(diseqNat_321 x_27429 z_1056)
			(leq_23 true_185 x_27430 z_1056)
			(leq_23 false_185 x_27429 x_27430)
			(leq_23 true_185 x_27429 x_27430)
			(leq_23 false_185 x_27430 z_1056))
		false)))
(assert (forall ((x_27430 Nat_321) (x_27429 Nat_321) (z_1056 Nat_321))
	(=>	(and true
			(diseqNat_321 x_27430 x_27430)
			(leq_23 false_185 x_27430 z_1056)
			(leq_23 true_185 x_27429 x_27430)
			(leq_23 true_185 x_27429 x_27430)
			(leq_23 false_185 x_27430 z_1056))
		false)))
(assert (forall ((x_27430 Nat_321) (x_27429 Nat_321) (z_1056 Nat_321))
	(=>	(and true
			(diseqNat_321 x_27429 x_27430)
			(leq_23 false_185 x_27430 z_1056)
			(leq_23 false_185 x_27429 x_27430)
			(leq_23 true_185 x_27429 x_27430)
			(leq_23 false_185 x_27430 z_1056))
		false)))
(assert (forall ((y_1105 Nat_321) (x_27429 Nat_321) (y_1104 Nat_321))
	(=>	(and true
			(diseqNat_321 y_1105 y_1105)
			(leq_23 true_185 x_27429 y_1105)
			(leq_23 true_185 x_27429 y_1105)
			(leq_23 false_185 x_27429 y_1104)
			(leq_23 true_185 y_1104 y_1105))
		false)))
(assert (forall ((y_1105 Nat_321) (x_27429 Nat_321) (y_1104 Nat_321))
	(=>	(and true
			(diseqNat_321 x_27429 y_1105)
			(leq_23 true_185 x_27429 y_1105)
			(leq_23 false_185 x_27429 y_1105)
			(leq_23 false_185 x_27429 y_1104)
			(leq_23 true_185 y_1104 y_1105))
		false)))
(assert (forall ((y_1105 Nat_321) (x_27429 Nat_321) (y_1104 Nat_321))
	(=>	(and true
			(diseqNat_321 y_1105 x_27429)
			(leq_23 false_185 x_27429 y_1105)
			(leq_23 true_185 x_27429 y_1105)
			(leq_23 false_185 x_27429 y_1104)
			(leq_23 true_185 y_1104 y_1105))
		false)))
(assert (forall ((y_1105 Nat_321) (x_27429 Nat_321) (y_1104 Nat_321))
	(=>	(and true
			(diseqNat_321 x_27429 x_27429)
			(leq_23 false_185 x_27429 y_1105)
			(leq_23 false_185 x_27429 y_1105)
			(leq_23 false_185 x_27429 y_1104)
			(leq_23 true_185 y_1104 y_1105))
		false)))
(assert (forall ((x_27429 Nat_321) (y_1104 Nat_321) (z_1056 Nat_321))
	(=>	(and true
			(diseqNat_321 y_1104 z_1056)
			(leq_23 true_185 x_27429 z_1056)
			(leq_23 true_185 x_27429 y_1104)
			(leq_23 false_185 x_27429 y_1104)
			(leq_23 false_185 y_1104 z_1056))
		false)))
(assert (forall ((x_27429 Nat_321) (y_1104 Nat_321) (z_1056 Nat_321))
	(=>	(and true
			(diseqNat_321 x_27429 z_1056)
			(leq_23 true_185 x_27429 z_1056)
			(leq_23 false_185 x_27429 y_1104)
			(leq_23 false_185 x_27429 y_1104)
			(leq_23 false_185 y_1104 z_1056))
		false)))
(assert (forall ((x_27429 Nat_321) (y_1104 Nat_321) (z_1056 Nat_321))
	(=>	(and true
			(diseqNat_321 y_1104 x_27429)
			(leq_23 false_185 x_27429 z_1056)
			(leq_23 true_185 x_27429 y_1104)
			(leq_23 false_185 x_27429 y_1104)
			(leq_23 false_185 y_1104 z_1056))
		false)))
(assert (forall ((x_27429 Nat_321) (y_1104 Nat_321) (z_1056 Nat_321))
	(=>	(and true
			(diseqNat_321 x_27429 x_27429)
			(leq_23 false_185 x_27429 z_1056)
			(leq_23 false_185 x_27429 y_1104)
			(leq_23 false_185 x_27429 y_1104)
			(leq_23 false_185 y_1104 z_1056))
		false)))
(check-sat)
