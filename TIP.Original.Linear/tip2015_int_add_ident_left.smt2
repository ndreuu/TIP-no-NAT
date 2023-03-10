(set-logic HORN)
(declare-datatypes ((Nat_328 0)) (((zero_67 ) (succ_66 (p_181 Nat_328)))))
(declare-fun diseqNat_328 (Nat_328 Nat_328) Bool)
(declare-fun p_183 (Nat_328 Nat_328) Bool)
(declare-fun iszero_66 (Nat_328) Bool)
(declare-fun issucc_66 (Nat_328) Bool)
(assert (forall ((x_28033 Nat_328))
	(p_183 x_28033 (succ_66 x_28033))))
(assert (iszero_66 zero_67))
(assert (forall ((x_28035 Nat_328))
	(issucc_66 (succ_66 x_28035))))
(assert (forall ((x_28036 Nat_328))
	(diseqNat_328 zero_67 (succ_66 x_28036))))
(assert (forall ((x_28037 Nat_328))
	(diseqNat_328 (succ_66 x_28037) zero_67)))
(assert (forall ((x_28038 Nat_328) (x_28039 Nat_328))
	(=> (diseqNat_328 x_28038 x_28039)
	    (diseqNat_328 (succ_66 x_28038) (succ_66 x_28039)))))
(declare-datatypes ((Integer_3 0)) (((P_182 (projP_6 Nat_328)) (N_59 (projN_6 Nat_328)))))
(declare-fun diseqInteger_3 (Integer_3 Integer_3) Bool)
(declare-fun projP_7 (Nat_328 Integer_3) Bool)
(declare-fun projN_7 (Nat_328 Integer_3) Bool)
(declare-fun isP_4 (Integer_3) Bool)
(declare-fun isN_3 (Integer_3) Bool)
(assert (forall ((x_28040 Nat_328))
	(projP_7 x_28040 (P_182 x_28040))))
(assert (forall ((x_28042 Nat_328))
	(projN_7 x_28042 (N_59 x_28042))))
(assert (forall ((x_28044 Nat_328))
	(isP_4 (P_182 x_28044))))
(assert (forall ((x_28045 Nat_328))
	(isN_3 (N_59 x_28045))))
(assert (forall ((x_28046 Nat_328) (x_28047 Nat_328))
	(diseqInteger_3 (P_182 x_28046) (N_59 x_28047))))
(assert (forall ((x_28048 Nat_328) (x_28049 Nat_328))
	(diseqInteger_3 (N_59 x_28048) (P_182 x_28049))))
(assert (forall ((x_28050 Nat_328) (x_28051 Nat_328))
	(=> (diseqNat_328 x_28050 x_28051)
	    (diseqInteger_3 (P_182 x_28050) (P_182 x_28051)))))
(assert (forall ((x_28052 Nat_328) (x_28053 Nat_328))
	(=> (diseqNat_328 x_28052 x_28053)
	    (diseqInteger_3 (N_59 x_28052) (N_59 x_28053)))))
(declare-fun zero_68 (Integer_3) Bool)
(assert (zero_68 (P_182 zero_67)))
(declare-fun plus_61 (Nat_328 Nat_328 Nat_328) Bool)
(assert (forall ((x_27996 Nat_328) (z_1095 Nat_328) (y_1152 Nat_328))
	(=> (plus_61 x_27996 z_1095 y_1152)
	    (plus_61 (succ_66 x_27996) (succ_66 z_1095) y_1152))))
(assert (forall ((x_27997 Nat_328))
	(plus_61 x_27997 zero_67 x_27997)))
(declare-fun x_27983 (Integer_3 Nat_328 Nat_328) Bool)
(assert (forall ((x_27985 Nat_328) (z_1096 Nat_328) (fail_14 Integer_3))
	(=> (x_27983 fail_14 x_27985 z_1096)
	    (x_27983 fail_14 (succ_66 x_27985) (succ_66 z_1096)))))
(assert (forall ((x_27987 Nat_328))
	(x_27983 (N_59 (succ_66 x_27987)) zero_67 (succ_66 x_27987))))
(assert (forall ((x_27986 Nat_328))
	(x_27983 (P_182 (succ_66 x_27986)) (succ_66 x_27986) zero_67)))
(assert (x_27983 (P_182 zero_67) zero_67 zero_67))
(declare-fun plus_62 (Integer_3 Integer_3 Integer_3) Bool)
(assert (forall ((x_28011 Nat_328) (x_28012 Nat_328) (n_60 Nat_328) (m_24 Nat_328))
	(=>	(and (plus_61 x_28011 (succ_66 zero_67) m_24)
			(plus_61 x_28012 x_28011 n_60))
		(plus_62 (N_59 x_28012) (N_59 m_24) (N_59 n_60)))))
(assert (forall ((x_28013 Integer_3) (x_28014 Nat_328) (n_61 Nat_328) (m_24 Nat_328))
	(=>	(and (plus_61 x_28014 (succ_66 zero_67) m_24)
			(x_27983 x_28013 n_61 x_28014))
		(plus_62 x_28013 (N_59 m_24) (P_182 n_61)))))
(assert (forall ((x_28016 Integer_3) (x_28017 Nat_328) (o_2 Nat_328) (m_25 Nat_328))
	(=>	(and (plus_61 x_28017 (succ_66 zero_67) o_2)
			(x_27983 x_28016 m_25 x_28017))
		(plus_62 x_28016 (P_182 m_25) (N_59 o_2)))))
(assert (forall ((x_28020 Nat_328) (n_62 Nat_328) (m_25 Nat_328))
	(=> (plus_61 x_28020 m_25 n_62)
	    (plus_62 (P_182 x_28020) (P_182 m_25) (P_182 n_62)))))
(assert (forall ((x_28021 Integer_3) (x_28022 Integer_3) (x_27989 Integer_3))
	(=>	(and true
			(diseqInteger_3 x_27989 x_28022)
			(zero_68 x_28021)
			(plus_62 x_28022 x_28021 x_27989))
		false)))
(assert (forall ((x_28023 Nat_328) (x_28024 Nat_328) (x_28025 Nat_328) (x_28026 Nat_328) (x_27990 Nat_328) (y_1155 Nat_328) (z_1097 Nat_328))
	(=>	(and true
			(diseqNat_328 x_28024 x_28026)
			(plus_61 x_28023 y_1155 z_1097)
			(plus_61 x_28024 x_27990 x_28023)
			(plus_61 x_28025 x_27990 y_1155)
			(plus_61 x_28026 x_28025 z_1097))
		false)))
(assert (forall ((x_28027 Nat_328) (x_28028 Nat_328) (x_27991 Nat_328) (y_1156 Nat_328))
	(=>	(and true
			(diseqNat_328 x_28027 x_28028)
			(plus_61 x_28027 x_27991 y_1156)
			(plus_61 x_28028 y_1156 x_27991))
		false)))
(assert (forall ((x_28029 Nat_328) (x_27992 Nat_328))
	(=>	(and true
			(diseqNat_328 x_28029 x_27992)
			(plus_61 x_28029 x_27992 zero_67))
		false)))
(assert (forall ((x_28030 Nat_328) (x_27993 Nat_328))
	(=>	(and true
			(diseqNat_328 x_28030 x_27993)
			(plus_61 x_28030 zero_67 x_27993))
		false)))
(check-sat)
