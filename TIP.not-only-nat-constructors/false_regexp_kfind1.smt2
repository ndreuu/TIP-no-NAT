(set-logic HORN)
(declare-datatypes ((Bool_379 0)) (((false_379) (true_379))))
(declare-fun diseqBool_172 (Bool_379 Bool_379) Bool)
(declare-fun isfalse_172 (Bool_379) Bool)
(declare-fun istrue_172 (Bool_379) Bool)
(assert (isfalse_172 false_379))
(assert (istrue_172 true_379))
(assert (diseqBool_172 false_379 true_379))
(assert (diseqBool_172 true_379 false_379))
(declare-fun and_380 (Bool_379 Bool_379 Bool_379) Bool)
(declare-fun or_391 (Bool_379 Bool_379 Bool_379) Bool)
(declare-fun hence_379 (Bool_379 Bool_379 Bool_379) Bool)
(declare-fun not_384 (Bool_379 Bool_379) Bool)
(assert (and_380 false_379 false_379 false_379))
(assert (and_380 false_379 true_379 false_379))
(assert (and_380 false_379 false_379 true_379))
(assert (and_380 true_379 true_379 true_379))
(assert (or_391 false_379 false_379 false_379))
(assert (or_391 true_379 true_379 false_379))
(assert (or_391 true_379 false_379 true_379))
(assert (or_391 true_379 true_379 true_379))
(assert (hence_379 true_379 false_379 false_379))
(assert (hence_379 false_379 true_379 false_379))
(assert (hence_379 true_379 false_379 true_379))
(assert (hence_379 true_379 true_379 true_379))
(assert (not_384 true_379 false_379))
(assert (not_384 false_379 true_379))
(declare-datatypes ((list_294 0)) (((nil_325) (cons_292 (head_584 Bool_379) (tail_586 list_294)))))
(declare-fun diseqlist_292 (list_294 list_294) Bool)
(declare-fun head_587 (Bool_379 list_294) Bool)
(declare-fun tail_589 (list_294 list_294) Bool)
(declare-fun isnil_325 (list_294) Bool)
(declare-fun iscons_292 (list_294) Bool)
(assert (forall ((x_59049 Bool_379) (x_59050 list_294))
	(head_587 x_59049 (cons_292 x_59049 x_59050))))
(assert (forall ((x_59049 Bool_379) (x_59050 list_294))
	(tail_589 x_59050 (cons_292 x_59049 x_59050))))
(assert (isnil_325 nil_325))
(assert (forall ((x_59052 Bool_379) (x_59053 list_294))
	(iscons_292 (cons_292 x_59052 x_59053))))
(assert (forall ((x_59054 Bool_379) (x_59055 list_294))
	(diseqlist_292 nil_325 (cons_292 x_59054 x_59055))))
(assert (forall ((x_59056 Bool_379) (x_59057 list_294))
	(diseqlist_292 (cons_292 x_59056 x_59057) nil_325)))
(assert (forall ((x_59058 Bool_379) (x_59059 list_294) (x_59060 Bool_379) (x_59061 list_294))
	(=> (diseqBool_172 x_59058 x_59060) (diseqlist_292 (cons_292 x_59058 x_59059) (cons_292 x_59060 x_59061)))))
(assert (forall ((x_59058 Bool_379) (x_59059 list_294) (x_59060 Bool_379) (x_59061 list_294))
	(=> (diseqlist_292 x_59059 x_59061) (diseqlist_292 (cons_292 x_59058 x_59059) (cons_292 x_59060 x_59061)))))
(declare-datatypes ((T_3 0)) (((A_63) (B_49) (C_28))))
(declare-fun diseqT_3 (T_3 T_3) Bool)
(declare-fun isA_10 (T_3) Bool)
(declare-fun isB_10 (T_3) Bool)
(declare-fun isC_10 (T_3) Bool)
(assert (isA_10 A_63))
(assert (isB_10 B_49))
(assert (isC_10 C_28))
(assert (diseqT_3 A_63 B_49))
(assert (diseqT_3 A_63 C_28))
(assert (diseqT_3 B_49 A_63))
(assert (diseqT_3 C_28 A_63))
(assert (diseqT_3 B_49 C_28))
(assert (diseqT_3 C_28 B_49))
(declare-datatypes ((list_295 0)) (((nil_326) (cons_293 (head_585 T_3) (tail_587 list_295)))))
(declare-fun diseqlist_293 (list_295 list_295) Bool)
(declare-fun head_588 (T_3 list_295) Bool)
(declare-fun tail_590 (list_295 list_295) Bool)
(declare-fun isnil_326 (list_295) Bool)
(declare-fun iscons_293 (list_295) Bool)
(assert (forall ((x_59066 T_3) (x_59067 list_295))
	(head_588 x_59066 (cons_293 x_59066 x_59067))))
(assert (forall ((x_59066 T_3) (x_59067 list_295))
	(tail_590 x_59067 (cons_293 x_59066 x_59067))))
(assert (isnil_326 nil_326))
(assert (forall ((x_59069 T_3) (x_59070 list_295))
	(iscons_293 (cons_293 x_59069 x_59070))))
(assert (forall ((x_59071 T_3) (x_59072 list_295))
	(diseqlist_293 nil_326 (cons_293 x_59071 x_59072))))
(assert (forall ((x_59073 T_3) (x_59074 list_295))
	(diseqlist_293 (cons_293 x_59073 x_59074) nil_326)))
(assert (forall ((x_59075 T_3) (x_59076 list_295) (x_59077 T_3) (x_59078 list_295))
	(=> (diseqT_3 x_59075 x_59077) (diseqlist_293 (cons_293 x_59075 x_59076) (cons_293 x_59077 x_59078)))))
(assert (forall ((x_59075 T_3) (x_59076 list_295) (x_59077 T_3) (x_59078 list_295))
	(=> (diseqlist_293 x_59076 x_59078) (diseqlist_293 (cons_293 x_59075 x_59076) (cons_293 x_59077 x_59078)))))
(declare-datatypes ((pair_114 0)) (((pair_115 (projpair_228 list_295) (projpair_229 list_295)))))
(declare-fun diseqpair_57 (pair_114 pair_114) Bool)
(declare-fun projpair_230 (list_295 pair_114) Bool)
(declare-fun projpair_231 (list_295 pair_114) Bool)
(declare-fun ispair_57 (pair_114) Bool)
(assert (forall ((x_59079 list_295) (x_59080 list_295))
	(projpair_230 x_59079 (pair_115 x_59079 x_59080))))
(assert (forall ((x_59079 list_295) (x_59080 list_295))
	(projpair_231 x_59080 (pair_115 x_59079 x_59080))))
(assert (forall ((x_59082 list_295) (x_59083 list_295))
	(ispair_57 (pair_115 x_59082 x_59083))))
(assert (forall ((x_59084 list_295) (x_59085 list_295) (x_59086 list_295) (x_59087 list_295))
	(=> (diseqlist_293 x_59084 x_59086) (diseqpair_57 (pair_115 x_59084 x_59085) (pair_115 x_59086 x_59087)))))
(assert (forall ((x_59084 list_295) (x_59085 list_295) (x_59086 list_295) (x_59087 list_295))
	(=> (diseqlist_293 x_59085 x_59087) (diseqpair_57 (pair_115 x_59084 x_59085) (pair_115 x_59086 x_59087)))))
(declare-datatypes ((list_296 0)) (((nil_327) (cons_294 (head_586 pair_114) (tail_588 list_296)))))
(declare-fun diseqlist_294 (list_296 list_296) Bool)
(declare-fun head_589 (pair_114 list_296) Bool)
(declare-fun tail_591 (list_296 list_296) Bool)
(declare-fun isnil_327 (list_296) Bool)
(declare-fun iscons_294 (list_296) Bool)
(assert (forall ((x_59089 pair_114) (x_59090 list_296))
	(head_589 x_59089 (cons_294 x_59089 x_59090))))
(assert (forall ((x_59089 pair_114) (x_59090 list_296))
	(tail_591 x_59090 (cons_294 x_59089 x_59090))))
(assert (isnil_327 nil_327))
(assert (forall ((x_59092 pair_114) (x_59093 list_296))
	(iscons_294 (cons_294 x_59092 x_59093))))
(assert (forall ((x_59094 pair_114) (x_59095 list_296))
	(diseqlist_294 nil_327 (cons_294 x_59094 x_59095))))
(assert (forall ((x_59096 pair_114) (x_59097 list_296))
	(diseqlist_294 (cons_294 x_59096 x_59097) nil_327)))
(assert (forall ((x_59098 pair_114) (x_59099 list_296) (x_59100 pair_114) (x_59101 list_296))
	(=> (diseqpair_57 x_59098 x_59100) (diseqlist_294 (cons_294 x_59098 x_59099) (cons_294 x_59100 x_59101)))))
(assert (forall ((x_59098 pair_114) (x_59099 list_296) (x_59100 pair_114) (x_59101 list_296))
	(=> (diseqlist_294 x_59099 x_59101) (diseqlist_294 (cons_294 x_59098 x_59099) (cons_294 x_59100 x_59101)))))
(declare-datatypes ((R_467 0)) (((Nil_328) (Eps_34) (Atom_17 (projAtom_34 T_3)) (x_58953 (proj_44 R_467) (proj_45 R_467)) (x_58954 (proj_46 R_467) (proj_47 R_467)) (Star_17 (projStar_34 R_467)))))
(declare-fun diseqR_17 (R_467 R_467) Bool)
(declare-fun projAtom_35 (T_3 R_467) Bool)
(declare-fun proj_48 (R_467 R_467) Bool)
(declare-fun proj_49 (R_467 R_467) Bool)
(declare-fun proj_50 (R_467 R_467) Bool)
(declare-fun proj_51 (R_467 R_467) Bool)
(declare-fun projStar_35 (R_467 R_467) Bool)
(declare-fun isNil_328 (R_467) Bool)
(declare-fun isEps_17 (R_467) Bool)
(declare-fun isAtom_17 (R_467) Bool)
(declare-fun isx_25 (R_467) Bool)
(declare-fun isx_26 (R_467) Bool)
(declare-fun isStar_17 (R_467) Bool)
(assert (forall ((x_59104 T_3))
	(projAtom_35 x_59104 (Atom_17 x_59104))))
(assert (forall ((x_59106 R_467) (x_59107 R_467))
	(proj_48 x_59106 (x_58953 x_59106 x_59107))))
(assert (forall ((x_59106 R_467) (x_59107 R_467))
	(proj_49 x_59107 (x_58953 x_59106 x_59107))))
(assert (forall ((x_59109 R_467) (x_59110 R_467))
	(proj_50 x_59109 (x_58954 x_59109 x_59110))))
(assert (forall ((x_59109 R_467) (x_59110 R_467))
	(proj_51 x_59110 (x_58954 x_59109 x_59110))))
(assert (forall ((x_59112 R_467))
	(projStar_35 x_59112 (Star_17 x_59112))))
(assert (isNil_328 Nil_328))
(assert (isEps_17 Eps_34))
(assert (forall ((x_59114 T_3))
	(isAtom_17 (Atom_17 x_59114))))
(assert (forall ((x_59115 R_467) (x_59116 R_467))
	(isx_25 (x_58953 x_59115 x_59116))))
(assert (forall ((x_59117 R_467) (x_59118 R_467))
	(isx_26 (x_58954 x_59117 x_59118))))
(assert (forall ((x_59119 R_467))
	(isStar_17 (Star_17 x_59119))))
(assert (diseqR_17 Nil_328 Eps_34))
(assert (forall ((x_59120 T_3))
	(diseqR_17 Nil_328 (Atom_17 x_59120))))
(assert (forall ((x_59121 R_467) (x_59122 R_467))
	(diseqR_17 Nil_328 (x_58953 x_59121 x_59122))))
(assert (forall ((x_59123 R_467) (x_59124 R_467))
	(diseqR_17 Nil_328 (x_58954 x_59123 x_59124))))
(assert (forall ((x_59125 R_467))
	(diseqR_17 Nil_328 (Star_17 x_59125))))
(assert (diseqR_17 Eps_34 Nil_328))
(assert (forall ((x_59126 T_3))
	(diseqR_17 (Atom_17 x_59126) Nil_328)))
(assert (forall ((x_59127 R_467) (x_59128 R_467))
	(diseqR_17 (x_58953 x_59127 x_59128) Nil_328)))
(assert (forall ((x_59129 R_467) (x_59130 R_467))
	(diseqR_17 (x_58954 x_59129 x_59130) Nil_328)))
(assert (forall ((x_59131 R_467))
	(diseqR_17 (Star_17 x_59131) Nil_328)))
(assert (forall ((x_59132 T_3))
	(diseqR_17 Eps_34 (Atom_17 x_59132))))
(assert (forall ((x_59133 R_467) (x_59134 R_467))
	(diseqR_17 Eps_34 (x_58953 x_59133 x_59134))))
(assert (forall ((x_59135 R_467) (x_59136 R_467))
	(diseqR_17 Eps_34 (x_58954 x_59135 x_59136))))
(assert (forall ((x_59137 R_467))
	(diseqR_17 Eps_34 (Star_17 x_59137))))
(assert (forall ((x_59138 T_3))
	(diseqR_17 (Atom_17 x_59138) Eps_34)))
(assert (forall ((x_59139 R_467) (x_59140 R_467))
	(diseqR_17 (x_58953 x_59139 x_59140) Eps_34)))
(assert (forall ((x_59141 R_467) (x_59142 R_467))
	(diseqR_17 (x_58954 x_59141 x_59142) Eps_34)))
(assert (forall ((x_59143 R_467))
	(diseqR_17 (Star_17 x_59143) Eps_34)))
(assert (forall ((x_59144 T_3) (x_59145 R_467) (x_59146 R_467))
	(diseqR_17 (Atom_17 x_59144) (x_58953 x_59145 x_59146))))
(assert (forall ((x_59147 T_3) (x_59148 R_467) (x_59149 R_467))
	(diseqR_17 (Atom_17 x_59147) (x_58954 x_59148 x_59149))))
(assert (forall ((x_59150 T_3) (x_59151 R_467))
	(diseqR_17 (Atom_17 x_59150) (Star_17 x_59151))))
(assert (forall ((x_59152 R_467) (x_59153 R_467) (x_59154 T_3))
	(diseqR_17 (x_58953 x_59152 x_59153) (Atom_17 x_59154))))
(assert (forall ((x_59155 R_467) (x_59156 R_467) (x_59157 T_3))
	(diseqR_17 (x_58954 x_59155 x_59156) (Atom_17 x_59157))))
(assert (forall ((x_59158 R_467) (x_59159 T_3))
	(diseqR_17 (Star_17 x_59158) (Atom_17 x_59159))))
(assert (forall ((x_59160 R_467) (x_59161 R_467) (x_59162 R_467) (x_59163 R_467))
	(diseqR_17 (x_58953 x_59160 x_59161) (x_58954 x_59162 x_59163))))
(assert (forall ((x_59164 R_467) (x_59165 R_467) (x_59166 R_467))
	(diseqR_17 (x_58953 x_59164 x_59165) (Star_17 x_59166))))
(assert (forall ((x_59167 R_467) (x_59168 R_467) (x_59169 R_467) (x_59170 R_467))
	(diseqR_17 (x_58954 x_59167 x_59168) (x_58953 x_59169 x_59170))))
(assert (forall ((x_59171 R_467) (x_59172 R_467) (x_59173 R_467))
	(diseqR_17 (Star_17 x_59171) (x_58953 x_59172 x_59173))))
(assert (forall ((x_59174 R_467) (x_59175 R_467) (x_59176 R_467))
	(diseqR_17 (x_58954 x_59174 x_59175) (Star_17 x_59176))))
(assert (forall ((x_59177 R_467) (x_59178 R_467) (x_59179 R_467))
	(diseqR_17 (Star_17 x_59177) (x_58954 x_59178 x_59179))))
(assert (forall ((x_59180 T_3) (x_59181 T_3))
	(=> (diseqT_3 x_59180 x_59181) (diseqR_17 (Atom_17 x_59180) (Atom_17 x_59181)))))
(assert (forall ((x_59182 R_467) (x_59183 R_467) (x_59184 R_467) (x_59185 R_467))
	(=> (diseqR_17 x_59182 x_59184) (diseqR_17 (x_58953 x_59182 x_59183) (x_58953 x_59184 x_59185)))))
(assert (forall ((x_59182 R_467) (x_59183 R_467) (x_59184 R_467) (x_59185 R_467))
	(=> (diseqR_17 x_59183 x_59185) (diseqR_17 (x_58953 x_59182 x_59183) (x_58953 x_59184 x_59185)))))
(assert (forall ((x_59186 R_467) (x_59187 R_467) (x_59188 R_467) (x_59189 R_467))
	(=> (diseqR_17 x_59186 x_59188) (diseqR_17 (x_58954 x_59186 x_59187) (x_58954 x_59188 x_59189)))))
(assert (forall ((x_59186 R_467) (x_59187 R_467) (x_59188 R_467) (x_59189 R_467))
	(=> (diseqR_17 x_59187 x_59189) (diseqR_17 (x_58954 x_59186 x_59187) (x_58954 x_59188 x_59189)))))
(assert (forall ((x_59190 R_467) (x_59191 R_467))
	(=> (diseqR_17 x_59190 x_59191) (diseqR_17 (Star_17 x_59190) (Star_17 x_59191)))))
(declare-fun splits_4 (list_296 T_3 list_296) Bool)
(assert (forall ((x_58974 list_296) (bs_8 list_295) (cs_2 list_295) (x_58956 list_296) (x_58955 T_3))
	(=> (splits_4 x_58974 x_58955 x_58956) (splits_4 (cons_294 (pair_115 (cons_293 x_58955 bs_8) cs_2) x_58974) x_58955 (cons_294 (pair_115 bs_8 cs_2) x_58956)))))
(assert (forall ((x_58955 T_3))
	(splits_4 nil_327 x_58955 nil_327)))
(declare-fun splits_5 (list_296 list_295) Bool)
(assert (forall ((x_58977 list_296) (x_58978 list_296) (y_2545 T_3) (xs_750 list_295))
	(=> (and (splits_5 x_58977 xs_750) (splits_4 x_58978 y_2545 x_58977)) (splits_5 (cons_294 (pair_115 nil_326 (cons_293 y_2545 xs_750)) x_58978) (cons_293 y_2545 xs_750)))))
(assert (splits_5 (cons_294 (pair_115 nil_326 nil_326) nil_327) nil_326))
(declare-fun or_390 (Bool_379 list_294) Bool)
(assert (forall ((x_58980 Bool_379) (x_58981 Bool_379) (y_2546 Bool_379) (xs_751 list_294))
	(=> (and (or_390 x_58981 xs_751) (or_391 x_58980 y_2546 x_58981)) (or_390 x_58980 (cons_292 y_2546 xs_751)))))
(assert (or_390 false_379 nil_325))
(declare-fun eps_35 (Bool_379 R_467) Bool)
(assert (forall ((y_2547 R_467))
	(eps_35 true_379 (Star_17 y_2547))))
(assert (forall ((x_58984 Bool_379) (x_58985 Bool_379) (x_58986 Bool_379) (r_468 R_467) (q_156 R_467))
	(=> (and (eps_35 x_58985 r_468) (eps_35 x_58986 q_156) (and_380 x_58984 x_58985 x_58986)) (eps_35 x_58984 (x_58954 r_468 q_156)))))
(assert (forall ((x_58987 Bool_379) (x_58988 Bool_379) (x_58989 Bool_379) (p_423 R_467) (q_157 R_467))
	(=> (and (eps_35 x_58988 p_423) (eps_35 x_58989 q_157) (or_391 x_58987 x_58988 x_58989)) (eps_35 x_58987 (x_58953 p_423 q_157)))))
(assert (eps_35 true_379 Eps_34))
(assert (forall ((x_58960 R_467) (x_58972 T_3))
	(eps_35 false_379 (Atom_17 x_58972))))
(assert (forall ((x_58960 R_467))
	(eps_35 false_379 Nil_328)))
(declare-fun step_17 (R_467 R_467 T_3) Bool)
(assert (forall ((x_58994 R_467) (p_424 R_467) (y_2548 T_3))
	(=> (step_17 x_58994 p_424 y_2548) (step_17 (x_58954 x_58994 (Star_17 p_424)) (Star_17 p_424) y_2548))))
(assert (forall ((x_58997 R_467) (x_58998 R_467) (r_469 R_467) (q_158 R_467) (y_2548 T_3))
	(=> (and (step_17 x_58997 r_469 y_2548) (step_17 x_58998 q_158 y_2548) (eps_35 true_379 r_469)) (step_17 (x_58953 (x_58954 x_58997 q_158) x_58998) (x_58954 r_469 q_158) y_2548))))
(assert (forall ((x_59001 R_467) (r_469 R_467) (q_158 R_467) (y_2548 T_3))
	(=> (and (step_17 x_59001 r_469 y_2548) (eps_35 false_379 r_469)) (step_17 (x_58953 (x_58954 x_59001 q_158) Nil_328) (x_58954 r_469 q_158) y_2548))))
(assert (forall ((x_59003 R_467) (x_59004 R_467) (p_425 R_467) (q_159 R_467) (y_2548 T_3))
	(=> (and (step_17 x_59003 p_425 y_2548) (step_17 x_59004 q_159 y_2548)) (step_17 (x_58953 x_59003 x_59004) (x_58953 p_425 q_159) y_2548))))
(assert (forall ((b_50 T_3))
	(step_17 Eps_34 (Atom_17 b_50) b_50)))
(assert (forall ((b_50 T_3) (y_2548 T_3))
	(=> (diseqT_3 b_50 y_2548) (step_17 Nil_328 (Atom_17 b_50) y_2548))))
(assert (forall ((x_58962 R_467) (y_2548 T_3))
	(step_17 Nil_328 Eps_34 y_2548)))
(assert (forall ((x_58962 R_467) (y_2548 T_3))
	(step_17 Nil_328 Nil_328 y_2548)))
(declare-fun rec_3 (Bool_379 R_467 list_295) Bool)
(assert (forall ((x_59009 Bool_379) (x_59010 R_467) (z_2283 T_3) (xs_752 list_295) (x_58963 R_467))
	(=> (and (step_17 x_59010 x_58963 z_2283) (rec_3 x_59009 x_59010 xs_752)) (rec_3 x_59009 x_58963 (cons_293 z_2283 xs_752)))))
(assert (forall ((x_59012 Bool_379) (x_58963 R_467))
	(=> (eps_35 x_59012 x_58963) (rec_3 x_59012 x_58963 nil_326))))
(declare-fun reck_4 (Bool_379 R_467 list_295) Bool)
(declare-fun reck_5 (list_294 R_467 R_467 list_296) Bool)
(assert (forall ((x_59015 Bool_379) (x_58965 T_3) (x_58966 list_295) (p_426 R_467))
	(=> (and (rec_3 x_59015 (x_58954 p_426 (Star_17 p_426)) (cons_293 x_58965 x_58966)) (eps_35 false_379 p_426)) (reck_4 x_59015 (Star_17 p_426) (cons_293 x_58965 x_58966)))))
(assert (forall ((x_58965 T_3) (x_58966 list_295) (p_426 R_467))
	(=> (eps_35 true_379 p_426) (reck_4 false_379 (Star_17 p_426) (cons_293 x_58965 x_58966)))))
(assert (forall ((p_426 R_467))
	(reck_4 true_379 (Star_17 p_426) nil_326)))
(assert (forall ((x_59020 Bool_379) (x_59021 list_296) (x_59022 list_294) (r_470 R_467) (q_160 R_467) (y_2550 list_295))
	(=> (and (splits_5 x_59021 y_2550) (reck_5 x_59022 r_470 q_160 x_59021) (or_390 x_59020 x_59022)) (reck_4 x_59020 (x_58954 r_470 q_160) y_2550))))
(assert (forall ((x_59024 Bool_379) (x_59025 Bool_379) (x_59026 Bool_379) (p_427 R_467) (q_161 R_467) (y_2550 list_295))
	(=> (and (reck_4 x_59025 p_427 y_2550) (reck_4 x_59026 q_161 y_2550) (or_391 x_59024 x_59025 x_59026)) (reck_4 x_59024 (x_58953 p_427 q_161) y_2550))))
(assert (forall ((x_58968 T_3) (x_58969 list_295) (b_51 T_3) (c_29 T_3))
	(reck_4 false_379 (Atom_17 c_29) (cons_293 b_51 (cons_293 x_58968 x_58969)))))
(assert (forall ((b_51 T_3))
	(reck_4 true_379 (Atom_17 b_51) (cons_293 b_51 nil_326))))
(assert (forall ((b_51 T_3) (c_29 T_3))
	(=> (diseqT_3 c_29 b_51) (reck_4 false_379 (Atom_17 c_29) (cons_293 b_51 nil_326)))))
(assert (forall ((c_29 T_3))
	(reck_4 false_379 (Atom_17 c_29) nil_326)))
(assert (forall ((z_2284 T_3) (x_58970 list_295))
	(reck_4 false_379 Eps_34 (cons_293 z_2284 x_58970))))
(assert (reck_4 true_379 Eps_34 nil_326))
(assert (forall ((y_2550 list_295))
	(reck_4 false_379 Nil_328 y_2550)))
(assert (forall ((x_59044 Bool_379) (x_59035 Bool_379) (x_59036 Bool_379) (x_59037 list_294) (l_49 list_295) (r_471 list_295) (z_2285 list_296) (p_428 R_467) (q_162 R_467))
	(=> (and (reck_4 x_59035 p_428 l_49) (rec_3 x_59036 q_162 r_471) (reck_5 x_59037 p_428 q_162 z_2285) (and_380 x_59044 x_59035 x_59036)) (reck_5 (cons_292 x_59044 x_59037) p_428 q_162 (cons_294 (pair_115 l_49 r_471) z_2285)))))
(assert (forall ((p_428 R_467) (q_162 R_467))
	(reck_5 nil_325 p_428 q_162 nil_327)))
(assert (forall ((p_429 R_467))
	(=> (and (reck_4 true_379 p_429 (cons_293 A_63 (cons_293 B_49 (cons_293 B_49 nil_326))))) false)))
(check-sat)
