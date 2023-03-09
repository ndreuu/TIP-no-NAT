(set-logic HORN)
(declare-datatypes ((Nat_359 0)) (((zero_80 ) (succ_78 (p_222 Nat_359)))))
(declare-fun diseqNat_359 (Nat_359 Nat_359) Bool)
(declare-fun p_223 (Nat_359 Nat_359) Bool)
(declare-fun iszero_78 (Nat_359) Bool)
(declare-fun issucc_78 (Nat_359) Bool)
(assert (forall ((x_33955 Nat_359))
	(p_223 x_33955 (succ_78 x_33955))))
(assert (iszero_78 zero_80))
(assert (forall ((x_33957 Nat_359))
	(issucc_78 (succ_78 x_33957))))
(assert (forall ((x_33958 Nat_359))
	(diseqNat_359 zero_80 (succ_78 x_33958))))
(assert (forall ((x_33959 Nat_359))
	(diseqNat_359 (succ_78 x_33959) zero_80)))
(assert (forall ((x_33960 Nat_359) (x_33961 Nat_359))
	(=> (diseqNat_359 x_33960 x_33961)
	    (diseqNat_359 (succ_78 x_33960) (succ_78 x_33961)))))
(declare-fun plus_71 (Nat_359 Nat_359 Nat_359) Bool)
(assert (forall ((x_33897 Nat_359) (z_1206 Nat_359) (y_1300 Nat_359))
	(=> (plus_71 x_33897 z_1206 y_1300)
	    (plus_71 (succ_78 x_33897) (succ_78 z_1206) y_1300))))
(assert (forall ((x_33898 Nat_359))
	(plus_71 x_33898 zero_80 x_33898)))
(declare-fun times_17 (Nat_359 Nat_359 Nat_359) Bool)
(assert (forall ((x_33899 Nat_359) (x_33900 Nat_359) (z_1207 Nat_359) (y_1301 Nat_359))
	(=>	(and (times_17 x_33900 z_1207 y_1301)
			(plus_71 x_33899 y_1301 x_33900))
		(times_17 x_33899 (succ_78 z_1207) y_1301))))
(assert (forall ((y_1301 Nat_359))
	(times_17 zero_80 zero_80 y_1301)))
(declare-fun formulapow_4 (Nat_359 Nat_359 Nat_359) Bool)
(assert (forall ((x_33903 Nat_359) (x_33904 Nat_359) (z_1208 Nat_359) (x_33880 Nat_359))
	(=>	(and (formulapow_4 x_33904 x_33880 z_1208)
			(times_17 x_33903 x_33880 x_33904))
		(formulapow_4 x_33903 x_33880 (succ_78 z_1208)))))
(assert (forall ((x_33880 Nat_359))
	(formulapow_4 (succ_78 zero_80) x_33880 zero_80)))
(declare-fun formulapow_5 (Nat_359 Nat_359 Nat_359) Bool)
(assert (forall ((x_33907 Nat_359) (x_33908 Nat_359) (z_1209 Nat_359) (x_33881 Nat_359))
	(=>	(and (formulapow_5 x_33908 x_33881 z_1209)
			(times_17 x_33907 x_33881 x_33908))
		(formulapow_5 x_33907 x_33881 (succ_78 z_1209)))))
(assert (forall ((x_33881 Nat_359))
	(formulapow_5 (succ_78 zero_80) x_33881 zero_80)))
(declare-fun formulapow_6 (Nat_359 Nat_359 Nat_359) Bool)
(assert (forall ((x_33911 Nat_359) (x_33912 Nat_359) (z_1210 Nat_359) (x_33882 Nat_359))
	(=>	(and (formulapow_6 x_33912 x_33882 z_1210)
			(times_17 x_33911 x_33882 x_33912))
		(formulapow_6 x_33911 x_33882 (succ_78 z_1210)))))
(assert (forall ((x_33882 Nat_359))
	(formulapow_6 (succ_78 zero_80) x_33882 zero_80)))
(assert (forall ((x_33915 Nat_359) (x_33916 Nat_359) (x_33917 Nat_359) (x_33918 Nat_359) (x_33919 Nat_359) (x_33920 Nat_359) (x_33921 Nat_359) (x_33922 Nat_359) (x_33923 Nat_359) (n_67 Nat_359) (x_33883 Nat_359) (y_1305 Nat_359) (z_1211 Nat_359))
	(=>	(and true
			(plus_71 x_33915 (succ_78 zero_80) x_33883)
			(plus_71 x_33916 (succ_78 (succ_78 (succ_78 zero_80))) n_67)
			(formulapow_6 x_33917 x_33915 x_33916)
			(plus_71 x_33918 (succ_78 zero_80) y_1305)
			(plus_71 x_33919 (succ_78 (succ_78 (succ_78 zero_80))) n_67)
			(formulapow_5 x_33920 x_33918 x_33919)
			(plus_71 x_33921 x_33917 x_33920)
			(plus_71 x_33922 (succ_78 zero_80) z_1211)
			(plus_71 x_33923 (succ_78 (succ_78 (succ_78 zero_80))) n_67)
			(formulapow_4 x_33921 x_33922 x_33923))
		false)))
(assert (forall ((x_33925 Nat_359) (x_33926 Nat_359) (x_33927 Nat_359) (x_33928 Nat_359) (x_33884 Nat_359) (y_1306 Nat_359) (z_1212 Nat_359))
	(=>	(and true
			(diseqNat_359 x_33926 x_33928)
			(times_17 x_33925 y_1306 z_1212)
			(times_17 x_33926 x_33884 x_33925)
			(times_17 x_33927 x_33884 y_1306)
			(times_17 x_33928 x_33927 z_1212))
		false)))
(assert (forall ((x_33929 Nat_359) (x_33930 Nat_359) (x_33931 Nat_359) (x_33932 Nat_359) (x_33885 Nat_359) (y_1307 Nat_359) (z_1213 Nat_359))
	(=>	(and true
			(diseqNat_359 x_33930 x_33932)
			(plus_71 x_33929 y_1307 z_1213)
			(plus_71 x_33930 x_33885 x_33929)
			(plus_71 x_33931 x_33885 y_1307)
			(plus_71 x_33932 x_33931 z_1213))
		false)))
(assert (forall ((x_33933 Nat_359) (x_33934 Nat_359) (x_33886 Nat_359) (y_1308 Nat_359))
	(=>	(and true
			(diseqNat_359 x_33933 x_33934)
			(times_17 x_33933 x_33886 y_1308)
			(times_17 x_33934 y_1308 x_33886))
		false)))
(assert (forall ((x_33935 Nat_359) (x_33936 Nat_359) (x_33887 Nat_359) (y_1309 Nat_359))
	(=>	(and true
			(diseqNat_359 x_33935 x_33936)
			(plus_71 x_33935 x_33887 y_1309)
			(plus_71 x_33936 y_1309 x_33887))
		false)))
(assert (forall ((x_33937 Nat_359) (x_33938 Nat_359) (x_33939 Nat_359) (x_33940 Nat_359) (x_33941 Nat_359) (x_33888 Nat_359) (y_1310 Nat_359) (z_1214 Nat_359))
	(=>	(and true
			(diseqNat_359 x_33938 x_33941)
			(plus_71 x_33937 y_1310 z_1214)
			(times_17 x_33938 x_33888 x_33937)
			(times_17 x_33939 x_33888 y_1310)
			(times_17 x_33940 x_33888 z_1214)
			(plus_71 x_33941 x_33939 x_33940))
		false)))
(assert (forall ((x_33942 Nat_359) (x_33943 Nat_359) (x_33944 Nat_359) (x_33945 Nat_359) (x_33946 Nat_359) (x_33889 Nat_359) (y_1311 Nat_359) (z_1215 Nat_359))
	(=>	(and true
			(diseqNat_359 x_33943 x_33946)
			(plus_71 x_33942 x_33889 y_1311)
			(times_17 x_33943 x_33942 z_1215)
			(times_17 x_33944 x_33889 z_1215)
			(times_17 x_33945 y_1311 z_1215)
			(plus_71 x_33946 x_33944 x_33945))
		false)))
(assert (forall ((x_33947 Nat_359) (x_33890 Nat_359))
	(=>	(and true
			(diseqNat_359 x_33947 x_33890)
			(times_17 x_33947 x_33890 (succ_78 zero_80)))
		false)))
(assert (forall ((x_33948 Nat_359) (x_33891 Nat_359))
	(=>	(and true
			(diseqNat_359 x_33948 x_33891)
			(times_17 x_33948 (succ_78 zero_80) x_33891))
		false)))
(assert (forall ((x_33949 Nat_359) (x_33892 Nat_359))
	(=>	(and true
			(diseqNat_359 x_33949 x_33892)
			(plus_71 x_33949 x_33892 zero_80))
		false)))
(assert (forall ((x_33950 Nat_359) (x_33893 Nat_359))
	(=>	(and true
			(diseqNat_359 x_33950 x_33893)
			(plus_71 x_33950 zero_80 x_33893))
		false)))
(assert (forall ((x_33951 Nat_359) (x_33894 Nat_359))
	(=>	(and true
			(diseqNat_359 x_33951 zero_80)
			(times_17 x_33951 x_33894 zero_80))
		false)))
(assert (forall ((x_33952 Nat_359) (x_33895 Nat_359))
	(=>	(and true
			(diseqNat_359 x_33952 zero_80)
			(times_17 x_33952 zero_80 x_33895))
		false)))
(check-sat)
