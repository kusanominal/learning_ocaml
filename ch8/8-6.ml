(* 駅名の情報を格納する型 *)
type ekimei_t = {
    kanji : string;
    kana : string;
    romaji : string;
    shozoku : string;
}

(* ekimei_t型のデータを受け取り、「路線名, 駅名 (かな)」の形式で文字列を返す *)
(* hyoji : ekimei_t -> string *)
let hyoji ekimei = match ekimei with
    {kanji = kj; kana = kn; romaji = rm; shozoku = szk} 
    -> szk ^ ", " ^ kj ^ " (" ^ kn ^ ")"

let test1 = hyoji {kanji="神泉"; kana="しんせん"; romaji="shinsen"; shozoku="京王井の頭線"} = "京王井の頭線, 神泉 (しんせん)"
let test2 = hyoji {kanji="三軒茶屋"; kana="さんげんぢゃや"; romaji="sangendyaya"; shozoku="田園都市線"} = "田園都市線, 三軒茶屋 (さんげんぢゃや)"
let test3 = hyoji {kanji="渋谷"; kana="しぶや"; romaji="shibuya"; shozoku="山手線"} = "山手線, 渋谷 (しぶや)"
