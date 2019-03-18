(1) let square x = x * x ;;
    square 3. ;;
-> 乗算に*が用いられているため、Ocamlインタプリタはxはint型であると推論している。
したがって3.を渡すとint型のはずの引数にfloat型の値が渡されているとエラーが出るはず。
-> 実際のエラー: Error: This expression has type float but an expression was expected of type int

(2) let circle = 2. *. pi *. r ;;
    circle 2. ;;
-> circleに対して2. *. pi *. rで計算される値をbindしようとしているが、
piやrが未定義なためUnbound valueエラーが出る(とくに、piが先に展開されるためpiについて出る)
-> 実際のエラー: Error: Unbound value pi

(3) let TV bangumi youbi = bangumi ^ "は" ^ youbi ^ "に放映です。" ;;
    TV "ポケモン" "木曜日" ;;
-> OCamlでは変数名の先頭は小文字のアルファベットでなければならず、
大文字のアルファベットで始まった場合それは構成子として解釈されてしまう。
したがって、Unbound constructor TVエラーが出る。
-> 実際のエラー: Error: Syntax error
-> 予想と実際が食い違った。引数がひとつなら予想どおりのロジックでUnbound Constructorエラーが出るが……(要因がまだわからない)
