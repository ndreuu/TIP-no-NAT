(set-logic HORN)
(declare-datatypes ((Nat_257 0)) (((zero_39 ) (succ_39 (p_117 Nat_257)))))
(declare-fun diseqNat_257 (Nat_257 Nat_257) Bool)
(declare-fun p_118 (Nat_257 Nat_257) Bool)
(declare-fun iszero_39 (Nat_257) Bool)
(declare-fun issucc_39 (Nat_257) Bool)
(assert (forall ((x_21883 Nat_257))
	(p_118 x_21883 (succ_39 x_21883))))
(assert (iszero_39 zero_39))
(assert (forall ((x_21885 Nat_257))
	(issucc_39 (succ_39 x_21885))))
(assert (forall ((x_21886 Nat_257))
	(diseqNat_257 zero_39 (succ_39 x_21886))))
(assert (forall ((x_21887 Nat_257))
	(diseqNat_257 (succ_39 x_21887) zero_39)))
(assert (forall ((x_21888 Nat_257) (x_21889 Nat_257))
	(=> (diseqNat_257 x_21888 x_21889)
	    (diseqNat_257 (succ_39 x_21888) (succ_39 x_21889)))))
(declare-fun plus_35 (Nat_257 Nat_257 Nat_257) Bool)
(assert (forall ((x_21787 Nat_257) (z_815 Nat_257) (y_814 Nat_257))
	(=> (plus_35 x_21787 z_815 y_814)
	    (plus_35 (succ_39 x_21787) (succ_39 z_815) y_814))))
(assert (forall ((x_21788 Nat_257))
	(plus_35 x_21788 zero_39 x_21788)))
(declare-fun addacc_7 (Nat_257 Nat_257 Nat_257 Nat_257) Bool)
(assert (forall ((x_21789 Nat_257) (x_21772 Nat_257) (y_815 Nat_257) (z_816 Nat_257))
	(=> (addacc_7 x_21789 x_21772 (succ_39 y_815) z_816)
	    (addacc_7 x_21789 (succ_39 x_21772) y_815 z_816))))
(assert (forall ((x_21791 Nat_257) (x_21773 Nat_257) (z_816 Nat_257))
	(=> (addacc_7 x_21791 zero_39 x_21773 (succ_39 z_816))
	    (addacc_7 x_21791 zero_39 (succ_39 x_21773) z_816))))
(assert (forall ((x_21793 Nat_257))
	(addacc_7 x_21793 zero_39 zero_39 x_21793)))
(declare-fun mulacc_1 (Nat_257 Nat_257 Nat_257 Nat_257) Bool)
(assert (forall ((x_21794 Nat_257) (x_21795 Nat_257) (x_21796 Nat_257) (x_21797 Nat_257) (x_21798 Nat_257) (x_21799 Nat_257) (x_21800 Nat_257) (fail_5 Nat_257))
	(=>	(and (mulacc_1 x_21794 zero_39 zero_39 zero_39)
			(mulacc_1 x_21795 (succ_39 zero_39) zero_39 zero_39)
			(mulacc_1 x_21796 zero_39 (succ_39 zero_39) zero_39)
			(mulacc_1 x_21797 zero_39 zero_39 (succ_39 zero_39))
			(addacc_7 x_21798 x_21795 x_21796 x_21797)
			(addacc_7 x_21799 (succ_39 zero_39) (succ_39 zero_39) (succ_39 zero_39))
			(addacc_7 x_21800 x_21794 x_21798 x_21799)
			(plus_35 fail_5 (succ_39 zero_39) x_21800))
		(mulacc_1 (succ_39 zero_39) (succ_39 zero_39) (succ_39 zero_39) (succ_39 zero_39)))))
(assert (forall ((x_21803 Nat_257) (x_21804 Nat_257) (x_21805 Nat_257) (x_21806 Nat_257) (x_21807 Nat_257) (x_21808 Nat_257) (x_21809 Nat_257) (fail_5 Nat_257) (x_21777 Nat_257) (x_21776 Nat_257) (x_21775 Nat_257))
	(=>	(and (diseqNat_257 x_21775 zero_39)
			(mulacc_1 x_21803 x_21775 x_21776 x_21777)
			(mulacc_1 x_21804 (succ_39 zero_39) x_21776 x_21777)
			(mulacc_1 x_21805 x_21775 (succ_39 zero_39) x_21777)
			(mulacc_1 x_21806 x_21775 x_21776 (succ_39 zero_39))
			(addacc_7 x_21807 x_21804 x_21805 x_21806)
			(addacc_7 x_21808 (succ_39 x_21775) (succ_39 x_21776) (succ_39 x_21777))
			(addacc_7 x_21809 x_21803 x_21807 x_21808)
			(plus_35 fail_5 (succ_39 zero_39) x_21809))
		(mulacc_1 fail_5 (succ_39 x_21775) (succ_39 x_21776) (succ_39 x_21777)))))
(assert (forall ((x_21812 Nat_257) (x_21813 Nat_257) (x_21814 Nat_257) (x_21815 Nat_257) (x_21816 Nat_257) (x_21817 Nat_257) (x_21818 Nat_257) (fail_5 Nat_257) (x_21777 Nat_257) (x_21776 Nat_257))
	(=>	(and (diseqNat_257 x_21776 zero_39)
			(mulacc_1 x_21812 zero_39 x_21776 x_21777)
			(mulacc_1 x_21813 (succ_39 zero_39) x_21776 x_21777)
			(mulacc_1 x_21814 zero_39 (succ_39 zero_39) x_21777)
			(mulacc_1 x_21815 zero_39 x_21776 (succ_39 zero_39))
			(addacc_7 x_21816 x_21813 x_21814 x_21815)
			(addacc_7 x_21817 (succ_39 zero_39) (succ_39 x_21776) (succ_39 x_21777))
			(addacc_7 x_21818 x_21812 x_21816 x_21817)
			(plus_35 fail_5 (succ_39 zero_39) x_21818))
		(mulacc_1 fail_5 (succ_39 zero_39) (succ_39 x_21776) (succ_39 x_21777)))))
(assert (forall ((x_21821 Nat_257) (x_21822 Nat_257) (x_21823 Nat_257) (x_21824 Nat_257) (x_21825 Nat_257) (x_21826 Nat_257) (x_21827 Nat_257) (fail_5 Nat_257) (x_21777 Nat_257) (x_21776 Nat_257) (x_21775 Nat_257))
	(=>	(and (diseqNat_257 x_21775 zero_39)
			(mulacc_1 x_21821 x_21775 x_21776 x_21777)
			(mulacc_1 x_21822 (succ_39 zero_39) x_21776 x_21777)
			(mulacc_1 x_21823 x_21775 (succ_39 zero_39) x_21777)
			(mulacc_1 x_21824 x_21775 x_21776 (succ_39 zero_39))
			(addacc_7 x_21825 x_21822 x_21823 x_21824)
			(addacc_7 x_21826 (succ_39 x_21775) (succ_39 x_21776) (succ_39 x_21777))
			(addacc_7 x_21827 x_21821 x_21825 x_21826)
			(plus_35 fail_5 (succ_39 zero_39) x_21827))
		(mulacc_1 fail_5 (succ_39 x_21775) (succ_39 x_21776) (succ_39 x_21777)))))
(assert (forall ((x_21830 Nat_257) (x_21831 Nat_257) (x_21832 Nat_257) (x_21833 Nat_257) (x_21834 Nat_257) (x_21835 Nat_257) (x_21836 Nat_257) (fail_5 Nat_257) (x_21777 Nat_257))
	(=>	(and (diseqNat_257 x_21777 zero_39)
			(mulacc_1 x_21830 zero_39 zero_39 x_21777)
			(mulacc_1 x_21831 (succ_39 zero_39) zero_39 x_21777)
			(mulacc_1 x_21832 zero_39 (succ_39 zero_39) x_21777)
			(mulacc_1 x_21833 zero_39 zero_39 (succ_39 zero_39))
			(addacc_7 x_21834 x_21831 x_21832 x_21833)
			(addacc_7 x_21835 (succ_39 zero_39) (succ_39 zero_39) (succ_39 x_21777))
			(addacc_7 x_21836 x_21830 x_21834 x_21835)
			(plus_35 fail_5 (succ_39 zero_39) x_21836))
		(mulacc_1 fail_5 (succ_39 zero_39) (succ_39 zero_39) (succ_39 x_21777)))))
(assert (forall ((x_21839 Nat_257) (x_21840 Nat_257) (x_21841 Nat_257) (x_21842 Nat_257) (x_21843 Nat_257) (x_21844 Nat_257) (x_21845 Nat_257) (fail_5 Nat_257) (x_21777 Nat_257) (x_21776 Nat_257) (x_21775 Nat_257))
	(=>	(and (diseqNat_257 x_21775 zero_39)
			(mulacc_1 x_21839 x_21775 x_21776 x_21777)
			(mulacc_1 x_21840 (succ_39 zero_39) x_21776 x_21777)
			(mulacc_1 x_21841 x_21775 (succ_39 zero_39) x_21777)
			(mulacc_1 x_21842 x_21775 x_21776 (succ_39 zero_39))
			(addacc_7 x_21843 x_21840 x_21841 x_21842)
			(addacc_7 x_21844 (succ_39 x_21775) (succ_39 x_21776) (succ_39 x_21777))
			(addacc_7 x_21845 x_21839 x_21843 x_21844)
			(plus_35 fail_5 (succ_39 zero_39) x_21845))
		(mulacc_1 fail_5 (succ_39 x_21775) (succ_39 x_21776) (succ_39 x_21777)))))
(assert (forall ((x_21848 Nat_257) (x_21849 Nat_257) (x_21850 Nat_257) (x_21851 Nat_257) (x_21852 Nat_257) (x_21853 Nat_257) (x_21854 Nat_257) (fail_5 Nat_257) (x_21777 Nat_257) (x_21776 Nat_257))
	(=>	(and (diseqNat_257 x_21776 zero_39)
			(mulacc_1 x_21848 zero_39 x_21776 x_21777)
			(mulacc_1 x_21849 (succ_39 zero_39) x_21776 x_21777)
			(mulacc_1 x_21850 zero_39 (succ_39 zero_39) x_21777)
			(mulacc_1 x_21851 zero_39 x_21776 (succ_39 zero_39))
			(addacc_7 x_21852 x_21849 x_21850 x_21851)
			(addacc_7 x_21853 (succ_39 zero_39) (succ_39 x_21776) (succ_39 x_21777))
			(addacc_7 x_21854 x_21848 x_21852 x_21853)
			(plus_35 fail_5 (succ_39 zero_39) x_21854))
		(mulacc_1 fail_5 (succ_39 zero_39) (succ_39 x_21776) (succ_39 x_21777)))))
(assert (forall ((x_21857 Nat_257) (x_21858 Nat_257) (x_21859 Nat_257) (x_21860 Nat_257) (x_21861 Nat_257) (x_21862 Nat_257) (x_21863 Nat_257) (fail_5 Nat_257) (x_21777 Nat_257) (x_21776 Nat_257) (x_21775 Nat_257))
	(=>	(and (diseqNat_257 x_21775 zero_39)
			(mulacc_1 x_21857 x_21775 x_21776 x_21777)
			(mulacc_1 x_21858 (succ_39 zero_39) x_21776 x_21777)
			(mulacc_1 x_21859 x_21775 (succ_39 zero_39) x_21777)
			(mulacc_1 x_21860 x_21775 x_21776 (succ_39 zero_39))
			(addacc_7 x_21861 x_21858 x_21859 x_21860)
			(addacc_7 x_21862 (succ_39 x_21775) (succ_39 x_21776) (succ_39 x_21777))
			(addacc_7 x_21863 x_21857 x_21861 x_21862)
			(plus_35 fail_5 (succ_39 zero_39) x_21863))
		(mulacc_1 fail_5 (succ_39 x_21775) (succ_39 x_21776) (succ_39 x_21777)))))
(assert (forall ((x_21776 Nat_257) (x_21775 Nat_257))
	(mulacc_1 zero_39 (succ_39 x_21775) (succ_39 x_21776) zero_39)))
(assert (forall ((x_21775 Nat_257) (z_817 Nat_257))
	(mulacc_1 zero_39 (succ_39 x_21775) zero_39 z_817)))
(assert (forall ((y_816 Nat_257) (z_817 Nat_257))
	(mulacc_1 zero_39 zero_39 y_816 z_817)))
(assert (forall ((x_21869 Nat_257) (x_21870 Nat_257) (x_21871 Nat_257) (x_21872 Nat_257) (x_21778 Nat_257) (x_21779 Nat_257) (xacc_0 Nat_257) (x_21780 Nat_257) (x_21781 Nat_257))
	(=>	(and true
			(diseqNat_257 x_21870 x_21872)
			(mulacc_1 x_21869 x_21778 x_21779 xacc_0)
			(mulacc_1 x_21870 x_21869 x_21780 x_21781)
			(mulacc_1 x_21871 x_21779 xacc_0 x_21780)
			(mulacc_1 x_21872 x_21778 x_21871 x_21781))
		false)))
(assert (forall ((x_21873 Nat_257) (x_21874 Nat_257) (x_21875 Nat_257) (x_21876 Nat_257) (x_21782 Nat_257) (y_817 Nat_257) (z_818 Nat_257))
	(=>	(and true
			(diseqNat_257 x_21874 x_21876)
			(plus_35 x_21873 y_817 z_818)
			(plus_35 x_21874 x_21782 x_21873)
			(plus_35 x_21875 x_21782 y_817)
			(plus_35 x_21876 x_21875 z_818))
		false)))
(assert (forall ((x_21877 Nat_257) (x_21878 Nat_257) (x_21783 Nat_257) (y_818 Nat_257))
	(=>	(and true
			(diseqNat_257 x_21877 x_21878)
			(plus_35 x_21877 x_21783 y_818)
			(plus_35 x_21878 y_818 x_21783))
		false)))
(assert (forall ((x_21879 Nat_257) (x_21784 Nat_257))
	(=>	(and true
			(diseqNat_257 x_21879 x_21784)
			(plus_35 x_21879 x_21784 zero_39))
		false)))
(assert (forall ((x_21880 Nat_257) (x_21785 Nat_257))
	(=>	(and true
			(diseqNat_257 x_21880 x_21785)
			(plus_35 x_21880 zero_39 x_21785))
		false)))
(check-sat)
