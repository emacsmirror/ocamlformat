(* Note that {[ let ident : typ = exp ]} is different from {[ let (ident :
   typ) = exp ]}. The difference should be maintained *)

let (_ : int) = x1

let (x : int) = x2

let (_ : int) = x3

let x : int = x4

let _ =
  let (x : int) = x in
  let x : int = x in
  let (_ : int) = x in
  let _ : int = x in
  ()

let%ext (_ : int) = x1

let%ext (x : int) = x2

let%ext (_ : int) = x3

let%ext x : int = x4

let%ext _ =
  let%ext (x : int) = x in
  let%ext x : int = x in
  let%ext (_ : int) = x in
  let%ext (_ : int) = x in
  ()

let [%ext let x = 3] = 2

let [%ext: [%exp let x = 3]] = 2

let f : 'a. 'a ty -> 'a = fun y -> g y

let f (A _ | B | C) = ()

let f
    ( AAAAAAAAAAAAAAAAAAAAAAAAAAAAa _ | BBBBBBBBBBBBBBBBBBBBBbb
    | CCCCCCCCCCCCCCCCCCCCCCccccc ) =
  ()

let f
    ( AAAAAAAAAAAAAAAAAAAAAAAAAAAAa
        ( EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEe | FFFFFFFFFFFFFFFFFFFFFFFFFFf
        | GGGGGGGGGGGGGGGGGGGGGGGGGGGGGGggggggggg )
    | BBBBBBBBBBBBBBBBBBBBBbb | CCCCCCCCCCCCCCCCCCCCCCccccc ) =
  ()

let f (AAA (EEEEEEE | FFFFF | GGGGG) | BBBBBB | CCCCCCC) = ()

let f = function AAA (EEEEEEE | FFFFF | GGGGG) | BBBBBB | CCCCCCC -> ()

let f = function EEEEEEE | F | GGGGG | B | CCCCCCC -> ()

let f = function
  | EEEEEEE | FFFFFFFFFFFFFFFFFFFFFFF | GGGGG
   |BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBbb | CCCCCCC ->
      ()

let (_ : t -> t -> int) = (compare : int list -> int list -> int)

let _ =
  let[@test] rec f = x in
  y

module Let_and_compact = struct
  [@@@ocamlformat "let-and=compact"]

  let x = 2

  and y = 2

  let _ =
    let x = 2 and y = 2 in
    3

  let _ =
    let%ext x = 2 and y = 2 in
    3
end

module Let_and_sparse = struct
  [@@@ocamlformat "let-and=sparse"]

  let x = 2

  and y = 2

  let _ =
    let x = 2
    and y = 2 in
    3

  let _ =
    let%ext x = 2
    and y = 2 in
    3
end

let f aaaaaaaaaaaaaaaaaaaa bbbbbbbbbbbbbbbbbbbbbbbbb
    cccccccccccccccccccccccc dddddddddddddddddd eeeeeeeeeeeeee =
  ()

let _ =
 fun aaaaaaaaaaaaaaaaaaaa bbbbbbbbbbbbbbbbbbbbbbbbb cccccccccccccccccccccccc
     dddddddddddddddddd eeeeeeeeeeeeee ->
  ()

let _ =
  let (x : int) = x in
  let x : int = x in
  let (_ : int) = x in
  let _ : int = x in
  let%ext (x : int) = x in
  let%ext x : int = x in
  let%ext (_ : int) = x in
  let%ext _ : int = x in
  ()

let fooo = fooooooooooo [@@foo];;

let fooo = fooooooooooo [@@foo]
and fooo = fooooooooooo [@@foo];;

let foooo = fooooooooo [@@foo] in
fooooooooooooooooooooo

let [@foo] fooo = fooooooooooo;;

let [@foo] fooo = fooooooooooo
and [@foo] fooo = fooooooooooo;;

let [@foo] foooo = fooooooooo in
fooooooooooooooooooooo

let a : int = 0

let b = (0 : int)

let _ =
  let+ a = b in
  c

let _ =
  let+ a = b
  and+ c = d in
  e

let _ =
  if true then a
  else let+ a = b in c

let _ =
  if true then let+ a = b in c
  else d

let _ =
  match a with
  | a ->
    match a with
    | a -> let+ a = b in match a with a -> a

let _ =
  match a with
  | a ->
    match a with
    | a -> (let+ a = b in match a with a -> a)
    | b -> c

let _ =
  let+ a b = c in
  d


let _ = f (let+ a b = c in d)

let () =
  let* x = 1 (* blah *) and* y = 2 in
  ()
