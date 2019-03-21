(* 座標(x, y)をふたつ受け取ったらその中点の座標を返す *)
(* chuten : float * float -> float * float -> float * float *)
let chuten point1 point2 = match point1 with
    (x1, y1) -> match point2 with
        (x2, y2) -> ((x1 +. x2) /. 2.0, (y1 +. y2) /. 2.0) 

let test1 = chuten (0.0, 1.0) (1.0, 0.0) = (0.5, 0.5)
let test2 = chuten (0.0, 1.0) (0.0, 0.0) = (0.0, 0.5)
let test3 = chuten (0.0, 0.0) (1.0, 0.0) = (0.5, 0.0)
