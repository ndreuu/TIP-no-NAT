(set-logic HORN)
(define-fun zero_91 () Int 0)
(define-fun succ_89 ((x Int)) Int (+ x 1))
(declare-datatypes ((Bool_229 0)) (((false_229) (true_229))))
(declare-fun diseqBool_105 (Bool_229 Bool_229) Bool)
(declare-fun isfalse_105 (Bool_229) Bool)
(declare-fun istrue_105 (Bool_229) Bool)
(assert (isfalse_105 false_229))
(assert (istrue_105 true_229))
(assert (diseqBool_105 false_229 true_229))
(assert (diseqBool_105 true_229 false_229))
(declare-fun and_229 (Bool_229 Bool_229 Bool_229) Bool)
(declare-fun or_233 (Bool_229 Bool_229 Bool_229) Bool)
(declare-fun hence_229 (Bool_229 Bool_229 Bool_229) Bool)
(declare-fun not_232 (Bool_229 Bool_229) Bool)
(assert (and_229 false_229 false_229 false_229))
(assert (and_229 false_229 true_229 false_229))
(assert (and_229 false_229 false_229 true_229))
(assert (and_229 true_229 true_229 true_229))
(assert (or_233 false_229 false_229 false_229))
(assert (or_233 true_229 true_229 false_229))
(assert (or_233 true_229 false_229 true_229))
(assert (or_233 true_229 true_229 true_229))
(assert (hence_229 true_229 false_229 false_229))
(assert (hence_229 false_229 true_229 false_229))
(assert (hence_229 true_229 false_229 true_229))
(assert (hence_229 true_229 true_229 true_229))
(assert (not_232 true_229 false_229))
(assert (not_232 false_229 true_229))
(declare-fun p_259 (Int Int) Bool)
(declare-fun iszero_89 (Int) Bool)
(declare-fun issucc_89 (Int) Bool)
(assert (forall ((x_42257 Int))
	(p_259 x_42257 (succ_89 x_42257))))
(assert (iszero_89 zero_91))
(assert (forall ((x_42259 Int))
	(issucc_89 (succ_89 x_42259))))
(declare-datatypes ((list_157 0)) (((nil_179) (cons_157 (head_314 Int) (tail_314 list_157)))))
(declare-fun diseqlist_157 (list_157 list_157) Bool)
(declare-fun head_315 (Int list_157) Bool)
(declare-fun tail_315 (list_157 list_157) Bool)
(declare-fun isnil_179 (list_157) Bool)
(declare-fun iscons_157 (list_157) Bool)
(assert (forall ((x_42265 Int) (x_42266 list_157))
	(head_315 x_42265 (cons_157 x_42265 x_42266))))
(assert (forall ((x_42265 Int) (x_42266 list_157))
	(tail_315 x_42266 (cons_157 x_42265 x_42266))))
(assert (isnil_179 nil_179))
(assert (forall ((x_42268 Int) (x_42269 list_157))
	(iscons_157 (cons_157 x_42268 x_42269))))
(assert (forall ((x_42270 Int) (x_42271 list_157))
	(diseqlist_157 nil_179 (cons_157 x_42270 x_42271))))
(assert (forall ((x_42272 Int) (x_42273 list_157))
	(diseqlist_157 (cons_157 x_42272 x_42273) nil_179)))
(assert (forall ((x_42274 Int) (x_42275 list_157) (x_42276 Int) (x_42277 list_157))
	(=> (distinct x_42274 x_42276) (diseqlist_157 (cons_157 x_42274 x_42275) (cons_157 x_42276 x_42277)))))
(assert (forall ((x_42274 Int) (x_42275 list_157) (x_42276 Int) (x_42277 list_157))
	(=> (diseqlist_157 x_42275 x_42277) (diseqlist_157 (cons_157 x_42274 x_42275) (cons_157 x_42276 x_42277)))))
(declare-datatypes ((pair_68 0)) (((pair_69 (projpair_136 list_157) (projpair_137 list_157)))))
(declare-fun diseqpair_34 (pair_68 pair_68) Bool)
(declare-fun projpair_138 (list_157 pair_68) Bool)
(declare-fun projpair_139 (list_157 pair_68) Bool)
(declare-fun ispair_34 (pair_68) Bool)
(assert (forall ((x_42278 list_157) (x_42279 list_157))
	(projpair_138 x_42278 (pair_69 x_42278 x_42279))))
(assert (forall ((x_42278 list_157) (x_42279 list_157))
	(projpair_139 x_42279 (pair_69 x_42278 x_42279))))
(assert (forall ((x_42281 list_157) (x_42282 list_157))
	(ispair_34 (pair_69 x_42281 x_42282))))
(assert (forall ((x_42283 list_157) (x_42284 list_157) (x_42285 list_157) (x_42286 list_157))
	(=> (diseqlist_157 x_42283 x_42285) (diseqpair_34 (pair_69 x_42283 x_42284) (pair_69 x_42285 x_42286)))))
(assert (forall ((x_42283 list_157) (x_42284 list_157) (x_42285 list_157) (x_42286 list_157))
	(=> (diseqlist_157 x_42284 x_42286) (diseqpair_34 (pair_69 x_42283 x_42284) (pair_69 x_42285 x_42286)))))
(declare-fun take_37 (list_157 Int list_157) Bool)
(assert (forall ((x_42165 list_157) (z_1353 Int) (xs_437 list_157) (z_1352 Int))
	(=> (take_37 x_42165 z_1352 xs_437) (take_37 (cons_157 z_1353 x_42165) (succ_89 z_1352) (cons_157 z_1353 xs_437)))))
(assert (forall ((z_1352 Int))
	(take_37 nil_179 (succ_89 z_1352) nil_179)))
(assert (forall ((y_1482 list_157))
	(take_37 nil_179 zero_91 y_1482)))
(declare-fun plus_90 (Int Int Int) Bool)
(assert (forall ((x_42169 Int) (z_1354 Int) (y_1483 Int))
	(=> (plus_90 x_42169 z_1354 y_1483) (plus_90 (succ_89 x_42169) (succ_89 z_1354) y_1483))))
(assert (forall ((x_42170 Int))
	(plus_90 x_42170 zero_91 x_42170)))
(declare-fun minus_242 (Int Int Int) Bool)
(assert (forall ((x_42171 Int) (y_1485 Int) (z_1355 Int))
	(=> (minus_242 x_42171 z_1355 y_1485) (minus_242 x_42171 (succ_89 z_1355) (succ_89 y_1485)))))
(assert (forall ((z_1355 Int))
	(minus_242 zero_91 (succ_89 z_1355) zero_91)))
(assert (forall ((y_1484 Int))
	(minus_242 zero_91 zero_91 y_1484)))
(declare-fun lt_244 (Bool_229 Int Int) Bool)
(assert (forall ((x Int) (y Int))
	(=> (distinct x y) (lt_244 false_229 x y))))
(assert (forall ((x Int) (y Int))
	(=> (= x y) (lt_244 true_229 x y))))
(assert (forall ((x_42141 Int))
	(lt_244 false_229 x_42141 zero_91)))
(declare-fun leq_33 (Bool_229 Int Int) Bool)
(assert (forall ((x Int) (y Int))
	(=> (distinct x y) (leq_33 false_229 x y))))
(assert (forall ((x Int) (y Int))
	(=> (= x y) (leq_33 true_229 x y))))
(assert (forall ((y_1487 Int))
	(leq_33 true_229 zero_91 y_1487)))
(declare-fun sort_25 (list_157 Int Int) Bool)
(assert (forall ((x_42144 Int) (y_1488 Int))
	(=> (leq_33 true_229 x_42144 y_1488) (sort_25 (cons_157 x_42144 (cons_157 y_1488 nil_179)) x_42144 y_1488))))
(assert (forall ((x_42144 Int) (y_1488 Int))
	(=> (leq_33 false_229 x_42144 y_1488) (sort_25 (cons_157 y_1488 (cons_157 x_42144 nil_179)) x_42144 y_1488))))
(declare-fun length_25 (Int list_157) Bool)
(assert (forall ((x_42187 Int) (x_42188 Int) (y_1489 Int) (l_27 list_157))
	(=> (and (length_25 x_42188 l_27) (plus_90 x_42187 (succ_89 zero_91) x_42188)) (length_25 x_42187 (cons_157 y_1489 l_27)))))
(assert (length_25 zero_91 nil_179))
(declare-fun insert_19 (list_157 Int list_157) Bool)
(assert (forall ((z_1358 Int) (xs_438 list_157) (x_42146 Int))
	(=> (leq_33 true_229 x_42146 z_1358) (insert_19 (cons_157 x_42146 (cons_157 z_1358 xs_438)) x_42146 (cons_157 z_1358 xs_438)))))
(assert (forall ((x_42195 list_157) (z_1358 Int) (xs_438 list_157) (x_42146 Int))
	(=> (and (insert_19 x_42195 x_42146 xs_438) (leq_33 false_229 x_42146 z_1358)) (insert_19 (cons_157 z_1358 x_42195) x_42146 (cons_157 z_1358 xs_438)))))
(assert (forall ((x_42146 Int))
	(insert_19 (cons_157 x_42146 nil_179) x_42146 nil_179)))
(declare-fun isort_19 (list_157 list_157) Bool)
(assert (forall ((x_42197 list_157) (x_42198 list_157) (y_1491 Int) (xs_439 list_157))
	(=> (and (isort_19 x_42198 xs_439) (insert_19 x_42197 y_1491 x_42198)) (isort_19 x_42197 (cons_157 y_1491 xs_439)))))
(assert (isort_19 nil_179 nil_179))
(declare-fun idiv_7 (Int Int Int) Bool)
(assert (forall ((x_42148 Int) (y_1492 Int))
	(=> (lt_244 true_229 x_42148 y_1492) (idiv_7 zero_91 x_42148 y_1492))))
(assert (forall ((x_42205 Int) (x_42206 Int) (x_42148 Int) (y_1492 Int))
	(=> (and (minus_242 x_42205 x_42148 y_1492) (idiv_7 x_42206 x_42205 y_1492) (lt_244 false_229 x_42148 y_1492)) (idiv_7 (succ_89 x_42206) x_42148 y_1492))))
(declare-fun drop_39 (list_157 Int list_157) Bool)
(assert (forall ((x_42207 list_157) (z_1360 Int) (xs_440 list_157) (z_1359 Int))
	(=> (drop_39 x_42207 z_1359 xs_440) (drop_39 x_42207 (succ_89 z_1359) (cons_157 z_1360 xs_440)))))
(assert (forall ((z_1359 Int))
	(drop_39 nil_179 (succ_89 z_1359) nil_179)))
(assert (forall ((x_42210 list_157))
	(drop_39 x_42210 zero_91 x_42210)))
(declare-fun splitAt_17 (pair_68 Int list_157) Bool)
(assert (forall ((x_42212 list_157) (x_42213 list_157) (x_42150 Int) (y_1494 list_157))
	(=> (and (take_37 x_42212 x_42150 y_1494) (drop_39 x_42213 x_42150 y_1494)) (splitAt_17 (pair_69 x_42212 x_42213) x_42150 y_1494))))
(declare-fun x_42151 (list_157 list_157 list_157) Bool)
(assert (forall ((x_42215 list_157) (z_1361 Int) (xs_441 list_157) (y_1495 list_157))
	(=> (x_42151 x_42215 xs_441 y_1495) (x_42151 (cons_157 z_1361 x_42215) (cons_157 z_1361 xs_441) y_1495))))
(assert (forall ((x_42216 list_157))
	(x_42151 x_42216 nil_179 x_42216)))
(declare-fun reverse_9 (list_157 list_157) Bool)
(assert (forall ((x_42217 list_157) (x_42218 list_157) (y_1496 Int) (xs_442 list_157))
	(=> (and (reverse_9 x_42218 xs_442) (x_42151 x_42217 x_42218 (cons_157 y_1496 nil_179))) (reverse_9 x_42217 (cons_157 y_1496 xs_442)))))
(assert (reverse_9 nil_179 nil_179))
(declare-fun stoogesort_30 (list_157 list_157) Bool)
(declare-fun stoogesort_31 (list_157 list_157) Bool)
(declare-fun stoogesort_32 (list_157 list_157) Bool)
(assert (forall ((x_42225 list_157) (x_42226 list_157) (x_42227 list_157) (x_42221 Int) (x_42222 Int) (x_42223 list_157) (ys_140 list_157) (zs_49 list_157) (x_42154 list_157))
	(=> (and (stoogesort_31 x_42226 zs_49) (reverse_9 x_42227 ys_140) (x_42151 x_42225 x_42226 x_42227) (length_25 x_42221 x_42154) (idiv_7 x_42222 x_42221 (succ_89 (succ_89 (succ_89 zero_91)))) (reverse_9 x_42223 x_42154) (splitAt_17 (pair_69 ys_140 zs_49) x_42222 x_42223)) (stoogesort_30 x_42225 x_42154))))
(assert (forall ((x_42229 list_157) (x_42230 list_157) (x_42231 list_157) (x_42157 Int) (x_42158 list_157) (y_1498 Int) (y_1497 Int))
	(=> (and (stoogesort_30 x_42230 (cons_157 y_1497 (cons_157 y_1498 (cons_157 x_42157 x_42158)))) (stoogesort_32 x_42231 x_42230) (stoogesort_30 x_42229 x_42231)) (stoogesort_31 x_42229 (cons_157 y_1497 (cons_157 y_1498 (cons_157 x_42157 x_42158)))))))
(assert (forall ((x_42233 list_157) (y_1498 Int) (y_1497 Int))
	(=> (sort_25 x_42233 y_1497 y_1498) (stoogesort_31 x_42233 (cons_157 y_1497 (cons_157 y_1498 nil_179))))))
(assert (forall ((y_1497 Int))
	(stoogesort_31 (cons_157 y_1497 nil_179) (cons_157 y_1497 nil_179))))
(assert (stoogesort_31 nil_179 nil_179))
(assert (forall ((x_42240 list_157) (x_42241 list_157) (x_42237 Int) (x_42238 Int) (ys_141 list_157) (zs_50 list_157) (x_42159 list_157))
	(=> (and (stoogesort_31 x_42241 zs_50) (x_42151 x_42240 ys_141 x_42241) (length_25 x_42237 x_42159) (idiv_7 x_42238 x_42237 (succ_89 (succ_89 (succ_89 zero_91)))) (splitAt_17 (pair_69 ys_141 zs_50) x_42238 x_42159)) (stoogesort_32 x_42240 x_42159))))
(assert (forall ((x_42243 Int) (x_42244 Int) (x_42245 Int) (x_42246 Int) (x_42160 Int) (y_1499 Int) (z_1363 Int))
	(=> (and true (distinct x_42244 x_42246) (plus_90 x_42243 y_1499 z_1363) (plus_90 x_42244 x_42160 x_42243) (plus_90 x_42245 x_42160 y_1499) (plus_90 x_42246 x_42245 z_1363)) false)))
(assert (forall ((x_42247 Int) (x_42248 Int) (x_42161 Int) (y_1500 Int))
	(=> (and true (distinct x_42247 x_42248) (plus_90 x_42247 x_42161 y_1500) (plus_90 x_42248 y_1500 x_42161)) false)))
(assert (forall ((x_42249 Int) (x_42162 Int))
	(=> (and true (distinct x_42249 x_42162) (plus_90 x_42249 x_42162 zero_91)) false)))
(assert (forall ((x_42250 Int) (x_42163 Int))
	(=> (and true (distinct x_42250 x_42163) (plus_90 x_42250 zero_91 x_42163)) false)))
(assert (forall ((x_42251 list_157) (x_42252 list_157) (xs_443 list_157))
	(=> (and true (diseqlist_157 x_42251 x_42252) (stoogesort_31 x_42251 xs_443) (isort_19 x_42252 xs_443)) false)))
(check-sat)
