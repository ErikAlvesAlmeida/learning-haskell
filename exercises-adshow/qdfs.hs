descobreSenha :: [String] -> String
descobreSenha lista =
    let
        maisQue3 = filter ((> 3) . length) lista
        mapeados = map last maisQue3
    in
        reverse mapeados