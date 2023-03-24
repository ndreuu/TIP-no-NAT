(set-logic HORN)
(declare-datatypes ((Nat_454 0)) (((zero_115 ) (succ_112 (p_322 Nat_454)))))
(declare-fun diseqNat_454 (Nat_454 Nat_454) Bool)
(declare-fun p_323 (Nat_454 Nat_454) Bool)
(declare-fun iszero_112 (Nat_454) Bool)
(declare-fun issucc_112 (Nat_454) Bool)
(assert (forall ((x_50183 Nat_454))
	(p_323 x_50183 (succ_112 x_50183))))
(assert (iszero_112 zero_115))
(assert (forall ((x_50185 Nat_454))
	(issucc_112 (succ_112 x_50185))))
(assert (forall ((x_50186 Nat_454))
	(diseqNat_454 zero_115 (succ_112 x_50186))))
(assert (forall ((x_50187 Nat_454))
	(diseqNat_454 (succ_112 x_50187) zero_115)))
(assert (forall ((x_50188 Nat_454) (x_50189 Nat_454))
	(=> (diseqNat_454 x_50188 x_50189)
	    (diseqNat_454 (succ_112 x_50188) (succ_112 x_50189)))))
(declare-fun plus_112 (Nat_454 Nat_454 Nat_454) Bool)
(assert (forall ((x_50130 Nat_454) (z_1606 Nat_454) (y_1797 Nat_454))
	(=> (plus_112 x_50130 z_1606 y_1797)
	    (plus_112 (succ_112 x_50130) (succ_112 z_1606) y_1797))))
(assert (forall ((x_50131 Nat_454))
	(plus_112 x_50131 zero_115 x_50131)))
(declare-fun times_25 (Nat_454 Nat_454 Nat_454) Bool)
(assert (forall ((x_50132 Nat_454) (x_50133 Nat_454) (z_1607 Nat_454) (y_1798 Nat_454))
	(=>	(and (times_25 x_50133 z_1607 y_1798)
			(plus_112 x_50132 y_1798 x_50133))
		(times_25 x_50132 (succ_112 z_1607) y_1798))))
(assert (forall ((y_1798 Nat_454))
	(times_25 zero_115 zero_115 y_1798)))
(declare-fun formulapow_7 (Nat_454 Nat_454 Nat_454) Bool)
(assert (forall ((x_50136 Nat_454) (x_50137 Nat_454) (z_1608 Nat_454) (x_50113 Nat_454))
	(=>	(and (formulapow_7 x_50137 x_50113 z_1608)
			(times_25 x_50136 x_50113 x_50137))
		(formulapow_7 x_50136 x_50113 (succ_112 z_1608)))))
(assert (forall ((x_50113 Nat_454))
	(formulapow_7 (succ_112 zero_115) x_50113 zero_115)))
(declare-fun formulapow_8 (Nat_454 Nat_454 Nat_454) Bool)
(assert (forall ((x_50140 Nat_454) (x_50141 Nat_454) (z_1609 Nat_454) (x_50114 Nat_454))
	(=>	(and (formulapow_8 x_50141 x_50114 z_1609)
			(times_25 x_50140 x_50114 x_50141))
		(formulapow_8 x_50140 x_50114 (succ_112 z_1609)))))
(assert (forall ((x_50114 Nat_454))
	(formulapow_8 (succ_112 zero_115) x_50114 zero_115)))
(declare-fun formulapow_9 (Nat_454 Nat_454 Nat_454) Bool)
(assert (forall ((x_50144 Nat_454) (x_50145 Nat_454) (z_1610 Nat_454) (x_50115 Nat_454))
	(=>	(and (formulapow_9 x_50145 x_50115 z_1610)
			(times_25 x_50144 x_50115 x_50145))
		(formulapow_9 x_50144 x_50115 (succ_112 z_1610)))))
(assert (forall ((x_50115 Nat_454))
	(formulapow_9 (succ_112 zero_115) x_50115 zero_115)))
(assert (forall ((x_50148 Nat_454) (x_50149 Nat_454) (x_50150 Nat_454) (x_50151 Nat_454) (x_50152 Nat_454) (x_50116 Nat_454) (y_1802 Nat_454) (z_1611 Nat_454))
	(=>	(and true
			(diseqNat_454 x_50149 x_50152)
			(plus_112 x_50148 y_1802 z_1611)
			(formulapow_9 x_50149 x_50116 x_50148)
			(formulapow_8 x_50150 x_50116 y_1802)
			(formulapow_7 x_50151 x_50116 z_1611)
			(times_25 x_50152 x_50150 x_50151))
		false)))
(assert (forall ((x_50153 Nat_454) (x_50154 Nat_454) (x_50155 Nat_454) (x_50156 Nat_454) (x_50117 Nat_454) (y_1803 Nat_454) (z_1612 Nat_454))
	(=>	(and true
			(diseqNat_454 x_50154 x_50156)
			(times_25 x_50153 y_1803 z_1612)
			(times_25 x_50154 x_50117 x_50153)
			(times_25 x_50155 x_50117 y_1803)
			(times_25 x_50156 x_50155 z_1612))
		false)))
(assert (forall ((x_50157 Nat_454) (x_50158 Nat_454) (x_50159 Nat_454) (x_50160 Nat_454) (x_50118 Nat_454) (y_1804 Nat_454) (z_1613 Nat_454))
	(=>	(and true
			(diseqNat_454 x_50158 x_50160)
			(plus_112 x_50157 y_1804 z_1613)
			(plus_112 x_50158 x_50118 x_50157)
			(plus_112 x_50159 x_50118 y_1804)
			(plus_112 x_50160 x_50159 z_1613))
		false)))
(assert (forall ((x_50161 Nat_454) (x_50162 Nat_454) (x_50119 Nat_454) (y_1805 Nat_454))
	(=>	(and true
			(diseqNat_454 x_50161 x_50162)
			(times_25 x_50161 x_50119 y_1805)
			(times_25 x_50162 y_1805 x_50119))
		false)))
(assert (forall ((x_50163 Nat_454) (x_50164 Nat_454) (x_50120 Nat_454) (y_1806 Nat_454))
	(=>	(and true
			(diseqNat_454 x_50163 x_50164)
			(plus_112 x_50163 x_50120 y_1806)
			(plus_112 x_50164 y_1806 x_50120))
		false)))
(assert (forall ((x_50165 Nat_454) (x_50166 Nat_454) (x_50167 Nat_454) (x_50168 Nat_454) (x_50169 Nat_454) (x_50121 Nat_454) (y_1807 Nat_454) (z_1614 Nat_454))
	(=>	(and true
			(diseqNat_454 x_50166 x_50169)
			(plus_112 x_50165 y_1807 z_1614)
			(times_25 x_50166 x_50121 x_50165)
			(times_25 x_50167 x_50121 y_1807)
			(times_25 x_50168 x_50121 z_1614)
			(plus_112 x_50169 x_50167 x_50168))
		false)))
(assert (forall ((x_50170 Nat_454) (x_50171 Nat_454) (x_50172 Nat_454) (x_50173 Nat_454) (x_50174 Nat_454) (x_50122 Nat_454) (y_1808 Nat_454) (z_1615 Nat_454))
	(=>	(and true
			(diseqNat_454 x_50171 x_50174)
			(plus_112 x_50170 x_50122 y_1808)
			(times_25 x_50171 x_50170 z_1615)
			(times_25 x_50172 x_50122 z_1615)
			(times_25 x_50173 y_1808 z_1615)
			(plus_112 x_50174 x_50172 x_50173))
		false)))
(assert (forall ((x_50175 Nat_454) (x_50123 Nat_454))
	(=>	(and true
			(diseqNat_454 x_50175 x_50123)
			(times_25 x_50175 x_50123 (succ_112 zero_115)))
		false)))
(assert (forall ((x_50176 Nat_454) (x_50124 Nat_454))
	(=>	(and true
			(diseqNat_454 x_50176 x_50124)
			(times_25 x_50176 (succ_112 zero_115) x_50124))
		false)))
(assert (forall ((x_50177 Nat_454) (x_50125 Nat_454))
	(=>	(and true
			(diseqNat_454 x_50177 x_50125)
			(plus_112 x_50177 x_50125 zero_115))
		false)))
(assert (forall ((x_50178 Nat_454) (x_50126 Nat_454))
	(=>	(and true
			(diseqNat_454 x_50178 x_50126)
			(plus_112 x_50178 zero_115 x_50126))
		false)))
(assert (forall ((x_50179 Nat_454) (x_50127 Nat_454))
	(=>	(and true
			(diseqNat_454 x_50179 zero_115)
			(times_25 x_50179 x_50127 zero_115))
		false)))
(assert (forall ((x_50180 Nat_454) (x_50128 Nat_454))
	(=>	(and true
			(diseqNat_454 x_50180 zero_115)
			(times_25 x_50180 zero_115 x_50128))
		false)))
(check-sat)