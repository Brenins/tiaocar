<main>
    <?php
        $id = $p[1] ?? NULL;

        if(empty($id)){
            ?>
            <h1>Erro no produto.</h1>
            <p>Produto nao encontrado</p>
            <?php
        }else{
            $sql = "select * from veiculo where id = :id limit 1";
            $consulta = $pdo->prepare($sql);
            $consulta->bindParam(":id",$id);
            $consulta->execute();

            $dados = $consulta->fetch(PDO::FETCH_OBJ);

            $id = $dados->id;
            $modelo = $dados->modelo;
            $ano = $dados->ano;
            $valor = $dados->valor;
            $combustivel = $dados->combustivel;
            $cor = $dados->cor;
            $opcionais = $dados->opcionais;
            $marca_id = $dados->marca_id;
            $foto = $dados->foto;

            ?>
            <br>
            <h1><?=$modelo?></h1>
            <div class="grid-produtos">
                <div class="coluna">
                    <a href="veiculos/<?=$foto?>" title="imagem1" data-lightbox="Foto">
                        <img src="veiculos/<?=$foto?>" alt="Imagem 1">
                    </a>
                </div>
                <div class="coluna">
                    <h3>Descricao do produto:</h3>
                    <p>Ano: <?=$ano?></p>
                    <p>Valor: <?=$valor?></p>
                    <p>Combustivel: <?=$combustivel?></p>
                    <p>Cor: <?=$cor?></p>
                    <p>Itens de Serie: <?=$opcionais?></p>
                </div>

            </div>


            <?php

        }

    ?>


</main>