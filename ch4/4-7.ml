(* 目的：鶴の数mと亀の数nに応じた足の数の合計を計算する *)
(* tsurukame_no_ashi : int -> int *)
let tsurukame_no_ashi m n = 2 * m + 4 * n

let test1 = tsurukame_no_ashi 2 4 = 20
let test2 = tsurukame_no_ashi 3 5 = 26
let test3 = tsurukame_no_ashi 10 8 = 52 
