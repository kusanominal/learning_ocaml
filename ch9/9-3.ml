(* 問題  9-1 *)
let shiki = ["春"; "夏"; "秋"; "冬"]

(* 問題9-2 *)
(* person_t 型を定義 *)
type person_t = {
    shintyo : float;
    taiju : float;
    tanjobi : int * int;
    ketsuekigata : string;
} 

(* person_t 型のデータを3つ作成 *)
let person1= {
    shintyo = 1.72;
    taiju = 63.2;
    tanjobi = (3, 2);
    ketsuekigata = "A";
} 
let person2= {
    shintyo = 1.61;
    taiju = 52.8;
    tanjobi = (12, 23);
    ketsuekigata = "AB";
} 
let person3= {
    shintyo = 1.87;
    taiju = 81.0;
    tanjobi = (6, 26);
    ketsuekigata = "O";
} 

let people = [person1; person2; person3] 
