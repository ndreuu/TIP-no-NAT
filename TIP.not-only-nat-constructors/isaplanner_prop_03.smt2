
(set-logic HORN)
(define-fun Z_117 () Int 0)
(define-fun S_41 ((x Int)) Int (+ x 1))
(declare-datatypes ((Bool_22 0)) (((false_22) (true_22))))
(declare-fun diseqBool_7 (Bool_22 Bool_22) Bool)
(declare-fun isfalse_7 (Bool_22) Bool)
(declare-fun istrue_7 (Bool_22) Bool)
(assert (isfalse_7 false_22))
(assert (istrue_7 true_22))
(assert (diseqBool_7 false_22 true_22))
(assert (diseqBool_7 true_22 false_22))
(declare-fun and_22 (Bool_22 Bool_22 Bool_22) Bool)
(declare-fun or_22 (Bool_22 Bool_22 Bool_22) Bool)
(declare-fun hence_22 (Bool_22 Bool_22 Bool_22) Bool)
(declare-fun not_22 (Bool_22 Bool_22) Bool)
(assert (and_22 false_22 false_22 false_22))
(assert (and_22 false_22 true_22 false_22))
(assert (and_22 false_22 false_22 true_22))
(assert (and_22 true_22 true_22 true_22))
(assert (or_22 false_22 false_22 false_22))
(assert (or_22 true_22 true_22 false_22))
(assert (or_22 true_22 false_22 true_22))
(assert (or_22 true_22 true_22 true_22))
(assert (hence_22 true_22 false_22 false_22))
(assert (hence_22 false_22 true_22 false_22))
(assert (hence_22 true_22 false_22 true_22))
(assert (hence_22 true_22 true_22 true_22))
(assert (not_22 true_22 false_22))
(assert (not_22 false_22 true_22))
(declare-fun projS_39 (Int Int) Bool)
(declare-fun isZ_41 (Int) Bool)
(declare-fun isS_41 (Int) Bool)
(assert (forall ((x_1261 Int))
	(projS_39 x_1261 (S_41 x_1261))))
(assert (isZ_41 Z_117))
(assert (forall ((x_1263 Int))
	(isS_41 (S_41 x_1263))))
(declare-datatypes ((list_24 0)) (((nil_24) (cons_24 (head_48 Int) (tail_48 list_24)))))
(declare-fun diseqlist_24 (list_24 list_24) Bool)
(declare-fun head_49 (Int list_24) Bool)
(declare-fun tail_49 (list_24 list_24) Bool)
(declare-fun isnil_24 (list_24) Bool)
(declare-fun iscons_24 (list_24) Bool)
(assert (forall ((x_1269 Int) (x_1270 list_24))
	(head_49 x_1269 (cons_24 x_1269 x_1270))))
(assert (forall ((x_1269 Int) (x_1270 list_24))
	(tail_49 x_1270 (cons_24 x_1269 x_1270))))
(assert (isnil_24 nil_24))
(assert (forall ((x_1272 Int) (x_1273 list_24))
	(iscons_24 (cons_24 x_1272 x_1273))))
(assert (forall ((x_1274 Int) (x_1275 list_24))
	(diseqlist_24 nil_24 (cons_24 x_1274 x_1275))))
(assert (forall ((x_1276 Int) (x_1277 list_24))
	(diseqlist_24 (cons_24 x_1276 x_1277) nil_24)))
(assert (forall ((x_1278 Int) (x_1279 list_24) (x_1280 Int) (x_1281 list_24))
	(=> (distinct x_1278 x_1280) (diseqlist_24 (cons_24 x_1278 x_1279) (cons_24 x_1280 x_1281)))))
(assert (forall ((x_1278 Int) (x_1279 list_24) (x_1280 Int) (x_1281 list_24))
	(=> (diseqlist_24 x_1279 x_1281) (diseqlist_24 (cons_24 x_1278 x_1279) (cons_24 x_1280 x_1281)))))
(declare-fun x_1225 (Bool_22 Int Int) Bool)
(assert (forall ((x_1234 Bool_22) (y_93 Int) (x_1227 Int))
	(=> (x_1225 x_1234 x_1227 y_93) (x_1225 x_1234 (S_41 x_1227) (S_41 y_93)))))
(assert (forall ((x_1227 Int))
	(x_1225 false_22 (S_41 x_1227) Z_117)))
(assert (forall ((z_118 Int))
	(x_1225 false_22 Z_117 (S_41 z_118))))
(assert (x_1225 true_22 Z_117 Z_117))
(declare-fun count_2 (Int Int list_24) Bool)
(assert (forall ((x_1241 Int) (z_119 Int) (ys_11 list_24) (x_1228 Int))
	(=> (and (count_2 x_1241 x_1228 ys_11) (x_1225 true_22 x_1228 z_119)) (count_2 (S_41 x_1241) x_1228 (cons_24 z_119 ys_11)))))
(assert (forall ((x_1243 Int) (z_119 Int) (ys_11 list_24) (x_1228 Int))
	(=> (and (count_2 x_1243 x_1228 ys_11) (x_1225 false_22 x_1228 z_119)) (count_2 x_1243 x_1228 (cons_24 z_119 ys_11)))))
(assert (forall ((x_1228 Int))
	(count_2 Z_117 x_1228 nil_24)))
(declare-fun x_1229 (Bool_22 Int Int) Bool)
(assert (forall ((x_1246 Bool_22) (x_1231 Int) (z_120 Int))
	(=> (x_1229 x_1246 z_120 x_1231) (x_1229 x_1246 (S_41 z_120) (S_41 x_1231)))))
(assert (forall ((z_120 Int))
	(x_1229 false_22 (S_41 z_120) Z_117)))
(assert (forall ((y_95 Int))
	(x_1229 true_22 Z_117 y_95)))
(declare-fun x_1232 (list_24 list_24 list_24) Bool)
(assert (forall ((x_1251 list_24) (z_121 Int) (xs_30 list_24) (y_96 list_24))
	(=> (x_1232 x_1251 xs_30 y_96) (x_1232 (cons_24 z_121 x_1251) (cons_24 z_121 xs_30) y_96))))
(assert (forall ((x_1252 list_24))
	(x_1232 x_1252 nil_24 x_1252)))
(assert (forall ((x_1253 Int) (x_1254 list_24) (x_1255 Int) (n_9 Int) (xs_31 list_24) (ys_12 list_24))
	(=> (and true (count_2 x_1253 n_9 xs_31) (x_1232 x_1254 xs_31 ys_12) (count_2 x_1255 n_9 x_1254) (x_1229 false_22 x_1253 x_1255)) false)))
(check-sat)