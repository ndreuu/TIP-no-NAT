(set-logic HORN)
(declare-datatypes ((Sign_8 0)) (((Pos_4 ) (Neg_5 ))))
(declare-fun diseqSign_4 (Sign_8 Sign_8) Bool)
(declare-fun isPos_4 (Sign_8) Bool)
(declare-fun isNeg_4 (Sign_8) Bool)
(assert (isPos_4 Pos_4))
(assert (isNeg_4 Neg_5))
(assert (diseqSign_4 Pos_4 Neg_5))
(assert (diseqSign_4 Neg_5 Pos_4))
(declare-datatypes ((Nat_462 0)) (((zero_119 ) (succ_116 (p_330 Nat_462)))))
(declare-fun diseqNat_462 (Nat_462 Nat_462) Bool)
(declare-fun p_332 (Nat_462 Nat_462) Bool)
(declare-fun iszero_116 (Nat_462) Bool)
(declare-fun issucc_116 (Nat_462) Bool)
(assert (forall ((x_50500 Nat_462))
	(p_332 x_50500 (succ_116 x_50500))))
(assert (iszero_116 zero_119))
(assert (forall ((x_50502 Nat_462))
	(issucc_116 (succ_116 x_50502))))
(assert (forall ((x_50503 Nat_462))
	(diseqNat_462 zero_119 (succ_116 x_50503))))
(assert (forall ((x_50504 Nat_462))
	(diseqNat_462 (succ_116 x_50504) zero_119)))
(assert (forall ((x_50505 Nat_462) (x_50506 Nat_462))
	(=> (diseqNat_462 x_50505 x_50506)
	    (diseqNat_462 (succ_116 x_50505) (succ_116 x_50506)))))
(declare-datatypes ((Integer_9 0)) (((P_331 (projP_18 Nat_462)) (N_94 (projN_18 Nat_462)))))
(declare-fun diseqInteger_9 (Integer_9 Integer_9) Bool)
(declare-fun projP_19 (Nat_462 Integer_9) Bool)
(declare-fun projN_19 (Nat_462 Integer_9) Bool)
(declare-fun isP_11 (Integer_9) Bool)
(declare-fun isN_9 (Integer_9) Bool)
(assert (forall ((x_50507 Nat_462))
	(projP_19 x_50507 (P_331 x_50507))))
(assert (forall ((x_50509 Nat_462))
	(projN_19 x_50509 (N_94 x_50509))))
(assert (forall ((x_50511 Nat_462))
	(isP_11 (P_331 x_50511))))
(assert (forall ((x_50512 Nat_462))
	(isN_9 (N_94 x_50512))))
(assert (forall ((x_50513 Nat_462) (x_50514 Nat_462))
	(diseqInteger_9 (P_331 x_50513) (N_94 x_50514))))
(assert (forall ((x_50515 Nat_462) (x_50516 Nat_462))
	(diseqInteger_9 (N_94 x_50515) (P_331 x_50516))))
(assert (forall ((x_50517 Nat_462) (x_50518 Nat_462))
	(=> (diseqNat_462 x_50517 x_50518)
	    (diseqInteger_9 (P_331 x_50517) (P_331 x_50518)))))
(assert (forall ((x_50519 Nat_462) (x_50520 Nat_462))
	(=> (diseqNat_462 x_50519 x_50520)
	    (diseqInteger_9 (N_94 x_50519) (N_94 x_50520)))))
(declare-fun toInteger_4 (Integer_9 Sign_8 Nat_462) Bool)
(assert (forall ((z_1643 Nat_462))
	(toInteger_4 (N_94 z_1643) Neg_5 (succ_116 z_1643))))
(assert (toInteger_4 (P_331 zero_119) Neg_5 zero_119))
(assert (forall ((y_1840 Nat_462))
	(toInteger_4 (P_331 y_1840) Pos_4 y_1840)))
(declare-fun sign_9 (Sign_8 Integer_9) Bool)
(assert (forall ((z_1644 Nat_462))
	(sign_9 Neg_5 (N_94 z_1644))))
(assert (forall ((y_1841 Nat_462))
	(sign_9 Pos_4 (P_331 y_1841))))
(declare-fun plus_116 (Nat_462 Nat_462 Nat_462) Bool)
(assert (forall ((x_50443 Nat_462) (z_1645 Nat_462) (y_1842 Nat_462))
	(=> (plus_116 x_50443 z_1645 y_1842)
	    (plus_116 (succ_116 x_50443) (succ_116 z_1645) y_1842))))
(assert (forall ((x_50444 Nat_462))
	(plus_116 x_50444 zero_119 x_50444)))
(declare-fun times_28 (Nat_462 Nat_462 Nat_462) Bool)
(assert (forall ((x_50445 Nat_462) (x_50446 Nat_462) (z_1646 Nat_462) (y_1843 Nat_462))
	(=>	(and (times_28 x_50446 z_1646 y_1843)
			(plus_116 x_50445 y_1843 x_50446))
		(times_28 x_50445 (succ_116 z_1646) y_1843))))
(assert (forall ((y_1843 Nat_462))
	(times_28 zero_119 zero_119 y_1843)))
(declare-fun opposite_4 (Sign_8 Sign_8) Bool)
(assert (opposite_4 Pos_4 Neg_5))
(assert (opposite_4 Neg_5 Pos_4))
(declare-fun timesSign_4 (Sign_8 Sign_8 Sign_8) Bool)
(assert (forall ((x_50451 Sign_8) (y_1844 Sign_8))
	(=> (opposite_4 x_50451 y_1844)
	    (timesSign_4 x_50451 Neg_5 y_1844))))
(assert (forall ((x_50453 Sign_8))
	(timesSign_4 x_50453 Pos_4 x_50453)))
(declare-fun one_14 (Integer_9) Bool)
(assert (one_14 (P_331 (succ_116 zero_119))))
(declare-fun absVal_4 (Nat_462 Integer_9) Bool)
(assert (forall ((x_50455 Nat_462) (m_36 Nat_462))
	(=> (plus_116 x_50455 (succ_116 zero_119) m_36)
	    (absVal_4 x_50455 (N_94 m_36)))))
(assert (forall ((n_95 Nat_462))
	(absVal_4 n_95 (P_331 n_95))))
(declare-fun times_29 (Integer_9 Integer_9 Integer_9) Bool)
(assert (forall ((x_50458 Integer_9) (x_50459 Sign_8) (x_50460 Sign_8) (x_50461 Sign_8) (x_50462 Nat_462) (x_50463 Nat_462) (x_50464 Nat_462) (x_50423 Integer_9) (y_1845 Integer_9))
	(=>	(and (sign_9 x_50459 x_50423)
			(sign_9 x_50460 y_1845)
			(timesSign_4 x_50461 x_50459 x_50460)
			(absVal_4 x_50462 x_50423)
			(absVal_4 x_50463 y_1845)
			(times_28 x_50464 x_50462 x_50463)
			(toInteger_4 x_50458 x_50461 x_50464))
		(times_29 x_50458 x_50423 y_1845))))
(assert (forall ((x_50466 Integer_9) (x_50467 Integer_9) (x_50424 Integer_9))
	(=>	(and true
			(diseqInteger_9 x_50424 x_50467)
			(one_14 x_50466)
			(times_29 x_50467 x_50466 x_50424))
		false)))
(assert (forall ((x_50468 Nat_462) (x_50469 Nat_462) (x_50470 Nat_462) (x_50471 Nat_462) (x_50425 Nat_462) (y_1846 Nat_462) (z_1647 Nat_462))
	(=>	(and true
			(diseqNat_462 x_50469 x_50471)
			(times_28 x_50468 y_1846 z_1647)
			(times_28 x_50469 x_50425 x_50468)
			(times_28 x_50470 x_50425 y_1846)
			(times_28 x_50471 x_50470 z_1647))
		false)))
(assert (forall ((x_50472 Nat_462) (x_50473 Nat_462) (x_50474 Nat_462) (x_50475 Nat_462) (x_50426 Nat_462) (y_1847 Nat_462) (z_1648 Nat_462))
	(=>	(and true
			(diseqNat_462 x_50473 x_50475)
			(plus_116 x_50472 y_1847 z_1648)
			(plus_116 x_50473 x_50426 x_50472)
			(plus_116 x_50474 x_50426 y_1847)
			(plus_116 x_50475 x_50474 z_1648))
		false)))
(assert (forall ((x_50476 Nat_462) (x_50477 Nat_462) (x_50427 Nat_462) (y_1848 Nat_462))
	(=>	(and true
			(diseqNat_462 x_50476 x_50477)
			(times_28 x_50476 x_50427 y_1848)
			(times_28 x_50477 y_1848 x_50427))
		false)))
(assert (forall ((x_50478 Nat_462) (x_50479 Nat_462) (x_50428 Nat_462) (y_1849 Nat_462))
	(=>	(and true
			(diseqNat_462 x_50478 x_50479)
			(plus_116 x_50478 x_50428 y_1849)
			(plus_116 x_50479 y_1849 x_50428))
		false)))
(assert (forall ((x_50480 Nat_462) (x_50481 Nat_462) (x_50482 Nat_462) (x_50483 Nat_462) (x_50484 Nat_462) (x_50429 Nat_462) (y_1850 Nat_462) (z_1649 Nat_462))
	(=>	(and true
			(diseqNat_462 x_50481 x_50484)
			(plus_116 x_50480 y_1850 z_1649)
			(times_28 x_50481 x_50429 x_50480)
			(times_28 x_50482 x_50429 y_1850)
			(times_28 x_50483 x_50429 z_1649)
			(plus_116 x_50484 x_50482 x_50483))
		false)))
(assert (forall ((x_50485 Nat_462) (x_50486 Nat_462) (x_50487 Nat_462) (x_50488 Nat_462) (x_50489 Nat_462) (x_50430 Nat_462) (y_1851 Nat_462) (z_1650 Nat_462))
	(=>	(and true
			(diseqNat_462 x_50486 x_50489)
			(plus_116 x_50485 x_50430 y_1851)
			(times_28 x_50486 x_50485 z_1650)
			(times_28 x_50487 x_50430 z_1650)
			(times_28 x_50488 y_1851 z_1650)
			(plus_116 x_50489 x_50487 x_50488))
		false)))
(assert (forall ((x_50490 Nat_462) (x_50431 Nat_462))
	(=>	(and true
			(diseqNat_462 x_50490 x_50431)
			(times_28 x_50490 x_50431 (succ_116 zero_119)))
		false)))
(assert (forall ((x_50491 Nat_462) (x_50432 Nat_462))
	(=>	(and true
			(diseqNat_462 x_50491 x_50432)
			(times_28 x_50491 (succ_116 zero_119) x_50432))
		false)))
(assert (forall ((x_50492 Nat_462) (x_50433 Nat_462))
	(=>	(and true
			(diseqNat_462 x_50492 x_50433)
			(plus_116 x_50492 x_50433 zero_119))
		false)))
(assert (forall ((x_50493 Nat_462) (x_50434 Nat_462))
	(=>	(and true
			(diseqNat_462 x_50493 x_50434)
			(plus_116 x_50493 zero_119 x_50434))
		false)))
(assert (forall ((x_50494 Nat_462) (x_50435 Nat_462))
	(=>	(and true
			(diseqNat_462 x_50494 zero_119)
			(times_28 x_50494 x_50435 zero_119))
		false)))
(assert (forall ((x_50495 Nat_462) (x_50436 Nat_462))
	(=>	(and true
			(diseqNat_462 x_50495 zero_119)
			(times_28 x_50495 zero_119 x_50436))
		false)))
(check-sat)