(* 2次方程式 ax^2 + bx + c = 0 の係数a,b,cから判別式を計算する *)
(* hanbetsushiki : float -> float -> float -> float *)
let hanbetsushiki a b c = b ** 2.0 -. 4.0 *. a *. c

let test1 = hanbetsushiki 1.0 2.0 3.0 = -8.0
let test2 = hanbetsushiki 1.0 6.0 3.0 = 24.0
let test3 = hanbetsushiki 1.0 4.0 4.0 = 0.0

(* 2次方程式 ax^2 + bx + c = 0 の係数a,b,cから虚数解をもつかを判定する *)
(* kyosuukai : float -> float -> float -> bool *)
let kyosuukai a b c = if hanbetsushiki a b c < 0.0 then true
                                             else false

let test4 = kyosuukai 1.0 2.0 3.0 = true
let test5 = kyosuukai 1.0 6.0 3.0 = false
let test6 = kyosuukai 1.0 4.0 4.0 = false
