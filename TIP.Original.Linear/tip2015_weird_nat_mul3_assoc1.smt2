(set-logic HORN)
(declare-datatypes ((Nat_487 0)) (((zero_129 ) (succ_126 (p_355 Nat_487)))))
(declare-fun diseqNat_487 (Nat_487 Nat_487) Bool)
(declare-fun p_356 (Nat_487 Nat_487) Bool)
(declare-fun iszero_126 (Nat_487) Bool)
(declare-fun issucc_126 (Nat_487) Bool)
(assert (forall ((x_51994 Nat_487))
	(p_356 x_51994 (succ_126 x_51994))))
(assert (iszero_126 zero_129))
(assert (forall ((x_51996 Nat_487))
	(issucc_126 (succ_126 x_51996))))
(assert (forall ((x_51997 Nat_487))
	(diseqNat_487 zero_129 (succ_126 x_51997))))
(assert (forall ((x_51998 Nat_487))
	(diseqNat_487 (succ_126 x_51998) zero_129)))
(assert (forall ((x_51999 Nat_487) (x_52000 Nat_487))
	(=> (diseqNat_487 x_51999 x_52000)
	    (diseqNat_487 (succ_126 x_51999) (succ_126 x_52000)))))
(declare-fun plus_124 (Nat_487 Nat_487 Nat_487) Bool)
(assert (forall ((x_51896 Nat_487) (z_1751 Nat_487) (y_1970 Nat_487))
	(=> (plus_124 x_51896 z_1751 y_1970)
	    (plus_124 (succ_126 x_51896) (succ_126 z_1751) y_1970))))
(assert (forall ((x_51897 Nat_487))
	(plus_124 x_51897 zero_129 x_51897)))
(declare-fun add_309 (Nat_487 Nat_487 Nat_487 Nat_487) Bool)
(assert (forall ((x_51898 Nat_487) (x_51899 Nat_487) (x_51880 Nat_487) (y_1971 Nat_487) (z_1752 Nat_487))
	(=>	(and (add_309 x_51899 x_51880 y_1971 z_1752)
			(plus_124 x_51898 (succ_126 zero_129) x_51899))
		(add_309 x_51898 (succ_126 x_51880) y_1971 z_1752))))
(assert (forall ((x_51901 Nat_487) (x_51902 Nat_487) (x_51881 Nat_487) (z_1752 Nat_487))
	(=>	(and (add_309 x_51902 zero_129 x_51881 z_1752)
			(plus_124 x_51901 (succ_126 zero_129) x_51902))
		(add_309 x_51901 zero_129 (succ_126 x_51881) z_1752))))
(assert (forall ((x_51904 Nat_487))
	(add_309 x_51904 zero_129 zero_129 x_51904)))
(declare-fun mul_11 (Nat_487 Nat_487 Nat_487 Nat_487) Bool)
(assert (forall ((x_51905 Nat_487) (x_51906 Nat_487) (x_51907 Nat_487) (x_51908 Nat_487) (x_51909 Nat_487) (x_51910 Nat_487) (x_51911 Nat_487) (fail_30 Nat_487))
	(=>	(and (mul_11 x_51905 zero_129 zero_129 zero_129)
			(mul_11 x_51906 (succ_126 zero_129) zero_129 zero_129)
			(mul_11 x_51907 zero_129 (succ_126 zero_129) zero_129)
			(mul_11 x_51908 zero_129 zero_129 (succ_126 zero_129))
			(add_309 x_51909 x_51906 x_51907 x_51908)
			(add_309 x_51910 zero_129 zero_129 zero_129)
			(add_309 x_51911 x_51905 x_51909 x_51910)
			(plus_124 fail_30 (succ_126 zero_129) x_51911))
		(mul_11 (succ_126 zero_129) (succ_126 zero_129) (succ_126 zero_129) (succ_126 zero_129)))))
(assert (forall ((x_51914 Nat_487) (x_51915 Nat_487) (x_51916 Nat_487) (x_51917 Nat_487) (x_51918 Nat_487) (x_51919 Nat_487) (x_51920 Nat_487) (fail_30 Nat_487) (x_51885 Nat_487) (x_51884 Nat_487) (x_51883 Nat_487))
	(=>	(and (diseqNat_487 x_51883 zero_129)
			(mul_11 x_51914 x_51883 x_51884 x_51885)
			(mul_11 x_51915 (succ_126 zero_129) x_51884 x_51885)
			(mul_11 x_51916 x_51883 (succ_126 zero_129) x_51885)
			(mul_11 x_51917 x_51883 x_51884 (succ_126 zero_129))
			(add_309 x_51918 x_51915 x_51916 x_51917)
			(add_309 x_51919 x_51883 x_51884 x_51885)
			(add_309 x_51920 x_51914 x_51918 x_51919)
			(plus_124 fail_30 (succ_126 zero_129) x_51920))
		(mul_11 fail_30 (succ_126 x_51883) (succ_126 x_51884) (succ_126 x_51885)))))
(assert (forall ((x_51923 Nat_487) (x_51924 Nat_487) (x_51925 Nat_487) (x_51926 Nat_487) (x_51927 Nat_487) (x_51928 Nat_487) (x_51929 Nat_487) (fail_30 Nat_487) (x_51885 Nat_487) (x_51884 Nat_487))
	(=>	(and (diseqNat_487 x_51884 zero_129)
			(mul_11 x_51923 zero_129 x_51884 x_51885)
			(mul_11 x_51924 (succ_126 zero_129) x_51884 x_51885)
			(mul_11 x_51925 zero_129 (succ_126 zero_129) x_51885)
			(mul_11 x_51926 zero_129 x_51884 (succ_126 zero_129))
			(add_309 x_51927 x_51924 x_51925 x_51926)
			(add_309 x_51928 zero_129 x_51884 x_51885)
			(add_309 x_51929 x_51923 x_51927 x_51928)
			(plus_124 fail_30 (succ_126 zero_129) x_51929))
		(mul_11 fail_30 (succ_126 zero_129) (succ_126 x_51884) (succ_126 x_51885)))))
(assert (forall ((x_51932 Nat_487) (x_51933 Nat_487) (x_51934 Nat_487) (x_51935 Nat_487) (x_51936 Nat_487) (x_51937 Nat_487) (x_51938 Nat_487) (fail_30 Nat_487) (x_51885 Nat_487) (x_51884 Nat_487) (x_51883 Nat_487))
	(=>	(and (diseqNat_487 x_51883 zero_129)
			(mul_11 x_51932 x_51883 x_51884 x_51885)
			(mul_11 x_51933 (succ_126 zero_129) x_51884 x_51885)
			(mul_11 x_51934 x_51883 (succ_126 zero_129) x_51885)
			(mul_11 x_51935 x_51883 x_51884 (succ_126 zero_129))
			(add_309 x_51936 x_51933 x_51934 x_51935)
			(add_309 x_51937 x_51883 x_51884 x_51885)
			(add_309 x_51938 x_51932 x_51936 x_51937)
			(plus_124 fail_30 (succ_126 zero_129) x_51938))
		(mul_11 fail_30 (succ_126 x_51883) (succ_126 x_51884) (succ_126 x_51885)))))
(assert (forall ((x_51941 Nat_487) (x_51942 Nat_487) (x_51943 Nat_487) (x_51944 Nat_487) (x_51945 Nat_487) (x_51946 Nat_487) (x_51947 Nat_487) (fail_30 Nat_487) (x_51885 Nat_487))
	(=>	(and (diseqNat_487 x_51885 zero_129)
			(mul_11 x_51941 zero_129 zero_129 x_51885)
			(mul_11 x_51942 (succ_126 zero_129) zero_129 x_51885)
			(mul_11 x_51943 zero_129 (succ_126 zero_129) x_51885)
			(mul_11 x_51944 zero_129 zero_129 (succ_126 zero_129))
			(add_309 x_51945 x_51942 x_51943 x_51944)
			(add_309 x_51946 zero_129 zero_129 x_51885)
			(add_309 x_51947 x_51941 x_51945 x_51946)
			(plus_124 fail_30 (succ_126 zero_129) x_51947))
		(mul_11 fail_30 (succ_126 zero_129) (succ_126 zero_129) (succ_126 x_51885)))))
(assert (forall ((x_51950 Nat_487) (x_51951 Nat_487) (x_51952 Nat_487) (x_51953 Nat_487) (x_51954 Nat_487) (x_51955 Nat_487) (x_51956 Nat_487) (fail_30 Nat_487) (x_51885 Nat_487) (x_51884 Nat_487) (x_51883 Nat_487))
	(=>	(and (diseqNat_487 x_51883 zero_129)
			(mul_11 x_51950 x_51883 x_51884 x_51885)
			(mul_11 x_51951 (succ_126 zero_129) x_51884 x_51885)
			(mul_11 x_51952 x_51883 (succ_126 zero_129) x_51885)
			(mul_11 x_51953 x_51883 x_51884 (succ_126 zero_129))
			(add_309 x_51954 x_51951 x_51952 x_51953)
			(add_309 x_51955 x_51883 x_51884 x_51885)
			(add_309 x_51956 x_51950 x_51954 x_51955)
			(plus_124 fail_30 (succ_126 zero_129) x_51956))
		(mul_11 fail_30 (succ_126 x_51883) (succ_126 x_51884) (succ_126 x_51885)))))
(assert (forall ((x_51959 Nat_487) (x_51960 Nat_487) (x_51961 Nat_487) (x_51962 Nat_487) (x_51963 Nat_487) (x_51964 Nat_487) (x_51965 Nat_487) (fail_30 Nat_487) (x_51885 Nat_487) (x_51884 Nat_487))
	(=>	(and (diseqNat_487 x_51884 zero_129)
			(mul_11 x_51959 zero_129 x_51884 x_51885)
			(mul_11 x_51960 (succ_126 zero_129) x_51884 x_51885)
			(mul_11 x_51961 zero_129 (succ_126 zero_129) x_51885)
			(mul_11 x_51962 zero_129 x_51884 (succ_126 zero_129))
			(add_309 x_51963 x_51960 x_51961 x_51962)
			(add_309 x_51964 zero_129 x_51884 x_51885)
			(add_309 x_51965 x_51959 x_51963 x_51964)
			(plus_124 fail_30 (succ_126 zero_129) x_51965))
		(mul_11 fail_30 (succ_126 zero_129) (succ_126 x_51884) (succ_126 x_51885)))))
(assert (forall ((x_51968 Nat_487) (x_51969 Nat_487) (x_51970 Nat_487) (x_51971 Nat_487) (x_51972 Nat_487) (x_51973 Nat_487) (x_51974 Nat_487) (fail_30 Nat_487) (x_51885 Nat_487) (x_51884 Nat_487) (x_51883 Nat_487))
	(=>	(and (diseqNat_487 x_51883 zero_129)
			(mul_11 x_51968 x_51883 x_51884 x_51885)
			(mul_11 x_51969 (succ_126 zero_129) x_51884 x_51885)
			(mul_11 x_51970 x_51883 (succ_126 zero_129) x_51885)
			(mul_11 x_51971 x_51883 x_51884 (succ_126 zero_129))
			(add_309 x_51972 x_51969 x_51970 x_51971)
			(add_309 x_51973 x_51883 x_51884 x_51885)
			(add_309 x_51974 x_51968 x_51972 x_51973)
			(plus_124 fail_30 (succ_126 zero_129) x_51974))
		(mul_11 fail_30 (succ_126 x_51883) (succ_126 x_51884) (succ_126 x_51885)))))
(assert (forall ((x_51884 Nat_487) (x_51883 Nat_487))
	(mul_11 zero_129 (succ_126 x_51883) (succ_126 x_51884) zero_129)))
(assert (forall ((x_51883 Nat_487) (z_1753 Nat_487))
	(mul_11 zero_129 (succ_126 x_51883) zero_129 z_1753)))
(assert (forall ((y_1972 Nat_487) (z_1753 Nat_487))
	(mul_11 zero_129 zero_129 y_1972 z_1753)))
(assert (forall ((x_51980 Nat_487) (x_51981 Nat_487) (x_51982 Nat_487) (x_51983 Nat_487) (x_51886 Nat_487) (x_51887 Nat_487) (x_51888 Nat_487) (x_51889 Nat_487) (x_51890 Nat_487))
	(=>	(and true
			(diseqNat_487 x_51981 x_51983)
			(mul_11 x_51980 x_51886 x_51887 x_51888)
			(mul_11 x_51981 x_51980 x_51889 x_51890)
			(mul_11 x_51982 x_51888 x_51889 x_51890)
			(mul_11 x_51983 x_51886 x_51887 x_51982))
		false)))
(assert (forall ((x_51984 Nat_487) (x_51985 Nat_487) (x_51986 Nat_487) (x_51987 Nat_487) (x_51891 Nat_487) (y_1973 Nat_487) (z_1754 Nat_487))
	(=>	(and true
			(diseqNat_487 x_51985 x_51987)
			(plus_124 x_51984 y_1973 z_1754)
			(plus_124 x_51985 x_51891 x_51984)
			(plus_124 x_51986 x_51891 y_1973)
			(plus_124 x_51987 x_51986 z_1754))
		false)))
(assert (forall ((x_51988 Nat_487) (x_51989 Nat_487) (x_51892 Nat_487) (y_1974 Nat_487))
	(=>	(and true
			(diseqNat_487 x_51988 x_51989)
			(plus_124 x_51988 x_51892 y_1974)
			(plus_124 x_51989 y_1974 x_51892))
		false)))
(assert (forall ((x_51990 Nat_487) (x_51893 Nat_487))
	(=>	(and true
			(diseqNat_487 x_51990 x_51893)
			(plus_124 x_51990 x_51893 zero_129))
		false)))
(assert (forall ((x_51991 Nat_487) (x_51894 Nat_487))
	(=>	(and true
			(diseqNat_487 x_51991 x_51894)
			(plus_124 x_51991 zero_129 x_51894))
		false)))
(check-sat)
