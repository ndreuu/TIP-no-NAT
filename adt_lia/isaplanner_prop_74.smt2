(set-logic HORN)
(define-fun Z_129 () Int 0)
(define-fun S_44 ((x Int)) Int (+ x 1))
(define-fun Z_124 () Int 0)
(define-fun S_43 ((x Int)) Int (+ x 1))
(declare-fun unS_47 (Int Int) Bool)
(declare-fun isZ_44 (Int) Bool)
(declare-fun isS_44 (Int) Bool)
(assert (forall ((x_1355 Int))
	(unS_47 x_1355 (S_44 x_1355))))
(assert (isZ_44 Z_129))
(assert (forall ((x_1357 Int))
	(isS_44 (S_44 x_1357))))
(declare-datatypes ((list_25 0)) (((nil_25) (cons_25 (head_50 Int) (tail_50 list_25)))))
(declare-fun diseqlist_25 (list_25 list_25) Bool)
(declare-fun head_51 (Int list_25) Bool)
(declare-fun tail_51 (list_25 list_25) Bool)
(declare-fun isnil_25 (list_25) Bool)
(declare-fun iscons_25 (list_25) Bool)
(assert (forall ((x_1333 Int) (x_1334 list_25))
	(head_51 x_1333 (cons_25 x_1333 x_1334))))
(assert (forall ((x_1333 Int) (x_1334 list_25))
	(tail_51 x_1334 (cons_25 x_1333 x_1334))))
(assert (isnil_25 nil_25))
(assert (forall ((x_1336 Int) (x_1337 list_25))
	(iscons_25 (cons_25 x_1336 x_1337))))
(assert (forall ((x_1338 Int) (x_1339 list_25))
	(diseqlist_25 nil_25 (cons_25 x_1338 x_1339))))
(assert (forall ((x_1340 Int) (x_1341 list_25))
	(diseqlist_25 (cons_25 x_1340 x_1341) nil_25)))
(assert (forall ((x_1342 Int) (x_1343 list_25) (x_1344 Int) (x_1345 list_25))
	(=> (distinct x_1342 x_1344) (diseqlist_25 (cons_25 x_1342 x_1343) (cons_25 x_1344 x_1345)))))
(assert (forall ((x_1342 Int) (x_1343 list_25) (x_1344 Int) (x_1345 list_25))
	(=> (diseqlist_25 x_1343 x_1345) (diseqlist_25 (cons_25 x_1342 x_1343) (cons_25 x_1344 x_1345)))))
(declare-fun projS_41 (Int Int) Bool)
(declare-fun isZ_43 (Int) Bool)
(declare-fun isS_43 (Int) Bool)
(assert (forall ((x_1347 Int))
	(projS_41 x_1347 (S_43 x_1347))))
(assert (isZ_43 Z_124))
(assert (forall ((x_1349 Int))
	(isS_43 (S_43 x_1349))))
(declare-fun take_5 (list_25 Int list_25) Bool)
(assert (forall ((x_1304 list_25) (x_1291 Int) (x_1292 list_25) (z_125 Int))
	(=> (and (>= z_125 0) (take_5 x_1304 z_125 x_1292)) (take_5 (cons_25 x_1291 x_1304) (S_43 z_125) (cons_25 x_1291 x_1292)))))
(assert (forall ((z_125 Int))
	(take_5 nil_25 z_125 nil_25)))
(assert (forall ((z Int) (y_98 list_25))
	(=> (<= z 0) (take_5 nil_25 z y_98))))
(declare-fun len_4 (Int list_25) Bool)
(assert (forall ((x_1308 Int) (y_99 Int) (xs_32 list_25))
	(=> (and (>= x_1308 0) (len_4 x_1308 xs_32)) (len_4 (S_43 x_1308) (cons_25 y_99 xs_32)))))
(assert (forall ((z Int)) (=> (<= z 0) (len_4 z nil_25))))
(declare-fun drop_4 (list_25 Int list_25) Bool)
(assert (forall ((x_1310 list_25) (x_1295 Int) (x_1296 list_25) (z_126 Int))
	(=> (and (> z_126 0) (drop_4 x_1310 z_126 x_1296)) (drop_4 x_1310 (S_43 z_126) (cons_25 x_1295 x_1296)))))
(assert (forall ((z_126 Int))
	(drop_4 nil_25 z_126 nil_25)))
(assert (forall ((z Int) (x_1313 list_25))
	(=> (<= z 0) (drop_4 x_1313 z x_1313))))
(declare-fun x_1297 (Int Int Int) Bool)
(assert (forall ((x_1314 Int) (x_1299 Int) (z_127 Int))
	(=> (and (>= z_127 0) (>= x_1299 0) (x_1297 x_1314 z_127 x_1299)) (x_1297 x_1314 (S_43 z_127) (S_43 x_1299)))))
(assert (forall ((z Int) (z_127 Int))
	(=> (and (>= z_127 0) (<= z 0)) (x_1297 (S_43 z_127) (S_43 z_127) z))))
(assert (forall ((z Int) (y_101 Int))
	(=> (and (<= z 0) (>= y_101 0)) (x_1297 z z y_101))))
(declare-fun x_1300 (list_25 list_25 list_25) Bool)
(assert (forall ((x_1319 list_25) (z_128 Int) (xs_33 list_25) (y_102 list_25))
	(=> (x_1300 x_1319 xs_33 y_102) (x_1300 (cons_25 z_128 x_1319) (cons_25 z_128 xs_33) y_102))))
(assert (forall ((x_1320 list_25))
	(x_1300 x_1320 nil_25 x_1320)))
(declare-fun rev_0 (list_25 list_25) Bool)
(assert (forall ((x_1321 list_25) (x_1322 list_25) (y_103 Int) (xs_34 list_25))
	(=> (and (rev_0 x_1322 xs_34) (x_1300 x_1321 x_1322 (cons_25 y_103 nil_25))) (rev_0 x_1321 (cons_25 y_103 xs_34)))))
(assert (rev_0 nil_25 nil_25))
(assert (forall ((x_1325 list_25) (x_1326 list_25) (x_1327 Int) (x_1328 Int) (x_1329 list_25) (x_1330 list_25) (i_0 Int) (xs_35 list_25))
	(=> (and (diseqlist_25 x_1326 x_1330) (take_5 x_1325 i_0 xs_35) (rev_0 x_1326 x_1325) (len_4 x_1327 xs_35) (x_1297 x_1328 x_1327 i_0) (rev_0 x_1329 xs_35) (drop_4 x_1330 x_1328 x_1329)) false)))
(check-sat)
