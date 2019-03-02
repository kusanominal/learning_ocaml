(* 目的：鶴の数nに応じた足の本数を計算する *)
(* tsuru_no_ashi : int -> int *)
let tsuru_no_ashi n = 2 * n

let test1 = tsuru_no_ashi 3 = 6
let test2 = tsuru_no_ashi 6 = 12
let test3 = tsuru_no_ashi 100 = 200
