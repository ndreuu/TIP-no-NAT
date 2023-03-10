(set-logic HORN)
(declare-datatypes ((Nat_355 0)) (((zero_78 ) (succ_76 (p_218 Nat_355)))))
(declare-fun diseqNat_355 (Nat_355 Nat_355) Bool)
(declare-fun p_219 (Nat_355 Nat_355) Bool)
(declare-fun iszero_76 (Nat_355) Bool)
(declare-fun issucc_76 (Nat_355) Bool)
(assert (forall ((x_33737 Nat_355))
	(p_219 x_33737 (succ_76 x_33737))))
(assert (iszero_76 zero_78))
(assert (forall ((x_33739 Nat_355))
	(issucc_76 (succ_76 x_33739))))
(assert (forall ((x_33740 Nat_355))
	(diseqNat_355 zero_78 (succ_76 x_33740))))
(assert (forall ((x_33741 Nat_355))
	(diseqNat_355 (succ_76 x_33741) zero_78)))
(assert (forall ((x_33742 Nat_355) (x_33743 Nat_355))
	(=> (diseqNat_355 x_33742 x_33743)
	    (diseqNat_355 (succ_76 x_33742) (succ_76 x_33743)))))
(declare-fun plus_70 (Nat_355 Nat_355 Nat_355) Bool)
(assert (forall ((x_33685 Nat_355) (z_1187 Nat_355) (y_1278 Nat_355))
	(=> (plus_70 x_33685 z_1187 y_1278)
	    (plus_70 (succ_76 x_33685) (succ_76 z_1187) y_1278))))
(assert (forall ((x_33686 Nat_355))
	(plus_70 x_33686 zero_78 x_33686)))
(declare-fun times_16 (Nat_355 Nat_355 Nat_355) Bool)
(assert (forall ((x_33687 Nat_355) (x_33688 Nat_355) (z_1188 Nat_355) (y_1279 Nat_355))
	(=>	(and (times_16 x_33688 z_1188 y_1279)
			(plus_70 x_33687 y_1279 x_33688))
		(times_16 x_33687 (succ_76 z_1188) y_1279))))
(assert (forall ((y_1279 Nat_355))
	(times_16 zero_78 zero_78 y_1279)))
(declare-fun formulapow_1 (Nat_355 Nat_355 Nat_355) Bool)
(assert (forall ((x_33691 Nat_355) (x_33692 Nat_355) (z_1189 Nat_355) (x_33668 Nat_355))
	(=>	(and (formulapow_1 x_33692 x_33668 z_1189)
			(times_16 x_33691 x_33668 x_33692))
		(formulapow_1 x_33691 x_33668 (succ_76 z_1189)))))
(assert (forall ((x_33668 Nat_355))
	(formulapow_1 (succ_76 zero_78) x_33668 zero_78)))
(declare-fun formulapow_2 (Nat_355 Nat_355 Nat_355) Bool)
(assert (forall ((x_33695 Nat_355) (x_33696 Nat_355) (z_1190 Nat_355) (x_33669 Nat_355))
	(=>	(and (formulapow_2 x_33696 x_33669 z_1190)
			(times_16 x_33695 x_33669 x_33696))
		(formulapow_2 x_33695 x_33669 (succ_76 z_1190)))))
(assert (forall ((x_33669 Nat_355))
	(formulapow_2 (succ_76 zero_78) x_33669 zero_78)))
(declare-fun formulapow_3 (Nat_355 Nat_355 Nat_355) Bool)
(assert (forall ((x_33699 Nat_355) (x_33700 Nat_355) (z_1191 Nat_355) (x_33670 Nat_355))
	(=>	(and (formulapow_3 x_33700 x_33670 z_1191)
			(times_16 x_33699 x_33670 x_33700))
		(formulapow_3 x_33699 x_33670 (succ_76 z_1191)))))
(assert (forall ((x_33670 Nat_355))
	(formulapow_3 (succ_76 zero_78) x_33670 zero_78)))
(assert (forall ((x_33703 Nat_355) (x_33704 Nat_355) (x_33705 Nat_355) (x_33706 Nat_355) (x_33671 Nat_355) (y_1283 Nat_355) (z_1192 Nat_355))
	(=>	(and true
			(diseqNat_355 x_33704 x_33706)
			(times_16 x_33703 y_1283 z_1192)
			(formulapow_3 x_33704 x_33671 x_33703)
			(formulapow_1 x_33705 x_33671 y_1283)
			(formulapow_2 x_33706 x_33705 z_1192))
		false)))
(assert (forall ((x_33707 Nat_355) (x_33708 Nat_355) (x_33709 Nat_355) (x_33710 Nat_355) (x_33672 Nat_355) (y_1284 Nat_355) (z_1193 Nat_355))
	(=>	(and true
			(diseqNat_355 x_33708 x_33710)
			(times_16 x_33707 y_1284 z_1193)
			(times_16 x_33708 x_33672 x_33707)
			(times_16 x_33709 x_33672 y_1284)
			(times_16 x_33710 x_33709 z_1193))
		false)))
(assert (forall ((x_33711 Nat_355) (x_33712 Nat_355) (x_33713 Nat_355) (x_33714 Nat_355) (x_33673 Nat_355) (y_1285 Nat_355) (z_1194 Nat_355))
	(=>	(and true
			(diseqNat_355 x_33712 x_33714)
			(plus_70 x_33711 y_1285 z_1194)
			(plus_70 x_33712 x_33673 x_33711)
			(plus_70 x_33713 x_33673 y_1285)
			(plus_70 x_33714 x_33713 z_1194))
		false)))
(assert (forall ((x_33715 Nat_355) (x_33716 Nat_355) (x_33674 Nat_355) (y_1286 Nat_355))
	(=>	(and true
			(diseqNat_355 x_33715 x_33716)
			(times_16 x_33715 x_33674 y_1286)
			(times_16 x_33716 y_1286 x_33674))
		false)))
(assert (forall ((x_33717 Nat_355) (x_33718 Nat_355) (x_33675 Nat_355) (y_1287 Nat_355))
	(=>	(and true
			(diseqNat_355 x_33717 x_33718)
			(plus_70 x_33717 x_33675 y_1287)
			(plus_70 x_33718 y_1287 x_33675))
		false)))
(assert (forall ((x_33719 Nat_355) (x_33720 Nat_355) (x_33721 Nat_355) (x_33722 Nat_355) (x_33723 Nat_355) (x_33676 Nat_355) (y_1288 Nat_355) (z_1195 Nat_355))
	(=>	(and true
			(diseqNat_355 x_33720 x_33723)
			(plus_70 x_33719 y_1288 z_1195)
			(times_16 x_33720 x_33676 x_33719)
			(times_16 x_33721 x_33676 y_1288)
			(times_16 x_33722 x_33676 z_1195)
			(plus_70 x_33723 x_33721 x_33722))
		false)))
(assert (forall ((x_33724 Nat_355) (x_33725 Nat_355) (x_33726 Nat_355) (x_33727 Nat_355) (x_33728 Nat_355) (x_33677 Nat_355) (y_1289 Nat_355) (z_1196 Nat_355))
	(=>	(and true
			(diseqNat_355 x_33725 x_33728)
			(plus_70 x_33724 x_33677 y_1289)
			(times_16 x_33725 x_33724 z_1196)
			(times_16 x_33726 x_33677 z_1196)
			(times_16 x_33727 y_1289 z_1196)
			(plus_70 x_33728 x_33726 x_33727))
		false)))
(assert (forall ((x_33729 Nat_355) (x_33678 Nat_355))
	(=>	(and true
			(diseqNat_355 x_33729 x_33678)
			(times_16 x_33729 x_33678 (succ_76 zero_78)))
		false)))
(assert (forall ((x_33730 Nat_355) (x_33679 Nat_355))
	(=>	(and true
			(diseqNat_355 x_33730 x_33679)
			(times_16 x_33730 (succ_76 zero_78) x_33679))
		false)))
(assert (forall ((x_33731 Nat_355) (x_33680 Nat_355))
	(=>	(and true
			(diseqNat_355 x_33731 x_33680)
			(plus_70 x_33731 x_33680 zero_78))
		false)))
(assert (forall ((x_33732 Nat_355) (x_33681 Nat_355))
	(=>	(and true
			(diseqNat_355 x_33732 x_33681)
			(plus_70 x_33732 zero_78 x_33681))
		false)))
(assert (forall ((x_33733 Nat_355) (x_33682 Nat_355))
	(=>	(and true
			(diseqNat_355 x_33733 zero_78)
			(times_16 x_33733 x_33682 zero_78))
		false)))
(assert (forall ((x_33734 Nat_355) (x_33683 Nat_355))
	(=>	(and true
			(diseqNat_355 x_33734 zero_78)
			(times_16 x_33734 zero_78 x_33683))
		false)))
(check-sat)
