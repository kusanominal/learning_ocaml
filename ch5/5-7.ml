(* 身長h(単位:m)と体重w(単位:kg)からBMIを計算する関数 *)
(* bmi : float -> float -> float *)
let bmi h w = w /. (h ** 2.0)

(* 身長h(単位:m)と体重w(単位:kg)から当てはまる体型を返す関数 *)
(* taikei : float -> float -> string *)
let taikei h w = if bmi h w < 18.5 then "やせ"
                 else if bmi h w < 25.0 then "標準"
                 else if bmi h w < 30.0 then "肥満"
                 else "高度肥満"

let test1 = taikei 1.5 40.0 = "やせ"
let test2 = taikei 1.6 50.0 = "標準"
let test3 = taikei 1.7 80.0 = "肥満"
let test4 = taikei 1.8 100.0 = "高度肥満"
