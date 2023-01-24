<html>
<body>
<style>
*{font-family:Arial;}
#box {}
.mensage{width:300px; height:70px;}
</style>
<div id="box">

<div>
<table>
<form action="comentarios.php" method="POST" enctype"multipart/form-data">
	<tr>
	<td><input type="textarea" class="mensage" placeholder="" id="mensage" name="mensage" ></textarea></td>
	</tr>
	<tr>
	<td><input type="submit" value=" comentar " />           </td>
	</tr>
</form>
</table>
<br/>
</div>

<?php 
error_reporting (E_ALL & ~ E_NOTICE & ~ E_DEPRECATED); 


// comentarios





$conexao=mysql_connect("localhost","root","");
mysql_select_db("noticias");

	//inserir comentarios:

$comentar = $_POST['mensage'];

if(empty($comentar)){
		print"Escreva um comentario!<br/><br/>";
}else{

$inserindo = "INSERT INTO noticias VALUES (DEFAULT,'null','$comentar',DEFAULT,'NULL',NOW());";

	$intoresultado=mysql_query($inserindo);
	
	if($intoresultado == true){
		print"Comentario enviado com sucesso!<br/><br/>";
	}}

// mostrar os comentarios

$sql="SELECT * FROM noticias order by id_noticias desc;";
$resultado=mysql_query($sql); 

$join = "select noticias.id_usuario, usuarios.nome from noticias join usuarios order by id_usuarios desc;";

$joinresultado=mysql_query($join); 

//vetor como mysql [[1]join do nome da tabela usuario] - [2]mensagem [5]data 

while($fetch = mysql_fetch_row($resultado) and $joinfetch = mysql_fetch_row($joinresultado)){
        echo "Nome: " . $joinfetch[1] . "<br/> Comentario: <br/>" . $fetch[2] . 
		" <br/> Postado no dia: " . date("d/m/Y", strtotime($fetch[5])) . 
		" as " . date("H:i", strtotime($fetch[5])) . "<br/><br/><br/>";
    }


?>
<div>
</body>
</html>