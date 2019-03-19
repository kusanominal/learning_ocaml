(* 座標(x, y)を受け取ったら、x軸について対象な点の座標を返す *)
(* taisho_x : float * float -> float * float *)
let taisho_x pair = match pair with
    (x, y) -> (1.0 *. x, -1.0 *. y)

let test1 = taisho_x (2.0, 1.0) = (2.0, -1.0)
let test2 = taisho_x (0.0, 0.0) = (0.0, 0.0)
let test3 = taisho_x (-2.0, -1.0) = (-2.0, 1.0)
