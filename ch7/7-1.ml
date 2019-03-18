(* 国語, 数学, 英語, 理科, 社会の5教科の点数 kokugo, sugaku, eigo, rika, shakai をもとに合計点と平均点を計算する *)
(* goukei_to_heikin : int -> int -> int -> int -> int -> int * int *)
let goukei_to_heikin kokugo sugaku eigo rika shakai
	= (kokugo + sugaku + eigo + rika + shakai, (kokugo + sugaku + eigo + rika + shakai) / 5)

let test1 = goukei_to_heikin 10 20 30 40 50 = (150, 30)
let test2 = goukei_to_heikin 30 30 30 30 30 = (150, 30)
let test3 = goukei_to_heikin 10 10 10 50 50 = (130, 26)
