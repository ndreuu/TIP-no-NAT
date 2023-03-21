(set-logic HORN)
(define-fun zero_89 () Int 0)
(define-fun succ_87 ((x Int)) Int (+ x 1))
(declare-datatypes ((Bool_221 0)) (((false_221) (true_221))))
(declare-fun diseqBool_99 (Bool_221 Bool_221) Bool)
(declare-fun isfalse_99 (Bool_221) Bool)
(declare-fun istrue_99 (Bool_221) Bool)
(assert (isfalse_99 false_221))
(assert (istrue_99 true_221))
(assert (diseqBool_99 false_221 true_221))
(assert (diseqBool_99 true_221 false_221))
(declare-fun and_221 (Bool_221 Bool_221 Bool_221) Bool)
(declare-fun or_225 (Bool_221 Bool_221 Bool_221) Bool)
(declare-fun hence_221 (Bool_221 Bool_221 Bool_221) Bool)
(declare-fun not_224 (Bool_221 Bool_221) Bool)
(assert (and_221 false_221 false_221 false_221))
(assert (and_221 false_221 true_221 false_221))
(assert (and_221 false_221 false_221 true_221))
(assert (and_221 true_221 true_221 true_221))
(assert (or_225 false_221 false_221 false_221))
(assert (or_225 true_221 true_221 false_221))
(assert (or_225 true_221 false_221 true_221))
(assert (or_225 true_221 true_221 true_221))
(assert (hence_221 true_221 false_221 false_221))
(assert (hence_221 false_221 true_221 false_221))
(assert (hence_221 true_221 false_221 true_221))
(assert (hence_221 true_221 true_221 true_221))
(assert (not_224 true_221 false_221))
(assert (not_224 false_221 true_221))
(declare-fun p_245 (Int Int) Bool)
(declare-fun iszero_87 (Int) Bool)
(declare-fun issucc_87 (Int) Bool)
(assert (forall ((x_35139 Int))
	(p_245 x_35139 (succ_87 x_35139))))
(assert (iszero_87 zero_89))
(assert (forall ((x_35141 Int))
	(issucc_87 (succ_87 x_35141))))
(declare-datatypes ((list_151 0)) (((nil_170) (cons_151 (head_302 Int) (tail_302 list_151)))))
(declare-fun diseqlist_151 (list_151 list_151) Bool)
(declare-fun head_303 (Int list_151) Bool)
(declare-fun tail_303 (list_151 list_151) Bool)
(declare-fun isnil_170 (list_151) Bool)
(declare-fun iscons_151 (list_151) Bool)
(assert (forall ((x_35147 Int) (x_35148 list_151))
	(head_303 x_35147 (cons_151 x_35147 x_35148))))
(assert (forall ((x_35147 Int) (x_35148 list_151))
	(tail_303 x_35148 (cons_151 x_35147 x_35148))))
(assert (isnil_170 nil_170))
(assert (forall ((x_35150 Int) (x_35151 list_151))
	(iscons_151 (cons_151 x_35150 x_35151))))
(assert (forall ((x_35152 Int) (x_35153 list_151))
	(diseqlist_151 nil_170 (cons_151 x_35152 x_35153))))
(assert (forall ((x_35154 Int) (x_35155 list_151))
	(diseqlist_151 (cons_151 x_35154 x_35155) nil_170)))
(assert (forall ((x_35156 Int) (x_35157 list_151) (x_35158 Int) (x_35159 list_151))
	(=> (distinct x_35156 x_35158) (diseqlist_151 (cons_151 x_35156 x_35157) (cons_151 x_35158 x_35159)))))
(assert (forall ((x_35156 Int) (x_35157 list_151) (x_35158 Int) (x_35159 list_151))
	(=> (diseqlist_151 x_35157 x_35159) (diseqlist_151 (cons_151 x_35156 x_35157) (cons_151 x_35158 x_35159)))))
(declare-datatypes ((pair_64 0)) (((pair_65 (projpair_128 list_151) (projpair_129 list_151)))))
(declare-fun diseqpair_32 (pair_64 pair_64) Bool)
(declare-fun projpair_130 (list_151 pair_64) Bool)
(declare-fun projpair_131 (list_151 pair_64) Bool)
(declare-fun ispair_32 (pair_64) Bool)
(assert (forall ((x_35160 list_151) (x_35161 list_151))
	(projpair_130 x_35160 (pair_65 x_35160 x_35161))))
(assert (forall ((x_35160 list_151) (x_35161 list_151))
	(projpair_131 x_35161 (pair_65 x_35160 x_35161))))
(assert (forall ((x_35163 list_151) (x_35164 list_151))
	(ispair_32 (pair_65 x_35163 x_35164))))
(assert (forall ((x_35165 list_151) (x_35166 list_151) (x_35167 list_151) (x_35168 list_151))
	(=> (diseqlist_151 x_35165 x_35167) (diseqpair_32 (pair_65 x_35165 x_35166) (pair_65 x_35167 x_35168)))))
(assert (forall ((x_35165 list_151) (x_35166 list_151) (x_35167 list_151) (x_35168 list_151))
	(=> (diseqlist_151 x_35166 x_35168) (diseqpair_32 (pair_65 x_35165 x_35166) (pair_65 x_35167 x_35168)))))
(declare-fun take_35 (list_151 Int list_151) Bool)
(assert (forall ((x_35046 list_151) (z_1307 Int) (xs_414 list_151) (z_1306 Int))
	(=> (take_35 x_35046 z_1306 xs_414) (take_35 (cons_151 z_1307 x_35046) (succ_87 z_1306) (cons_151 z_1307 xs_414)))))
(assert (forall ((z_1306 Int))
	(take_35 nil_170 (succ_87 z_1306) nil_170)))
(assert (forall ((y_1409 list_151))
	(take_35 nil_170 zero_89 y_1409)))
(declare-fun plus_81 (Int Int Int) Bool)
(assert (forall ((x_35050 Int) (z_1308 Int) (y_1410 Int))
	(=> (plus_81 x_35050 z_1308 y_1410) (plus_81 (succ_87 x_35050) (succ_87 z_1308) y_1410))))
(assert (forall ((x_35051 Int))
	(plus_81 x_35051 zero_89 x_35051)))
(declare-fun minus_233 (Int Int Int) Bool)
(assert (forall ((x_35052 Int) (y_1412 Int) (z_1309 Int))
	(=> (minus_233 x_35052 z_1309 y_1412) (minus_233 x_35052 (succ_87 z_1309) (succ_87 y_1412)))))
(assert (forall ((z_1309 Int))
	(minus_233 zero_89 (succ_87 z_1309) zero_89)))
(assert (forall ((y_1411 Int))
	(minus_233 zero_89 zero_89 y_1411)))
(declare-fun third_6 (Int Int) Bool)
(assert (third_6 zero_89 (succ_87 (succ_87 zero_89))))
(assert (=> (distinct (succ_87 zero_89) (succ_87 (succ_87 zero_89))) (third_6 zero_89 (succ_87 zero_89))))
(assert (third_6 zero_89 (succ_87 (succ_87 zero_89))))
(assert (forall ((x_35059 Int) (x_35060 Int) (x_35061 Int) (y_1413 Int))
	(=> (and (distinct (succ_87 y_1413) (succ_87 (succ_87 zero_89))) (distinct (succ_87 y_1413) (succ_87 zero_89)) (minus_233 x_35060 (succ_87 y_1413) (succ_87 (succ_87 (succ_87 zero_89)))) (third_6 x_35061 x_35060) (plus_81 x_35059 (succ_87 zero_89) x_35061)) (third_6 x_35059 (succ_87 y_1413)))))
(assert (third_6 zero_89 (succ_87 (succ_87 zero_89))))
(assert (=> (distinct (succ_87 zero_89) (succ_87 (succ_87 zero_89))) (third_6 zero_89 (succ_87 zero_89))))
(assert (third_6 zero_89 (succ_87 (succ_87 zero_89))))
(assert (=> (and (distinct zero_89 (succ_87 (succ_87 zero_89))) (distinct zero_89 (succ_87 zero_89))) (third_6 zero_89 zero_89)))
(declare-fun leq_32 (Bool_221 Int Int) Bool)
(assert (forall ((x_35067 Bool_221) (x_35025 Int) (z_1310 Int))
	(=> (leq_32 x_35067 z_1310 x_35025) (leq_32 x_35067 (succ_87 z_1310) (succ_87 x_35025)))))
(assert (forall ((z_1310 Int))
	(leq_32 false_221 (succ_87 z_1310) zero_89)))
(assert (forall ((y_1414 Int))
	(leq_32 true_221 zero_89 y_1414)))
(declare-fun sort_23 (list_151 Int Int) Bool)
(assert (forall ((x_35026 Int) (y_1415 Int))
	(=> (leq_32 true_221 x_35026 y_1415) (sort_23 (cons_151 x_35026 (cons_151 y_1415 nil_170)) x_35026 y_1415))))
(assert (forall ((x_35026 Int) (y_1415 Int))
	(=> (leq_32 false_221 x_35026 y_1415) (sort_23 (cons_151 y_1415 (cons_151 x_35026 nil_170)) x_35026 y_1415))))
(declare-fun length_23 (Int list_151) Bool)
(assert (forall ((x_35075 Int) (x_35076 Int) (y_1416 Int) (l_25 list_151))
	(=> (and (length_23 x_35076 l_25) (plus_81 x_35075 (succ_87 zero_89) x_35076)) (length_23 x_35075 (cons_151 y_1416 l_25)))))
(assert (length_23 zero_89 nil_170))
(declare-fun insert_18 (list_151 Int list_151) Bool)
(assert (forall ((z_1311 Int) (xs_415 list_151) (x_35028 Int))
	(=> (leq_32 true_221 x_35028 z_1311) (insert_18 (cons_151 x_35028 (cons_151 z_1311 xs_415)) x_35028 (cons_151 z_1311 xs_415)))))
(assert (forall ((x_35083 list_151) (z_1311 Int) (xs_415 list_151) (x_35028 Int))
	(=> (and (insert_18 x_35083 x_35028 xs_415) (leq_32 false_221 x_35028 z_1311)) (insert_18 (cons_151 z_1311 x_35083) x_35028 (cons_151 z_1311 xs_415)))))
(assert (forall ((x_35028 Int))
	(insert_18 (cons_151 x_35028 nil_170) x_35028 nil_170)))
(declare-fun isort_18 (list_151 list_151) Bool)
(assert (forall ((x_35085 list_151) (x_35086 list_151) (y_1418 Int) (xs_416 list_151))
	(=> (and (isort_18 x_35086 xs_416) (insert_18 x_35085 y_1418 x_35086)) (isort_18 x_35085 (cons_151 y_1418 xs_416)))))
(assert (isort_18 nil_170 nil_170))
(declare-fun drop_37 (list_151 Int list_151) Bool)
(assert (forall ((x_35089 list_151) (z_1313 Int) (xs_417 list_151) (z_1312 Int))
	(=> (drop_37 x_35089 z_1312 xs_417) (drop_37 x_35089 (succ_87 z_1312) (cons_151 z_1313 xs_417)))))
(assert (forall ((z_1312 Int))
	(drop_37 nil_170 (succ_87 z_1312) nil_170)))
(assert (forall ((x_35092 list_151))
	(drop_37 x_35092 zero_89 x_35092)))
(declare-fun splitAt_15 (pair_64 Int list_151) Bool)
(assert (forall ((x_35094 list_151) (x_35095 list_151) (x_35031 Int) (y_1420 list_151))
	(=> (and (take_35 x_35094 x_35031 y_1420) (drop_37 x_35095 x_35031 y_1420)) (splitAt_15 (pair_65 x_35094 x_35095) x_35031 y_1420))))
(declare-fun x_35032 (list_151 list_151 list_151) Bool)
(assert (forall ((x_35097 list_151) (z_1314 Int) (xs_418 list_151) (y_1421 list_151))
	(=> (x_35032 x_35097 xs_418 y_1421) (x_35032 (cons_151 z_1314 x_35097) (cons_151 z_1314 xs_418) y_1421))))
(assert (forall ((x_35098 list_151))
	(x_35032 x_35098 nil_170 x_35098)))
(declare-fun reverse_7 (list_151 list_151) Bool)
(assert (forall ((x_35099 list_151) (x_35100 list_151) (y_1422 Int) (xs_419 list_151))
	(=> (and (reverse_7 x_35100 xs_419) (x_35032 x_35099 x_35100 (cons_151 y_1422 nil_170))) (reverse_7 x_35099 (cons_151 y_1422 xs_419)))))
(assert (reverse_7 nil_170 nil_170))
(declare-fun nstoogesort_18 (list_151 list_151) Bool)
(declare-fun nstoogesort_19 (list_151 list_151) Bool)
(declare-fun nstoogesort_20 (list_151 list_151) Bool)
(assert (forall ((x_35107 list_151) (x_35108 list_151) (x_35109 list_151) (x_35103 Int) (x_35104 Int) (x_35105 list_151) (ys_131 list_151) (zs_44 list_151) (x_35035 list_151))
	(=> (and (nstoogesort_19 x_35108 zs_44) (reverse_7 x_35109 ys_131) (x_35032 x_35107 x_35108 x_35109) (length_23 x_35103 x_35035) (third_6 x_35104 x_35103) (reverse_7 x_35105 x_35035) (splitAt_15 (pair_65 ys_131 zs_44) x_35104 x_35105)) (nstoogesort_18 x_35107 x_35035))))
(assert (forall ((x_35111 list_151) (x_35112 list_151) (x_35113 list_151) (x_35038 Int) (x_35039 list_151) (y_1424 Int) (y_1423 Int))
	(=> (and (nstoogesort_18 x_35112 (cons_151 y_1423 (cons_151 y_1424 (cons_151 x_35038 x_35039)))) (nstoogesort_20 x_35113 x_35112) (nstoogesort_18 x_35111 x_35113)) (nstoogesort_19 x_35111 (cons_151 y_1423 (cons_151 y_1424 (cons_151 x_35038 x_35039)))))))
(assert (forall ((x_35115 list_151) (y_1424 Int) (y_1423 Int))
	(=> (sort_23 x_35115 y_1423 y_1424) (nstoogesort_19 x_35115 (cons_151 y_1423 (cons_151 y_1424 nil_170))))))
(assert (forall ((y_1423 Int))
	(nstoogesort_19 (cons_151 y_1423 nil_170) (cons_151 y_1423 nil_170))))
(assert (nstoogesort_19 nil_170 nil_170))
(assert (forall ((x_35122 list_151) (x_35123 list_151) (x_35119 Int) (x_35120 Int) (ys_132 list_151) (zs_45 list_151) (x_35040 list_151))
	(=> (and (nstoogesort_19 x_35123 zs_45) (x_35032 x_35122 ys_132 x_35123) (length_23 x_35119 x_35040) (third_6 x_35120 x_35119) (splitAt_15 (pair_65 ys_132 zs_45) x_35120 x_35040)) (nstoogesort_20 x_35122 x_35040))))
(assert (forall ((x_35125 Int) (x_35126 Int) (x_35127 Int) (x_35128 Int) (x_35041 Int) (y_1425 Int) (z_1316 Int))
	(=> (and true (distinct x_35126 x_35128) (plus_81 x_35125 y_1425 z_1316) (plus_81 x_35126 x_35041 x_35125) (plus_81 x_35127 x_35041 y_1425) (plus_81 x_35128 x_35127 z_1316)) false)))
(assert (forall ((x_35129 Int) (x_35130 Int) (x_35042 Int) (y_1426 Int))
	(=> (and true (distinct x_35129 x_35130) (plus_81 x_35129 x_35042 y_1426) (plus_81 x_35130 y_1426 x_35042)) false)))
(assert (forall ((x_35131 Int) (x_35043 Int))
	(=> (and true (distinct x_35131 x_35043) (plus_81 x_35131 x_35043 zero_89)) false)))
(assert (forall ((x_35132 Int) (x_35044 Int))
	(=> (and true (distinct x_35132 x_35044) (plus_81 x_35132 zero_89 x_35044)) false)))
(assert (forall ((x_35133 list_151) (x_35134 list_151) (xs_420 list_151))
	(=> (and true (diseqlist_151 x_35133 x_35134) (nstoogesort_19 x_35133 xs_420) (isort_18 x_35134 xs_420)) false)))
(check-sat)
