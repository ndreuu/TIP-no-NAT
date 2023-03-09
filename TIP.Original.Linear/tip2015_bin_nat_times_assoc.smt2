(set-logic HORN)
(declare-datatypes ((Bin_9 0)) (((One_10 ) (ZeroAnd_9 (projZeroAnd_18 Bin_9)) (OneAnd_9 (projOneAnd_18 Bin_9)))))
(declare-fun diseqBin_9 (Bin_9 Bin_9) Bool)
(declare-fun projZeroAnd_19 (Bin_9 Bin_9) Bool)
(declare-fun projOneAnd_19 (Bin_9 Bin_9) Bool)
(declare-fun isOne_9 (Bin_9) Bool)
(declare-fun isZeroAnd_9 (Bin_9) Bool)
(declare-fun isOneAnd_9 (Bin_9) Bool)
(assert (forall ((x_34866 Bin_9))
	(projZeroAnd_19 x_34866 (ZeroAnd_9 x_34866))))
(assert (forall ((x_34868 Bin_9))
	(projOneAnd_19 x_34868 (OneAnd_9 x_34868))))
(assert (isOne_9 One_10))
(assert (forall ((x_34870 Bin_9))
	(isZeroAnd_9 (ZeroAnd_9 x_34870))))
(assert (forall ((x_34871 Bin_9))
	(isOneAnd_9 (OneAnd_9 x_34871))))
(assert (forall ((x_34872 Bin_9))
	(diseqBin_9 One_10 (ZeroAnd_9 x_34872))))
(assert (forall ((x_34873 Bin_9))
	(diseqBin_9 One_10 (OneAnd_9 x_34873))))
(assert (forall ((x_34874 Bin_9))
	(diseqBin_9 (ZeroAnd_9 x_34874) One_10)))
(assert (forall ((x_34875 Bin_9))
	(diseqBin_9 (OneAnd_9 x_34875) One_10)))
(assert (forall ((x_34876 Bin_9) (x_34877 Bin_9))
	(diseqBin_9 (ZeroAnd_9 x_34876) (OneAnd_9 x_34877))))
(assert (forall ((x_34878 Bin_9) (x_34879 Bin_9))
	(diseqBin_9 (OneAnd_9 x_34878) (ZeroAnd_9 x_34879))))
(assert (forall ((x_34880 Bin_9) (x_34881 Bin_9))
	(=> (diseqBin_9 x_34880 x_34881)
	    (diseqBin_9 (ZeroAnd_9 x_34880) (ZeroAnd_9 x_34881)))))
(assert (forall ((x_34882 Bin_9) (x_34883 Bin_9))
	(=> (diseqBin_9 x_34882 x_34883)
	    (diseqBin_9 (OneAnd_9 x_34882) (OneAnd_9 x_34883)))))
(declare-fun s_313 (Bin_9 Bin_9) Bool)
(assert (forall ((x_34836 Bin_9) (ys_128 Bin_9))
	(=> (s_313 x_34836 ys_128)
	    (s_313 (ZeroAnd_9 x_34836) (OneAnd_9 ys_128)))))
(assert (forall ((xs_410 Bin_9))
	(s_313 (OneAnd_9 xs_410) (ZeroAnd_9 xs_410))))
(assert (s_313 (ZeroAnd_9 One_10) One_10))
(declare-fun plus_79 (Bin_9 Bin_9 Bin_9) Bool)
(assert (forall ((x_34840 Bin_9) (x_34841 Bin_9) (ys_129 Bin_9) (x_34832 Bin_9))
	(=>	(and (plus_79 x_34840 x_34832 ys_129)
			(s_313 x_34841 x_34840))
		(plus_79 (ZeroAnd_9 x_34841) (OneAnd_9 x_34832) (OneAnd_9 ys_129)))))
(assert (forall ((x_34843 Bin_9) (zs_43 Bin_9) (x_34832 Bin_9))
	(=> (plus_79 x_34843 x_34832 zs_43)
	    (plus_79 (OneAnd_9 x_34843) (OneAnd_9 x_34832) (ZeroAnd_9 zs_43)))))
(assert (forall ((x_34844 Bin_9) (x_34832 Bin_9))
	(=> (s_313 x_34844 (OneAnd_9 x_34832))
	    (plus_79 x_34844 (OneAnd_9 x_34832) One_10))))
(assert (forall ((x_34847 Bin_9) (xs_411 Bin_9) (z_1296 Bin_9))
	(=> (plus_79 x_34847 z_1296 xs_411)
	    (plus_79 (OneAnd_9 x_34847) (ZeroAnd_9 z_1296) (OneAnd_9 xs_411)))))
(assert (forall ((x_34849 Bin_9) (ys_130 Bin_9) (z_1296 Bin_9))
	(=> (plus_79 x_34849 z_1296 ys_130)
	    (plus_79 (ZeroAnd_9 x_34849) (ZeroAnd_9 z_1296) (ZeroAnd_9 ys_130)))))
(assert (forall ((x_34850 Bin_9) (z_1296 Bin_9))
	(=> (s_313 x_34850 (ZeroAnd_9 z_1296))
	    (plus_79 x_34850 (ZeroAnd_9 z_1296) One_10))))
(assert (forall ((x_34852 Bin_9) (y_1399 Bin_9))
	(=> (s_313 x_34852 y_1399)
	    (plus_79 x_34852 One_10 y_1399))))
(declare-fun times_20 (Bin_9 Bin_9 Bin_9) Bool)
(assert (forall ((x_34854 Bin_9) (x_34855 Bin_9) (xs_412 Bin_9) (y_1400 Bin_9))
	(=>	(and (times_20 x_34855 xs_412 y_1400)
			(plus_79 x_34854 (ZeroAnd_9 x_34855) y_1400))
		(times_20 x_34854 (OneAnd_9 xs_412) y_1400))))
(assert (forall ((x_34858 Bin_9) (xs_413 Bin_9) (y_1400 Bin_9))
	(=> (times_20 x_34858 xs_413 y_1400)
	    (times_20 (ZeroAnd_9 x_34858) (ZeroAnd_9 xs_413) y_1400))))
(assert (forall ((x_34859 Bin_9))
	(times_20 x_34859 One_10 x_34859)))
(assert (forall ((x_34860 Bin_9) (x_34861 Bin_9) (x_34862 Bin_9) (x_34863 Bin_9) (x_34834 Bin_9) (y_1401 Bin_9) (z_1297 Bin_9))
	(=>	(and true
			(diseqBin_9 x_34861 x_34863)
			(times_20 x_34860 y_1401 z_1297)
			(times_20 x_34861 x_34834 x_34860)
			(times_20 x_34862 x_34834 y_1401)
			(times_20 x_34863 x_34862 z_1297))
		false)))
(check-sat)
