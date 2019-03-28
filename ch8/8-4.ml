(* 人ひとり分のデータ (名前, 身長, 体重, 誕生日, 血液型) を表す型 *)
type person_t = {
    namae : string;
    shintyo : float;
    taiju : float;
    tanjobi : int * int;
    ketsuekigata : string;
} ;;

(* 目的：person_t型のデータを受け取ったら「○○さんの血液型は△型です」という文字列を返す *)
(* ketsueki_hyoji : person_t -> string *)
let ketsueki_hyoji person = match person with
    {namae = n; shintyo = s; taiju = tai; tanjobi = tan; ketsuekigata = k} -> n ^ "さんの血液型は" ^ k ^ "型です"

let test1 = ketsueki_hyoji {namae="Yamada"; shintyo=1.7; taiju=60.0; tanjobi=(3,21); ketsuekigata="A"} = "Yamadaさんの血液型はA型です"
let test2 = ketsueki_hyoji {namae="Itoh"; shintyo=1.8; taiju=72.2; tanjobi=(12,31); ketsuekigata="B"} = "Itohさんの血液型はB型です"
let test3 = ketsueki_hyoji {namae="Fukushima"; shintyo=1.61; taiju=52.1; tanjobi=(1,1); ketsuekigata="O"} = "Fukushimaさんの血液型はO型です"
let test4 = ketsueki_hyoji {namae="John"; shintyo=1.90; taiju=83.3; tanjobi=(8,31); ketsuekigata="AB"} = "Johnさんの血液型はAB型です"
