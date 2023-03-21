
(set-logic HORN)
(declare-datatypes ((Bool_161 0)) (((false_161) (true_161))))
(declare-fun diseqBool_67 (Bool_161 Bool_161) Bool)
(declare-fun isfalse_67 (Bool_161) Bool)
(declare-fun istrue_67 (Bool_161) Bool)
(assert (isfalse_67 false_161))
(assert (istrue_67 true_161))
(assert (diseqBool_67 false_161 true_161))
(assert (diseqBool_67 true_161 false_161))
(declare-fun and_161 (Bool_161 Bool_161 Bool_161) Bool)
(declare-fun or_163 (Bool_161 Bool_161 Bool_161) Bool)
(declare-fun hence_161 (Bool_161 Bool_161 Bool_161) Bool)
(declare-fun not_162 (Bool_161 Bool_161) Bool)
(assert (and_161 false_161 false_161 false_161))
(assert (and_161 false_161 true_161 false_161))
(assert (and_161 false_161 false_161 true_161))
(assert (and_161 true_161 true_161 true_161))
(assert (or_163 false_161 false_161 false_161))
(assert (or_163 true_161 true_161 false_161))
(assert (or_163 true_161 false_161 true_161))
(assert (or_163 true_161 true_161 true_161))
(assert (hence_161 true_161 false_161 false_161))
(assert (hence_161 false_161 true_161 false_161))
(assert (hence_161 true_161 false_161 true_161))
(assert (hence_161 true_161 true_161 true_161))
(assert (not_162 true_161 false_161))
(assert (not_162 false_161 true_161))
(declare-datatypes ((A_27 0)) (((X_23097) (Y_927))))
(declare-fun diseqA_6 (A_27 A_27) Bool)
(declare-fun isX_7 (A_27) Bool)
(declare-fun isY_6 (A_27) Bool)
(assert (isX_7 X_23097))
(assert (isY_6 Y_927))
(assert (diseqA_6 X_23097 Y_927))
(assert (diseqA_6 Y_927 X_23097))
(declare-datatypes ((R_191 0)) (((Nil_128) (Eps_12) (Atom_6 (projAtom_12 A_27)) (Plus_48 (projPlus_24 R_191) (projPlus_25 R_191)) (Seq_12 (projSeq_24 R_191) (projSeq_25 R_191)) (Star_6 (projStar_12 R_191)))))
(declare-fun diseqR_6 (R_191 R_191) Bool)
(declare-fun projAtom_13 (A_27 R_191) Bool)
(declare-fun projPlus_26 (R_191 R_191) Bool)
(declare-fun projPlus_27 (R_191 R_191) Bool)
(declare-fun projSeq_26 (R_191 R_191) Bool)
(declare-fun projSeq_27 (R_191 R_191) Bool)
(declare-fun projStar_13 (R_191 R_191) Bool)
(declare-fun isNil_128 (R_191) Bool)
(declare-fun isEps_6 (R_191) Bool)
(declare-fun isAtom_6 (R_191) Bool)
(declare-fun isPlus_6 (R_191) Bool)
(declare-fun isSeq_6 (R_191) Bool)
(declare-fun isStar_6 (R_191) Bool)
(assert (forall ((x_25188 A_27))
	(projAtom_13 x_25188 (Atom_6 x_25188))))
(assert (forall ((x_25190 R_191) (x_25191 R_191))
	(projPlus_26 x_25190 (Plus_48 x_25190 x_25191))))
(assert (forall ((x_25190 R_191) (x_25191 R_191))
	(projPlus_27 x_25191 (Plus_48 x_25190 x_25191))))
(assert (forall ((x_25193 R_191) (x_25194 R_191))
	(projSeq_26 x_25193 (Seq_12 x_25193 x_25194))))
(assert (forall ((x_25193 R_191) (x_25194 R_191))
	(projSeq_27 x_25194 (Seq_12 x_25193 x_25194))))
(assert (forall ((x_25196 R_191))
	(projStar_13 x_25196 (Star_6 x_25196))))
(assert (isNil_128 Nil_128))
(assert (isEps_6 Eps_12))
(assert (forall ((x_25198 A_27))
	(isAtom_6 (Atom_6 x_25198))))
(assert (forall ((x_25199 R_191) (x_25200 R_191))
	(isPlus_6 (Plus_48 x_25199 x_25200))))
(assert (forall ((x_25201 R_191) (x_25202 R_191))
	(isSeq_6 (Seq_12 x_25201 x_25202))))
(assert (forall ((x_25203 R_191))
	(isStar_6 (Star_6 x_25203))))
(assert (diseqR_6 Nil_128 Eps_12))
(assert (forall ((x_25204 A_27))
	(diseqR_6 Nil_128 (Atom_6 x_25204))))
(assert (forall ((x_25205 R_191) (x_25206 R_191))
	(diseqR_6 Nil_128 (Plus_48 x_25205 x_25206))))
(assert (forall ((x_25207 R_191) (x_25208 R_191))
	(diseqR_6 Nil_128 (Seq_12 x_25207 x_25208))))
(assert (forall ((x_25209 R_191))
	(diseqR_6 Nil_128 (Star_6 x_25209))))
(assert (diseqR_6 Eps_12 Nil_128))
(assert (forall ((x_25210 A_27))
	(diseqR_6 (Atom_6 x_25210) Nil_128)))
(assert (forall ((x_25211 R_191) (x_25212 R_191))
	(diseqR_6 (Plus_48 x_25211 x_25212) Nil_128)))
(assert (forall ((x_25213 R_191) (x_25214 R_191))
	(diseqR_6 (Seq_12 x_25213 x_25214) Nil_128)))
(assert (forall ((x_25215 R_191))
	(diseqR_6 (Star_6 x_25215) Nil_128)))
(assert (forall ((x_25216 A_27))
	(diseqR_6 Eps_12 (Atom_6 x_25216))))
(assert (forall ((x_25217 R_191) (x_25218 R_191))
	(diseqR_6 Eps_12 (Plus_48 x_25217 x_25218))))
(assert (forall ((x_25219 R_191) (x_25220 R_191))
	(diseqR_6 Eps_12 (Seq_12 x_25219 x_25220))))
(assert (forall ((x_25221 R_191))
	(diseqR_6 Eps_12 (Star_6 x_25221))))
(assert (forall ((x_25222 A_27))
	(diseqR_6 (Atom_6 x_25222) Eps_12)))
(assert (forall ((x_25223 R_191) (x_25224 R_191))
	(diseqR_6 (Plus_48 x_25223 x_25224) Eps_12)))
(assert (forall ((x_25225 R_191) (x_25226 R_191))
	(diseqR_6 (Seq_12 x_25225 x_25226) Eps_12)))
(assert (forall ((x_25227 R_191))
	(diseqR_6 (Star_6 x_25227) Eps_12)))
(assert (forall ((x_25228 A_27) (x_25229 R_191) (x_25230 R_191))
	(diseqR_6 (Atom_6 x_25228) (Plus_48 x_25229 x_25230))))
(assert (forall ((x_25231 A_27) (x_25232 R_191) (x_25233 R_191))
	(diseqR_6 (Atom_6 x_25231) (Seq_12 x_25232 x_25233))))
(assert (forall ((x_25234 A_27) (x_25235 R_191))
	(diseqR_6 (Atom_6 x_25234) (Star_6 x_25235))))
(assert (forall ((x_25236 R_191) (x_25237 R_191) (x_25238 A_27))
	(diseqR_6 (Plus_48 x_25236 x_25237) (Atom_6 x_25238))))
(assert (forall ((x_25239 R_191) (x_25240 R_191) (x_25241 A_27))
	(diseqR_6 (Seq_12 x_25239 x_25240) (Atom_6 x_25241))))
(assert (forall ((x_25242 R_191) (x_25243 A_27))
	(diseqR_6 (Star_6 x_25242) (Atom_6 x_25243))))
(assert (forall ((x_25244 R_191) (x_25245 R_191) (x_25246 R_191) (x_25247 R_191))
	(diseqR_6 (Plus_48 x_25244 x_25245) (Seq_12 x_25246 x_25247))))
(assert (forall ((x_25248 R_191) (x_25249 R_191) (x_25250 R_191))
	(diseqR_6 (Plus_48 x_25248 x_25249) (Star_6 x_25250))))
(assert (forall ((x_25251 R_191) (x_25252 R_191) (x_25253 R_191) (x_25254 R_191))
	(diseqR_6 (Seq_12 x_25251 x_25252) (Plus_48 x_25253 x_25254))))
(assert (forall ((x_25255 R_191) (x_25256 R_191) (x_25257 R_191))
	(diseqR_6 (Star_6 x_25255) (Plus_48 x_25256 x_25257))))
(assert (forall ((x_25258 R_191) (x_25259 R_191) (x_25260 R_191))
	(diseqR_6 (Seq_12 x_25258 x_25259) (Star_6 x_25260))))
(assert (forall ((x_25261 R_191) (x_25262 R_191) (x_25263 R_191))
	(diseqR_6 (Star_6 x_25261) (Seq_12 x_25262 x_25263))))
(assert (forall ((x_25264 A_27) (x_25265 A_27))
	(=> (diseqA_6 x_25264 x_25265) (diseqR_6 (Atom_6 x_25264) (Atom_6 x_25265)))))
(assert (forall ((x_25266 R_191) (x_25267 R_191) (x_25268 R_191) (x_25269 R_191))
	(=> (diseqR_6 x_25266 x_25268) (diseqR_6 (Plus_48 x_25266 x_25267) (Plus_48 x_25268 x_25269)))))
(assert (forall ((x_25266 R_191) (x_25267 R_191) (x_25268 R_191) (x_25269 R_191))
	(=> (diseqR_6 x_25267 x_25269) (diseqR_6 (Plus_48 x_25266 x_25267) (Plus_48 x_25268 x_25269)))))
(assert (forall ((x_25270 R_191) (x_25271 R_191) (x_25272 R_191) (x_25273 R_191))
	(=> (diseqR_6 x_25270 x_25272) (diseqR_6 (Seq_12 x_25270 x_25271) (Seq_12 x_25272 x_25273)))))
(assert (forall ((x_25270 R_191) (x_25271 R_191) (x_25272 R_191) (x_25273 R_191))
	(=> (diseqR_6 x_25271 x_25273) (diseqR_6 (Seq_12 x_25270 x_25271) (Seq_12 x_25272 x_25273)))))
(assert (forall ((x_25274 R_191) (x_25275 R_191))
	(=> (diseqR_6 x_25274 x_25275) (diseqR_6 (Star_6 x_25274) (Star_6 x_25275)))))
(declare-datatypes ((list_116 0)) (((nil_129) (cons_116 (head_232 A_27) (tail_232 list_116)))))
(declare-fun diseqlist_116 (list_116 list_116) Bool)
(declare-fun head_233 (A_27 list_116) Bool)
(declare-fun tail_233 (list_116 list_116) Bool)
(declare-fun isnil_129 (list_116) Bool)
(declare-fun iscons_116 (list_116) Bool)
(assert (forall ((x_25277 A_27) (x_25278 list_116))
	(head_233 x_25277 (cons_116 x_25277 x_25278))))
(assert (forall ((x_25277 A_27) (x_25278 list_116))
	(tail_233 x_25278 (cons_116 x_25277 x_25278))))
(assert (isnil_129 nil_129))
(assert (forall ((x_25280 A_27) (x_25281 list_116))
	(iscons_116 (cons_116 x_25280 x_25281))))
(assert (forall ((x_25282 A_27) (x_25283 list_116))
	(diseqlist_116 nil_129 (cons_116 x_25282 x_25283))))
(assert (forall ((x_25284 A_27) (x_25285 list_116))
	(diseqlist_116 (cons_116 x_25284 x_25285) nil_129)))
(assert (forall ((x_25286 A_27) (x_25287 list_116) (x_25288 A_27) (x_25289 list_116))
	(=> (diseqA_6 x_25286 x_25288) (diseqlist_116 (cons_116 x_25286 x_25287) (cons_116 x_25288 x_25289)))))
(assert (forall ((x_25286 A_27) (x_25287 list_116) (x_25288 A_27) (x_25289 list_116))
	(=> (diseqlist_116 x_25287 x_25289) (diseqlist_116 (cons_116 x_25286 x_25287) (cons_116 x_25288 x_25289)))))
(declare-fun seq_13 (R_191 R_191 R_191) Bool)
(assert (forall ((y_928 R_191))
	(seq_13 Nil_128 Nil_128 y_928)))
(assert (forall ((x_23099 R_191) (x_23342 A_27))
	(seq_13 Nil_128 (Atom_6 x_23342) Nil_128)))
(assert (forall ((x_23099 R_191))
	(seq_13 Nil_128 Eps_12 Nil_128)))
(assert (forall ((x_23099 R_191) (x_23343 R_191) (x_23344 R_191))
	(seq_13 Nil_128 (Plus_48 x_23343 x_23344) Nil_128)))
(assert (forall ((x_23099 R_191) (x_23345 R_191) (x_23346 R_191))
	(seq_13 Nil_128 (Seq_12 x_23345 x_23346) Nil_128)))
(assert (forall ((x_23099 R_191) (x_23347 R_191))
	(seq_13 Nil_128 (Star_6 x_23347) Nil_128)))
(assert (forall ((x_23100 R_191) (x_23156 A_27) (x_23099 R_191))
	(seq_13 (Atom_6 x_23156) Eps_12 (Atom_6 x_23156))))
(assert (forall ((x_23100 R_191) (x_23099 R_191))
	(seq_13 Eps_12 Eps_12 Eps_12)))
(assert (forall ((x_23100 R_191) (x_23157 R_191) (x_23158 R_191) (x_23099 R_191))
	(seq_13 (Plus_48 x_23157 x_23158) Eps_12 (Plus_48 x_23157 x_23158))))
(assert (forall ((x_23100 R_191) (x_23159 R_191) (x_23160 R_191) (x_23099 R_191))
	(seq_13 (Seq_12 x_23159 x_23160) Eps_12 (Seq_12 x_23159 x_23160))))
(assert (forall ((x_23100 R_191) (x_23161 R_191) (x_23099 R_191))
	(seq_13 (Star_6 x_23161) Eps_12 (Star_6 x_23161))))
(assert (forall ((x_23101 R_191) (x_23120 A_27) (x_23100 R_191) (x_23099 R_191))
	(seq_13 (Atom_6 x_23120) (Atom_6 x_23120) Eps_12)))
(assert (forall ((x_23101 R_191) (x_23121 R_191) (x_23122 R_191) (x_23100 R_191) (x_23099 R_191))
	(seq_13 (Plus_48 x_23121 x_23122) (Plus_48 x_23121 x_23122) Eps_12)))
(assert (forall ((x_23101 R_191) (x_23123 R_191) (x_23124 R_191) (x_23100 R_191) (x_23099 R_191))
	(seq_13 (Seq_12 x_23123 x_23124) (Seq_12 x_23123 x_23124) Eps_12)))
(assert (forall ((x_23101 R_191) (x_23125 R_191) (x_23100 R_191) (x_23099 R_191))
	(seq_13 (Star_6 x_23125) (Star_6 x_23125) Eps_12)))
(assert (forall ((x_23102 R_191) (x_23114 A_27) (x_23101 R_191) (x_23126 A_27) (x_23100 R_191) (x_23099 R_191))
	(seq_13 (Seq_12 (Atom_6 x_23126) (Atom_6 x_23114)) (Atom_6 x_23126) (Atom_6 x_23114))))
(assert (forall ((x_23102 R_191) (x_23114 A_27) (x_23101 R_191) (x_23127 R_191) (x_23128 R_191) (x_23100 R_191) (x_23099 R_191))
	(seq_13 (Seq_12 (Plus_48 x_23127 x_23128) (Atom_6 x_23114)) (Plus_48 x_23127 x_23128) (Atom_6 x_23114))))
(assert (forall ((x_23102 R_191) (x_23114 A_27) (x_23101 R_191) (x_23129 R_191) (x_23130 R_191) (x_23100 R_191) (x_23099 R_191))
	(seq_13 (Seq_12 (Seq_12 x_23129 x_23130) (Atom_6 x_23114)) (Seq_12 x_23129 x_23130) (Atom_6 x_23114))))
(assert (forall ((x_23102 R_191) (x_23114 A_27) (x_23101 R_191) (x_23131 R_191) (x_23100 R_191) (x_23099 R_191))
	(seq_13 (Seq_12 (Star_6 x_23131) (Atom_6 x_23114)) (Star_6 x_23131) (Atom_6 x_23114))))
(assert (forall ((x_23102 R_191) (x_23115 R_191) (x_23116 R_191) (x_23101 R_191) (x_23138 A_27) (x_23100 R_191) (x_23099 R_191))
	(seq_13 (Seq_12 (Atom_6 x_23138) (Plus_48 x_23115 x_23116)) (Atom_6 x_23138) (Plus_48 x_23115 x_23116))))
(assert (forall ((x_23102 R_191) (x_23115 R_191) (x_23116 R_191) (x_23101 R_191) (x_23139 R_191) (x_23140 R_191) (x_23100 R_191) (x_23099 R_191))
	(seq_13 (Seq_12 (Plus_48 x_23139 x_23140) (Plus_48 x_23115 x_23116)) (Plus_48 x_23139 x_23140) (Plus_48 x_23115 x_23116))))
(assert (forall ((x_23102 R_191) (x_23115 R_191) (x_23116 R_191) (x_23101 R_191) (x_23141 R_191) (x_23142 R_191) (x_23100 R_191) (x_23099 R_191))
	(seq_13 (Seq_12 (Seq_12 x_23141 x_23142) (Plus_48 x_23115 x_23116)) (Seq_12 x_23141 x_23142) (Plus_48 x_23115 x_23116))))
(assert (forall ((x_23102 R_191) (x_23115 R_191) (x_23116 R_191) (x_23101 R_191) (x_23143 R_191) (x_23100 R_191) (x_23099 R_191))
	(seq_13 (Seq_12 (Star_6 x_23143) (Plus_48 x_23115 x_23116)) (Star_6 x_23143) (Plus_48 x_23115 x_23116))))
(assert (forall ((x_23102 R_191) (x_23117 R_191) (x_23118 R_191) (x_23101 R_191) (x_23144 A_27) (x_23100 R_191) (x_23099 R_191))
	(seq_13 (Seq_12 (Atom_6 x_23144) (Seq_12 x_23117 x_23118)) (Atom_6 x_23144) (Seq_12 x_23117 x_23118))))
(assert (forall ((x_23102 R_191) (x_23117 R_191) (x_23118 R_191) (x_23101 R_191) (x_23145 R_191) (x_23146 R_191) (x_23100 R_191) (x_23099 R_191))
	(seq_13 (Seq_12 (Plus_48 x_23145 x_23146) (Seq_12 x_23117 x_23118)) (Plus_48 x_23145 x_23146) (Seq_12 x_23117 x_23118))))
(assert (forall ((x_23102 R_191) (x_23117 R_191) (x_23118 R_191) (x_23101 R_191) (x_23147 R_191) (x_23148 R_191) (x_23100 R_191) (x_23099 R_191))
	(seq_13 (Seq_12 (Seq_12 x_23147 x_23148) (Seq_12 x_23117 x_23118)) (Seq_12 x_23147 x_23148) (Seq_12 x_23117 x_23118))))
(assert (forall ((x_23102 R_191) (x_23117 R_191) (x_23118 R_191) (x_23101 R_191) (x_23149 R_191) (x_23100 R_191) (x_23099 R_191))
	(seq_13 (Seq_12 (Star_6 x_23149) (Seq_12 x_23117 x_23118)) (Star_6 x_23149) (Seq_12 x_23117 x_23118))))
(assert (forall ((x_23102 R_191) (x_23119 R_191) (x_23101 R_191) (x_23150 A_27) (x_23100 R_191) (x_23099 R_191))
	(seq_13 (Seq_12 (Atom_6 x_23150) (Star_6 x_23119)) (Atom_6 x_23150) (Star_6 x_23119))))
(assert (forall ((x_23102 R_191) (x_23119 R_191) (x_23101 R_191) (x_23151 R_191) (x_23152 R_191) (x_23100 R_191) (x_23099 R_191))
	(seq_13 (Seq_12 (Plus_48 x_23151 x_23152) (Star_6 x_23119)) (Plus_48 x_23151 x_23152) (Star_6 x_23119))))
(assert (forall ((x_23102 R_191) (x_23119 R_191) (x_23101 R_191) (x_23153 R_191) (x_23154 R_191) (x_23100 R_191) (x_23099 R_191))
	(seq_13 (Seq_12 (Seq_12 x_23153 x_23154) (Star_6 x_23119)) (Seq_12 x_23153 x_23154) (Star_6 x_23119))))
(assert (forall ((x_23102 R_191) (x_23119 R_191) (x_23101 R_191) (x_23155 R_191) (x_23100 R_191) (x_23099 R_191))
	(seq_13 (Seq_12 (Star_6 x_23155) (Star_6 x_23119)) (Star_6 x_23155) (Star_6 x_23119))))
(declare-fun plus_49 (R_191 R_191 R_191) Bool)
(assert (forall ((x_25102 R_191))
	(plus_49 x_25102 Nil_128 x_25102)))
(assert (forall ((x_23104 R_191) (x_24284 A_27))
	(plus_49 (Atom_6 x_24284) (Atom_6 x_24284) Nil_128)))
(assert (forall ((x_23104 R_191))
	(plus_49 Eps_12 Eps_12 Nil_128)))
(assert (forall ((x_23104 R_191) (x_24285 R_191) (x_24286 R_191))
	(plus_49 (Plus_48 x_24285 x_24286) (Plus_48 x_24285 x_24286) Nil_128)))
(assert (forall ((x_23104 R_191) (x_24287 R_191) (x_24288 R_191))
	(plus_49 (Seq_12 x_24287 x_24288) (Seq_12 x_24287 x_24288) Nil_128)))
(assert (forall ((x_23104 R_191) (x_24289 R_191))
	(plus_49 (Star_6 x_24289) (Star_6 x_24289) Nil_128)))
(assert (forall ((x_23105 R_191) (x_24278 A_27) (x_23104 R_191) (x_24290 A_27))
	(plus_49 (Plus_48 (Atom_6 x_24290) (Atom_6 x_24278)) (Atom_6 x_24290) (Atom_6 x_24278))))
(assert (forall ((x_23105 R_191) (x_24278 A_27) (x_23104 R_191))
	(plus_49 (Plus_48 Eps_12 (Atom_6 x_24278)) Eps_12 (Atom_6 x_24278))))
(assert (forall ((x_23105 R_191) (x_24278 A_27) (x_23104 R_191) (x_24291 R_191) (x_24292 R_191))
	(plus_49 (Plus_48 (Plus_48 x_24291 x_24292) (Atom_6 x_24278)) (Plus_48 x_24291 x_24292) (Atom_6 x_24278))))
(assert (forall ((x_23105 R_191) (x_24278 A_27) (x_23104 R_191) (x_24293 R_191) (x_24294 R_191))
	(plus_49 (Plus_48 (Seq_12 x_24293 x_24294) (Atom_6 x_24278)) (Seq_12 x_24293 x_24294) (Atom_6 x_24278))))
(assert (forall ((x_23105 R_191) (x_24278 A_27) (x_23104 R_191) (x_24295 R_191))
	(plus_49 (Plus_48 (Star_6 x_24295) (Atom_6 x_24278)) (Star_6 x_24295) (Atom_6 x_24278))))
(assert (forall ((x_23105 R_191) (x_23104 R_191) (x_24296 A_27))
	(plus_49 (Plus_48 (Atom_6 x_24296) Eps_12) (Atom_6 x_24296) Eps_12)))
(assert (forall ((x_23105 R_191) (x_23104 R_191))
	(plus_49 (Plus_48 Eps_12 Eps_12) Eps_12 Eps_12)))
(assert (forall ((x_23105 R_191) (x_23104 R_191) (x_24297 R_191) (x_24298 R_191))
	(plus_49 (Plus_48 (Plus_48 x_24297 x_24298) Eps_12) (Plus_48 x_24297 x_24298) Eps_12)))
(assert (forall ((x_23105 R_191) (x_23104 R_191) (x_24299 R_191) (x_24300 R_191))
	(plus_49 (Plus_48 (Seq_12 x_24299 x_24300) Eps_12) (Seq_12 x_24299 x_24300) Eps_12)))
(assert (forall ((x_23105 R_191) (x_23104 R_191) (x_24301 R_191))
	(plus_49 (Plus_48 (Star_6 x_24301) Eps_12) (Star_6 x_24301) Eps_12)))
(assert (forall ((x_23105 R_191) (x_24279 R_191) (x_24280 R_191) (x_23104 R_191) (x_24302 A_27))
	(plus_49 (Plus_48 (Atom_6 x_24302) (Plus_48 x_24279 x_24280)) (Atom_6 x_24302) (Plus_48 x_24279 x_24280))))
(assert (forall ((x_23105 R_191) (x_24279 R_191) (x_24280 R_191) (x_23104 R_191))
	(plus_49 (Plus_48 Eps_12 (Plus_48 x_24279 x_24280)) Eps_12 (Plus_48 x_24279 x_24280))))
(assert (forall ((x_23105 R_191) (x_24279 R_191) (x_24280 R_191) (x_23104 R_191) (x_24303 R_191) (x_24304 R_191))
	(plus_49 (Plus_48 (Plus_48 x_24303 x_24304) (Plus_48 x_24279 x_24280)) (Plus_48 x_24303 x_24304) (Plus_48 x_24279 x_24280))))
(assert (forall ((x_23105 R_191) (x_24279 R_191) (x_24280 R_191) (x_23104 R_191) (x_24305 R_191) (x_24306 R_191))
	(plus_49 (Plus_48 (Seq_12 x_24305 x_24306) (Plus_48 x_24279 x_24280)) (Seq_12 x_24305 x_24306) (Plus_48 x_24279 x_24280))))
(assert (forall ((x_23105 R_191) (x_24279 R_191) (x_24280 R_191) (x_23104 R_191) (x_24307 R_191))
	(plus_49 (Plus_48 (Star_6 x_24307) (Plus_48 x_24279 x_24280)) (Star_6 x_24307) (Plus_48 x_24279 x_24280))))
(assert (forall ((x_23105 R_191) (x_24281 R_191) (x_24282 R_191) (x_23104 R_191) (x_24308 A_27))
	(plus_49 (Plus_48 (Atom_6 x_24308) (Seq_12 x_24281 x_24282)) (Atom_6 x_24308) (Seq_12 x_24281 x_24282))))
(assert (forall ((x_23105 R_191) (x_24281 R_191) (x_24282 R_191) (x_23104 R_191))
	(plus_49 (Plus_48 Eps_12 (Seq_12 x_24281 x_24282)) Eps_12 (Seq_12 x_24281 x_24282))))
(assert (forall ((x_23105 R_191) (x_24281 R_191) (x_24282 R_191) (x_23104 R_191) (x_24309 R_191) (x_24310 R_191))
	(plus_49 (Plus_48 (Plus_48 x_24309 x_24310) (Seq_12 x_24281 x_24282)) (Plus_48 x_24309 x_24310) (Seq_12 x_24281 x_24282))))
(assert (forall ((x_23105 R_191) (x_24281 R_191) (x_24282 R_191) (x_23104 R_191) (x_24311 R_191) (x_24312 R_191))
	(plus_49 (Plus_48 (Seq_12 x_24311 x_24312) (Seq_12 x_24281 x_24282)) (Seq_12 x_24311 x_24312) (Seq_12 x_24281 x_24282))))
(assert (forall ((x_23105 R_191) (x_24281 R_191) (x_24282 R_191) (x_23104 R_191) (x_24313 R_191))
	(plus_49 (Plus_48 (Star_6 x_24313) (Seq_12 x_24281 x_24282)) (Star_6 x_24313) (Seq_12 x_24281 x_24282))))
(assert (forall ((x_23105 R_191) (x_24283 R_191) (x_23104 R_191) (x_24314 A_27))
	(plus_49 (Plus_48 (Atom_6 x_24314) (Star_6 x_24283)) (Atom_6 x_24314) (Star_6 x_24283))))
(assert (forall ((x_23105 R_191) (x_24283 R_191) (x_23104 R_191))
	(plus_49 (Plus_48 Eps_12 (Star_6 x_24283)) Eps_12 (Star_6 x_24283))))
(assert (forall ((x_23105 R_191) (x_24283 R_191) (x_23104 R_191) (x_24315 R_191) (x_24316 R_191))
	(plus_49 (Plus_48 (Plus_48 x_24315 x_24316) (Star_6 x_24283)) (Plus_48 x_24315 x_24316) (Star_6 x_24283))))
(assert (forall ((x_23105 R_191) (x_24283 R_191) (x_23104 R_191) (x_24317 R_191) (x_24318 R_191))
	(plus_49 (Plus_48 (Seq_12 x_24317 x_24318) (Star_6 x_24283)) (Seq_12 x_24317 x_24318) (Star_6 x_24283))))
(assert (forall ((x_23105 R_191) (x_24283 R_191) (x_23104 R_191) (x_24319 R_191))
	(plus_49 (Plus_48 (Star_6 x_24319) (Star_6 x_24283)) (Star_6 x_24319) (Star_6 x_24283))))
(declare-fun eqA_6 (Bool_161 A_27 A_27) Bool)
(assert (eqA_6 true_161 Y_927 Y_927))
(assert (eqA_6 false_161 Y_927 X_23097))
(assert (eqA_6 false_161 X_23097 Y_927))
(assert (eqA_6 true_161 X_23097 X_23097))
(declare-fun eps_13 (Bool_161 R_191) Bool)
(assert (forall ((y_931 R_191))
	(eps_13 true_161 (Star_6 y_931))))
(assert (forall ((x_25138 Bool_161) (x_25139 Bool_161) (x_25140 Bool_161) (r_192 R_191) (q_49 R_191))
	(=> (and (eps_13 x_25139 r_192) (eps_13 x_25140 q_49) (and_161 x_25138 x_25139 x_25140)) (eps_13 x_25138 (Seq_12 r_192 q_49)))))
(assert (forall ((x_25141 Bool_161) (x_25142 Bool_161) (x_25143 Bool_161) (p_138 R_191) (q_50 R_191))
	(=> (and (eps_13 x_25142 p_138) (eps_13 x_25143 q_50) (or_163 x_25141 x_25142 x_25143)) (eps_13 x_25141 (Plus_48 p_138 q_50)))))
(assert (eps_13 true_161 Eps_12))
(assert (forall ((x_23108 R_191) (x_24320 A_27))
	(eps_13 false_161 (Atom_6 x_24320))))
(assert (forall ((x_23108 R_191))
	(eps_13 false_161 Nil_128)))
(declare-fun epsR_6 (R_191 R_191) Bool)
(assert (forall ((x_23109 R_191))
	(=> (eps_13 true_161 x_23109) (epsR_6 Eps_12 x_23109))))
(assert (forall ((x_23109 R_191))
	(=> (eps_13 false_161 x_23109) (epsR_6 Nil_128 x_23109))))
(declare-fun step_6 (R_191 R_191 A_27) Bool)
(assert (forall ((x_25151 R_191) (x_25152 R_191) (p_139 R_191) (y_932 A_27))
	(=> (and (step_6 x_25152 p_139 y_932) (seq_13 x_25151 x_25152 (Star_6 p_139))) (step_6 x_25151 (Star_6 p_139) y_932))))
(assert (forall ((x_25154 R_191) (x_25155 R_191) (x_25156 R_191) (x_25157 R_191) (x_25158 R_191) (x_25159 R_191) (r_193 R_191) (q_51 R_191) (y_932 A_27))
	(=> (and (step_6 x_25155 r_193 y_932) (seq_13 x_25156 x_25155 q_51) (epsR_6 x_25157 r_193) (step_6 x_25158 q_51 y_932) (seq_13 x_25159 x_25157 x_25158) (plus_49 x_25154 x_25156 x_25159)) (step_6 x_25154 (Seq_12 r_193 q_51) y_932))))
(assert (forall ((x_25161 R_191) (x_25162 R_191) (x_25163 R_191) (p_140 R_191) (q_52 R_191) (y_932 A_27))
	(=> (and (step_6 x_25162 p_140 y_932) (step_6 x_25163 q_52 y_932) (plus_49 x_25161 x_25162 x_25163)) (step_6 x_25161 (Plus_48 p_140 q_52) y_932))))
(assert (forall ((a_28 A_27) (y_932 A_27))
	(=> (eqA_6 true_161 a_28 y_932) (step_6 Eps_12 (Atom_6 a_28) y_932))))
(assert (forall ((a_28 A_27) (y_932 A_27))
	(=> (eqA_6 false_161 a_28 y_932) (step_6 Nil_128 (Atom_6 a_28) y_932))))
(assert (forall ((x_23111 R_191) (y_932 A_27))
	(step_6 Nil_128 Eps_12 y_932)))
(assert (forall ((x_23111 R_191) (y_932 A_27))
	(step_6 Nil_128 Nil_128 y_932)))
(declare-fun recognise_6 (Bool_161 R_191 list_116) Bool)
(assert (forall ((x_25171 Bool_161) (x_25172 R_191) (z_914 A_27) (xs_295 list_116) (x_23112 R_191))
	(=> (and (step_6 x_25172 x_23112 z_914) (recognise_6 x_25171 x_25172 xs_295)) (recognise_6 x_25171 x_23112 (cons_116 z_914 xs_295)))))
(assert (forall ((x_25174 Bool_161) (x_23112 R_191))
	(=> (eps_13 x_25174 x_23112) (recognise_6 x_25174 x_23112 nil_129))))
(assert (forall ((x_25176 Bool_161) (x_25177 Bool_161) (x_23113 A_27) (y_934 list_116) (p_141 R_191))
	(=> (and true (diseqBool_67 x_25176 x_25177) (recognise_6 x_25176 (Star_6 p_141) (cons_116 x_23113 y_934)) (recognise_6 x_25177 (Seq_12 p_141 (Star_6 p_141)) (cons_116 x_23113 y_934))) false)))
(assert (forall ((p_141 R_191))
	(=> (and true (recognise_6 false_161 (Star_6 p_141) nil_129)) false)))
(check-sat)