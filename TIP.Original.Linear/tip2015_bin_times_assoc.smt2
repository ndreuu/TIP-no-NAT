(set-logic HORN)
(declare-datatypes ((Bin_11 0)) (((One_12 ) (ZeroAnd_11 (projZeroAnd_22 Bin_11)) (OneAnd_11 (projOneAnd_22 Bin_11)))))
(declare-fun diseqBin_11 (Bin_11 Bin_11) Bool)
(declare-fun projZeroAnd_23 (Bin_11 Bin_11) Bool)
(declare-fun projOneAnd_23 (Bin_11 Bin_11) Bool)
(declare-fun isOne_11 (Bin_11) Bool)
(declare-fun isZeroAnd_11 (Bin_11) Bool)
(declare-fun isOneAnd_11 (Bin_11) Bool)
(assert (forall ((x_46171 Bin_11))
	(projZeroAnd_23 x_46171 (ZeroAnd_11 x_46171))))
(assert (forall ((x_46173 Bin_11))
	(projOneAnd_23 x_46173 (OneAnd_11 x_46173))))
(assert (isOne_11 One_12))
(assert (forall ((x_46175 Bin_11))
	(isZeroAnd_11 (ZeroAnd_11 x_46175))))
(assert (forall ((x_46176 Bin_11))
	(isOneAnd_11 (OneAnd_11 x_46176))))
(assert (forall ((x_46177 Bin_11))
	(diseqBin_11 One_12 (ZeroAnd_11 x_46177))))
(assert (forall ((x_46178 Bin_11))
	(diseqBin_11 One_12 (OneAnd_11 x_46178))))
(assert (forall ((x_46179 Bin_11))
	(diseqBin_11 (ZeroAnd_11 x_46179) One_12)))
(assert (forall ((x_46180 Bin_11))
	(diseqBin_11 (OneAnd_11 x_46180) One_12)))
(assert (forall ((x_46181 Bin_11) (x_46182 Bin_11))
	(diseqBin_11 (ZeroAnd_11 x_46181) (OneAnd_11 x_46182))))
(assert (forall ((x_46183 Bin_11) (x_46184 Bin_11))
	(diseqBin_11 (OneAnd_11 x_46183) (ZeroAnd_11 x_46184))))
(assert (forall ((x_46185 Bin_11) (x_46186 Bin_11))
	(=> (diseqBin_11 x_46185 x_46186)
	    (diseqBin_11 (ZeroAnd_11 x_46185) (ZeroAnd_11 x_46186)))))
(assert (forall ((x_46187 Bin_11) (x_46188 Bin_11))
	(=> (diseqBin_11 x_46187 x_46188)
	    (diseqBin_11 (OneAnd_11 x_46187) (OneAnd_11 x_46188)))))
(declare-fun s_348 (Bin_11 Bin_11) Bool)
(assert (forall ((x_46141 Bin_11) (ys_147 Bin_11))
	(=> (s_348 x_46141 ys_147)
	    (s_348 (ZeroAnd_11 x_46141) (OneAnd_11 ys_147)))))
(assert (forall ((xs_487 Bin_11))
	(s_348 (OneAnd_11 xs_487) (ZeroAnd_11 xs_487))))
(assert (s_348 (ZeroAnd_11 One_12) One_12))
(declare-fun plus_100 (Bin_11 Bin_11 Bin_11) Bool)
(assert (forall ((x_46145 Bin_11) (x_46146 Bin_11) (ys_148 Bin_11) (x_46137 Bin_11))
	(=>	(and (plus_100 x_46145 x_46137 ys_148)
			(s_348 x_46146 x_46145))
		(plus_100 (ZeroAnd_11 x_46146) (OneAnd_11 x_46137) (OneAnd_11 ys_148)))))
(assert (forall ((x_46148 Bin_11) (zs_51 Bin_11) (x_46137 Bin_11))
	(=> (plus_100 x_46148 x_46137 zs_51)
	    (plus_100 (OneAnd_11 x_46148) (OneAnd_11 x_46137) (ZeroAnd_11 zs_51)))))
(assert (forall ((x_46149 Bin_11) (x_46137 Bin_11))
	(=> (s_348 x_46149 (OneAnd_11 x_46137))
	    (plus_100 x_46149 (OneAnd_11 x_46137) One_12))))
(assert (forall ((x_46152 Bin_11) (xs_488 Bin_11) (z_1479 Bin_11))
	(=> (plus_100 x_46152 z_1479 xs_488)
	    (plus_100 (OneAnd_11 x_46152) (ZeroAnd_11 z_1479) (OneAnd_11 xs_488)))))
(assert (forall ((x_46154 Bin_11) (ys_149 Bin_11) (z_1479 Bin_11))
	(=> (plus_100 x_46154 z_1479 ys_149)
	    (plus_100 (ZeroAnd_11 x_46154) (ZeroAnd_11 z_1479) (ZeroAnd_11 ys_149)))))
(assert (forall ((x_46155 Bin_11) (z_1479 Bin_11))
	(=> (s_348 x_46155 (ZeroAnd_11 z_1479))
	    (plus_100 x_46155 (ZeroAnd_11 z_1479) One_12))))
(assert (forall ((x_46157 Bin_11) (y_1643 Bin_11))
	(=> (s_348 x_46157 y_1643)
	    (plus_100 x_46157 One_12 y_1643))))
(declare-fun times_24 (Bin_11 Bin_11 Bin_11) Bool)
(assert (forall ((x_46159 Bin_11) (x_46160 Bin_11) (xs_489 Bin_11) (y_1644 Bin_11))
	(=>	(and (times_24 x_46160 xs_489 y_1644)
			(plus_100 x_46159 (ZeroAnd_11 x_46160) y_1644))
		(times_24 x_46159 (OneAnd_11 xs_489) y_1644))))
(assert (forall ((x_46163 Bin_11) (xs_490 Bin_11) (y_1644 Bin_11))
	(=> (times_24 x_46163 xs_490 y_1644)
	    (times_24 (ZeroAnd_11 x_46163) (ZeroAnd_11 xs_490) y_1644))))
(assert (forall ((x_46164 Bin_11))
	(times_24 x_46164 One_12 x_46164)))
(assert (forall ((x_46165 Bin_11) (x_46166 Bin_11) (x_46167 Bin_11) (x_46168 Bin_11) (x_46139 Bin_11) (y_1645 Bin_11) (z_1480 Bin_11))
	(=>	(and true
			(diseqBin_11 x_46166 x_46168)
			(times_24 x_46165 y_1645 z_1480)
			(times_24 x_46166 x_46139 x_46165)
			(times_24 x_46167 x_46139 y_1645)
			(times_24 x_46168 x_46167 z_1480))
		false)))
(check-sat)
