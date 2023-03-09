(set-logic HORN)
(declare-datatypes ((Bin_8 0)) (((One_8 ) (ZeroAnd_8 (projZeroAnd_16 Bin_8)) (OneAnd_8 (projOneAnd_16 Bin_8)))))
(declare-fun diseqBin_8 (Bin_8 Bin_8) Bool)
(declare-fun projZeroAnd_17 (Bin_8 Bin_8) Bool)
(declare-fun projOneAnd_17 (Bin_8 Bin_8) Bool)
(declare-fun isOne_8 (Bin_8) Bool)
(declare-fun isZeroAnd_8 (Bin_8) Bool)
(declare-fun isOneAnd_8 (Bin_8) Bool)
(assert (forall ((x_28683 Bin_8))
	(projZeroAnd_17 x_28683 (ZeroAnd_8 x_28683))))
(assert (forall ((x_28685 Bin_8))
	(projOneAnd_17 x_28685 (OneAnd_8 x_28685))))
(assert (isOne_8 One_8))
(assert (forall ((x_28687 Bin_8))
	(isZeroAnd_8 (ZeroAnd_8 x_28687))))
(assert (forall ((x_28688 Bin_8))
	(isOneAnd_8 (OneAnd_8 x_28688))))
(assert (forall ((x_28689 Bin_8))
	(diseqBin_8 One_8 (ZeroAnd_8 x_28689))))
(assert (forall ((x_28690 Bin_8))
	(diseqBin_8 One_8 (OneAnd_8 x_28690))))
(assert (forall ((x_28691 Bin_8))
	(diseqBin_8 (ZeroAnd_8 x_28691) One_8)))
(assert (forall ((x_28692 Bin_8))
	(diseqBin_8 (OneAnd_8 x_28692) One_8)))
(assert (forall ((x_28693 Bin_8) (x_28694 Bin_8))
	(diseqBin_8 (ZeroAnd_8 x_28693) (OneAnd_8 x_28694))))
(assert (forall ((x_28695 Bin_8) (x_28696 Bin_8))
	(diseqBin_8 (OneAnd_8 x_28695) (ZeroAnd_8 x_28696))))
(assert (forall ((x_28697 Bin_8) (x_28698 Bin_8))
	(=> (diseqBin_8 x_28697 x_28698)
	    (diseqBin_8 (ZeroAnd_8 x_28697) (ZeroAnd_8 x_28698)))))
(assert (forall ((x_28699 Bin_8) (x_28700 Bin_8))
	(=> (diseqBin_8 x_28699 x_28700)
	    (diseqBin_8 (OneAnd_8 x_28699) (OneAnd_8 x_28700)))))
(declare-fun s_288 (Bin_8 Bin_8) Bool)
(assert (forall ((x_28655 Bin_8) (ys_119 Bin_8))
	(=> (s_288 x_28655 ys_119)
	    (s_288 (ZeroAnd_8 x_28655) (OneAnd_8 ys_119)))))
(assert (forall ((xs_366 Bin_8))
	(s_288 (OneAnd_8 xs_366) (ZeroAnd_8 xs_366))))
(assert (s_288 (ZeroAnd_8 One_8) One_8))
(declare-fun plus_64 (Bin_8 Bin_8 Bin_8) Bool)
(assert (forall ((x_28659 Bin_8) (x_28660 Bin_8) (ys_120 Bin_8) (x_28651 Bin_8))
	(=>	(and (plus_64 x_28659 x_28651 ys_120)
			(s_288 x_28660 x_28659))
		(plus_64 (ZeroAnd_8 x_28660) (OneAnd_8 x_28651) (OneAnd_8 ys_120)))))
(assert (forall ((x_28662 Bin_8) (zs_38 Bin_8) (x_28651 Bin_8))
	(=> (plus_64 x_28662 x_28651 zs_38)
	    (plus_64 (OneAnd_8 x_28662) (OneAnd_8 x_28651) (ZeroAnd_8 zs_38)))))
(assert (forall ((x_28663 Bin_8) (x_28651 Bin_8))
	(=> (s_288 x_28663 (OneAnd_8 x_28651))
	    (plus_64 x_28663 (OneAnd_8 x_28651) One_8))))
(assert (forall ((x_28666 Bin_8) (xs_367 Bin_8) (z_1136 Bin_8))
	(=> (plus_64 x_28666 z_1136 xs_367)
	    (plus_64 (OneAnd_8 x_28666) (ZeroAnd_8 z_1136) (OneAnd_8 xs_367)))))
(assert (forall ((x_28668 Bin_8) (ys_121 Bin_8) (z_1136 Bin_8))
	(=> (plus_64 x_28668 z_1136 ys_121)
	    (plus_64 (ZeroAnd_8 x_28668) (ZeroAnd_8 z_1136) (ZeroAnd_8 ys_121)))))
(assert (forall ((x_28669 Bin_8) (z_1136 Bin_8))
	(=> (s_288 x_28669 (ZeroAnd_8 z_1136))
	    (plus_64 x_28669 (ZeroAnd_8 z_1136) One_8))))
(assert (forall ((x_28671 Bin_8) (y_1203 Bin_8))
	(=> (s_288 x_28671 y_1203)
	    (plus_64 x_28671 One_8 y_1203))))
(declare-fun times_15 (Bin_8 Bin_8 Bin_8) Bool)
(assert (forall ((x_28673 Bin_8) (x_28674 Bin_8) (xs_368 Bin_8) (y_1204 Bin_8))
	(=>	(and (times_15 x_28674 xs_368 y_1204)
			(plus_64 x_28673 (ZeroAnd_8 x_28674) y_1204))
		(times_15 x_28673 (OneAnd_8 xs_368) y_1204))))
(assert (forall ((x_28677 Bin_8) (xs_369 Bin_8) (y_1204 Bin_8))
	(=> (times_15 x_28677 xs_369 y_1204)
	    (times_15 (ZeroAnd_8 x_28677) (ZeroAnd_8 xs_369) y_1204))))
(assert (forall ((x_28678 Bin_8))
	(times_15 x_28678 One_8 x_28678)))
(assert (forall ((x_28679 Bin_8) (x_28680 Bin_8) (x_28653 Bin_8) (y_1205 Bin_8))
	(=>	(and true
			(diseqBin_8 x_28679 x_28680)
			(times_15 x_28679 x_28653 y_1205)
			(times_15 x_28680 y_1205 x_28653))
		false)))
(check-sat)
