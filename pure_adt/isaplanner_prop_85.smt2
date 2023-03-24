(set-logic HORN)
(declare-datatypes ((Nat_70 0)) (((Z_200 ) (S_70 (unS_72 Nat_70)))))
(declare-fun diseqNat_70 (Nat_70 Nat_70) Bool)
(declare-fun unS_73 (Nat_70 Nat_70) Bool)
(declare-fun isZ_70 (Nat_70) Bool)
(declare-fun isS_70 (Nat_70) Bool)
(assert (forall ((x_2002 Nat_70))
	(unS_73 x_2002 (S_70 x_2002))))
(assert (isZ_70 Z_200))
(assert (forall ((x_2004 Nat_70))
	(isS_70 (S_70 x_2004))))
(assert (forall ((x_2005 Nat_70))
	(diseqNat_70 Z_200 (S_70 x_2005))))
(assert (forall ((x_2006 Nat_70))
	(diseqNat_70 (S_70 x_2006) Z_200)))
(assert (forall ((x_2007 Nat_70) (x_2008 Nat_70))
	(=> (diseqNat_70 x_2007 x_2008)
	    (diseqNat_70 (S_70 x_2007) (S_70 x_2008)))))
(declare-fun add_36 (Nat_70 Nat_70 Nat_70) Bool)
(declare-fun minus_36 (Nat_70 Nat_70 Nat_70) Bool)
(declare-fun le_36 (Nat_70 Nat_70) Bool)
(declare-fun ge_36 (Nat_70 Nat_70) Bool)
(declare-fun lt_36 (Nat_70 Nat_70) Bool)
(declare-fun gt_36 (Nat_70 Nat_70) Bool)
(declare-fun mult_36 (Nat_70 Nat_70 Nat_70) Bool)
(declare-fun div_36 (Nat_70 Nat_70 Nat_70) Bool)
(declare-fun mod_36 (Nat_70 Nat_70 Nat_70) Bool)
(assert (forall ((y_159 Nat_70))
	(add_36 y_159 Z_200 y_159)))
(assert (forall ((x_1955 Nat_70) (y_159 Nat_70) (r_36 Nat_70))
	(=> (add_36 r_36 x_1955 y_159)
	    (add_36 (S_70 r_36) (S_70 x_1955) y_159))))
(assert (forall ((y_159 Nat_70))
	(minus_36 Z_200 Z_200 y_159)))
(assert (forall ((x_1955 Nat_70) (y_159 Nat_70) (r_36 Nat_70))
	(=> (minus_36 r_36 x_1955 y_159)
	    (minus_36 (S_70 r_36) (S_70 x_1955) y_159))))
(assert (forall ((y_159 Nat_70))
	(le_36 Z_200 y_159)))
(assert (forall ((x_1955 Nat_70) (y_159 Nat_70))
	(=> (le_36 x_1955 y_159)
	    (le_36 (S_70 x_1955) (S_70 y_159)))))
(assert (forall ((y_159 Nat_70))
	(ge_36 y_159 Z_200)))
(assert (forall ((x_1955 Nat_70) (y_159 Nat_70))
	(=> (ge_36 x_1955 y_159)
	    (ge_36 (S_70 x_1955) (S_70 y_159)))))
(assert (forall ((y_159 Nat_70))
	(lt_36 Z_200 (S_70 y_159))))
(assert (forall ((x_1955 Nat_70) (y_159 Nat_70))
	(=> (lt_36 x_1955 y_159)
	    (lt_36 (S_70 x_1955) (S_70 y_159)))))
(assert (forall ((y_159 Nat_70))
	(gt_36 (S_70 y_159) Z_200)))
(assert (forall ((x_1955 Nat_70) (y_159 Nat_70))
	(=> (gt_36 x_1955 y_159)
	    (gt_36 (S_70 x_1955) (S_70 y_159)))))
(assert (forall ((y_159 Nat_70))
	(mult_36 Z_200 Z_200 y_159)))
(assert (forall ((x_1955 Nat_70) (y_159 Nat_70) (r_36 Nat_70) (z_201 Nat_70))
	(=>	(and (mult_36 r_36 x_1955 y_159)
			(add_36 z_201 r_36 y_159))
		(mult_36 z_201 (S_70 x_1955) y_159))))
(assert (forall ((x_1955 Nat_70) (y_159 Nat_70))
	(=> (lt_36 x_1955 y_159)
	    (div_36 Z_200 x_1955 y_159))))
(assert (forall ((x_1955 Nat_70) (y_159 Nat_70) (r_36 Nat_70) (z_201 Nat_70))
	(=>	(and (ge_36 x_1955 y_159)
			(minus_36 z_201 x_1955 y_159)
			(div_36 r_36 z_201 y_159))
		(div_36 (S_70 r_36) x_1955 y_159))))
(assert (forall ((x_1955 Nat_70) (y_159 Nat_70))
	(=> (lt_36 x_1955 y_159)
	    (mod_36 x_1955 x_1955 y_159))))
(assert (forall ((x_1955 Nat_70) (y_159 Nat_70) (r_36 Nat_70) (z_201 Nat_70))
	(=>	(and (ge_36 x_1955 y_159)
			(minus_36 z_201 x_1955 y_159)
			(mod_36 r_36 z_201 y_159))
		(mod_36 r_36 x_1955 y_159))))
(declare-datatypes ((pair_12 0)) (((pair_13 (projpair_24 Nat_70) (projpair_25 Nat_70)))))
(declare-fun diseqpair_6 (pair_12 pair_12) Bool)
(declare-fun projpair_26 (Nat_70 pair_12) Bool)
(declare-fun projpair_27 (Nat_70 pair_12) Bool)
(declare-fun ispair_6 (pair_12) Bool)
(assert (forall ((x_1956 Nat_70) (x_1957 Nat_70))
	(projpair_26 x_1956 (pair_13 x_1956 x_1957))))
(assert (forall ((x_1956 Nat_70) (x_1957 Nat_70))
	(projpair_27 x_1957 (pair_13 x_1956 x_1957))))
(assert (forall ((x_1959 Nat_70) (x_1960 Nat_70))
	(ispair_6 (pair_13 x_1959 x_1960))))
(assert (forall ((x_1961 Nat_70) (x_1962 Nat_70) (x_1963 Nat_70) (x_1964 Nat_70))
	(=> (diseqNat_70 x_1961 x_1963)
	    (diseqpair_6 (pair_13 x_1961 x_1962) (pair_13 x_1963 x_1964)))))
(assert (forall ((x_1961 Nat_70) (x_1962 Nat_70) (x_1963 Nat_70) (x_1964 Nat_70))
	(=> (diseqNat_70 x_1962 x_1964)
	    (diseqpair_6 (pair_13 x_1961 x_1962) (pair_13 x_1963 x_1964)))))
(declare-datatypes ((list_33 0)) (((nil_33 ) (cons_33 (head_66 Nat_70) (tail_66 list_33)))))
(declare-fun diseqlist_33 (list_33 list_33) Bool)
(declare-fun head_68 (Nat_70 list_33) Bool)
(declare-fun tail_68 (list_33 list_33) Bool)
(declare-fun isnil_33 (list_33) Bool)
(declare-fun iscons_33 (list_33) Bool)
(assert (forall ((x_1966 Nat_70) (x_1967 list_33))
	(head_68 x_1966 (cons_33 x_1966 x_1967))))
(assert (forall ((x_1966 Nat_70) (x_1967 list_33))
	(tail_68 x_1967 (cons_33 x_1966 x_1967))))
(assert (isnil_33 nil_33))
(assert (forall ((x_1969 Nat_70) (x_1970 list_33))
	(iscons_33 (cons_33 x_1969 x_1970))))
(assert (forall ((x_1971 Nat_70) (x_1972 list_33))
	(diseqlist_33 nil_33 (cons_33 x_1971 x_1972))))
(assert (forall ((x_1973 Nat_70) (x_1974 list_33))
	(diseqlist_33 (cons_33 x_1973 x_1974) nil_33)))
(assert (forall ((x_1975 Nat_70) (x_1976 list_33) (x_1977 Nat_70) (x_1978 list_33))
	(=> (diseqNat_70 x_1975 x_1977)
	    (diseqlist_33 (cons_33 x_1975 x_1976) (cons_33 x_1977 x_1978)))))
(assert (forall ((x_1975 Nat_70) (x_1976 list_33) (x_1977 Nat_70) (x_1978 list_33))
	(=> (diseqlist_33 x_1976 x_1978)
	    (diseqlist_33 (cons_33 x_1975 x_1976) (cons_33 x_1977 x_1978)))))
(declare-datatypes ((list_34 0)) (((nil_34 ) (cons_34 (head_67 pair_12) (tail_67 list_34)))))
(declare-fun diseqlist_34 (list_34 list_34) Bool)
(declare-fun head_69 (pair_12 list_34) Bool)
(declare-fun tail_69 (list_34 list_34) Bool)
(declare-fun isnil_34 (list_34) Bool)
(declare-fun iscons_34 (list_34) Bool)
(assert (forall ((x_1980 pair_12) (x_1981 list_34))
	(head_69 x_1980 (cons_34 x_1980 x_1981))))
(assert (forall ((x_1980 pair_12) (x_1981 list_34))
	(tail_69 x_1981 (cons_34 x_1980 x_1981))))
(assert (isnil_34 nil_34))
(assert (forall ((x_1983 pair_12) (x_1984 list_34))
	(iscons_34 (cons_34 x_1983 x_1984))))
(assert (forall ((x_1985 pair_12) (x_1986 list_34))
	(diseqlist_34 nil_34 (cons_34 x_1985 x_1986))))
(assert (forall ((x_1987 pair_12) (x_1988 list_34))
	(diseqlist_34 (cons_34 x_1987 x_1988) nil_34)))
(assert (forall ((x_1989 pair_12) (x_1990 list_34) (x_1991 pair_12) (x_1992 list_34))
	(=> (diseqpair_6 x_1989 x_1991)
	    (diseqlist_34 (cons_34 x_1989 x_1990) (cons_34 x_1991 x_1992)))))
(assert (forall ((x_1989 pair_12) (x_1990 list_34) (x_1991 pair_12) (x_1992 list_34))
	(=> (diseqlist_34 x_1990 x_1992)
	    (diseqlist_34 (cons_34 x_1989 x_1990) (cons_34 x_1991 x_1992)))))
(declare-datatypes ((Nat_69 0)) (((Z_196 ) (S_69 (projS_66 Nat_69)))))
(declare-fun diseqNat_69 (Nat_69 Nat_69) Bool)
(declare-fun projS_67 (Nat_69 Nat_69) Bool)
(declare-fun isZ_69 (Nat_69) Bool)
(declare-fun isS_69 (Nat_69) Bool)
(assert (forall ((x_1994 Nat_69))
	(projS_67 x_1994 (S_69 x_1994))))
(assert (isZ_69 Z_196))
(assert (forall ((x_1996 Nat_69))
	(isS_69 (S_69 x_1996))))
(assert (forall ((x_1997 Nat_69))
	(diseqNat_69 Z_196 (S_69 x_1997))))
(assert (forall ((x_1998 Nat_69))
	(diseqNat_69 (S_69 x_1998) Z_196)))
(assert (forall ((x_1999 Nat_69) (x_2000 Nat_69))
	(=> (diseqNat_69 x_1999 x_2000)
	    (diseqNat_69 (S_69 x_1999) (S_69 x_2000)))))
(declare-fun zip_6 (list_34 list_33 list_33) Bool)
(assert (forall ((x_1928 list_34) (x_1918 Nat_70) (x_1919 list_33) (z_197 Nat_70) (x_1917 list_33))
	(=> (zip_6 x_1928 x_1917 x_1919)
	    (zip_6 (cons_34 (pair_13 z_197 x_1918) x_1928) (cons_33 z_197 x_1917) (cons_33 x_1918 x_1919)))))
(assert (forall ((z_197 Nat_70) (x_1917 list_33))
	(zip_6 nil_34 (cons_33 z_197 x_1917) nil_33)))
(assert (forall ((y_153 list_33))
	(zip_6 nil_34 nil_33 y_153)))
(declare-fun len_7 (Nat_69 list_33) Bool)
(assert (forall ((x_1932 Nat_69) (y_154 Nat_70) (xs_52 list_33))
	(=> (len_7 x_1932 xs_52)
	    (len_7 (S_69 x_1932) (cons_33 y_154 xs_52)))))
(assert (len_7 Z_196 nil_33))
(declare-fun x_1921 (list_33 list_33 list_33) Bool)
(assert (forall ((x_1935 list_33) (z_198 Nat_70) (xs_53 list_33) (y_155 list_33))
	(=> (x_1921 x_1935 xs_53 y_155)
	    (x_1921 (cons_33 z_198 x_1935) (cons_33 z_198 xs_53) y_155))))
(assert (forall ((x_1936 list_33))
	(x_1921 x_1936 nil_33 x_1936)))
(declare-fun rev_2 (list_33 list_33) Bool)
(assert (forall ((x_1937 list_33) (x_1938 list_33) (y_156 Nat_70) (xs_54 list_33))
	(=>	(and (rev_2 x_1938 xs_54)
			(x_1921 x_1937 x_1938 (cons_33 y_156 nil_33)))
		(rev_2 x_1937 (cons_33 y_156 xs_54)))))
(assert (rev_2 nil_33 nil_33))
(declare-fun x_1924 (list_34 list_34 list_34) Bool)
(assert (forall ((x_1942 list_34) (z_199 pair_12) (xs_55 list_34) (y_157 list_34))
	(=> (x_1924 x_1942 xs_55 y_157)
	    (x_1924 (cons_34 z_199 x_1942) (cons_34 z_199 xs_55) y_157))))
(assert (forall ((x_1943 list_34))
	(x_1924 x_1943 nil_34 x_1943)))
(declare-fun rev_3 (list_34 list_34) Bool)
(assert (forall ((x_1944 list_34) (x_1945 list_34) (y_158 pair_12) (xs_56 list_34))
	(=>	(and (rev_3 x_1945 xs_56)
			(x_1924 x_1944 x_1945 (cons_34 y_158 nil_34)))
		(rev_3 x_1944 (cons_34 y_158 xs_56)))))
(assert (rev_3 nil_34 nil_34))
(assert (forall ((x_1953 Nat_69) (x_1948 list_33) (x_1949 list_33) (x_1950 list_34) (x_1951 list_34) (x_1952 list_34) (xs_57 list_33) (ys_19 list_33))
	(=>	(and true
			(diseqlist_34 x_1950 x_1952)
			(len_7 x_1953 xs_57)
			(len_7 x_1953 ys_19)
			(rev_2 x_1948 xs_57)
			(rev_2 x_1949 ys_19)
			(zip_6 x_1950 x_1948 x_1949)
			(zip_6 x_1951 xs_57 ys_19)
			(rev_3 x_1952 x_1951))
		false)))
(check-sat)