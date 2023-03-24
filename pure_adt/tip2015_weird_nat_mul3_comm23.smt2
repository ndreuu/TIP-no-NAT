(set-logic HORN)
(declare-datatypes ((Nat_318 0)) (((zero_63 ) (succ_62 (p_173 Nat_318)))))
(declare-fun diseqNat_318 (Nat_318 Nat_318) Bool)
(declare-fun p_174 (Nat_318 Nat_318) Bool)
(declare-fun iszero_62 (Nat_318) Bool)
(declare-fun issucc_62 (Nat_318) Bool)
(assert (forall ((x_27354 Nat_318))
	(p_174 x_27354 (succ_62 x_27354))))
(assert (iszero_62 zero_63))
(assert (forall ((x_27356 Nat_318))
	(issucc_62 (succ_62 x_27356))))
(assert (forall ((x_27357 Nat_318))
	(diseqNat_318 zero_63 (succ_62 x_27357))))
(assert (forall ((x_27358 Nat_318))
	(diseqNat_318 (succ_62 x_27358) zero_63)))
(assert (forall ((x_27359 Nat_318) (x_27360 Nat_318))
	(=> (diseqNat_318 x_27359 x_27360)
	    (diseqNat_318 (succ_62 x_27359) (succ_62 x_27360)))))
(declare-fun plus_58 (Nat_318 Nat_318 Nat_318) Bool)
(assert (forall ((x_27258 Nat_318) (z_1044 Nat_318) (y_1092 Nat_318))
	(=> (plus_58 x_27258 z_1044 y_1092)
	    (plus_58 (succ_62 x_27258) (succ_62 z_1044) y_1092))))
(assert (forall ((x_27259 Nat_318))
	(plus_58 x_27259 zero_63 x_27259)))
(declare-fun add_195 (Nat_318 Nat_318 Nat_318 Nat_318) Bool)
(assert (forall ((x_27260 Nat_318) (x_27261 Nat_318) (x_27246 Nat_318) (y_1093 Nat_318) (z_1045 Nat_318))
	(=>	(and (add_195 x_27261 x_27246 y_1093 z_1045)
			(plus_58 x_27260 (succ_62 zero_63) x_27261))
		(add_195 x_27260 (succ_62 x_27246) y_1093 z_1045))))
(assert (forall ((x_27263 Nat_318) (x_27264 Nat_318) (x_27247 Nat_318) (z_1045 Nat_318))
	(=>	(and (add_195 x_27264 zero_63 x_27247 z_1045)
			(plus_58 x_27263 (succ_62 zero_63) x_27264))
		(add_195 x_27263 zero_63 (succ_62 x_27247) z_1045))))
(assert (forall ((x_27266 Nat_318))
	(add_195 x_27266 zero_63 zero_63 x_27266)))
(declare-fun mul_3 (Nat_318 Nat_318 Nat_318 Nat_318) Bool)
(assert (forall ((x_27267 Nat_318) (x_27268 Nat_318) (x_27269 Nat_318) (x_27270 Nat_318) (x_27271 Nat_318) (x_27272 Nat_318) (x_27273 Nat_318) (fail_12 Nat_318))
	(=>	(and (mul_3 x_27267 zero_63 zero_63 zero_63)
			(mul_3 x_27268 (succ_62 zero_63) zero_63 zero_63)
			(mul_3 x_27269 zero_63 (succ_62 zero_63) zero_63)
			(mul_3 x_27270 zero_63 zero_63 (succ_62 zero_63))
			(add_195 x_27271 x_27268 x_27269 x_27270)
			(add_195 x_27272 zero_63 zero_63 zero_63)
			(add_195 x_27273 x_27267 x_27271 x_27272)
			(plus_58 fail_12 (succ_62 zero_63) x_27273))
		(mul_3 (succ_62 zero_63) (succ_62 zero_63) (succ_62 zero_63) (succ_62 zero_63)))))
(assert (forall ((x_27276 Nat_318) (x_27277 Nat_318) (x_27278 Nat_318) (x_27279 Nat_318) (x_27280 Nat_318) (x_27281 Nat_318) (x_27282 Nat_318) (fail_12 Nat_318) (x_27251 Nat_318) (x_27250 Nat_318) (x_27249 Nat_318))
	(=>	(and (diseqNat_318 x_27249 zero_63)
			(mul_3 x_27276 x_27249 x_27250 x_27251)
			(mul_3 x_27277 (succ_62 zero_63) x_27250 x_27251)
			(mul_3 x_27278 x_27249 (succ_62 zero_63) x_27251)
			(mul_3 x_27279 x_27249 x_27250 (succ_62 zero_63))
			(add_195 x_27280 x_27277 x_27278 x_27279)
			(add_195 x_27281 x_27249 x_27250 x_27251)
			(add_195 x_27282 x_27276 x_27280 x_27281)
			(plus_58 fail_12 (succ_62 zero_63) x_27282))
		(mul_3 fail_12 (succ_62 x_27249) (succ_62 x_27250) (succ_62 x_27251)))))
(assert (forall ((x_27285 Nat_318) (x_27286 Nat_318) (x_27287 Nat_318) (x_27288 Nat_318) (x_27289 Nat_318) (x_27290 Nat_318) (x_27291 Nat_318) (fail_12 Nat_318) (x_27251 Nat_318) (x_27250 Nat_318))
	(=>	(and (diseqNat_318 x_27250 zero_63)
			(mul_3 x_27285 zero_63 x_27250 x_27251)
			(mul_3 x_27286 (succ_62 zero_63) x_27250 x_27251)
			(mul_3 x_27287 zero_63 (succ_62 zero_63) x_27251)
			(mul_3 x_27288 zero_63 x_27250 (succ_62 zero_63))
			(add_195 x_27289 x_27286 x_27287 x_27288)
			(add_195 x_27290 zero_63 x_27250 x_27251)
			(add_195 x_27291 x_27285 x_27289 x_27290)
			(plus_58 fail_12 (succ_62 zero_63) x_27291))
		(mul_3 fail_12 (succ_62 zero_63) (succ_62 x_27250) (succ_62 x_27251)))))
(assert (forall ((x_27294 Nat_318) (x_27295 Nat_318) (x_27296 Nat_318) (x_27297 Nat_318) (x_27298 Nat_318) (x_27299 Nat_318) (x_27300 Nat_318) (fail_12 Nat_318) (x_27251 Nat_318) (x_27250 Nat_318) (x_27249 Nat_318))
	(=>	(and (diseqNat_318 x_27249 zero_63)
			(mul_3 x_27294 x_27249 x_27250 x_27251)
			(mul_3 x_27295 (succ_62 zero_63) x_27250 x_27251)
			(mul_3 x_27296 x_27249 (succ_62 zero_63) x_27251)
			(mul_3 x_27297 x_27249 x_27250 (succ_62 zero_63))
			(add_195 x_27298 x_27295 x_27296 x_27297)
			(add_195 x_27299 x_27249 x_27250 x_27251)
			(add_195 x_27300 x_27294 x_27298 x_27299)
			(plus_58 fail_12 (succ_62 zero_63) x_27300))
		(mul_3 fail_12 (succ_62 x_27249) (succ_62 x_27250) (succ_62 x_27251)))))
(assert (forall ((x_27303 Nat_318) (x_27304 Nat_318) (x_27305 Nat_318) (x_27306 Nat_318) (x_27307 Nat_318) (x_27308 Nat_318) (x_27309 Nat_318) (fail_12 Nat_318) (x_27251 Nat_318))
	(=>	(and (diseqNat_318 x_27251 zero_63)
			(mul_3 x_27303 zero_63 zero_63 x_27251)
			(mul_3 x_27304 (succ_62 zero_63) zero_63 x_27251)
			(mul_3 x_27305 zero_63 (succ_62 zero_63) x_27251)
			(mul_3 x_27306 zero_63 zero_63 (succ_62 zero_63))
			(add_195 x_27307 x_27304 x_27305 x_27306)
			(add_195 x_27308 zero_63 zero_63 x_27251)
			(add_195 x_27309 x_27303 x_27307 x_27308)
			(plus_58 fail_12 (succ_62 zero_63) x_27309))
		(mul_3 fail_12 (succ_62 zero_63) (succ_62 zero_63) (succ_62 x_27251)))))
(assert (forall ((x_27312 Nat_318) (x_27313 Nat_318) (x_27314 Nat_318) (x_27315 Nat_318) (x_27316 Nat_318) (x_27317 Nat_318) (x_27318 Nat_318) (fail_12 Nat_318) (x_27251 Nat_318) (x_27250 Nat_318) (x_27249 Nat_318))
	(=>	(and (diseqNat_318 x_27249 zero_63)
			(mul_3 x_27312 x_27249 x_27250 x_27251)
			(mul_3 x_27313 (succ_62 zero_63) x_27250 x_27251)
			(mul_3 x_27314 x_27249 (succ_62 zero_63) x_27251)
			(mul_3 x_27315 x_27249 x_27250 (succ_62 zero_63))
			(add_195 x_27316 x_27313 x_27314 x_27315)
			(add_195 x_27317 x_27249 x_27250 x_27251)
			(add_195 x_27318 x_27312 x_27316 x_27317)
			(plus_58 fail_12 (succ_62 zero_63) x_27318))
		(mul_3 fail_12 (succ_62 x_27249) (succ_62 x_27250) (succ_62 x_27251)))))
(assert (forall ((x_27321 Nat_318) (x_27322 Nat_318) (x_27323 Nat_318) (x_27324 Nat_318) (x_27325 Nat_318) (x_27326 Nat_318) (x_27327 Nat_318) (fail_12 Nat_318) (x_27251 Nat_318) (x_27250 Nat_318))
	(=>	(and (diseqNat_318 x_27250 zero_63)
			(mul_3 x_27321 zero_63 x_27250 x_27251)
			(mul_3 x_27322 (succ_62 zero_63) x_27250 x_27251)
			(mul_3 x_27323 zero_63 (succ_62 zero_63) x_27251)
			(mul_3 x_27324 zero_63 x_27250 (succ_62 zero_63))
			(add_195 x_27325 x_27322 x_27323 x_27324)
			(add_195 x_27326 zero_63 x_27250 x_27251)
			(add_195 x_27327 x_27321 x_27325 x_27326)
			(plus_58 fail_12 (succ_62 zero_63) x_27327))
		(mul_3 fail_12 (succ_62 zero_63) (succ_62 x_27250) (succ_62 x_27251)))))
(assert (forall ((x_27330 Nat_318) (x_27331 Nat_318) (x_27332 Nat_318) (x_27333 Nat_318) (x_27334 Nat_318) (x_27335 Nat_318) (x_27336 Nat_318) (fail_12 Nat_318) (x_27251 Nat_318) (x_27250 Nat_318) (x_27249 Nat_318))
	(=>	(and (diseqNat_318 x_27249 zero_63)
			(mul_3 x_27330 x_27249 x_27250 x_27251)
			(mul_3 x_27331 (succ_62 zero_63) x_27250 x_27251)
			(mul_3 x_27332 x_27249 (succ_62 zero_63) x_27251)
			(mul_3 x_27333 x_27249 x_27250 (succ_62 zero_63))
			(add_195 x_27334 x_27331 x_27332 x_27333)
			(add_195 x_27335 x_27249 x_27250 x_27251)
			(add_195 x_27336 x_27330 x_27334 x_27335)
			(plus_58 fail_12 (succ_62 zero_63) x_27336))
		(mul_3 fail_12 (succ_62 x_27249) (succ_62 x_27250) (succ_62 x_27251)))))
(assert (forall ((x_27250 Nat_318) (x_27249 Nat_318))
	(mul_3 zero_63 (succ_62 x_27249) (succ_62 x_27250) zero_63)))
(assert (forall ((x_27249 Nat_318) (z_1046 Nat_318))
	(mul_3 zero_63 (succ_62 x_27249) zero_63 z_1046)))
(assert (forall ((y_1094 Nat_318) (z_1046 Nat_318))
	(mul_3 zero_63 zero_63 y_1094 z_1046)))
(assert (forall ((x_27342 Nat_318) (x_27343 Nat_318) (x_27252 Nat_318) (y_1095 Nat_318) (z_1047 Nat_318))
	(=>	(and true
			(diseqNat_318 x_27342 x_27343)
			(mul_3 x_27342 x_27252 y_1095 z_1047)
			(mul_3 x_27343 x_27252 z_1047 y_1095))
		false)))
(assert (forall ((x_27344 Nat_318) (x_27345 Nat_318) (x_27346 Nat_318) (x_27347 Nat_318) (x_27253 Nat_318) (y_1096 Nat_318) (z_1048 Nat_318))
	(=>	(and true
			(diseqNat_318 x_27345 x_27347)
			(plus_58 x_27344 y_1096 z_1048)
			(plus_58 x_27345 x_27253 x_27344)
			(plus_58 x_27346 x_27253 y_1096)
			(plus_58 x_27347 x_27346 z_1048))
		false)))
(assert (forall ((x_27348 Nat_318) (x_27349 Nat_318) (x_27254 Nat_318) (y_1097 Nat_318))
	(=>	(and true
			(diseqNat_318 x_27348 x_27349)
			(plus_58 x_27348 x_27254 y_1097)
			(plus_58 x_27349 y_1097 x_27254))
		false)))
(assert (forall ((x_27350 Nat_318) (x_27255 Nat_318))
	(=>	(and true
			(diseqNat_318 x_27350 x_27255)
			(plus_58 x_27350 x_27255 zero_63))
		false)))
(assert (forall ((x_27351 Nat_318) (x_27256 Nat_318))
	(=>	(and true
			(diseqNat_318 x_27351 x_27256)
			(plus_58 x_27351 zero_63 x_27256))
		false)))
(check-sat)