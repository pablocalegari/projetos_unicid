<?php 
// supondo que a variavel $mes recebeu um dado via front-end
$mes = 12;
$sexo = 'f';
$necessarioparaemail = '@';
$email = "a@gmail.com";
# verificando se o mes é valido
if ($mes == 1 || $mes == 12 && $mes < 13){
    echo "Condição verdadeira". '<br>';
    print("Estamos no mês: " . $mes . '<br>');
}
else{
    echo "Condição falsa";
}

# verificando se o sexo é valido
if ($sexo != 'f' && $sexo !='F'&& $sexo != 'm' && $sexo !='M'){
    print("Sexo Invalido.". '<br>');
    print("Escolha um sexo valido.");
}
else{
    print("--------- Verificando ---------" . '<br>');
    print("Sexo Valido! Bem Vindo!" . '<br>');
}

# verificando seo email é valido
if (str_contains($email, $necessarioparaemail)){
    print("Email Valido.");
}
else{
    print("Email Invalido.");
}


?>
