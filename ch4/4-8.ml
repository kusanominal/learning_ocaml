(* 目的：鶴と亀の数の合計total_headsと足の数の合計total_legsが与えられたら鶴の数を返す *)
(* tsurukame : int -> int *)
let tsurukame total_heads total_legs = (4 * total_heads - total_legs) / 2

let test1 = tsurukame 8 24 = 4
let test2 = tsurukame 8 32 = 0
let test3 = tsurukame 8 16 = 8
