(set-logic HORN)
(declare-datatypes ((Nat_236 0)) (((zero_30 ) (succ_30 (p_89 Nat_236)))))
(declare-fun diseqNat_236 (Nat_236 Nat_236) Bool)
(declare-fun p_90 (Nat_236 Nat_236) Bool)
(declare-fun iszero_30 (Nat_236) Bool)
(declare-fun issucc_30 (Nat_236) Bool)
(assert (forall ((x_18727 Nat_236))
	(p_90 x_18727 (succ_30 x_18727))))
(assert (iszero_30 zero_30))
(assert (forall ((x_18729 Nat_236))
	(issucc_30 (succ_30 x_18729))))
(assert (forall ((x_18730 Nat_236))
	(diseqNat_236 zero_30 (succ_30 x_18730))))
(assert (forall ((x_18731 Nat_236))
	(diseqNat_236 (succ_30 x_18731) zero_30)))
(assert (forall ((x_18732 Nat_236) (x_18733 Nat_236))
	(=> (diseqNat_236 x_18732 x_18733)
	    (diseqNat_236 (succ_30 x_18732) (succ_30 x_18733)))))
(declare-fun plus_29 (Nat_236 Nat_236 Nat_236) Bool)
(assert (forall ((x_18686 Nat_236) (z_740 Nat_236) (y_725 Nat_236))
	(=> (plus_29 x_18686 z_740 y_725)
	    (plus_29 (succ_30 x_18686) (succ_30 z_740) y_725))))
(assert (forall ((x_18687 Nat_236))
	(plus_29 x_18687 zero_30 x_18687)))
(declare-fun times_7 (Nat_236 Nat_236 Nat_236) Bool)
(assert (forall ((x_18688 Nat_236) (x_18689 Nat_236) (z_741 Nat_236) (y_726 Nat_236))
	(=>	(and (times_7 x_18689 z_741 y_726)
			(plus_29 x_18688 y_726 x_18689))
		(times_7 x_18688 (succ_30 z_741) y_726))))
(assert (forall ((y_726 Nat_236))
	(times_7 zero_30 zero_30 y_726)))
(declare-fun formulapow_0 (Nat_236 Nat_236 Nat_236) Bool)
(assert (forall ((x_18692 Nat_236) (x_18693 Nat_236) (z_742 Nat_236) (x_18671 Nat_236))
	(=>	(and (formulapow_0 x_18693 x_18671 z_742)
			(times_7 x_18692 x_18671 x_18693))
		(formulapow_0 x_18692 x_18671 (succ_30 z_742)))))
(assert (forall ((x_18671 Nat_236))
	(formulapow_0 (succ_30 zero_30) x_18671 zero_30)))
(assert (forall ((x_18696 Nat_236) (x_18672 Nat_236))
	(=>	(and true
			(diseqNat_236 x_18696 (succ_30 zero_30))
			(formulapow_0 x_18696 (succ_30 zero_30) x_18672))
		false)))
(assert (forall ((x_18697 Nat_236) (x_18698 Nat_236) (x_18699 Nat_236) (x_18700 Nat_236) (x_18673 Nat_236) (y_728 Nat_236) (z_743 Nat_236))
	(=>	(and true
			(diseqNat_236 x_18698 x_18700)
			(times_7 x_18697 y_728 z_743)
			(times_7 x_18698 x_18673 x_18697)
			(times_7 x_18699 x_18673 y_728)
			(times_7 x_18700 x_18699 z_743))
		false)))
(assert (forall ((x_18701 Nat_236) (x_18702 Nat_236) (x_18703 Nat_236) (x_18704 Nat_236) (x_18674 Nat_236) (y_729 Nat_236) (z_744 Nat_236))
	(=>	(and true
			(diseqNat_236 x_18702 x_18704)
			(plus_29 x_18701 y_729 z_744)
			(plus_29 x_18702 x_18674 x_18701)
			(plus_29 x_18703 x_18674 y_729)
			(plus_29 x_18704 x_18703 z_744))
		false)))
(assert (forall ((x_18705 Nat_236) (x_18706 Nat_236) (x_18675 Nat_236) (y_730 Nat_236))
	(=>	(and true
			(diseqNat_236 x_18705 x_18706)
			(times_7 x_18705 x_18675 y_730)
			(times_7 x_18706 y_730 x_18675))
		false)))
(assert (forall ((x_18707 Nat_236) (x_18708 Nat_236) (x_18676 Nat_236) (y_731 Nat_236))
	(=>	(and true
			(diseqNat_236 x_18707 x_18708)
			(plus_29 x_18707 x_18676 y_731)
			(plus_29 x_18708 y_731 x_18676))
		false)))
(assert (forall ((x_18709 Nat_236) (x_18710 Nat_236) (x_18711 Nat_236) (x_18712 Nat_236) (x_18713 Nat_236) (x_18677 Nat_236) (y_732 Nat_236) (z_745 Nat_236))
	(=>	(and true
			(diseqNat_236 x_18710 x_18713)
			(plus_29 x_18709 y_732 z_745)
			(times_7 x_18710 x_18677 x_18709)
			(times_7 x_18711 x_18677 y_732)
			(times_7 x_18712 x_18677 z_745)
			(plus_29 x_18713 x_18711 x_18712))
		false)))
(assert (forall ((x_18714 Nat_236) (x_18715 Nat_236) (x_18716 Nat_236) (x_18717 Nat_236) (x_18718 Nat_236) (x_18678 Nat_236) (y_733 Nat_236) (z_746 Nat_236))
	(=>	(and true
			(diseqNat_236 x_18715 x_18718)
			(plus_29 x_18714 x_18678 y_733)
			(times_7 x_18715 x_18714 z_746)
			(times_7 x_18716 x_18678 z_746)
			(times_7 x_18717 y_733 z_746)
			(plus_29 x_18718 x_18716 x_18717))
		false)))
(assert (forall ((x_18719 Nat_236) (x_18679 Nat_236))
	(=>	(and true
			(diseqNat_236 x_18719 x_18679)
			(times_7 x_18719 x_18679 (succ_30 zero_30)))
		false)))
(assert (forall ((x_18720 Nat_236) (x_18680 Nat_236))
	(=>	(and true
			(diseqNat_236 x_18720 x_18680)
			(times_7 x_18720 (succ_30 zero_30) x_18680))
		false)))
(assert (forall ((x_18721 Nat_236) (x_18681 Nat_236))
	(=>	(and true
			(diseqNat_236 x_18721 x_18681)
			(plus_29 x_18721 x_18681 zero_30))
		false)))
(assert (forall ((x_18722 Nat_236) (x_18682 Nat_236))
	(=>	(and true
			(diseqNat_236 x_18722 x_18682)
			(plus_29 x_18722 zero_30 x_18682))
		false)))
(assert (forall ((x_18723 Nat_236) (x_18683 Nat_236))
	(=>	(and true
			(diseqNat_236 x_18723 zero_30)
			(times_7 x_18723 x_18683 zero_30))
		false)))
(assert (forall ((x_18724 Nat_236) (x_18684 Nat_236))
	(=>	(and true
			(diseqNat_236 x_18724 zero_30)
			(times_7 x_18724 zero_30 x_18684))
		false)))
(check-sat)