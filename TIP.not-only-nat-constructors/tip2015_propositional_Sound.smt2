(set-logic HORN)
(define-fun Z_1160 () Int 0)
(define-fun S_294 ((x Int)) Int (+ x 1))
(declare-fun unS_403 (Int Int) Bool)
(declare-fun isZ_274 (Int) Bool)
(declare-fun isS_274 (Int) Bool)
(assert (forall ((x_31132 Int))
	(unS_403 x_31132 (S_294 x_31132))))
(assert (isZ_274 Z_1160))
(assert (forall ((x_31134 Int))
	(isS_274 (S_294 x_31134))))
(declare-fun add_216 (Int Int Int) Bool)
(declare-fun minus_208 (Int Int Int) Bool)
(declare-fun le_201 (Int Int) Bool)
(declare-fun ge_201 (Int Int) Bool)
(declare-fun lt_213 (Int Int) Bool)
(declare-fun gt_204 (Int Int) Bool)
(declare-fun mult_201 (Int Int Int) Bool)
(declare-fun div_201 (Int Int Int) Bool)
(declare-fun mod_201 (Int Int Int) Bool)
(assert (forall ((y_1241 Int))
	(add_216 y_1241 Z_1160 y_1241)))
(assert (forall ((x_31130 Int) (y_1241 Int) (r_241 Int))
	(=> (add_216 r_241 x_31130 y_1241) (add_216 (S_294 r_241) (S_294 x_31130) y_1241))))
(assert (forall ((y_1241 Int))
	(minus_208 Z_1160 Z_1160 y_1241)))
(assert (forall ((x_31130 Int) (y_1241 Int) (r_241 Int))
	(=> (minus_208 r_241 x_31130 y_1241) (minus_208 (S_294 r_241) (S_294 x_31130) y_1241))))
(assert (forall ((y_1241 Int))
	(le_201 Z_1160 y_1241)))
(assert (forall ((x_31130 Int) (y_1241 Int))
	(=> (le_201 x_31130 y_1241) (le_201 (S_294 x_31130) (S_294 y_1241)))))
(assert (forall ((y_1241 Int))
	(ge_201 y_1241 Z_1160)))
(assert (forall ((x_31130 Int) (y_1241 Int))
	(=> (ge_201 x_31130 y_1241) (ge_201 (S_294 x_31130) (S_294 y_1241)))))
(assert (forall ((y_1241 Int))
	(lt_213 Z_1160 (S_294 y_1241))))
(assert (forall ((x_31130 Int) (y_1241 Int))
	(=> (lt_213 x_31130 y_1241) (lt_213 (S_294 x_31130) (S_294 y_1241)))))
(assert (forall ((y_1241 Int))
	(gt_204 (S_294 y_1241) Z_1160)))
(assert (forall ((x_31130 Int) (y_1241 Int))
	(=> (gt_204 x_31130 y_1241) (gt_204 (S_294 x_31130) (S_294 y_1241)))))
(assert (forall ((y_1241 Int))
	(mult_201 Z_1160 Z_1160 y_1241)))
(assert (forall ((x_31130 Int) (y_1241 Int) (r_241 Int) (z_1161 Int))
	(=> (and (mult_201 r_241 x_31130 y_1241) (add_216 z_1161 r_241 y_1241)) (mult_201 z_1161 (S_294 x_31130) y_1241))))
(assert (forall ((x_31130 Int) (y_1241 Int))
	(=> (lt_213 x_31130 y_1241) (div_201 Z_1160 x_31130 y_1241))))
(assert (forall ((x_31130 Int) (y_1241 Int) (r_241 Int) (z_1161 Int))
	(=> (and (ge_201 x_31130 y_1241) (minus_208 z_1161 x_31130 y_1241) (div_201 r_241 z_1161 y_1241)) (div_201 (S_294 r_241) x_31130 y_1241))))
(assert (forall ((x_31130 Int) (y_1241 Int))
	(=> (lt_213 x_31130 y_1241) (mod_201 x_31130 x_31130 y_1241))))
(assert (forall ((x_31130 Int) (y_1241 Int) (r_241 Int) (z_1161 Int))
	(=> (and (ge_201 x_31130 y_1241) (minus_208 z_1161 x_31130 y_1241) (mod_201 r_241 z_1161 y_1241)) (mod_201 r_241 x_31130 y_1241))))
(declare-datatypes ((Bool_201 0)) (((false_201) (true_201))))
(declare-fun diseqBool_88 (Bool_201 Bool_201) Bool)
(declare-fun isfalse_88 (Bool_201) Bool)
(declare-fun istrue_88 (Bool_201) Bool)
(assert (isfalse_88 false_201))
(assert (istrue_88 true_201))
(assert (diseqBool_88 false_201 true_201))
(assert (diseqBool_88 true_201 false_201))
(declare-fun and_201 (Bool_201 Bool_201 Bool_201) Bool)
(declare-fun or_205 (Bool_201 Bool_201 Bool_201) Bool)
(declare-fun hence_201 (Bool_201 Bool_201 Bool_201) Bool)
(declare-fun not_204 (Bool_201 Bool_201) Bool)
(assert (and_201 false_201 false_201 false_201))
(assert (and_201 false_201 true_201 false_201))
(assert (and_201 false_201 false_201 true_201))
(assert (and_201 true_201 true_201 true_201))
(assert (or_205 false_201 false_201 false_201))
(assert (or_205 true_201 true_201 false_201))
(assert (or_205 true_201 false_201 true_201))
(assert (or_205 true_201 true_201 true_201))
(assert (hence_201 true_201 false_201 false_201))
(assert (hence_201 false_201 true_201 false_201))
(assert (hence_201 true_201 false_201 true_201))
(assert (hence_201 true_201 true_201 true_201))
(assert (not_204 true_201 false_201))
(assert (not_204 false_201 true_201))
(declare-datatypes ((pair_60 0)) (((pair_61 (projpair_120 Int) (projpair_121 Bool_201)))))
(declare-fun diseqpair_30 (pair_60 pair_60) Bool)
(declare-fun projpair_122 (Int pair_60) Bool)
(declare-fun projpair_123 (Bool_201 pair_60) Bool)
(declare-fun ispair_30 (pair_60) Bool)
(assert (forall ((x_31141 Int) (x_31142 Bool_201))
	(projpair_122 x_31141 (pair_61 x_31141 x_31142))))
(assert (forall ((x_31141 Int) (x_31142 Bool_201))
	(projpair_123 x_31142 (pair_61 x_31141 x_31142))))
(assert (forall ((x_31144 Int) (x_31145 Bool_201))
	(ispair_30 (pair_61 x_31144 x_31145))))
(assert (forall ((x_31146 Int) (x_31147 Bool_201) (x_31148 Int) (x_31149 Bool_201))
	(=> (distinct x_31146 x_31148) (diseqpair_30 (pair_61 x_31146 x_31147) (pair_61 x_31148 x_31149)))))
(assert (forall ((x_31146 Int) (x_31147 Bool_201) (x_31148 Int) (x_31149 Bool_201))
	(=> (diseqBool_88 x_31147 x_31149) (diseqpair_30 (pair_61 x_31146 x_31147) (pair_61 x_31148 x_31149)))))
(declare-datatypes ((list_138 0)) (((nil_154) (cons_138 (head_276 Bool_201) (tail_276 list_138)))))
(declare-fun diseqlist_138 (list_138 list_138) Bool)
(declare-fun head_279 (Bool_201 list_138) Bool)
(declare-fun tail_279 (list_138 list_138) Bool)
(declare-fun isnil_154 (list_138) Bool)
(declare-fun iscons_138 (list_138) Bool)
(assert (forall ((x_31151 Bool_201) (x_31152 list_138))
	(head_279 x_31151 (cons_138 x_31151 x_31152))))
(assert (forall ((x_31151 Bool_201) (x_31152 list_138))
	(tail_279 x_31152 (cons_138 x_31151 x_31152))))
(assert (isnil_154 nil_154))
(assert (forall ((x_31154 Bool_201) (x_31155 list_138))
	(iscons_138 (cons_138 x_31154 x_31155))))
(assert (forall ((x_31156 Bool_201) (x_31157 list_138))
	(diseqlist_138 nil_154 (cons_138 x_31156 x_31157))))
(assert (forall ((x_31158 Bool_201) (x_31159 list_138))
	(diseqlist_138 (cons_138 x_31158 x_31159) nil_154)))
(assert (forall ((x_31160 Bool_201) (x_31161 list_138) (x_31162 Bool_201) (x_31163 list_138))
	(=> (diseqBool_88 x_31160 x_31162) (diseqlist_138 (cons_138 x_31160 x_31161) (cons_138 x_31162 x_31163)))))
(assert (forall ((x_31160 Bool_201) (x_31161 list_138) (x_31162 Bool_201) (x_31163 list_138))
	(=> (diseqlist_138 x_31161 x_31163) (diseqlist_138 (cons_138 x_31160 x_31161) (cons_138 x_31162 x_31163)))))
(declare-datatypes ((list_139 0)) (((nil_155) (cons_139 (head_277 pair_60) (tail_277 list_139)))))
(declare-fun diseqlist_139 (list_139 list_139) Bool)
(declare-fun head_280 (pair_60 list_139) Bool)
(declare-fun tail_280 (list_139 list_139) Bool)
(declare-fun isnil_155 (list_139) Bool)
(declare-fun iscons_139 (list_139) Bool)
(assert (forall ((x_31165 pair_60) (x_31166 list_139))
	(head_280 x_31165 (cons_139 x_31165 x_31166))))
(assert (forall ((x_31165 pair_60) (x_31166 list_139))
	(tail_280 x_31166 (cons_139 x_31165 x_31166))))
(assert (isnil_155 nil_155))
(assert (forall ((x_31168 pair_60) (x_31169 list_139))
	(iscons_139 (cons_139 x_31168 x_31169))))
(assert (forall ((x_31170 pair_60) (x_31171 list_139))
	(diseqlist_139 nil_155 (cons_139 x_31170 x_31171))))
(assert (forall ((x_31172 pair_60) (x_31173 list_139))
	(diseqlist_139 (cons_139 x_31172 x_31173) nil_155)))
(assert (forall ((x_31174 pair_60) (x_31175 list_139) (x_31176 pair_60) (x_31177 list_139))
	(=> (diseqpair_30 x_31174 x_31176) (diseqlist_139 (cons_139 x_31174 x_31175) (cons_139 x_31176 x_31177)))))
(assert (forall ((x_31174 pair_60) (x_31175 list_139) (x_31176 pair_60) (x_31177 list_139))
	(=> (diseqlist_139 x_31175 x_31177) (diseqlist_139 (cons_139 x_31174 x_31175) (cons_139 x_31176 x_31177)))))
(declare-datatypes ((list_140 0)) (((nil_156) (cons_140 (head_278 list_139) (tail_278 list_140)))))
(declare-fun diseqlist_140 (list_140 list_140) Bool)
(declare-fun head_281 (list_139 list_140) Bool)
(declare-fun tail_281 (list_140 list_140) Bool)
(declare-fun isnil_156 (list_140) Bool)
(declare-fun iscons_140 (list_140) Bool)
(assert (forall ((x_31179 list_139) (x_31180 list_140))
	(head_281 x_31179 (cons_140 x_31179 x_31180))))
(assert (forall ((x_31179 list_139) (x_31180 list_140))
	(tail_281 x_31180 (cons_140 x_31179 x_31180))))
(assert (isnil_156 nil_156))
(assert (forall ((x_31182 list_139) (x_31183 list_140))
	(iscons_140 (cons_140 x_31182 x_31183))))
(assert (forall ((x_31184 list_139) (x_31185 list_140))
	(diseqlist_140 nil_156 (cons_140 x_31184 x_31185))))
(assert (forall ((x_31186 list_139) (x_31187 list_140))
	(diseqlist_140 (cons_140 x_31186 x_31187) nil_156)))
(assert (forall ((x_31188 list_139) (x_31189 list_140) (x_31190 list_139) (x_31191 list_140))
	(=> (diseqlist_139 x_31188 x_31190) (diseqlist_140 (cons_140 x_31188 x_31189) (cons_140 x_31190 x_31191)))))
(assert (forall ((x_31188 list_139) (x_31189 list_140) (x_31190 list_139) (x_31191 list_140))
	(=> (diseqlist_140 x_31189 x_31191) (diseqlist_140 (cons_140 x_31188 x_31189) (cons_140 x_31190 x_31191)))))
(declare-datatypes ((Form_2 0)) (((x_31036 (proj_8 Form_2) (proj_9 Form_2)) (Not_203 (projNot_4 Form_2)) (Var_2 (projVar_4 Int)))))
(declare-fun diseqForm_2 (Form_2 Form_2) Bool)
(declare-fun proj_10 (Form_2 Form_2) Bool)
(declare-fun proj_11 (Form_2 Form_2) Bool)
(declare-fun projNot_5 (Form_2 Form_2) Bool)
(declare-fun projVar_5 (Int Form_2) Bool)
(declare-fun isx_10 (Form_2) Bool)
(declare-fun isNot_2 (Form_2) Bool)
(declare-fun isVar_2 (Form_2) Bool)
(assert (forall ((x_31192 Form_2) (x_31193 Form_2))
	(proj_10 x_31192 (x_31036 x_31192 x_31193))))
(assert (forall ((x_31192 Form_2) (x_31193 Form_2))
	(proj_11 x_31193 (x_31036 x_31192 x_31193))))
(assert (forall ((x_31195 Form_2))
	(projNot_5 x_31195 (Not_203 x_31195))))
(assert (forall ((x_31197 Int))
	(projVar_5 x_31197 (Var_2 x_31197))))
(assert (forall ((x_31199 Form_2) (x_31200 Form_2))
	(isx_10 (x_31036 x_31199 x_31200))))
(assert (forall ((x_31201 Form_2))
	(isNot_2 (Not_203 x_31201))))
(assert (forall ((x_31202 Int))
	(isVar_2 (Var_2 x_31202))))
(assert (forall ((x_31203 Form_2) (x_31204 Form_2) (x_31205 Form_2))
	(diseqForm_2 (x_31036 x_31203 x_31204) (Not_203 x_31205))))
(assert (forall ((x_31206 Form_2) (x_31207 Form_2) (x_31208 Int))
	(diseqForm_2 (x_31036 x_31206 x_31207) (Var_2 x_31208))))
(assert (forall ((x_31209 Form_2) (x_31210 Form_2) (x_31211 Form_2))
	(diseqForm_2 (Not_203 x_31209) (x_31036 x_31210 x_31211))))
(assert (forall ((x_31212 Int) (x_31213 Form_2) (x_31214 Form_2))
	(diseqForm_2 (Var_2 x_31212) (x_31036 x_31213 x_31214))))
(assert (forall ((x_31215 Form_2) (x_31216 Int))
	(diseqForm_2 (Not_203 x_31215) (Var_2 x_31216))))
(assert (forall ((x_31217 Int) (x_31218 Form_2))
	(diseqForm_2 (Var_2 x_31217) (Not_203 x_31218))))
(assert (forall ((x_31219 Form_2) (x_31220 Form_2) (x_31221 Form_2) (x_31222 Form_2))
	(=> (diseqForm_2 x_31219 x_31221) (diseqForm_2 (x_31036 x_31219 x_31220) (x_31036 x_31221 x_31222)))))
(assert (forall ((x_31219 Form_2) (x_31220 Form_2) (x_31221 Form_2) (x_31222 Form_2))
	(=> (diseqForm_2 x_31220 x_31222) (diseqForm_2 (x_31036 x_31219 x_31220) (x_31036 x_31221 x_31222)))))
(assert (forall ((x_31223 Form_2) (x_31224 Form_2))
	(=> (diseqForm_2 x_31223 x_31224) (diseqForm_2 (Not_203 x_31223) (Not_203 x_31224)))))
(assert (forall ((x_31225 Int) (x_31226 Int))
	(=> (distinct x_31225 x_31226) (diseqForm_2 (Var_2 x_31225) (Var_2 x_31226)))))
(declare-fun or_204 (Bool_201 list_138) Bool)
(assert (forall ((x_31056 Bool_201) (x_31057 Bool_201) (y_1228 Bool_201) (xs_375 list_138))
	(=> (and (or_204 x_31057 xs_375) (or_205 x_31056 y_1228 x_31057)) (or_204 x_31056 (cons_138 y_1228 xs_375)))))
(assert (or_204 false_201 nil_154))
(declare-fun models_12 (list_139 Int list_139) Bool)
(assert (forall ((x_31060 list_139) (x_31039 Int) (y_1230 Bool_201) (xs_376 list_139) (x_31038 Int))
	(=> (and (distinct x_31038 x_31039) (models_12 x_31060 x_31038 xs_376)) (models_12 (cons_139 (pair_61 x_31039 y_1230) x_31060) x_31038 (cons_139 (pair_61 x_31039 y_1230) xs_376)))))
(assert (forall ((x_31061 list_139) (y_1230 Bool_201) (xs_376 list_139) (x_31038 Int))
	(=> (models_12 x_31061 x_31038 xs_376) (models_12 x_31061 x_31038 (cons_139 (pair_61 x_31038 y_1230) xs_376)))))
(assert (forall ((x_31038 Int))
	(models_12 nil_155 x_31038 nil_155)))
(declare-fun models_13 (list_138 Int list_139) Bool)
(assert (forall ((x_31064 list_138) (y_1232 Int) (x_31041 list_139) (x_31040 Int))
	(=> (models_13 x_31064 x_31040 x_31041) (models_13 x_31064 x_31040 (cons_139 (pair_61 y_1232 true_201) x_31041)))))
(assert (forall ((x_31067 list_138) (x_31041 list_139) (x_31040 Int))
	(=> (models_13 x_31067 x_31040 x_31041) (models_13 (cons_138 true_201 x_31067) x_31040 (cons_139 (pair_61 x_31040 false_201) x_31041)))))
(assert (forall ((x_31069 list_138) (y_1232 Int) (x_31041 list_139) (x_31040 Int))
	(=> (and (distinct x_31040 y_1232) (models_13 x_31069 x_31040 x_31041)) (models_13 (cons_138 false_201 x_31069) x_31040 (cons_139 (pair_61 y_1232 false_201) x_31041)))))
(assert (forall ((x_31040 Int))
	(models_13 nil_154 x_31040 nil_155)))
(declare-fun models_14 (list_138 Int list_139) Bool)
(assert (forall ((x_31072 list_138) (x_31044 list_139) (x_31043 Int))
	(=> (models_14 x_31072 x_31043 x_31044) (models_14 (cons_138 true_201 x_31072) x_31043 (cons_139 (pair_61 x_31043 true_201) x_31044)))))
(assert (forall ((x_31074 list_138) (y_1234 Int) (x_31044 list_139) (x_31043 Int))
	(=> (and (distinct x_31043 y_1234) (models_14 x_31074 x_31043 x_31044)) (models_14 (cons_138 false_201 x_31074) x_31043 (cons_139 (pair_61 y_1234 true_201) x_31044)))))
(assert (forall ((x_31075 list_138) (y_1234 Int) (x_31044 list_139) (x_31043 Int))
	(=> (models_14 x_31075 x_31043 x_31044) (models_14 x_31075 x_31043 (cons_139 (pair_61 y_1234 false_201) x_31044)))))
(assert (forall ((x_31043 Int))
	(models_14 nil_154 x_31043 nil_155)))
(declare-fun bar_0 (Bool_201 list_139 Form_2) Bool)
(assert (forall ((x_31078 Bool_201) (x_31079 list_138) (z_1155 Int) (x_31046 list_139))
	(=> (and (models_14 x_31079 z_1155 x_31046) (or_204 x_31078 x_31079)) (bar_0 x_31078 x_31046 (Var_2 z_1155)))))
(assert (forall ((x_31081 Bool_201) (x_31082 Bool_201) (r_239 Form_2) (x_31046 list_139))
	(=> (and (bar_0 x_31082 x_31046 r_239) (not_204 x_31081 x_31082)) (bar_0 x_31081 x_31046 (Not_203 r_239)))))
(assert (forall ((x_31083 Bool_201) (x_31084 Bool_201) (x_31085 Bool_201) (p_203 Form_2) (q_66 Form_2) (x_31046 list_139))
	(=> (and (bar_0 x_31084 x_31046 p_203) (bar_0 x_31085 x_31046 q_66) (and_201 x_31083 x_31084 x_31085)) (bar_0 x_31083 x_31046 (x_31036 p_203 q_66)))))
(declare-fun formula_2 (Bool_201 Form_2 list_140) Bool)
(assert (forall ((x_31086 Bool_201) (x_31087 Bool_201) (x_31088 Bool_201) (y_1236 list_139) (xs_377 list_140) (p_204 Form_2))
	(=> (and (bar_0 x_31087 y_1236 p_204) (formula_2 x_31088 p_204 xs_377) (and_201 x_31086 x_31087 x_31088)) (formula_2 x_31086 p_204 (cons_140 y_1236 xs_377)))))
(assert (forall ((p_204 Form_2))
	(formula_2 true_201 p_204 nil_156)))
(declare-fun x_31048 (list_140 list_140 list_140) Bool)
(assert (forall ((x_31091 list_140) (z_1156 list_139) (xs_378 list_140) (y_1237 list_140))
	(=> (x_31048 x_31091 xs_378 y_1237) (x_31048 (cons_140 z_1156 x_31091) (cons_140 z_1156 xs_378) y_1237))))
(assert (forall ((x_31092 list_140))
	(x_31048 x_31092 nil_156 x_31092)))
(declare-fun models_15 (list_140 Form_2 list_139) Bool)
(declare-fun models_16 (list_140 Form_2 list_140) Bool)
(declare-fun models_17 (list_140 list_140 Form_2 list_140) Bool)
(assert (forall ((x_31096 list_139) (x_31093 list_138) (x_31051 Int) (y_1238 list_139))
	(=> (and (models_12 x_31096 x_31051 y_1238) (models_13 x_31093 x_31051 y_1238) (or_204 false_201 x_31093)) (models_15 (cons_140 (cons_139 (pair_61 x_31051 true_201) x_31096) nil_156) (Var_2 x_31051) y_1238))))
(assert (forall ((x_31097 list_138) (x_31051 Int) (y_1238 list_139))
	(=> (and (models_13 x_31097 x_31051 y_1238) (or_204 true_201 x_31097)) (models_15 nil_156 (Var_2 x_31051) y_1238))))
(assert (forall ((x_31103 list_139) (x_31100 list_138) (x_31052 Int) (y_1238 list_139))
	(=> (and (models_12 x_31103 x_31052 y_1238) (models_14 x_31100 x_31052 y_1238) (or_204 false_201 x_31100)) (models_15 (cons_140 (cons_139 (pair_61 x_31052 false_201) x_31103) nil_156) (Not_203 (Var_2 x_31052)) y_1238))))
(assert (forall ((x_31104 list_138) (x_31052 Int) (y_1238 list_139))
	(=> (and (models_14 x_31104 x_31052 y_1238) (or_204 true_201 x_31104)) (models_15 nil_156 (Not_203 (Var_2 x_31052)) y_1238))))
(assert (forall ((x_31107 list_140) (p_205 Form_2) (y_1238 list_139))
	(=> (models_15 x_31107 p_205 y_1238) (models_15 x_31107 (Not_203 (Not_203 p_205)) y_1238))))
(assert (forall ((x_31109 list_140) (x_31110 list_140) (x_31111 list_140) (r_240 Form_2) (q_67 Form_2) (y_1238 list_139))
	(=> (and (models_15 x_31110 (Not_203 r_240) y_1238) (models_15 x_31111 (x_31036 r_240 (Not_203 q_67)) y_1238) (x_31048 x_31109 x_31110 x_31111)) (models_15 x_31109 (Not_203 (x_31036 r_240 q_67)) y_1238))))
(assert (forall ((x_31113 list_140) (x_31114 list_140) (p_206 Form_2) (q_68 Form_2) (y_1238 list_139))
	(=> (and (models_15 x_31114 p_206 y_1238) (models_16 x_31113 q_68 x_31114)) (models_15 x_31113 (x_31036 p_206 q_68) y_1238))))
(assert (forall ((x_31116 list_140) (x_31117 list_140) (y_1239 list_139) (z_1158 list_140) (q_69 Form_2))
	(=> (and (models_15 x_31117 q_69 y_1239) (models_17 x_31116 z_1158 q_69 x_31117)) (models_16 x_31116 q_69 (cons_140 y_1239 z_1158)))))
(assert (forall ((q_69 Form_2))
	(models_16 nil_156 q_69 nil_156)))
(assert (forall ((x_31121 list_140) (z_1159 list_139) (x_31055 list_140) (x_31054 list_140) (q_70 Form_2))
	(=> (models_17 x_31121 x_31054 q_70 x_31055) (models_17 (cons_140 z_1159 x_31121) x_31054 q_70 (cons_140 z_1159 x_31055)))))
(assert (forall ((x_31122 list_140) (x_31054 list_140) (q_70 Form_2))
	(=> (models_16 x_31122 q_70 x_31054) (models_17 x_31122 x_31054 q_70 nil_156))))
(assert (forall ((x_31124 list_140) (p_207 Form_2))
	(=> (and (models_15 x_31124 p_207 nil_155) (formula_2 false_201 p_207 x_31124)) false)))
(check-sat)
