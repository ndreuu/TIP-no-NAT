(set-logic HORN)
(define-fun Z_17 () Int 0)
(define-fun S_4 ((x Int)) Int (+ x 1))
(define-fun Z_11 () Int 0)
(define-fun S_3 ((x Int)) Int (+ x 1))
(declare-fun unS_5 (Int Int) Bool)
(declare-fun isZ_4 (Int) Bool)
(declare-fun isS_4 (Int) Bool)
(assert (forall ((x_220 Int))
	(unS_5 x_220 (S_4 x_220))))
(assert (isZ_4 Z_17))
(assert (forall ((x_222 Int))
	(isS_4 (S_4 x_222))))
(declare-fun add_2 (Int Int Int) Bool)
(declare-fun minus_2 (Int Int Int) Bool)
(declare-fun le_2 (Int Int) Bool)
(declare-fun ge_2 (Int Int) Bool)
(declare-fun lt_2 (Int Int) Bool)
(declare-fun gt_2 (Int Int) Bool)
(declare-fun mult_2 (Int Int Int) Bool)
(declare-fun div_2 (Int Int Int) Bool)
(declare-fun mod_2 (Int Int Int) Bool)
(assert (forall ((y_17 Int))
	(add_2 y_17 Z_17 y_17)))
(assert (forall ((x_173 Int) (y_17 Int) (r_2 Int))
	(=> (add_2 r_2 x_173 y_17) (add_2 (S_4 r_2) (S_4 x_173) y_17))))
(assert (forall ((y_17 Int))
	(minus_2 Z_17 Z_17 y_17)))
(assert (forall ((x_173 Int) (y_17 Int) (r_2 Int))
	(=> (minus_2 r_2 x_173 y_17) (minus_2 (S_4 r_2) (S_4 x_173) y_17))))
(assert (forall ((y_17 Int))
	(le_2 Z_17 y_17)))
(assert (forall ((x_173 Int) (y_17 Int))
	(=> (le_2 x_173 y_17) (le_2 (S_4 x_173) (S_4 y_17)))))
(assert (forall ((y_17 Int))
	(ge_2 y_17 Z_17)))
(assert (forall ((x_173 Int) (y_17 Int))
	(=> (ge_2 x_173 y_17) (ge_2 (S_4 x_173) (S_4 y_17)))))
(assert (forall ((y_17 Int))
	(lt_2 Z_17 (S_4 y_17))))
(assert (forall ((x_173 Int) (y_17 Int))
	(=> (lt_2 x_173 y_17) (lt_2 (S_4 x_173) (S_4 y_17)))))
(assert (forall ((y_17 Int))
	(gt_2 (S_4 y_17) Z_17)))
(assert (forall ((x_173 Int) (y_17 Int))
	(=> (gt_2 x_173 y_17) (gt_2 (S_4 x_173) (S_4 y_17)))))
(assert (forall ((y_17 Int))
	(mult_2 Z_17 Z_17 y_17)))
(assert (forall ((x_173 Int) (y_17 Int) (r_2 Int) (z_18 Int))
	(=> (and (mult_2 r_2 x_173 y_17) (add_2 z_18 r_2 y_17)) (mult_2 z_18 (S_4 x_173) y_17))))
(assert (forall ((x_173 Int) (y_17 Int))
	(=> (lt_2 x_173 y_17) (div_2 Z_17 x_173 y_17))))
(assert (forall ((x_173 Int) (y_17 Int) (r_2 Int) (z_18 Int))
	(=> (and (ge_2 x_173 y_17) (minus_2 z_18 x_173 y_17) (div_2 r_2 z_18 y_17)) (div_2 (S_4 r_2) x_173 y_17))))
(assert (forall ((x_173 Int) (y_17 Int))
	(=> (lt_2 x_173 y_17) (mod_2 x_173 x_173 y_17))))
(assert (forall ((x_173 Int) (y_17 Int) (r_2 Int) (z_18 Int))
	(=> (and (ge_2 x_173 y_17) (minus_2 z_18 x_173 y_17) (mod_2 r_2 z_18 y_17)) (mod_2 r_2 x_173 y_17))))
(declare-datatypes ((pair_2 0)) (((pair_3 (projpair_4 Int) (projpair_5 Int)))))
(declare-fun diseqpair_1 (pair_2 pair_2) Bool)
(declare-fun projpair_6 (Int pair_2) Bool)
(declare-fun projpair_7 (Int pair_2) Bool)
(declare-fun ispair_1 (pair_2) Bool)
(assert (forall ((x_174 Int) (x_175 Int))
	(projpair_6 x_174 (pair_3 x_174 x_175))))
(assert (forall ((x_174 Int) (x_175 Int))
	(projpair_7 x_175 (pair_3 x_174 x_175))))
(assert (forall ((x_177 Int) (x_178 Int))
	(ispair_1 (pair_3 x_177 x_178))))
(assert (forall ((x_179 Int) (x_180 Int) (x_181 Int) (x_182 Int))
	(=> (distinct x_179 x_181) (diseqpair_1 (pair_3 x_179 x_180) (pair_3 x_181 x_182)))))
(assert (forall ((x_179 Int) (x_180 Int) (x_181 Int) (x_182 Int))
	(=> (distinct x_180 x_182) (diseqpair_1 (pair_3 x_179 x_180) (pair_3 x_181 x_182)))))
(declare-datatypes ((list_3 0)) (((nil_3) (cons_3 (head_6 Int) (tail_6 list_3)))))
(declare-fun diseqlist_3 (list_3 list_3) Bool)
(declare-fun head_8 (Int list_3) Bool)
(declare-fun tail_8 (list_3 list_3) Bool)
(declare-fun isnil_3 (list_3) Bool)
(declare-fun iscons_3 (list_3) Bool)
(assert (forall ((x_184 Int) (x_185 list_3))
	(head_8 x_184 (cons_3 x_184 x_185))))
(assert (forall ((x_184 Int) (x_185 list_3))
	(tail_8 x_185 (cons_3 x_184 x_185))))
(assert (isnil_3 nil_3))
(assert (forall ((x_187 Int) (x_188 list_3))
	(iscons_3 (cons_3 x_187 x_188))))
(assert (forall ((x_189 Int) (x_190 list_3))
	(diseqlist_3 nil_3 (cons_3 x_189 x_190))))
(assert (forall ((x_191 Int) (x_192 list_3))
	(diseqlist_3 (cons_3 x_191 x_192) nil_3)))
(assert (forall ((x_193 Int) (x_194 list_3) (x_195 Int) (x_196 list_3))
	(=> (distinct x_193 x_195) (diseqlist_3 (cons_3 x_193 x_194) (cons_3 x_195 x_196)))))
(assert (forall ((x_193 Int) (x_194 list_3) (x_195 Int) (x_196 list_3))
	(=> (diseqlist_3 x_194 x_196) (diseqlist_3 (cons_3 x_193 x_194) (cons_3 x_195 x_196)))))
(declare-datatypes ((list_4 0)) (((nil_4) (cons_4 (head_7 pair_2) (tail_7 list_4)))))
(declare-fun diseqlist_4 (list_4 list_4) Bool)
(declare-fun head_9 (pair_2 list_4) Bool)
(declare-fun tail_9 (list_4 list_4) Bool)
(declare-fun isnil_4 (list_4) Bool)
(declare-fun iscons_4 (list_4) Bool)
(assert (forall ((x_198 pair_2) (x_199 list_4))
	(head_9 x_198 (cons_4 x_198 x_199))))
(assert (forall ((x_198 pair_2) (x_199 list_4))
	(tail_9 x_199 (cons_4 x_198 x_199))))
(assert (isnil_4 nil_4))
(assert (forall ((x_201 pair_2) (x_202 list_4))
	(iscons_4 (cons_4 x_201 x_202))))
(assert (forall ((x_203 pair_2) (x_204 list_4))
	(diseqlist_4 nil_4 (cons_4 x_203 x_204))))
(assert (forall ((x_205 pair_2) (x_206 list_4))
	(diseqlist_4 (cons_4 x_205 x_206) nil_4)))
(assert (forall ((x_207 pair_2) (x_208 list_4) (x_209 pair_2) (x_210 list_4))
	(=> (diseqpair_1 x_207 x_209) (diseqlist_4 (cons_4 x_207 x_208) (cons_4 x_209 x_210)))))
(assert (forall ((x_207 pair_2) (x_208 list_4) (x_209 pair_2) (x_210 list_4))
	(=> (diseqlist_4 x_208 x_210) (diseqlist_4 (cons_4 x_207 x_208) (cons_4 x_209 x_210)))))
(declare-fun projS_3 (Int Int) Bool)
(declare-fun isZ_3 (Int) Bool)
(declare-fun isS_3 (Int) Bool)
(assert (forall ((x_212 Int))
	(projS_3 x_212 (S_3 x_212))))
(assert (isZ_3 Z_11))
(assert (forall ((x_214 Int))
	(isS_3 (S_3 x_214))))
(declare-fun zip_1 (list_4 list_3 list_3) Bool)
(assert (forall ((x_144 list_4) (x_130 Int) (x_131 list_3) (z_12 Int) (x_129 list_3))
	(=> (zip_1 x_144 x_129 x_131) (zip_1 (cons_4 (pair_3 z_12 x_130) x_144) (cons_3 z_12 x_129) (cons_3 x_130 x_131)))))
(assert (forall ((z_12 Int) (x_129 list_3))
	(zip_1 nil_4 (cons_3 z_12 x_129) nil_3)))
(assert (forall ((y_11 list_3))
	(zip_1 nil_4 nil_3 y_11)))
(declare-fun take_0 (list_3 Int list_3) Bool)
(assert (forall ((x_148 list_3) (x_133 Int) (x_134 list_3) (z_13 Int))
	(=> (take_0 x_148 z_13 x_134) (take_0 (cons_3 x_133 x_148) (S_3 z_13) (cons_3 x_133 x_134)))))
(assert (forall ((z_13 Int))
	(take_0 nil_3 (S_3 z_13) nil_3)))
(assert (forall ((y_12 list_3))
	(take_0 nil_3 Z_11 y_12)))
(declare-fun len_0 (Int list_3) Bool)
(assert (forall ((x_152 Int) (y_13 Int) (xs_4 list_3))
	(=> (len_0 x_152 xs_4) (len_0 (S_3 x_152) (cons_3 y_13 xs_4)))))
(assert (len_0 Z_11 nil_3))
(declare-fun drop_0 (list_3 Int list_3) Bool)
(assert (forall ((x_154 list_3) (x_137 Int) (x_138 list_3) (z_14 Int))
	(=> (and (distinct 0 (S_3 z_14)) (drop_0 x_154 z_14 x_138)) (drop_0 x_154 (S_3 z_14) (cons_3 x_137 x_138)))))
(assert (forall ((z_14 Int))
	(=> (distinct 0 (S_3 z_14)) (drop_0 nil_3 (S_3 z_14) nil_3))))
(assert (forall ((x_157 list_3))
	(drop_0 x_157 Z_11 x_157)))
(declare-fun x_139 (list_3 list_3 list_3) Bool)
(assert (forall ((x_159 list_3) (z_15 Int) (xs_5 list_3) (y_15 list_3))
	(=> (x_139 x_159 xs_5 y_15) (x_139 (cons_3 z_15 x_159) (cons_3 z_15 xs_5) y_15))))
(assert (forall ((x_160 list_3))
	(x_139 x_160 nil_3 x_160)))
(declare-fun x_141 (list_4 list_4 list_4) Bool)
(assert (forall ((x_162 list_4) (z_16 pair_2) (xs_6 list_4) (y_16 list_4))
	(=> (x_141 x_162 xs_6 y_16) (x_141 (cons_4 z_16 x_162) (cons_4 z_16 xs_6) y_16))))
(assert (forall ((x_163 list_4))
	(x_141 x_163 nil_4 x_163)))
(assert (forall ((x_164 list_3) (x_165 list_4) (x_166 Int) (x_167 list_3) (x_168 list_4) (x_169 Int) (x_170 list_3) (x_171 list_4) (x_172 list_4) (xs_7 list_3) (ys_2 list_3) (zs_0 list_3))
	(=> (and true (diseqlist_4 x_165 x_172) (x_139 x_164 xs_7 ys_2) (zip_1 x_165 x_164 zs_0) (len_0 x_166 xs_7) (take_0 x_167 x_166 zs_0) (zip_1 x_168 xs_7 x_167) (len_0 x_169 xs_7) (drop_0 x_170 x_169 zs_0) (zip_1 x_171 ys_2 x_170) (x_141 x_172 x_168 x_171)) false)))
(check-sat)
