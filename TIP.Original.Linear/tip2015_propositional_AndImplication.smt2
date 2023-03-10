(set-logic HORN)
(declare-datatypes ((Nat_508 0)) (((Z_1828 ) (S_407 (unS_602 Nat_508)))))
(declare-fun diseqNat_508 (Nat_508 Nat_508) Bool)
(declare-fun unS_603 (Nat_508 Nat_508) Bool)
(declare-fun isZ_374 (Nat_508) Bool)
(declare-fun isS_374 (Nat_508) Bool)
(assert (forall ((x_52893 Nat_508))
	(unS_603 x_52893 (S_407 x_52893))))
(assert (isZ_374 Z_1828))
(assert (forall ((x_52895 Nat_508))
	(isS_374 (S_407 x_52895))))
(assert (forall ((x_52896 Nat_508))
	(diseqNat_508 Z_1828 (S_407 x_52896))))
(assert (forall ((x_52897 Nat_508))
	(diseqNat_508 (S_407 x_52897) Z_1828)))
(assert (forall ((x_52898 Nat_508) (x_52899 Nat_508))
	(=> (diseqNat_508 x_52898 x_52899)
	    (diseqNat_508 (S_407 x_52898) (S_407 x_52899)))))
(declare-fun add_323 (Nat_508 Nat_508 Nat_508) Bool)
(declare-fun minus_320 (Nat_508 Nat_508 Nat_508) Bool)
(declare-fun le_301 (Nat_508 Nat_508) Bool)
(declare-fun ge_301 (Nat_508 Nat_508) Bool)
(declare-fun lt_320 (Nat_508 Nat_508) Bool)
(declare-fun gt_304 (Nat_508 Nat_508) Bool)
(declare-fun mult_301 (Nat_508 Nat_508 Nat_508) Bool)
(declare-fun div_301 (Nat_508 Nat_508 Nat_508) Bool)
(declare-fun mod_303 (Nat_508 Nat_508 Nat_508) Bool)
(assert (forall ((y_2055 Nat_508))
	(add_323 y_2055 Z_1828 y_2055)))
(assert (forall ((x_52891 Nat_508) (y_2055 Nat_508) (r_371 Nat_508))
	(=> (add_323 r_371 x_52891 y_2055)
	    (add_323 (S_407 r_371) (S_407 x_52891) y_2055))))
(assert (forall ((y_2055 Nat_508))
	(minus_320 Z_1828 Z_1828 y_2055)))
(assert (forall ((x_52891 Nat_508) (y_2055 Nat_508) (r_371 Nat_508))
	(=> (minus_320 r_371 x_52891 y_2055)
	    (minus_320 (S_407 r_371) (S_407 x_52891) y_2055))))
(assert (forall ((y_2055 Nat_508))
	(le_301 Z_1828 y_2055)))
(assert (forall ((x_52891 Nat_508) (y_2055 Nat_508))
	(=> (le_301 x_52891 y_2055)
	    (le_301 (S_407 x_52891) (S_407 y_2055)))))
(assert (forall ((y_2055 Nat_508))
	(ge_301 y_2055 Z_1828)))
(assert (forall ((x_52891 Nat_508) (y_2055 Nat_508))
	(=> (ge_301 x_52891 y_2055)
	    (ge_301 (S_407 x_52891) (S_407 y_2055)))))
(assert (forall ((y_2055 Nat_508))
	(lt_320 Z_1828 (S_407 y_2055))))
(assert (forall ((x_52891 Nat_508) (y_2055 Nat_508))
	(=> (lt_320 x_52891 y_2055)
	    (lt_320 (S_407 x_52891) (S_407 y_2055)))))
(assert (forall ((y_2055 Nat_508))
	(gt_304 (S_407 y_2055) Z_1828)))
(assert (forall ((x_52891 Nat_508) (y_2055 Nat_508))
	(=> (gt_304 x_52891 y_2055)
	    (gt_304 (S_407 x_52891) (S_407 y_2055)))))
(assert (forall ((y_2055 Nat_508))
	(mult_301 Z_1828 Z_1828 y_2055)))
(assert (forall ((x_52891 Nat_508) (y_2055 Nat_508) (r_371 Nat_508) (z_1829 Nat_508))
	(=>	(and (mult_301 r_371 x_52891 y_2055)
			(add_323 z_1829 r_371 y_2055))
		(mult_301 z_1829 (S_407 x_52891) y_2055))))
(assert (forall ((x_52891 Nat_508) (y_2055 Nat_508))
	(=> (lt_320 x_52891 y_2055)
	    (div_301 Z_1828 x_52891 y_2055))))
(assert (forall ((x_52891 Nat_508) (y_2055 Nat_508) (r_371 Nat_508) (z_1829 Nat_508))
	(=>	(and (ge_301 x_52891 y_2055)
			(minus_320 z_1829 x_52891 y_2055)
			(div_301 r_371 z_1829 y_2055))
		(div_301 (S_407 r_371) x_52891 y_2055))))
(assert (forall ((x_52891 Nat_508) (y_2055 Nat_508))
	(=> (lt_320 x_52891 y_2055)
	    (mod_303 x_52891 x_52891 y_2055))))
(assert (forall ((x_52891 Nat_508) (y_2055 Nat_508) (r_371 Nat_508) (z_1829 Nat_508))
	(=>	(and (ge_301 x_52891 y_2055)
			(minus_320 z_1829 x_52891 y_2055)
			(mod_303 r_371 z_1829 y_2055))
		(mod_303 r_371 x_52891 y_2055))))
(declare-datatypes ((Bool_301 0)) (((false_301 ) (true_301 ))))
(declare-fun diseqBool_140 (Bool_301 Bool_301) Bool)
(declare-fun isfalse_140 (Bool_301) Bool)
(declare-fun istrue_140 (Bool_301) Bool)
(assert (isfalse_140 false_301))
(assert (istrue_140 true_301))
(assert (diseqBool_140 false_301 true_301))
(assert (diseqBool_140 true_301 false_301))
(declare-fun and_301 (Bool_301 Bool_301 Bool_301) Bool)
(declare-fun or_308 (Bool_301 Bool_301 Bool_301) Bool)
(declare-fun hence_301 (Bool_301 Bool_301 Bool_301) Bool)
(declare-fun not_306 (Bool_301 Bool_301) Bool)
(assert (and_301 false_301 false_301 false_301))
(assert (and_301 false_301 true_301 false_301))
(assert (and_301 false_301 false_301 true_301))
(assert (and_301 true_301 true_301 true_301))
(assert (or_308 false_301 false_301 false_301))
(assert (or_308 true_301 true_301 false_301))
(assert (or_308 true_301 false_301 true_301))
(assert (or_308 true_301 true_301 true_301))
(assert (hence_301 true_301 false_301 false_301))
(assert (hence_301 false_301 true_301 false_301))
(assert (hence_301 true_301 false_301 true_301))
(assert (hence_301 true_301 true_301 true_301))
(assert (not_306 true_301 false_301))
(assert (not_306 false_301 true_301))
(declare-datatypes ((pair_90 0)) (((pair_91 (projpair_180 Nat_508) (projpair_181 Bool_301)))))
(declare-fun diseqpair_45 (pair_90 pair_90) Bool)
(declare-fun projpair_182 (Nat_508 pair_90) Bool)
(declare-fun projpair_183 (Bool_301 pair_90) Bool)
(declare-fun ispair_45 (pair_90) Bool)
(assert (forall ((x_52902 Nat_508) (x_52903 Bool_301))
	(projpair_182 x_52902 (pair_91 x_52902 x_52903))))
(assert (forall ((x_52902 Nat_508) (x_52903 Bool_301))
	(projpair_183 x_52903 (pair_91 x_52902 x_52903))))
(assert (forall ((x_52905 Nat_508) (x_52906 Bool_301))
	(ispair_45 (pair_91 x_52905 x_52906))))
(assert (forall ((x_52907 Nat_508) (x_52908 Bool_301) (x_52909 Nat_508) (x_52910 Bool_301))
	(=> (diseqNat_508 x_52907 x_52909)
	    (diseqpair_45 (pair_91 x_52907 x_52908) (pair_91 x_52909 x_52910)))))
(assert (forall ((x_52907 Nat_508) (x_52908 Bool_301) (x_52909 Nat_508) (x_52910 Bool_301))
	(=> (diseqBool_140 x_52908 x_52910)
	    (diseqpair_45 (pair_91 x_52907 x_52908) (pair_91 x_52909 x_52910)))))
(declare-datatypes ((list_211 0)) (((nil_239 ) (cons_211 (head_422 Bool_301) (tail_422 list_211)))))
(declare-fun diseqlist_211 (list_211 list_211) Bool)
(declare-fun head_425 (Bool_301 list_211) Bool)
(declare-fun tail_425 (list_211 list_211) Bool)
(declare-fun isnil_239 (list_211) Bool)
(declare-fun iscons_211 (list_211) Bool)
(assert (forall ((x_52912 Bool_301) (x_52913 list_211))
	(head_425 x_52912 (cons_211 x_52912 x_52913))))
(assert (forall ((x_52912 Bool_301) (x_52913 list_211))
	(tail_425 x_52913 (cons_211 x_52912 x_52913))))
(assert (isnil_239 nil_239))
(assert (forall ((x_52915 Bool_301) (x_52916 list_211))
	(iscons_211 (cons_211 x_52915 x_52916))))
(assert (forall ((x_52917 Bool_301) (x_52918 list_211))
	(diseqlist_211 nil_239 (cons_211 x_52917 x_52918))))
(assert (forall ((x_52919 Bool_301) (x_52920 list_211))
	(diseqlist_211 (cons_211 x_52919 x_52920) nil_239)))
(assert (forall ((x_52921 Bool_301) (x_52922 list_211) (x_52923 Bool_301) (x_52924 list_211))
	(=> (diseqBool_140 x_52921 x_52923)
	    (diseqlist_211 (cons_211 x_52921 x_52922) (cons_211 x_52923 x_52924)))))
(assert (forall ((x_52921 Bool_301) (x_52922 list_211) (x_52923 Bool_301) (x_52924 list_211))
	(=> (diseqlist_211 x_52922 x_52924)
	    (diseqlist_211 (cons_211 x_52921 x_52922) (cons_211 x_52923 x_52924)))))
(declare-datatypes ((list_212 0)) (((nil_240 ) (cons_212 (head_423 pair_90) (tail_423 list_212)))))
(declare-fun diseqlist_212 (list_212 list_212) Bool)
(declare-fun head_426 (pair_90 list_212) Bool)
(declare-fun tail_426 (list_212 list_212) Bool)
(declare-fun isnil_240 (list_212) Bool)
(declare-fun iscons_212 (list_212) Bool)
(assert (forall ((x_52926 pair_90) (x_52927 list_212))
	(head_426 x_52926 (cons_212 x_52926 x_52927))))
(assert (forall ((x_52926 pair_90) (x_52927 list_212))
	(tail_426 x_52927 (cons_212 x_52926 x_52927))))
(assert (isnil_240 nil_240))
(assert (forall ((x_52929 pair_90) (x_52930 list_212))
	(iscons_212 (cons_212 x_52929 x_52930))))
(assert (forall ((x_52931 pair_90) (x_52932 list_212))
	(diseqlist_212 nil_240 (cons_212 x_52931 x_52932))))
(assert (forall ((x_52933 pair_90) (x_52934 list_212))
	(diseqlist_212 (cons_212 x_52933 x_52934) nil_240)))
(assert (forall ((x_52935 pair_90) (x_52936 list_212) (x_52937 pair_90) (x_52938 list_212))
	(=> (diseqpair_45 x_52935 x_52937)
	    (diseqlist_212 (cons_212 x_52935 x_52936) (cons_212 x_52937 x_52938)))))
(assert (forall ((x_52935 pair_90) (x_52936 list_212) (x_52937 pair_90) (x_52938 list_212))
	(=> (diseqlist_212 x_52936 x_52938)
	    (diseqlist_212 (cons_212 x_52935 x_52936) (cons_212 x_52937 x_52938)))))
(declare-datatypes ((list_213 0)) (((nil_241 ) (cons_213 (head_424 list_212) (tail_424 list_213)))))
(declare-fun diseqlist_213 (list_213 list_213) Bool)
(declare-fun head_427 (list_212 list_213) Bool)
(declare-fun tail_427 (list_213 list_213) Bool)
(declare-fun isnil_241 (list_213) Bool)
(declare-fun iscons_213 (list_213) Bool)
(assert (forall ((x_52940 list_212) (x_52941 list_213))
	(head_427 x_52940 (cons_213 x_52940 x_52941))))
(assert (forall ((x_52940 list_212) (x_52941 list_213))
	(tail_427 x_52941 (cons_213 x_52940 x_52941))))
(assert (isnil_241 nil_241))
(assert (forall ((x_52943 list_212) (x_52944 list_213))
	(iscons_213 (cons_213 x_52943 x_52944))))
(assert (forall ((x_52945 list_212) (x_52946 list_213))
	(diseqlist_213 nil_241 (cons_213 x_52945 x_52946))))
(assert (forall ((x_52947 list_212) (x_52948 list_213))
	(diseqlist_213 (cons_213 x_52947 x_52948) nil_241)))
(assert (forall ((x_52949 list_212) (x_52950 list_213) (x_52951 list_212) (x_52952 list_213))
	(=> (diseqlist_212 x_52949 x_52951)
	    (diseqlist_213 (cons_213 x_52949 x_52950) (cons_213 x_52951 x_52952)))))
(assert (forall ((x_52949 list_212) (x_52950 list_213) (x_52951 list_212) (x_52952 list_213))
	(=> (diseqlist_213 x_52950 x_52952)
	    (diseqlist_213 (cons_213 x_52949 x_52950) (cons_213 x_52951 x_52952)))))
(declare-datatypes ((Form_4 0)) (((x_52809 (proj_16 Form_4) (proj_17 Form_4)) (Not_305 (projNot_8 Form_4)) (Var_4 (projVar_8 Nat_508)))))
(declare-fun diseqForm_4 (Form_4 Form_4) Bool)
(declare-fun proj_18 (Form_4 Form_4) Bool)
(declare-fun proj_19 (Form_4 Form_4) Bool)
(declare-fun projNot_9 (Form_4 Form_4) Bool)
(declare-fun projVar_9 (Nat_508 Form_4) Bool)
(declare-fun isx_18 (Form_4) Bool)
(declare-fun isNot_4 (Form_4) Bool)
(declare-fun isVar_4 (Form_4) Bool)
(assert (forall ((x_52953 Form_4) (x_52954 Form_4))
	(proj_18 x_52953 (x_52809 x_52953 x_52954))))
(assert (forall ((x_52953 Form_4) (x_52954 Form_4))
	(proj_19 x_52954 (x_52809 x_52953 x_52954))))
(assert (forall ((x_52956 Form_4))
	(projNot_9 x_52956 (Not_305 x_52956))))
(assert (forall ((x_52958 Nat_508))
	(projVar_9 x_52958 (Var_4 x_52958))))
(assert (forall ((x_52960 Form_4) (x_52961 Form_4))
	(isx_18 (x_52809 x_52960 x_52961))))
(assert (forall ((x_52962 Form_4))
	(isNot_4 (Not_305 x_52962))))
(assert (forall ((x_52963 Nat_508))
	(isVar_4 (Var_4 x_52963))))
(assert (forall ((x_52964 Form_4) (x_52965 Form_4) (x_52966 Form_4))
	(diseqForm_4 (x_52809 x_52964 x_52965) (Not_305 x_52966))))
(assert (forall ((x_52967 Form_4) (x_52968 Form_4) (x_52969 Nat_508))
	(diseqForm_4 (x_52809 x_52967 x_52968) (Var_4 x_52969))))
(assert (forall ((x_52970 Form_4) (x_52971 Form_4) (x_52972 Form_4))
	(diseqForm_4 (Not_305 x_52970) (x_52809 x_52971 x_52972))))
(assert (forall ((x_52973 Nat_508) (x_52974 Form_4) (x_52975 Form_4))
	(diseqForm_4 (Var_4 x_52973) (x_52809 x_52974 x_52975))))
(assert (forall ((x_52976 Form_4) (x_52977 Nat_508))
	(diseqForm_4 (Not_305 x_52976) (Var_4 x_52977))))
(assert (forall ((x_52978 Nat_508) (x_52979 Form_4))
	(diseqForm_4 (Var_4 x_52978) (Not_305 x_52979))))
(assert (forall ((x_52980 Form_4) (x_52981 Form_4) (x_52982 Form_4) (x_52983 Form_4))
	(=> (diseqForm_4 x_52980 x_52982)
	    (diseqForm_4 (x_52809 x_52980 x_52981) (x_52809 x_52982 x_52983)))))
(assert (forall ((x_52980 Form_4) (x_52981 Form_4) (x_52982 Form_4) (x_52983 Form_4))
	(=> (diseqForm_4 x_52981 x_52983)
	    (diseqForm_4 (x_52809 x_52980 x_52981) (x_52809 x_52982 x_52983)))))
(assert (forall ((x_52984 Form_4) (x_52985 Form_4))
	(=> (diseqForm_4 x_52984 x_52985)
	    (diseqForm_4 (Not_305 x_52984) (Not_305 x_52985)))))
(assert (forall ((x_52986 Nat_508) (x_52987 Nat_508))
	(=> (diseqNat_508 x_52986 x_52987)
	    (diseqForm_4 (Var_4 x_52986) (Var_4 x_52987)))))
(declare-fun or_307 (Bool_301 list_211) Bool)
(assert (forall ((x_52828 Bool_301) (x_52829 Bool_301) (y_2043 Bool_301) (xs_587 list_211))
	(=>	(and (or_307 x_52829 xs_587)
			(or_308 x_52828 y_2043 x_52829))
		(or_307 x_52828 (cons_211 y_2043 xs_587)))))
(assert (or_307 false_301 nil_239))
(declare-fun models_24 (list_212 Nat_508 list_212) Bool)
(assert (forall ((x_52832 list_212) (x_52812 Nat_508) (y_2045 Bool_301) (xs_588 list_212) (x_52811 Nat_508))
	(=>	(and (diseqNat_508 x_52811 x_52812)
			(models_24 x_52832 x_52811 xs_588))
		(models_24 (cons_212 (pair_91 x_52812 y_2045) x_52832) x_52811 (cons_212 (pair_91 x_52812 y_2045) xs_588)))))
(assert (forall ((x_52833 list_212) (y_2045 Bool_301) (xs_588 list_212) (x_52811 Nat_508))
	(=> (models_24 x_52833 x_52811 xs_588)
	    (models_24 x_52833 x_52811 (cons_212 (pair_91 x_52811 y_2045) xs_588)))))
(assert (forall ((x_52811 Nat_508))
	(models_24 nil_240 x_52811 nil_240)))
(declare-fun models_25 (list_211 Nat_508 list_212) Bool)
(assert (forall ((x_52836 list_211) (y_2047 Nat_508) (x_52814 list_212) (x_52813 Nat_508))
	(=> (models_25 x_52836 x_52813 x_52814)
	    (models_25 x_52836 x_52813 (cons_212 (pair_91 y_2047 true_301) x_52814)))))
(assert (forall ((x_52839 list_211) (x_52814 list_212) (x_52813 Nat_508))
	(=> (models_25 x_52839 x_52813 x_52814)
	    (models_25 (cons_211 true_301 x_52839) x_52813 (cons_212 (pair_91 x_52813 false_301) x_52814)))))
(assert (forall ((x_52841 list_211) (y_2047 Nat_508) (x_52814 list_212) (x_52813 Nat_508))
	(=>	(and (diseqNat_508 x_52813 y_2047)
			(models_25 x_52841 x_52813 x_52814))
		(models_25 (cons_211 false_301 x_52841) x_52813 (cons_212 (pair_91 y_2047 false_301) x_52814)))))
(assert (forall ((x_52813 Nat_508))
	(models_25 nil_239 x_52813 nil_240)))
(declare-fun models_26 (list_211 Nat_508 list_212) Bool)
(assert (forall ((x_52844 list_211) (x_52817 list_212) (x_52816 Nat_508))
	(=> (models_26 x_52844 x_52816 x_52817)
	    (models_26 (cons_211 true_301 x_52844) x_52816 (cons_212 (pair_91 x_52816 true_301) x_52817)))))
(assert (forall ((x_52846 list_211) (y_2049 Nat_508) (x_52817 list_212) (x_52816 Nat_508))
	(=>	(and (diseqNat_508 x_52816 y_2049)
			(models_26 x_52846 x_52816 x_52817))
		(models_26 (cons_211 false_301 x_52846) x_52816 (cons_212 (pair_91 y_2049 true_301) x_52817)))))
(assert (forall ((x_52847 list_211) (y_2049 Nat_508) (x_52817 list_212) (x_52816 Nat_508))
	(=> (models_26 x_52847 x_52816 x_52817)
	    (models_26 x_52847 x_52816 (cons_212 (pair_91 y_2049 false_301) x_52817)))))
(assert (forall ((x_52816 Nat_508))
	(models_26 nil_239 x_52816 nil_240)))
(declare-fun x_52819 (list_213 list_213 list_213) Bool)
(assert (forall ((x_52851 list_213) (z_1823 list_212) (xs_589 list_213) (y_2050 list_213))
	(=> (x_52819 x_52851 xs_589 y_2050)
	    (x_52819 (cons_213 z_1823 x_52851) (cons_213 z_1823 xs_589) y_2050))))
(assert (forall ((x_52852 list_213))
	(x_52819 x_52852 nil_241 x_52852)))
(declare-fun models_27 (list_213 Form_4 list_212) Bool)
(declare-fun models_28 (list_213 Form_4 list_213) Bool)
(declare-fun models_29 (list_213 list_213 Form_4 list_213) Bool)
(assert (forall ((x_52856 list_212) (x_52853 list_211) (x_52822 Nat_508) (y_2051 list_212))
	(=>	(and (models_24 x_52856 x_52822 y_2051)
			(models_25 x_52853 x_52822 y_2051)
			(or_307 false_301 x_52853))
		(models_27 (cons_213 (cons_212 (pair_91 x_52822 true_301) x_52856) nil_241) (Var_4 x_52822) y_2051))))
(assert (forall ((x_52857 list_211) (x_52822 Nat_508) (y_2051 list_212))
	(=>	(and (models_25 x_52857 x_52822 y_2051)
			(or_307 true_301 x_52857))
		(models_27 nil_241 (Var_4 x_52822) y_2051))))
(assert (forall ((x_52863 list_212) (x_52860 list_211) (x_52823 Nat_508) (y_2051 list_212))
	(=>	(and (models_24 x_52863 x_52823 y_2051)
			(models_26 x_52860 x_52823 y_2051)
			(or_307 false_301 x_52860))
		(models_27 (cons_213 (cons_212 (pair_91 x_52823 false_301) x_52863) nil_241) (Not_305 (Var_4 x_52823)) y_2051))))
(assert (forall ((x_52864 list_211) (x_52823 Nat_508) (y_2051 list_212))
	(=>	(and (models_26 x_52864 x_52823 y_2051)
			(or_307 true_301 x_52864))
		(models_27 nil_241 (Not_305 (Var_4 x_52823)) y_2051))))
(assert (forall ((x_52867 list_213) (p_372 Form_4) (y_2051 list_212))
	(=> (models_27 x_52867 p_372 y_2051)
	    (models_27 x_52867 (Not_305 (Not_305 p_372)) y_2051))))
(assert (forall ((x_52869 list_213) (x_52870 list_213) (x_52871 list_213) (r_370 Form_4) (q_118 Form_4) (y_2051 list_212))
	(=>	(and (models_27 x_52870 (Not_305 r_370) y_2051)
			(models_27 x_52871 (x_52809 r_370 (Not_305 q_118)) y_2051)
			(x_52819 x_52869 x_52870 x_52871))
		(models_27 x_52869 (Not_305 (x_52809 r_370 q_118)) y_2051))))
(assert (forall ((x_52873 list_213) (x_52874 list_213) (p_373 Form_4) (q_119 Form_4) (y_2051 list_212))
	(=>	(and (models_27 x_52874 p_373 y_2051)
			(models_28 x_52873 q_119 x_52874))
		(models_27 x_52873 (x_52809 p_373 q_119) y_2051))))
(assert (forall ((x_52876 list_213) (x_52877 list_213) (y_2052 list_212) (z_1825 list_213) (q_120 Form_4))
	(=>	(and (models_27 x_52877 q_120 y_2052)
			(models_29 x_52876 z_1825 q_120 x_52877))
		(models_28 x_52876 q_120 (cons_213 y_2052 z_1825)))))
(assert (forall ((q_120 Form_4))
	(models_28 nil_241 q_120 nil_241)))
(assert (forall ((x_52881 list_213) (z_1826 list_212) (x_52826 list_213) (x_52825 list_213) (q_121 Form_4))
	(=> (models_29 x_52881 x_52825 q_121 x_52826)
	    (models_29 (cons_213 z_1826 x_52881) x_52825 q_121 (cons_213 z_1826 x_52826)))))
(assert (forall ((x_52882 list_213) (x_52825 list_213) (q_121 Form_4))
	(=> (models_28 x_52882 q_121 x_52825)
	    (models_29 x_52882 x_52825 q_121 nil_241))))
(declare-fun valid_2 (Bool_301 Form_4) Bool)
(assert (forall ((y_2054 list_212) (z_1827 list_213) (x_52827 Form_4))
	(=> (models_27 (cons_213 y_2054 z_1827) (Not_305 x_52827) nil_240)
	    (valid_2 false_301 x_52827))))
(assert (forall ((x_52827 Form_4))
	(=> (models_27 nil_241 (Not_305 x_52827) nil_240)
	    (valid_2 true_301 x_52827))))
(assert (forall ((p_374 Form_4) (q_122 Form_4))
	(=>	(and true
			(valid_2 true_301 (x_52809 p_374 q_122))
			(valid_2 false_301 q_122))
		false)))
(check-sat)
