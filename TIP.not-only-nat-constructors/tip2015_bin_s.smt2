
(set-logic HORN)
(define-fun Z_832 () Int 0)
(define-fun S_233 ((x Int)) Int (+ x 1))
(declare-fun unS_297 (Int Int) Bool)
(declare-fun isZ_221 (Int) Bool)
(declare-fun isS_221 (Int) Bool)
(assert (forall ((x_22011 Int))
	(unS_297 x_22011 (S_233 x_22011))))
(assert (isZ_221 Z_832))
(assert (forall ((x_22013 Int))
	(isS_221 (S_233 x_22013))))
(declare-fun add_157 (Int Int Int) Bool)
(declare-fun minus_151 (Int Int Int) Bool)
(declare-fun le_148 (Int Int) Bool)
(declare-fun ge_148 (Int Int) Bool)
(declare-fun lt_153 (Int Int) Bool)
(declare-fun gt_149 (Int Int) Bool)
(declare-fun mult_148 (Int Int Int) Bool)
(declare-fun div_148 (Int Int Int) Bool)
(declare-fun mod_148 (Int Int Int) Bool)
(assert (forall ((y_832 Int))
	(add_157 y_832 Z_832 y_832)))
(assert (forall ((x_22005 Int) (y_832 Int) (r_176 Int))
	(=> (add_157 r_176 x_22005 y_832) (add_157 (S_233 r_176) (S_233 x_22005) y_832))))
(assert (forall ((y_832 Int))
	(minus_151 Z_832 Z_832 y_832)))
(assert (forall ((x_22005 Int) (y_832 Int) (r_176 Int))
	(=> (minus_151 r_176 x_22005 y_832) (minus_151 (S_233 r_176) (S_233 x_22005) y_832))))
(assert (forall ((y_832 Int))
	(le_148 Z_832 y_832)))
(assert (forall ((x_22005 Int) (y_832 Int))
	(=> (le_148 x_22005 y_832) (le_148 (S_233 x_22005) (S_233 y_832)))))
(assert (forall ((y_832 Int))
	(ge_148 y_832 Z_832)))
(assert (forall ((x_22005 Int) (y_832 Int))
	(=> (ge_148 x_22005 y_832) (ge_148 (S_233 x_22005) (S_233 y_832)))))
(assert (forall ((y_832 Int))
	(lt_153 Z_832 (S_233 y_832))))
(assert (forall ((x_22005 Int) (y_832 Int))
	(=> (lt_153 x_22005 y_832) (lt_153 (S_233 x_22005) (S_233 y_832)))))
(assert (forall ((y_832 Int))
	(gt_149 (S_233 y_832) Z_832)))
(assert (forall ((x_22005 Int) (y_832 Int))
	(=> (gt_149 x_22005 y_832) (gt_149 (S_233 x_22005) (S_233 y_832)))))
(assert (forall ((y_832 Int))
	(mult_148 Z_832 Z_832 y_832)))
(assert (forall ((x_22005 Int) (y_832 Int) (r_176 Int) (z_833 Int))
	(=> (and (mult_148 r_176 x_22005 y_832) (add_157 z_833 r_176 y_832)) (mult_148 z_833 (S_233 x_22005) y_832))))
(assert (forall ((x_22005 Int) (y_832 Int))
	(=> (lt_153 x_22005 y_832) (div_148 Z_832 x_22005 y_832))))
(assert (forall ((x_22005 Int) (y_832 Int) (r_176 Int) (z_833 Int))
	(=> (and (ge_148 x_22005 y_832) (minus_151 z_833 x_22005 y_832) (div_148 r_176 z_833 y_832)) (div_148 (S_233 r_176) x_22005 y_832))))
(assert (forall ((x_22005 Int) (y_832 Int))
	(=> (lt_153 x_22005 y_832) (mod_148 x_22005 x_22005 y_832))))
(assert (forall ((x_22005 Int) (y_832 Int) (r_176 Int) (z_833 Int))
	(=> (and (ge_148 x_22005 y_832) (minus_151 z_833 x_22005 y_832) (mod_148 r_176 z_833 y_832)) (mod_148 r_176 x_22005 y_832))))
(declare-datatypes ((Bin_2 0)) (((One_2) (ZeroAnd_2 (projZeroAnd_4 Bin_2)) (OneAnd_2 (projOneAnd_4 Bin_2)))))
(declare-fun diseqBin_2 (Bin_2 Bin_2) Bool)
(declare-fun projZeroAnd_5 (Bin_2 Bin_2) Bool)
(declare-fun projOneAnd_5 (Bin_2 Bin_2) Bool)
(declare-fun isOne_2 (Bin_2) Bool)
(declare-fun isZeroAnd_2 (Bin_2) Bool)
(declare-fun isOneAnd_2 (Bin_2) Bool)
(assert (forall ((x_22019 Bin_2))
	(projZeroAnd_5 x_22019 (ZeroAnd_2 x_22019))))
(assert (forall ((x_22021 Bin_2))
	(projOneAnd_5 x_22021 (OneAnd_2 x_22021))))
(assert (isOne_2 One_2))
(assert (forall ((x_22023 Bin_2))
	(isZeroAnd_2 (ZeroAnd_2 x_22023))))
(assert (forall ((x_22024 Bin_2))
	(isOneAnd_2 (OneAnd_2 x_22024))))
(assert (forall ((x_22025 Bin_2))
	(diseqBin_2 One_2 (ZeroAnd_2 x_22025))))
(assert (forall ((x_22026 Bin_2))
	(diseqBin_2 One_2 (OneAnd_2 x_22026))))
(assert (forall ((x_22027 Bin_2))
	(diseqBin_2 (ZeroAnd_2 x_22027) One_2)))
(assert (forall ((x_22028 Bin_2))
	(diseqBin_2 (OneAnd_2 x_22028) One_2)))
(assert (forall ((x_22029 Bin_2) (x_22030 Bin_2))
	(diseqBin_2 (ZeroAnd_2 x_22029) (OneAnd_2 x_22030))))
(assert (forall ((x_22031 Bin_2) (x_22032 Bin_2))
	(diseqBin_2 (OneAnd_2 x_22031) (ZeroAnd_2 x_22032))))
(assert (forall ((x_22033 Bin_2) (x_22034 Bin_2))
	(=> (diseqBin_2 x_22033 x_22034) (diseqBin_2 (ZeroAnd_2 x_22033) (ZeroAnd_2 x_22034)))))
(assert (forall ((x_22035 Bin_2) (x_22036 Bin_2))
	(=> (diseqBin_2 x_22035 x_22036) (diseqBin_2 (OneAnd_2 x_22035) (OneAnd_2 x_22036)))))
(declare-fun toNat_1 (Int Bin_2) Bool)
(assert (forall ((x_22006 Int) (x_21991 Int) (x_21992 Int) (x_21993 Int) (ys_69 Bin_2))
	(=> (and (toNat_1 x_21992 ys_69) (toNat_1 x_21993 ys_69) (add_157 x_22006 (S_233 Z_832) x_21992) (add_157 x_21991 x_22006 x_21993)) (toNat_1 x_21991 (OneAnd_2 ys_69)))))
(assert (forall ((x_21994 Int) (x_21995 Int) (x_21996 Int) (xs_257 Bin_2))
	(=> (and (toNat_1 x_21995 xs_257) (toNat_1 x_21996 xs_257) (add_157 x_21994 x_21995 x_21996)) (toNat_1 x_21994 (ZeroAnd_2 xs_257)))))
(assert (toNat_1 (S_233 Z_832) One_2))
(declare-fun s_232 (Bin_2 Bin_2) Bool)
(assert (forall ((x_21999 Bin_2) (ys_70 Bin_2))
	(=> (s_232 x_21999 ys_70) (s_232 (ZeroAnd_2 x_21999) (OneAnd_2 ys_70)))))
(assert (forall ((xs_258 Bin_2))
	(s_232 (OneAnd_2 xs_258) (ZeroAnd_2 xs_258))))
(assert (s_232 (ZeroAnd_2 One_2) One_2))
(assert (forall ((x_22009 Int) (x_22002 Bin_2) (x_22003 Int) (x_22004 Int) (n_46 Bin_2))
	(=> (and true (distinct x_22003 x_22009) (s_232 x_22002 n_46) (toNat_1 x_22003 x_22002) (toNat_1 x_22004 n_46) (add_157 x_22009 (S_233 Z_832) x_22004)) false)))
(check-sat)