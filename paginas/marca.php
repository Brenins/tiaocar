<main>
    <?php
        //recuperar id categoria
        $id = $p[1] ?? NULL;

        //VERIFICAR SE O ID ESTA VAZIO
        if(empty($id)){
            ?>
            <h1>ERRO</h1>
            <h2 class="center">Categoria invalida</h2>
            <?php
        }else{

            //selecionar a categoria com o id
            $sql = "select marca from marca where id = :id";

            $consultaCategoria = $pdo->prepare($sql);
            $consultaCategoria->bindParam(":id", $id);
            $consultaCategoria->execute();
            $dados = $consultaCategoria->fetch(PDO::FETCH_OBJ);

            $marca = $dados->marca;

            echo "<h1>{$marca}</h1>";


            //Selecionar os produtos da categoria

            $sql = "select * from veiculo where marca_id = :id order by marca_id";

            $consulta = $pdo ->prepare($sql);

            $consulta->bindParam(":id", $id);

            $consulta->execute();
            ?>

            <div class="grid">
                <?php
                    while($dados= $consulta->fetch(PDO::FETCH_OBJ)){
                        //Separa os dados
                        $id = $dados->id;
                        $modelo = $dados->modelo;
                        $ano = $dados->ano;
                        $valor = $dados->valor;
                        $combustivel = $dados->combustivel;
                        $cor = $dados->cor;
                        $opcionais = $dados->opcionais;
                        $marca_id = $dados->marca_id;
                        $foto = $dados->foto;

                        $valor = number_format($valor,2,",",".");

                        echo "<div class='coluna'>
                        <img src='veiculos/{$foto}'>
                        <h2>{$modelo}</h2>
                        <p class='valor'>
                        R$ {$valor}
                        </p>
                        <p>
                            <a href='veiculo/{$id}' class='btn btn-primary'>Detalhes <i class='fa-solid fa-magnifying-glass'></i></a>
                        </p>
                        </div>";
                    }
                    
                ?>
            </div>
            <?php
        }
        ?>
</main>