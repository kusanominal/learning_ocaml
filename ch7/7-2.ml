(* 名前と評価の組(name, hyouka)を受け取ったら「○○さんの評価は△です」という文字列を返す *)
(* seiseki : string * string -> string *)
let seiseki pair = match pair with
			 (name, hyouka) -> name ^ "さんの評価は" ^ hyouka ^ "です"

let test1 = seiseki ("Tom", "C") = "Tomさんの評価はCです"
let test2 = seiseki ("John", "B") = "Johnさんの評価はBです"
let test3 = seiseki ("Robert", "A") = "Robertさんの評価はAです"
