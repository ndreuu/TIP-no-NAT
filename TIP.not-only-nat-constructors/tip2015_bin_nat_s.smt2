(set-logic HORN)
(define-fun zero_45 () Int 0)
(define-fun succ_44 ((x Int)) Int (+ x 1))
(declare-fun p_129 (Int Int) Bool)
(declare-fun iszero_44 (Int) Bool)
(declare-fun issucc_44 (Int) Bool)
(assert (forall ((x_22276 Int))
	(p_129 x_22276 (succ_44 x_22276))))
(assert (iszero_44 zero_45))
(assert (forall ((x_22278 Int))
	(issucc_44 (succ_44 x_22278))))
(declare-datatypes ((Bin_4 0)) (((One_4) (ZeroAnd_4 (projZeroAnd_8 Bin_4)) (OneAnd_4 (projOneAnd_8 Bin_4)))))
(declare-fun diseqBin_4 (Bin_4 Bin_4) Bool)
(declare-fun projZeroAnd_9 (Bin_4 Bin_4) Bool)
(declare-fun projOneAnd_9 (Bin_4 Bin_4) Bool)
(declare-fun isOne_4 (Bin_4) Bool)
(declare-fun isZeroAnd_4 (Bin_4) Bool)
(declare-fun isOneAnd_4 (Bin_4) Bool)
(assert (forall ((x_22284 Bin_4))
	(projZeroAnd_9 x_22284 (ZeroAnd_4 x_22284))))
(assert (forall ((x_22286 Bin_4))
	(projOneAnd_9 x_22286 (OneAnd_4 x_22286))))
(assert (isOne_4 One_4))
(assert (forall ((x_22288 Bin_4))
	(isZeroAnd_4 (ZeroAnd_4 x_22288))))
(assert (forall ((x_22289 Bin_4))
	(isOneAnd_4 (OneAnd_4 x_22289))))
(assert (forall ((x_22290 Bin_4))
	(diseqBin_4 One_4 (ZeroAnd_4 x_22290))))
(assert (forall ((x_22291 Bin_4))
	(diseqBin_4 One_4 (OneAnd_4 x_22291))))
(assert (forall ((x_22292 Bin_4))
	(diseqBin_4 (ZeroAnd_4 x_22292) One_4)))
(assert (forall ((x_22293 Bin_4))
	(diseqBin_4 (OneAnd_4 x_22293) One_4)))
(assert (forall ((x_22294 Bin_4) (x_22295 Bin_4))
	(diseqBin_4 (ZeroAnd_4 x_22294) (OneAnd_4 x_22295))))
(assert (forall ((x_22296 Bin_4) (x_22297 Bin_4))
	(diseqBin_4 (OneAnd_4 x_22296) (ZeroAnd_4 x_22297))))
(assert (forall ((x_22298 Bin_4) (x_22299 Bin_4))
	(=> (diseqBin_4 x_22298 x_22299) (diseqBin_4 (ZeroAnd_4 x_22298) (ZeroAnd_4 x_22299)))))
(assert (forall ((x_22300 Bin_4) (x_22301 Bin_4))
	(=> (diseqBin_4 x_22300 x_22301) (diseqBin_4 (OneAnd_4 x_22300) (OneAnd_4 x_22301)))))
(declare-fun s_238 (Bin_4 Bin_4) Bool)
(assert (forall ((x_22246 Bin_4) (ys_74 Bin_4))
	(=> (s_238 x_22246 ys_74) (s_238 (ZeroAnd_4 x_22246) (OneAnd_4 ys_74)))))
(assert (forall ((xs_263 Bin_4))
	(s_238 (OneAnd_4 xs_263) (ZeroAnd_4 xs_263))))
(assert (s_238 (ZeroAnd_4 One_4) One_4))
(declare-fun plus_42 (Int Int Int) Bool)
(assert (forall ((x_22250 Int) (z_849 Int) (y_849 Int))
	(=> (plus_42 x_22250 z_849 y_849) (plus_42 (succ_44 x_22250) (succ_44 z_849) y_849))))
(assert (forall ((x_22251 Int))
	(plus_42 x_22251 zero_45 x_22251)))
(declare-fun toNat_2 (Int Bin_4) Bool)
(assert (forall ((x_22252 Int) (x_22253 Int) (x_22254 Int) (x_22255 Int) (ys_75 Bin_4))
	(=> (and (toNat_2 x_22253 ys_75) (plus_42 x_22254 (succ_44 zero_45) x_22253) (toNat_2 x_22255 ys_75) (plus_42 x_22252 x_22254 x_22255)) (toNat_2 x_22252 (OneAnd_4 ys_75)))))
(assert (forall ((x_22257 Int) (x_22258 Int) (x_22259 Int) (xs_264 Bin_4))
	(=> (and (toNat_2 x_22258 xs_264) (toNat_2 x_22259 xs_264) (plus_42 x_22257 x_22258 x_22259)) (toNat_2 x_22257 (ZeroAnd_4 xs_264)))))
(assert (toNat_2 (succ_44 zero_45) One_4))
(assert (forall ((x_22262 Bin_4) (x_22263 Int) (x_22264 Int) (x_22265 Int) (n_52 Bin_4))
	(=> (and (distinct x_22263 x_22265) (s_238 x_22262 n_52) (toNat_2 x_22263 x_22262) (toNat_2 x_22264 n_52) (plus_42 x_22265 (succ_44 zero_45) x_22264)) false)))
(assert (forall ((x_22266 Int) (x_22267 Int) (x_22268 Int) (x_22269 Int) (x_22241 Int) (y_850 Int) (z_850 Int))
	(=> (and (distinct x_22267 x_22269) (plus_42 x_22266 y_850 z_850) (plus_42 x_22267 x_22241 x_22266) (plus_42 x_22268 x_22241 y_850) (plus_42 x_22269 x_22268 z_850)) false)))
(assert (forall ((x_22270 Int) (x_22271 Int) (x_22242 Int) (y_851 Int))
	(=> (and (distinct x_22270 x_22271) (plus_42 x_22270 x_22242 y_851) (plus_42 x_22271 y_851 x_22242)) false)))
(assert (forall ((x_22272 Int) (x_22243 Int))
	(=> (and (distinct x_22272 x_22243) (plus_42 x_22272 x_22243 zero_45)) false)))
(assert (forall ((x_22273 Int) (x_22244 Int))
	(=> (and (distinct x_22273 x_22244) (plus_42 x_22273 zero_45 x_22244)) false)))
(check-sat)
