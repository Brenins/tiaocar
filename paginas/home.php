<div class="banner">
    <?php
        //selecionar os daos do banner
        $sql = "select * from banner order by rand() limit 1";
        $consulta = $pdo->prepare($sql);

        $consulta->execute();

        $dados = $consulta->fetch(PDO::FETCH_OBJ);

        //Separar o dado necessario

        $banner = $dados->banner;
    ?>
    <img src="images/<?=$banner?>" alt="banner">
</div>
<main>
    <br>
    <h1>Produtos em Destaque</h1>
    <br>
    <div class="grid">
        <?php
            //Selecionar produtos vitrine
            $sql= "select * from veiculo order by rand() limit 3";
            //Preparar sql exec
            $consulta = $pdo->prepare($sql);
            //executar sql

            $consulta->execute();
            while ($dados = $consulta->fetch(PDO::FETCH_OBJ)){
                $id = $dados->id;
                $modelo = $dados->modelo;
                $ano = $dados->ano;
                $valor = $dados->valor;
                $combustivel = $dados->combustivel;
                $cor = $dados->cor;
                $opcionais = $dados->opcionais;
                $marca_id = $dados->marca_id;
                $foto = $dados->foto;

                $valor = number_format($valor,2,",",".")
                ?>
                <div class="coluna">
                    <img src="veiculos/<?=$foto?>">
                    <h2><?=$modelo?></h2>
                    <p class="valor">
                        R$<?=$valor?>
                    </p>
                    <p>
                        <a href='veiculo/<?=$id?>' class='btn btn-secondary'>Detalhes <i class="fa-solid fa-magnifying-glass"></i></a>
                    </p>
                </div>
                <?PHP
            }//FIM DO WHILE
        ?>
    </div>
    <br>
</main>