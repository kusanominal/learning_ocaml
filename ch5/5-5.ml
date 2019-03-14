(* 2次方程式 ax^2 + bx + c = 0 の係数a,b,cから判別式を計算する *)
(* hanbetsushiki : float -> float -> float -> float *)
let hanbetsushiki a b c = b ** 2.0 -. 4.0 *. a *. c

let test1 = hanbetsushiki 1.0 2.0 3.0 = -8.0
let test2 = hanbetsushiki 1.0 6.0 3.0 = 24.0
let test3 = hanbetsushiki 1.0 4.0 4.0 = 0.0

(* 2次方程式 ax^2 + bx + c = 0 の係数a,b,cから解の個数を計算する *)
(* ここで解とは実数解のことを指すものとする *)
(* kai_no_kosuu : float -> float -> float -> int *)
let kai_no_kosuu a b c = if hanbetsushiki a b c > 0.0 then 2
                         else if hanbetsushiki a b c = 0.0 then 1
                         else 0

let test4 = kai_no_kosuu 1.0 2.0 3.0 = 0
let test5 = kai_no_kosuu 1.0 6.0 3.0 = 2
let test6 = kai_no_kosuu 1.0 4.0 4.0 = 1
