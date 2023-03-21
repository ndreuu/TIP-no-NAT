
(set-logic HORN)
(declare-datatypes ((Bool_447 0)) (((false_447) (true_447))))
(declare-fun diseqBool_223 (Bool_447 Bool_447) Bool)
(declare-fun isfalse_223 (Bool_447) Bool)
(declare-fun istrue_223 (Bool_447) Bool)
(assert (isfalse_223 false_447))
(assert (istrue_223 true_447))
(assert (diseqBool_223 false_447 true_447))
(assert (diseqBool_223 true_447 false_447))
(declare-fun and_453 (Bool_447 Bool_447 Bool_447) Bool)
(declare-fun or_469 (Bool_447 Bool_447 Bool_447) Bool)
(declare-fun hence_447 (Bool_447 Bool_447 Bool_447) Bool)
(declare-fun not_452 (Bool_447 Bool_447) Bool)
(assert (and_453 false_447 false_447 false_447))
(assert (and_453 false_447 true_447 false_447))
(assert (and_453 false_447 false_447 true_447))
(assert (and_453 true_447 true_447 true_447))
(assert (or_469 false_447 false_447 false_447))
(assert (or_469 true_447 true_447 false_447))
(assert (or_469 true_447 false_447 true_447))
(assert (or_469 true_447 true_447 true_447))
(assert (hence_447 true_447 false_447 false_447))
(assert (hence_447 false_447 true_447 false_447))
(assert (hence_447 true_447 false_447 true_447))
(assert (hence_447 true_447 true_447 true_447))
(assert (not_452 true_447 false_447))
(assert (not_452 false_447 true_447))
(declare-datatypes ((T_41 0)) (((A_126) (B_146) (C_82))))
(declare-fun diseqT_37 (T_41 T_41) Bool)
(declare-fun isA_44 (T_41) Bool)
(declare-fun isB_44 (T_41) Bool)
(declare-fun isC_45 (T_41) Bool)
(assert (isA_44 A_126))
(assert (isB_44 B_146))
(assert (isC_45 C_82))
(assert (diseqT_37 A_126 B_146))
(assert (diseqT_37 A_126 C_82))
(assert (diseqT_37 B_146 A_126))
(assert (diseqT_37 C_82 A_126))
(assert (diseqT_37 B_146 C_82))
(assert (diseqT_37 C_82 B_146))
(declare-datatypes ((list_409 0)) (((nil_470) (cons_403 (head_806 T_41) (tail_812 list_409)))))
(declare-fun diseqlist_403 (list_409 list_409) Bool)
(declare-fun head_807 (T_41 list_409) Bool)
(declare-fun tail_813 (list_409 list_409) Bool)
(declare-fun isnil_470 (list_409) Bool)
(declare-fun iscons_403 (list_409) Bool)
(assert (forall ((x_127214 T_41) (x_127215 list_409))
	(head_807 x_127214 (cons_403 x_127214 x_127215))))
(assert (forall ((x_127214 T_41) (x_127215 list_409))
	(tail_813 x_127215 (cons_403 x_127214 x_127215))))
(assert (isnil_470 nil_470))
(assert (forall ((x_127217 T_41) (x_127218 list_409))
	(iscons_403 (cons_403 x_127217 x_127218))))
(assert (forall ((x_127219 T_41) (x_127220 list_409))
	(diseqlist_403 nil_470 (cons_403 x_127219 x_127220))))
(assert (forall ((x_127221 T_41) (x_127222 list_409))
	(diseqlist_403 (cons_403 x_127221 x_127222) nil_470)))
(assert (forall ((x_127223 T_41) (x_127224 list_409) (x_127225 T_41) (x_127226 list_409))
	(=> (diseqT_37 x_127223 x_127225) (diseqlist_403 (cons_403 x_127223 x_127224) (cons_403 x_127225 x_127226)))))
(assert (forall ((x_127223 T_41) (x_127224 list_409) (x_127225 T_41) (x_127226 list_409))
	(=> (diseqlist_403 x_127224 x_127226) (diseqlist_403 (cons_403 x_127223 x_127224) (cons_403 x_127225 x_127226)))))
(declare-datatypes ((R_674 0)) (((Nil_471) (Eps_102) (Atom_51 (projAtom_102 T_41)) (x_127165 (proj_376 R_674) (proj_377 R_674)) (x_127166 (proj_378 R_674) (proj_379 R_674)) (Star_51 (projStar_102 R_674)))))
(declare-fun diseqR_51 (R_674 R_674) Bool)
(declare-fun projAtom_103 (T_41 R_674) Bool)
(declare-fun proj_380 (R_674 R_674) Bool)
(declare-fun proj_381 (R_674 R_674) Bool)
(declare-fun proj_382 (R_674 R_674) Bool)
(declare-fun proj_383 (R_674 R_674) Bool)
(declare-fun projStar_103 (R_674 R_674) Bool)
(declare-fun isNil_471 (R_674) Bool)
(declare-fun isEps_51 (R_674) Bool)
(declare-fun isAtom_51 (R_674) Bool)
(declare-fun isx_109 (R_674) Bool)
(declare-fun isx_110 (R_674) Bool)
(declare-fun isStar_51 (R_674) Bool)
(assert (forall ((x_127229 T_41))
	(projAtom_103 x_127229 (Atom_51 x_127229))))
(assert (forall ((x_127231 R_674) (x_127232 R_674))
	(proj_380 x_127231 (x_127165 x_127231 x_127232))))
(assert (forall ((x_127231 R_674) (x_127232 R_674))
	(proj_381 x_127232 (x_127165 x_127231 x_127232))))
(assert (forall ((x_127234 R_674) (x_127235 R_674))
	(proj_382 x_127234 (x_127166 x_127234 x_127235))))
(assert (forall ((x_127234 R_674) (x_127235 R_674))
	(proj_383 x_127235 (x_127166 x_127234 x_127235))))
(assert (forall ((x_127237 R_674))
	(projStar_103 x_127237 (Star_51 x_127237))))
(assert (isNil_471 Nil_471))
(assert (isEps_51 Eps_102))
(assert (forall ((x_127239 T_41))
	(isAtom_51 (Atom_51 x_127239))))
(assert (forall ((x_127240 R_674) (x_127241 R_674))
	(isx_109 (x_127165 x_127240 x_127241))))
(assert (forall ((x_127242 R_674) (x_127243 R_674))
	(isx_110 (x_127166 x_127242 x_127243))))
(assert (forall ((x_127244 R_674))
	(isStar_51 (Star_51 x_127244))))
(assert (diseqR_51 Nil_471 Eps_102))
(assert (forall ((x_127245 T_41))
	(diseqR_51 Nil_471 (Atom_51 x_127245))))
(assert (forall ((x_127246 R_674) (x_127247 R_674))
	(diseqR_51 Nil_471 (x_127165 x_127246 x_127247))))
(assert (forall ((x_127248 R_674) (x_127249 R_674))
	(diseqR_51 Nil_471 (x_127166 x_127248 x_127249))))
(assert (forall ((x_127250 R_674))
	(diseqR_51 Nil_471 (Star_51 x_127250))))
(assert (diseqR_51 Eps_102 Nil_471))
(assert (forall ((x_127251 T_41))
	(diseqR_51 (Atom_51 x_127251) Nil_471)))
(assert (forall ((x_127252 R_674) (x_127253 R_674))
	(diseqR_51 (x_127165 x_127252 x_127253) Nil_471)))
(assert (forall ((x_127254 R_674) (x_127255 R_674))
	(diseqR_51 (x_127166 x_127254 x_127255) Nil_471)))
(assert (forall ((x_127256 R_674))
	(diseqR_51 (Star_51 x_127256) Nil_471)))
(assert (forall ((x_127257 T_41))
	(diseqR_51 Eps_102 (Atom_51 x_127257))))
(assert (forall ((x_127258 R_674) (x_127259 R_674))
	(diseqR_51 Eps_102 (x_127165 x_127258 x_127259))))
(assert (forall ((x_127260 R_674) (x_127261 R_674))
	(diseqR_51 Eps_102 (x_127166 x_127260 x_127261))))
(assert (forall ((x_127262 R_674))
	(diseqR_51 Eps_102 (Star_51 x_127262))))
(assert (forall ((x_127263 T_41))
	(diseqR_51 (Atom_51 x_127263) Eps_102)))
(assert (forall ((x_127264 R_674) (x_127265 R_674))
	(diseqR_51 (x_127165 x_127264 x_127265) Eps_102)))
(assert (forall ((x_127266 R_674) (x_127267 R_674))
	(diseqR_51 (x_127166 x_127266 x_127267) Eps_102)))
(assert (forall ((x_127268 R_674))
	(diseqR_51 (Star_51 x_127268) Eps_102)))
(assert (forall ((x_127269 T_41) (x_127270 R_674) (x_127271 R_674))
	(diseqR_51 (Atom_51 x_127269) (x_127165 x_127270 x_127271))))
(assert (forall ((x_127272 T_41) (x_127273 R_674) (x_127274 R_674))
	(diseqR_51 (Atom_51 x_127272) (x_127166 x_127273 x_127274))))
(assert (forall ((x_127275 T_41) (x_127276 R_674))
	(diseqR_51 (Atom_51 x_127275) (Star_51 x_127276))))
(assert (forall ((x_127277 R_674) (x_127278 R_674) (x_127279 T_41))
	(diseqR_51 (x_127165 x_127277 x_127278) (Atom_51 x_127279))))
(assert (forall ((x_127280 R_674) (x_127281 R_674) (x_127282 T_41))
	(diseqR_51 (x_127166 x_127280 x_127281) (Atom_51 x_127282))))
(assert (forall ((x_127283 R_674) (x_127284 T_41))
	(diseqR_51 (Star_51 x_127283) (Atom_51 x_127284))))
(assert (forall ((x_127285 R_674) (x_127286 R_674) (x_127287 R_674) (x_127288 R_674))
	(diseqR_51 (x_127165 x_127285 x_127286) (x_127166 x_127287 x_127288))))
(assert (forall ((x_127289 R_674) (x_127290 R_674) (x_127291 R_674))
	(diseqR_51 (x_127165 x_127289 x_127290) (Star_51 x_127291))))
(assert (forall ((x_127292 R_674) (x_127293 R_674) (x_127294 R_674) (x_127295 R_674))
	(diseqR_51 (x_127166 x_127292 x_127293) (x_127165 x_127294 x_127295))))
(assert (forall ((x_127296 R_674) (x_127297 R_674) (x_127298 R_674))
	(diseqR_51 (Star_51 x_127296) (x_127165 x_127297 x_127298))))
(assert (forall ((x_127299 R_674) (x_127300 R_674) (x_127301 R_674))
	(diseqR_51 (x_127166 x_127299 x_127300) (Star_51 x_127301))))
(assert (forall ((x_127302 R_674) (x_127303 R_674) (x_127304 R_674))
	(diseqR_51 (Star_51 x_127302) (x_127166 x_127303 x_127304))))
(assert (forall ((x_127305 T_41) (x_127306 T_41))
	(=> (diseqT_37 x_127305 x_127306) (diseqR_51 (Atom_51 x_127305) (Atom_51 x_127306)))))
(assert (forall ((x_127307 R_674) (x_127308 R_674) (x_127309 R_674) (x_127310 R_674))
	(=> (diseqR_51 x_127307 x_127309) (diseqR_51 (x_127165 x_127307 x_127308) (x_127165 x_127309 x_127310)))))
(assert (forall ((x_127307 R_674) (x_127308 R_674) (x_127309 R_674) (x_127310 R_674))
	(=> (diseqR_51 x_127308 x_127310) (diseqR_51 (x_127165 x_127307 x_127308) (x_127165 x_127309 x_127310)))))
(assert (forall ((x_127311 R_674) (x_127312 R_674) (x_127313 R_674) (x_127314 R_674))
	(=> (diseqR_51 x_127311 x_127313) (diseqR_51 (x_127166 x_127311 x_127312) (x_127166 x_127313 x_127314)))))
(assert (forall ((x_127311 R_674) (x_127312 R_674) (x_127313 R_674) (x_127314 R_674))
	(=> (diseqR_51 x_127312 x_127314) (diseqR_51 (x_127166 x_127311 x_127312) (x_127166 x_127313 x_127314)))))
(assert (forall ((x_127315 R_674) (x_127316 R_674))
	(=> (diseqR_51 x_127315 x_127316) (diseqR_51 (Star_51 x_127315) (Star_51 x_127316)))))
(declare-fun eps_103 (Bool_447 R_674) Bool)
(assert (forall ((y_3241 R_674))
	(eps_103 true_447 (Star_51 y_3241))))
(assert (forall ((x_127174 Bool_447) (x_127175 Bool_447) (x_127176 Bool_447) (r_675 R_674) (q_387 R_674))
	(=> (and (eps_103 x_127175 r_675) (eps_103 x_127176 q_387) (and_453 x_127174 x_127175 x_127176)) (eps_103 x_127174 (x_127166 r_675 q_387)))))
(assert (forall ((x_127177 Bool_447) (x_127178 Bool_447) (x_127179 Bool_447) (p_620 R_674) (q_388 R_674))
	(=> (and (eps_103 x_127178 p_620) (eps_103 x_127179 q_388) (or_469 x_127177 x_127178 x_127179)) (eps_103 x_127177 (x_127165 p_620 q_388)))))
(assert (eps_103 true_447 Eps_102))
(assert (forall ((x_127168 R_674) (x_127172 T_41))
	(eps_103 false_447 (Atom_51 x_127172))))
(assert (forall ((x_127168 R_674))
	(eps_103 false_447 Nil_471)))
(declare-fun step_51 (R_674 R_674 T_41) Bool)
(assert (forall ((x_127184 R_674) (p_621 R_674) (y_3242 T_41))
	(=> (step_51 x_127184 p_621 y_3242) (step_51 (x_127166 x_127184 (Star_51 p_621)) (Star_51 p_621) y_3242))))
(assert (forall ((x_127187 R_674) (x_127188 R_674) (r_676 R_674) (q_389 R_674) (y_3242 T_41))
	(=> (and (step_51 x_127187 r_676 y_3242) (step_51 x_127188 q_389 y_3242) (eps_103 true_447 r_676)) (step_51 (x_127165 (x_127166 x_127187 q_389) x_127188) (x_127166 r_676 q_389) y_3242))))
(assert (forall ((x_127191 R_674) (r_676 R_674) (q_389 R_674) (y_3242 T_41))
	(=> (and (step_51 x_127191 r_676 y_3242) (eps_103 false_447 r_676)) (step_51 (x_127165 (x_127166 x_127191 q_389) Nil_471) (x_127166 r_676 q_389) y_3242))))
(assert (forall ((x_127193 R_674) (x_127194 R_674) (p_622 R_674) (q_390 R_674) (y_3242 T_41))
	(=> (and (step_51 x_127193 p_622 y_3242) (step_51 x_127194 q_390 y_3242)) (step_51 (x_127165 x_127193 x_127194) (x_127165 p_622 q_390) y_3242))))
(assert (forall ((b_147 T_41))
	(step_51 Eps_102 (Atom_51 b_147) b_147)))
(assert (forall ((b_147 T_41) (y_3242 T_41))
	(=> (diseqT_37 b_147 y_3242) (step_51 Nil_471 (Atom_51 b_147) y_3242))))
(assert (forall ((x_127170 R_674) (y_3242 T_41))
	(step_51 Nil_471 Eps_102 y_3242)))
(assert (forall ((x_127170 R_674) (y_3242 T_41))
	(step_51 Nil_471 Nil_471 y_3242)))
(declare-fun rec_37 (Bool_447 R_674 list_409) Bool)
(assert (forall ((x_127199 Bool_447) (x_127200 R_674) (z_2778 T_41) (xs_907 list_409) (x_127171 R_674))
	(=> (and (step_51 x_127200 x_127171 z_2778) (rec_37 x_127199 x_127200 xs_907)) (rec_37 x_127199 x_127171 (cons_403 z_2778 xs_907)))))
(assert (forall ((x_127202 Bool_447) (x_127171 R_674))
	(=> (eps_103 x_127202 x_127171) (rec_37 x_127202 x_127171 nil_470))))
(assert (forall ((p_623 R_674))
	(=> (and true (rec_37 true_447 p_623 (cons_403 A_126 (cons_403 B_146 (cons_403 A_126 (cons_403 B_146 (cons_403 A_126 (cons_403 B_146 nil_470)))))))) false)))
(check-sat)