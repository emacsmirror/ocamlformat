let _ =
  match x with
  | A -> begin match B with A -> fooooooooooooo end
  | A -> begin match B with A -> fooooooooooooo | B -> fooooooooooooo end
  | A -> begin
    match B with
    | A -> fooooooooooooo
    | B -> fooooooooooooo
    | C -> fooooooooooooo
    | D -> fooooooooooooo
  end
[@@ocamlformat "break-cases=fit"]

let _ =
  match x with
  | A -> begin match B with A -> fooooooooooooo end
  | A -> begin match B with A -> fooooooooooooo | B -> fooooooooooooo end
  | A -> begin
    match B with
    | A -> fooooooooooooo
    | B -> fooooooooooooo
    | C -> fooooooooooooo
    | D -> fooooooooooooo
  end
[@@ocamlformat "break-cases=nested"]

let _ =
  match x with
  | A -> begin match B with A -> fooooooooooooo end
  | A -> begin match B with A -> fooooooooooooo | B -> fooooooooooooo end
  | A -> begin
    match B with
    | A -> fooooooooooooo
    | B -> fooooooooooooo
    | C -> fooooooooooooo
    | D -> fooooooooooooo
  end
[@@ocamlformat "break-cases=toplevel"]

let _ =
  match x with
  | A -> begin match B with A -> fooooooooooooo end
  | A -> begin match B with A -> fooooooooooooo | B -> fooooooooooooo end
  | A -> begin
    match B with
    | A -> fooooooooooooo
    | B -> fooooooooooooo
    | C -> fooooooooooooo
    | D -> fooooooooooooo
  end
[@@ocamlformat "break-cases=fit-or-vertical"]

let _ =
  match x with
  | A -> begin match B with A -> fooooooooooooo end
  | A -> begin match B with A -> fooooooooooooo | B -> fooooooooooooo end
  | A -> begin
    match B with
    | A -> fooooooooooooo
    | B -> fooooooooooooo
    | C -> fooooooooooooo
    | D -> fooooooooooooo
  end
[@@ocamlformat "break-cases=all"]


let a =
  begin match f x i with
  | A -> f aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
  | B -> bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
  end

let a =
  begin match%lwt f x i with
  | A -> f aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
  | B -> bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
  end

let a =
  begin%e match%lwt f x i with
  | A -> f aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
  | B -> bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
  end

let a =
  begin%e match f x i with
  | A -> f aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
  | B -> bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
  end

let a = begin match f x i with A -> a | B -> b end

let a =
  begin[@a] match[@b]
    f xxxx xxxxx xxxxx xxxxxxxxxxxxxxxxx
      xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx i iiiiiiiiiiiiiiiiiii
  with
  | A -> f aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
  | B -> bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
  end

let a =
    begin%e[@a] match%lwt[@b]
      f xxxx xxxxx xxxxx xxxxxxxxxxxxxxxxx
        xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx i iiiiiiiiiiiiiiiiiii
    with
    | A -> f aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
    | B -> bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
    end

let a =
  begin match
    f xxxx xxxxx xxxxx xxxxxxxxxxxxxxxxx
      xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx i iiiiiiiiiiiiiiiiiii
  with
  | A -> f aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
  | B -> bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
  end

let a =
  begin%e
    try f x i with
    | A -> f aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
    | B -> bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
  end

let a =
  begin try f x i with
  | A -> f aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
  | B -> bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
  end

let a =
  begin try%lwt f x i with
  | A -> f aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
  | B -> bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
  end

let a =
  begin%e try%lwt f x i with
  | A -> f aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
  | B -> bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
  end

let a =
  begin%e try f x i with
  | A -> f aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
  | B -> bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
  end

let a = begin try f x i with A -> a | B -> b end

let a =
  begin[@a] try[@b]
    f xxxx xxxxx xxxxx xxxxxxxxxxxxxxxxx
      xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx i iiiiiiiiiiiiiiiiiii
  with
  | A -> f aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
  | B -> bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
  end

let a =
    begin%e[@a] try%lwt[@b]
      f xxxx xxxxx xxxxx xxxxxxxxxxxxxxxxx
        xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx i iiiiiiiiiiiiiiiiiii
    with
    | A -> f aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
    | B -> bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
    end

let a =
  begin try
    f xxxx xxxxx xxxxx xxxxxxxxxxxxxxxxx
      xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx i iiiiiiiiiiiiiiiiiii
  with
  | A -> f aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
  | B -> bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
  end