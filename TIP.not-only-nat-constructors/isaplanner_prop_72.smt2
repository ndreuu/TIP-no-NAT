
(set-logic HORN)
(define-fun Z_326 () Int 0)
(define-fun S_115 ((x Int)) Int (+ x 1))
(define-fun Z_321 () Int 0)
(define-fun S_114 ((x Int)) Int (+ x 1))
(declare-fun unS_119 (Int Int) Bool)
(declare-fun isZ_115 (Int) Bool)
(declare-fun isS_115 (Int) Bool)
(assert (forall ((x_3199 Int))
	(unS_119 x_3199 (S_115 x_3199))))
(assert (isZ_115 Z_326))
(assert (forall ((x_3201 Int))
	(isS_115 (S_115 x_3201))))
(declare-fun add_59 (Int Int Int) Bool)
(declare-fun minus_59 (Int Int Int) Bool)
(declare-fun le_59 (Int Int) Bool)
(declare-fun ge_59 (Int Int) Bool)
(declare-fun lt_59 (Int Int) Bool)
(declare-fun gt_59 (Int Int) Bool)
(declare-fun mult_59 (Int Int Int) Bool)
(declare-fun div_59 (Int Int Int) Bool)
(declare-fun mod_59 (Int Int Int) Bool)
(assert (forall ((y_259 Int))
	(add_59 y_259 Z_326 y_259)))
(assert (forall ((x_3175 Int) (y_259 Int) (r_59 Int))
	(=> (add_59 r_59 x_3175 y_259) (add_59 (S_115 r_59) (S_115 x_3175) y_259))))
(assert (forall ((y_259 Int))
	(minus_59 Z_326 Z_326 y_259)))
(assert (forall ((x_3175 Int) (y_259 Int) (r_59 Int))
	(=> (minus_59 r_59 x_3175 y_259) (minus_59 (S_115 r_59) (S_115 x_3175) y_259))))
(assert (forall ((y_259 Int))
	(le_59 Z_326 y_259)))
(assert (forall ((x_3175 Int) (y_259 Int))
	(=> (le_59 x_3175 y_259) (le_59 (S_115 x_3175) (S_115 y_259)))))
(assert (forall ((y_259 Int))
	(ge_59 y_259 Z_326)))
(assert (forall ((x_3175 Int) (y_259 Int))
	(=> (ge_59 x_3175 y_259) (ge_59 (S_115 x_3175) (S_115 y_259)))))
(assert (forall ((y_259 Int))
	(lt_59 Z_326 (S_115 y_259))))
(assert (forall ((x_3175 Int) (y_259 Int))
	(=> (lt_59 x_3175 y_259) (lt_59 (S_115 x_3175) (S_115 y_259)))))
(assert (forall ((y_259 Int))
	(gt_59 (S_115 y_259) Z_326)))
(assert (forall ((x_3175 Int) (y_259 Int))
	(=> (gt_59 x_3175 y_259) (gt_59 (S_115 x_3175) (S_115 y_259)))))
(assert (forall ((y_259 Int))
	(mult_59 Z_326 Z_326 y_259)))
(assert (forall ((x_3175 Int) (y_259 Int) (r_59 Int) (z_327 Int))
	(=> (and (mult_59 r_59 x_3175 y_259) (add_59 z_327 r_59 y_259)) (mult_59 z_327 (S_115 x_3175) y_259))))
(assert (forall ((x_3175 Int) (y_259 Int))
	(=> (lt_59 x_3175 y_259) (div_59 Z_326 x_3175 y_259))))
(assert (forall ((x_3175 Int) (y_259 Int) (r_59 Int) (z_327 Int))
	(=> (and (ge_59 x_3175 y_259) (minus_59 z_327 x_3175 y_259) (div_59 r_59 z_327 y_259)) (div_59 (S_115 r_59) x_3175 y_259))))
(assert (forall ((x_3175 Int) (y_259 Int))
	(=> (lt_59 x_3175 y_259) (mod_59 x_3175 x_3175 y_259))))
(assert (forall ((x_3175 Int) (y_259 Int) (r_59 Int) (z_327 Int))
	(=> (and (ge_59 x_3175 y_259) (minus_59 z_327 x_3175 y_259) (mod_59 r_59 z_327 y_259)) (mod_59 r_59 x_3175 y_259))))
(declare-datatypes ((list_53 0)) (((nil_53) (cons_53 (head_106 Int) (tail_106 list_53)))))
(declare-fun diseqlist_53 (list_53 list_53) Bool)
(declare-fun head_107 (Int list_53) Bool)
(declare-fun tail_107 (list_53 list_53) Bool)
(declare-fun isnil_53 (list_53) Bool)
(declare-fun iscons_53 (list_53) Bool)
(assert (forall ((x_3177 Int) (x_3178 list_53))
	(head_107 x_3177 (cons_53 x_3177 x_3178))))
(assert (forall ((x_3177 Int) (x_3178 list_53))
	(tail_107 x_3178 (cons_53 x_3177 x_3178))))
(assert (isnil_53 nil_53))
(assert (forall ((x_3180 Int) (x_3181 list_53))
	(iscons_53 (cons_53 x_3180 x_3181))))
(assert (forall ((x_3182 Int) (x_3183 list_53))
	(diseqlist_53 nil_53 (cons_53 x_3182 x_3183))))
(assert (forall ((x_3184 Int) (x_3185 list_53))
	(diseqlist_53 (cons_53 x_3184 x_3185) nil_53)))
(assert (forall ((x_3186 Int) (x_3187 list_53) (x_3188 Int) (x_3189 list_53))
	(=> (distinct x_3186 x_3188) (diseqlist_53 (cons_53 x_3186 x_3187) (cons_53 x_3188 x_3189)))))
(assert (forall ((x_3186 Int) (x_3187 list_53) (x_3188 Int) (x_3189 list_53))
	(=> (diseqlist_53 x_3187 x_3189) (diseqlist_53 (cons_53 x_3186 x_3187) (cons_53 x_3188 x_3189)))))
(declare-fun projS_111 (Int Int) Bool)
(declare-fun isZ_114 (Int) Bool)
(declare-fun isS_114 (Int) Bool)
(assert (forall ((x_3191 Int))
	(projS_111 x_3191 (S_114 x_3191))))
(assert (isZ_114 Z_321))
(assert (forall ((x_3193 Int))
	(isS_114 (S_114 x_3193))))
(declare-fun take_11 (list_53 Int list_53) Bool)
(assert (forall ((x_3148 list_53) (x_3135 Int) (x_3136 list_53) (z_322 Int))
	(=> (take_11 x_3148 z_322 x_3136) (take_11 (cons_53 x_3135 x_3148) (S_114 z_322) (cons_53 x_3135 x_3136)))))
(assert (forall ((z_322 Int))
	(take_11 nil_53 (S_114 z_322) nil_53)))
(assert (forall ((y_253 list_53))
	(take_11 nil_53 Z_321 y_253)))
(declare-fun len_10 (Int list_53) Bool)
(assert (forall ((x_3152 Int) (y_254 Int) (xs_96 list_53))
	(=> (len_10 x_3152 xs_96) (len_10 (S_114 x_3152) (cons_53 y_254 xs_96)))))
(assert (len_10 Z_321 nil_53))
(declare-fun drop_12 (list_53 Int list_53) Bool)
(assert (forall ((x_3154 list_53) (x_3139 Int) (x_3140 list_53) (z_323 Int))
	(=> (drop_12 x_3154 z_323 x_3140) (drop_12 x_3154 (S_114 z_323) (cons_53 x_3139 x_3140)))))
(assert (forall ((z_323 Int))
	(drop_12 nil_53 (S_114 z_323) nil_53)))
(assert (forall ((x_3157 list_53))
	(drop_12 x_3157 Z_321 x_3157)))
(declare-fun x_3141 (Int Int Int) Bool)
(assert (forall ((x_3158 Int) (x_3143 Int) (z_324 Int))
	(=> (x_3141 x_3158 z_324 x_3143) (x_3141 x_3158 (S_114 z_324) (S_114 x_3143)))))
(assert (forall ((z_324 Int))
	(x_3141 (S_114 z_324) (S_114 z_324) Z_321)))
(assert (forall ((y_256 Int))
	(x_3141 Z_321 Z_321 y_256)))
(declare-fun x_3144 (list_53 list_53 list_53) Bool)
(assert (forall ((x_3163 list_53) (z_325 Int) (xs_97 list_53) (y_257 list_53))
	(=> (x_3144 x_3163 xs_97 y_257) (x_3144 (cons_53 z_325 x_3163) (cons_53 z_325 xs_97) y_257))))
(assert (forall ((x_3164 list_53))
	(x_3144 x_3164 nil_53 x_3164)))
(declare-fun rev_4 (list_53 list_53) Bool)
(assert (forall ((x_3165 list_53) (x_3166 list_53) (y_258 Int) (xs_98 list_53))
	(=> (and (rev_4 x_3166 xs_98) (x_3144 x_3165 x_3166 (cons_53 y_258 nil_53))) (rev_4 x_3165 (cons_53 y_258 xs_98)))))
(assert (rev_4 nil_53 nil_53))
(assert (forall ((x_3169 list_53) (x_3170 list_53) (x_3171 Int) (x_3172 Int) (x_3173 list_53) (x_3174 list_53) (i_4 Int) (xs_99 list_53))
	(=> (and true (diseqlist_53 x_3170 x_3174) (drop_12 x_3169 i_4 xs_99) (rev_4 x_3170 x_3169) (len_10 x_3171 xs_99) (x_3141 x_3172 x_3171 i_4) (rev_4 x_3173 xs_99) (take_11 x_3174 x_3172 x_3173)) false)))
(check-sat)