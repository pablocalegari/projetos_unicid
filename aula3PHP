<?php 

//exemplos manipulação de array simples

$var = $_POST['seleção_cor'];
$valor = [2,6,3,6,8,4,7,3,4];
$nomes = ["Rafael","Kaiky","Anna","João","Pedro","Vito","José","Mario","Luigi","André"];

$tamanho_valor = sizeof($valor);
$tamanho_nomes = sizeof($nomes);

echo '<br>Tamanho do Array $valor = '. $tamanho_valor;
echo '<br>Tamanho do Array $nomes = '. $tamanho_nomes;

echo '<br>O dado no index 2 é: ';
print($valor[2]);
echo '<br>';

echo 'O dado no index 5 é: ';
print($valor[5]);
echo '<br>';

echo "Um dos nomes: ";
print($nomes[5]);
echo '<br>';

echo 'Itens do Array valor';
echo '<br>';

$i = 0;
//For Loop
for($i = 0;$i < $tamanho_valor; $i++){
    print("$valor[$i]");
    echo '<br>';
}

// Forma Do While
do{
    print("$nomes[$i]");
    echo '<br>';
    $i++;
}while($i < $tamanho_nomes);
?>
