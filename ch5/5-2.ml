(* 時間tを受け取ったら、午前か午後かを返す *)
(* jikan : int -> string *)
let jikan t = 
  if 0 <= t && t < 12 then "午前" 
                      else if 12 <= t && t < 24 then "午後"
                                                else "無効な値"

let test1 = jikan 10 = "午前"
let test2 = jikan 20 = "午後"
let test3 = jikan 12 = "午後"
let test4 = jikan (-1) = "無効な値"
let test5 = jikan 25 = "無効な値"
