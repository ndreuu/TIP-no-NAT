(set-logic HORN)
(declare-datatypes ((Nat_516 0)) (((zero_141 ) (succ_137 (p_383 Nat_516)))))
(declare-fun diseqNat_516 (Nat_516 Nat_516) Bool)
(declare-fun p_384 (Nat_516 Nat_516) Bool)
(declare-fun iszero_137 (Nat_516) Bool)
(declare-fun issucc_137 (Nat_516) Bool)
(assert (forall ((x_53400 Nat_516))
	(p_384 x_53400 (succ_137 x_53400))))
(assert (iszero_137 zero_141))
(assert (forall ((x_53402 Nat_516))
	(issucc_137 (succ_137 x_53402))))
(assert (forall ((x_53403 Nat_516))
	(diseqNat_516 zero_141 (succ_137 x_53403))))
(assert (forall ((x_53404 Nat_516))
	(diseqNat_516 (succ_137 x_53404) zero_141)))
(assert (forall ((x_53405 Nat_516) (x_53406 Nat_516))
	(=> (diseqNat_516 x_53405 x_53406)
	    (diseqNat_516 (succ_137 x_53405) (succ_137 x_53406)))))
(declare-fun addacc_20 (Nat_516 Nat_516 Nat_516 Nat_516) Bool)
(assert (forall ((x_53389 Nat_516) (x_53382 Nat_516) (y_2097 Nat_516) (z_1865 Nat_516))
	(=> (addacc_20 x_53389 x_53382 (succ_137 y_2097) z_1865)
	    (addacc_20 x_53389 (succ_137 x_53382) y_2097 z_1865))))
(assert (forall ((x_53391 Nat_516) (x_53383 Nat_516) (z_1865 Nat_516))
	(=> (addacc_20 x_53391 zero_141 x_53383 (succ_137 z_1865))
	    (addacc_20 x_53391 zero_141 (succ_137 x_53383) z_1865))))
(assert (forall ((x_53393 Nat_516))
	(addacc_20 x_53393 zero_141 zero_141 x_53393)))
(assert (forall ((x_53394 Nat_516) (x_53395 Nat_516) (x_53396 Nat_516) (x_53397 Nat_516) (x_53384 Nat_516) (x_53385 Nat_516) (x_53386 Nat_516) (x_53387 Nat_516) (x_53388 Nat_516))
	(=>	(and true
			(diseqNat_516 x_53395 x_53397)
			(addacc_20 x_53394 x_53384 x_53385 x_53386)
			(addacc_20 x_53395 x_53394 x_53387 x_53388)
			(addacc_20 x_53396 x_53385 x_53386 x_53387)
			(addacc_20 x_53397 x_53384 x_53396 x_53388))
		false)))
(check-sat)